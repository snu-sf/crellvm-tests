; ModuleID = './gsovrc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { {}*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_device_halftone_s = type opaque
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
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
%struct.gs_get_bits_params_s = type { i64, [64 x i8*], i32, i32, i32 }
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
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gx_device_clist_writer_s = type opaque
%struct.overprint_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i64, i16, i32, i64, i32, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_overprint_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s*, %struct.gs_overprint_params_s }
%struct.gs_overprint_params_s = type { i32, i32, i32, i64, i16, i32 }
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct._devn = type { [64 x i16] }

@gs_composite_overprint_type = constant { i8, { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* } } { i8 2, { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* } { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* @c_overprint_create_default_compositor, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)* @c_overprint_equal, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)* @c_overprint_write, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)* @c_overprint_read, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)* @gx_default_composite_adjust_ctm, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)* @c_overprint_is_closing, i32 (%struct.gs_composite_s*, i8, i8)* @gx_default_composite_is_friendly, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* @gx_default_composite_clist_write_update, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* @gx_default_composite_clist_read_update, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* @gx_default_composite_get_cropping } }, align 8
@st_overprint = internal constant %struct.gs_memory_struct_type_s { i32 72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [20 x i8] c"gs_create_overprint\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"overprint_device\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_overprint_device = constant %struct.overprint_device_s { i32 3520, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 1, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_s* null, i64 0, i16 0, i32 0, i64 0, i32 0, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"gs_overprint_t\00", align 1
@st_overprint_device_t = internal constant %struct.gs_memory_struct_type_s { i32 3520, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @overprint_device_t_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @overprint_device_t_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"create overprint compositor\00", align 1
@no_overprint_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @overprint_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* null, i32 (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_forward_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_forward_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @gx_forward_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @gx_forward_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @overprint_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @overprint_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_forward_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @overprint_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* @overprint_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @gx_forward_fillpage, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* @gx_forward_copy_planes, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@generic_overprint_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @overprint_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* null, i32 (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @overprint_generic_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @gx_default_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @gx_default_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @overprint_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_default_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @overprint_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @gx_default_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @overprint_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* @overprint_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @overprint_fill_rectangle_hl_color, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* @gx_forward_copy_planes, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@sep_overprint_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @overprint_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* null, i32 (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @overprint_sep_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @gx_default_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @gx_default_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @overprint_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_default_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @overprint_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @gx_default_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @overprint_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* @overprint_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @overprint_fill_rectangle_hl_color, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* @overprint_copy_planes, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @overprint_copy_alpha_hl_color, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"overprint_device_t\00", align 1
@st_device_forward = external constant %struct.gs_memory_struct_type_s, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"overprint_fill_rectangle_hl_color\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"overprint_copy_planes\00", align 1
@update_overprint_params.frac_13 = internal constant i16 10920, align 2

; Function Attrs: nounwind uwtable
define internal i32 @c_overprint_create_default_compositor(%struct.gs_composite_s* %pct, %struct.gx_device_s** %popdev, %struct.gx_device_s* %tdev, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pct.addr = alloca %struct.gs_composite_s*, align 8
  %popdev.addr = alloca %struct.gx_device_s**, align 8
  %tdev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ovrpct = alloca %struct.gs_overprint_s*, align 8
  %opdev = alloca %struct.overprint_device_s*, align 8
  %params = alloca %struct.gs_overprint_params_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_composite_s* %pct, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %popdev, %struct.gx_device_s*** %popdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %tdev, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_overprint_s** %ovrpct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_composite_s* %1 to %struct.gs_overprint_s*
  store %struct.gs_overprint_s* %2, %struct.gs_overprint_s** %ovrpct, align 8, !tbaa !1
  %3 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  store %struct.overprint_device_s* null, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %4 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #2
  %5 = load %struct.gs_overprint_s*, %struct.gs_overprint_s** %ovrpct, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_overprint_s, %struct.gs_overprint_s* %5, i32 0, i32 5
  %retain_any_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params1, i32 0, i32 0
  %6 = load i32, i32* %retain_any_comps, align 4, !tbaa !5
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_s**, %struct.gx_device_s*** %popdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %7, %struct.gx_device_s** %8, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  %idle = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %9, i32 0, i32 2
  %10 = load i32, i32* %idle, align 4, !tbaa !11
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_s**, %struct.gx_device_s*** %popdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %11, %struct.gx_device_s** %12, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_struct_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 9
  %14 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_immovable, align 8, !tbaa !13
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %14(%struct.gs_memory_s* %15, %struct.gs_memory_struct_type_s* @st_overprint_device_t, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0)) #4
  %16 = bitcast i8* %call to %struct.overprint_device_s*
  store %struct.overprint_device_s* %16, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %17 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %18 = bitcast %struct.overprint_device_s* %17 to %struct.gx_device_s*
  %19 = load %struct.gx_device_s**, %struct.gx_device_s*** %popdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %18, %struct.gx_device_s** %19, align 8, !tbaa !1
  %20 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.overprint_device_s* %20, null
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end.4
  %21 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %22 = bitcast %struct.overprint_device_s* %21 to %struct.gx_device_s*
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_device_init(%struct.gx_device_s* %22, %struct.gx_device_s* bitcast (%struct.overprint_device_s* @gs_overprint_device to %struct.gx_device_s*), %struct.gs_memory_s* %23, i32 0) #4
  %24 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %no_overprint_procs = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %24, i32 0, i32 50
  %25 = bitcast %struct.gx_device_procs_s* %no_overprint_procs to i8*
  %call7 = call i8* @memcpy(i8* %25, i8* bitcast (%struct.gx_device_procs_s* @no_overprint_procs to i8*), i64 584) #5
  %26 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %generic_overprint_procs = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %26, i32 0, i32 49
  %27 = bitcast %struct.gx_device_procs_s* %generic_overprint_procs to i8*
  %call8 = call i8* @memcpy(i8* %27, i8* bitcast (%struct.gx_device_procs_s* @generic_overprint_procs to i8*), i64 584) #5
  %28 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %sep_overprint_procs = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %28, i32 0, i32 51
  %29 = bitcast %struct.gx_device_procs_s* %sep_overprint_procs to i8*
  %call9 = call i8* @memcpy(i8* %29, i8* bitcast (%struct.gx_device_procs_s* @sep_overprint_procs to i8*), i64 584) #5
  %30 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %no_overprint_procs10 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %30, i32 0, i32 50
  call void @fill_in_procs(%struct.gx_device_procs_s* %no_overprint_procs10) #4
  %31 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %generic_overprint_procs11 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %31, i32 0, i32 49
  call void @fill_in_procs(%struct.gx_device_procs_s* %generic_overprint_procs11) #4
  %32 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %sep_overprint_procs12 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %32, i32 0, i32 51
  call void @fill_in_procs(%struct.gx_device_procs_s* %sep_overprint_procs12) #4
  %33 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %34 = bitcast %struct.overprint_device_s* %33 to %struct.gx_device_s*
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  call void @gx_device_copy_params(%struct.gx_device_s* %34, %struct.gx_device_s* %35) #4
  %36 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %37 = bitcast %struct.overprint_device_s* %36 to %struct.gx_device_forward_s*
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %37, %struct.gx_device_s* %38) #4
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %pad = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 15
  %40 = load i32, i32* %pad, align 4, !tbaa !16
  %41 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %pad13 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %41, i32 0, i32 15
  store i32 %40, i32* %pad13, align 4, !tbaa !27
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 16
  %43 = load i32, i32* %log2_align_mod, align 4, !tbaa !29
  %44 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %log2_align_mod14 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %44, i32 0, i32 16
  store i32 %43, i32* %log2_align_mod14, align 4, !tbaa !30
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 17
  %46 = load i32, i32* %is_planar, align 4, !tbaa !31
  %47 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %is_planar15 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %47, i32 0, i32 17
  store i32 %46, i32* %is_planar15, align 4, !tbaa !32
  %48 = load %struct.gs_overprint_s*, %struct.gs_overprint_s** %ovrpct, align 8, !tbaa !1
  %params16 = getelementptr inbounds %struct.gs_overprint_s, %struct.gs_overprint_s* %48, i32 0, i32 5
  %49 = bitcast %struct.gs_overprint_params_s* %params to i8*
  %50 = bitcast %struct.gs_overprint_params_s* %params16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 32, i32 8, i1 false), !tbaa.struct !33
  %51 = load %struct.gs_overprint_s*, %struct.gs_overprint_s** %ovrpct, align 8, !tbaa !1
  %idle17 = getelementptr inbounds %struct.gs_overprint_s, %struct.gs_overprint_s* %51, i32 0, i32 2
  %52 = load i32, i32* %idle17, align 4, !tbaa !37
  %idle18 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 2
  store i32 %52, i32* %idle18, align 4, !tbaa !38
  %53 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %call19 = call i32 @update_overprint_params(%struct.overprint_device_s* %53, %struct.gs_overprint_params_s* %params) #4
  store i32 %call19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then.3, %if.then
  %54 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 32, i8* %54) #2
  %55 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast %struct.gs_overprint_s** %ovrpct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal i32 @c_overprint_equal(%struct.gs_composite_s* %pct0, %struct.gs_composite_s* %pct1) #0 {
entry:
  %retval = alloca i32, align 4
  %pct0.addr = alloca %struct.gs_composite_s*, align 8
  %pct1.addr = alloca %struct.gs_composite_s*, align 8
  %pparams0 = alloca %struct.gs_overprint_params_s*, align 8
  %pparams1 = alloca %struct.gs_overprint_params_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_composite_s* %pct0, %struct.gs_composite_s** %pct0.addr, align 8, !tbaa !1
  store %struct.gs_composite_s* %pct1, %struct.gs_composite_s** %pct1.addr, align 8, !tbaa !1
  %0 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct0.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %0, i32 0, i32 0
  %1 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type, align 8, !tbaa !39
  %2 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct1.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %2, i32 0, i32 0
  %3 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type1, align 8, !tbaa !39
  %cmp = icmp eq %struct.gs_composite_type_s* %1, %3
  br i1 %cmp, label %if.then, label %if.else.13

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.gs_overprint_params_s** %pparams0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast %struct.gs_overprint_params_s** %pparams1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct0.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_composite_s* %6 to %struct.gs_overprint_s*
  %params = getelementptr inbounds %struct.gs_overprint_s, %struct.gs_overprint_s* %7, i32 0, i32 5
  store %struct.gs_overprint_params_s* %params, %struct.gs_overprint_params_s** %pparams0, align 8, !tbaa !1
  %8 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct1.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gs_composite_s* %8 to %struct.gs_overprint_s*
  %params2 = getelementptr inbounds %struct.gs_overprint_s, %struct.gs_overprint_s* %9, i32 0, i32 5
  store %struct.gs_overprint_params_s* %params2, %struct.gs_overprint_params_s** %pparams1, align 8, !tbaa !1
  %10 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams0, align 8, !tbaa !1
  %retain_any_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %10, i32 0, i32 0
  %11 = load i32, i32* %retain_any_comps, align 4, !tbaa !40
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %12 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams1, align 8, !tbaa !1
  %retain_any_comps4 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %12, i32 0, i32 0
  %13 = load i32, i32* %retain_any_comps4, align 4, !tbaa !40
  %tobool5 = icmp ne i32 %13, 0
  %lnot = xor i1 %tobool5, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then
  %14 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams0, align 8, !tbaa !1
  %retain_spot_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %14, i32 0, i32 1
  %15 = load i32, i32* %retain_spot_comps, align 4, !tbaa !41
  %tobool6 = icmp ne i32 %15, 0
  br i1 %tobool6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %16 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams1, align 8, !tbaa !1
  %retain_spot_comps8 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %16, i32 0, i32 1
  %17 = load i32, i32* %retain_spot_comps8, align 4, !tbaa !41
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.9:                                        ; preds = %if.else
  %18 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams0, align 8, !tbaa !1
  %drawn_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %18, i32 0, i32 3
  %19 = load i64, i64* %drawn_comps, align 8, !tbaa !42
  %20 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams1, align 8, !tbaa !1
  %drawn_comps10 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %20, i32 0, i32 3
  %21 = load i64, i64* %drawn_comps10, align 8, !tbaa !42
  %cmp11 = icmp eq i64 %19, %21
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.9, %if.then.7, %if.then.3
  %22 = bitcast %struct.gs_overprint_params_s** %pparams1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.gs_overprint_params_s** %pparams0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  br label %return

if.else.13:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.13, %cleanup
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @c_overprint_write(%struct.gs_composite_s* %pct, i8* %data, i32* %psize, %struct.gx_device_clist_writer_s* %cdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pct.addr = alloca %struct.gs_composite_s*, align 8
  %data.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  %cdev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pparams = alloca %struct.gs_overprint_params_s*, align 8
  %flags = alloca i8, align 1
  %used = alloca i32, align 4
  %avail = alloca i32, align 4
  %tmp_size = alloca i32, align 4
  %code = alloca i32, align 4
  %pos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_composite_s* %pct, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  store %struct.gx_device_clist_writer_s* %cdev, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_overprint_params_s** %pparams to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_composite_s* %1 to %struct.gs_overprint_s*
  %params = getelementptr inbounds %struct.gs_overprint_s, %struct.gs_overprint_s* %2, i32 0, i32 5
  store %struct.gs_overprint_params_s* %params, %struct.gs_overprint_params_s** %pparams, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %flags) #2
  store i8 0, i8* %flags, align 1, !tbaa !43
  %3 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 1, i32* %used, align 4, !tbaa !34
  %4 = bitcast i32* %avail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %6 = load i32, i32* %5, align 4, !tbaa !34
  store i32 %6, i32* %avail, align 4, !tbaa !34
  %7 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams, align 8, !tbaa !1
  %retain_any_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %7, i32 0, i32 0
  %8 = load i32, i32* %retain_any_comps, align 4, !tbaa !40
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.46

if.then:                                          ; preds = %entry
  %9 = load i8, i8* %flags, align 1, !tbaa !43
  %conv = zext i8 %9 to i32
  %or = or i32 %conv, 1
  %conv1 = trunc i32 %or to i8
  store i8 %conv1, i8* %flags, align 1, !tbaa !43
  %10 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams, align 8, !tbaa !1
  %blendspot = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %10, i32 0, i32 5
  %11 = load i32, i32* %blendspot, align 4, !tbaa !44
  %tobool2 = icmp ne i32 %11, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %12 = load i8, i8* %flags, align 1, !tbaa !43
  %conv4 = zext i8 %12 to i32
  %or5 = or i32 %conv4, 4
  %conv6 = trunc i32 %or5 to i8
  store i8 %conv6, i8* %flags, align 1, !tbaa !43
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %13 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams, align 8, !tbaa !1
  %retain_spot_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %13, i32 0, i32 1
  %14 = load i32, i32* %retain_spot_comps, align 4, !tbaa !41
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %15 = load i8, i8* %flags, align 1, !tbaa !43
  %conv9 = zext i8 %15 to i32
  %or10 = or i32 %conv9, 2
  %conv11 = trunc i32 %or10 to i8
  store i8 %conv11, i8* %flags, align 1, !tbaa !43
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %16 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams, align 8, !tbaa !1
  %retain_spot_comps13 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %16, i32 0, i32 1
  %17 = load i32, i32* %retain_spot_comps13, align 4, !tbaa !41
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %lor.lhs.false, label %if.then.17

lor.lhs.false:                                    ; preds = %if.end.12
  %18 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams, align 8, !tbaa !1
  %blendspot15 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %18, i32 0, i32 5
  %19 = load i32, i32* %blendspot15, align 4, !tbaa !44
  %tobool16 = icmp ne i32 %19, 0
  br i1 %tobool16, label %if.then.17, label %if.end.45

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.12
  %20 = bitcast i32* %tmp_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load i32, i32* %avail, align 4, !tbaa !34
  %cmp = icmp sgt i32 %21, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.17
  %22 = load i32, i32* %avail, align 4, !tbaa !34
  %sub = sub nsw i32 %22, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %tmp_size, align 4, !tbaa !34
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams, align 8, !tbaa !1
  %drawn_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %24, i32 0, i32 3
  %25 = load i64, i64* %drawn_comps, align 8, !tbaa !42
  %26 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 1
  %call = call i32 @write_color_index(i64 %25, i8* %add.ptr, i32* %tmp_size) #4
  store i32 %call, i32* %code, align 4, !tbaa !34
  %27 = load i32, i32* %code, align 4, !tbaa !34
  %cmp19 = icmp eq i32 %27, 0
  br i1 %cmp19, label %if.then.21, label %if.end.30

if.then.21:                                       ; preds = %cond.end
  %28 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load i32, i32* %tmp_size, align 4, !tbaa !34
  %add = add i32 %29, 1
  store i32 %add, i32* %pos, align 4, !tbaa !34
  %30 = load i32, i32* %pos, align 4, !tbaa !34
  %idxprom = sext i32 %30 to i64
  %31 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 %idxprom
  %32 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams, align 8, !tbaa !1
  %k_value = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %32, i32 0, i32 4
  %33 = bitcast i16* %k_value to i8*
  %call22 = call i8* @memcpy(i8* %arrayidx, i8* %33, i64 2) #5
  %34 = load i32, i32* %pos, align 4, !tbaa !34
  %conv23 = sext i32 %34 to i64
  %add24 = add i64 %conv23, 2
  %conv25 = trunc i64 %add24 to i32
  store i32 %conv25, i32* %pos, align 4, !tbaa !34
  %35 = load i32, i32* %pos, align 4, !tbaa !34
  %idxprom26 = sext i32 %35 to i64
  %36 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %36, i64 %idxprom26
  %37 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams, align 8, !tbaa !1
  %blendspot28 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %37, i32 0, i32 5
  %38 = bitcast i32* %blendspot28 to i8*
  %call29 = call i8* @memcpy(i8* %arrayidx27, i8* %38, i64 4) #5
  %39 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.21, %cond.end
  %40 = load i32, i32* %used, align 4, !tbaa !34
  %conv31 = sext i32 %40 to i64
  %add32 = add i64 %conv31, 2
  %conv33 = trunc i64 %add32 to i32
  store i32 %conv33, i32* %used, align 4, !tbaa !34
  %41 = load i32, i32* %used, align 4, !tbaa !34
  %conv34 = sext i32 %41 to i64
  %add35 = add i64 %conv34, 4
  %conv36 = trunc i64 %add35 to i32
  store i32 %conv36, i32* %used, align 4, !tbaa !34
  %42 = load i32, i32* %code, align 4, !tbaa !34
  %cmp37 = icmp slt i32 %42, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.end.30
  %43 = load i32, i32* %code, align 4, !tbaa !34
  %cmp39 = icmp ne i32 %43, -15
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true
  %44 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %land.lhs.true, %if.end.30
  %45 = load i32, i32* %tmp_size, align 4, !tbaa !34
  %46 = load i32, i32* %used, align 4, !tbaa !34
  %add43 = add i32 %46, %45
  store i32 %add43, i32* %used, align 4, !tbaa !34
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.41
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %tmp_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.52 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.45

if.end.45:                                        ; preds = %cleanup.cont, %lor.lhs.false
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %entry
  %49 = load i32, i32* %used, align 4, !tbaa !34
  %50 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %49, i32* %50, align 4, !tbaa !34
  %51 = load i32, i32* %used, align 4, !tbaa !34
  %52 = load i32, i32* %avail, align 4, !tbaa !34
  %cmp47 = icmp sgt i32 %51, %52
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

if.end.50:                                        ; preds = %if.end.46
  %53 = load i8, i8* %flags, align 1, !tbaa !43
  %54 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 %53, i8* %arrayidx51, align 1, !tbaa !43
  br label %do.body

do.body:                                          ; preds = %if.end.50
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

cleanup.52:                                       ; preds = %do.end, %if.then.49, %cleanup
  %55 = bitcast i32* %avail to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  call void @llvm.lifetime.end(i64 1, i8* %flags) #2
  %57 = bitcast %struct.gs_overprint_params_s** %pparams to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @c_overprint_read(%struct.gs_composite_s** %ppct, i8* %data, i32 %size, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppct.addr = alloca %struct.gs_composite_s**, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %params = alloca %struct.gs_overprint_params_s, align 8
  %flags = alloca i8, align 1
  %code = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_composite_s** %ppct, %struct.gs_composite_s*** %ppct.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !34
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #2
  call void @llvm.lifetime.start(i64 1, i8* %flags) #2
  store i8 0, i8* %flags, align 1, !tbaa !43
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %code, align 4, !tbaa !34
  %2 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 1, i32* %nbytes, align 4, !tbaa !34
  %3 = load i32, i32* %size.addr, align 4, !tbaa !34
  %cmp = icmp ult i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !43
  store i8 %5, i8* %flags, align 1, !tbaa !43
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load i8, i8* %flags, align 1, !tbaa !43
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 1
  %cmp1 = icmp ne i32 %and, 0
  %conv2 = zext i1 %cmp1 to i32
  %retain_any_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 0
  store i32 %conv2, i32* %retain_any_comps, align 4, !tbaa !40
  %7 = load i8, i8* %flags, align 1, !tbaa !43
  %conv3 = zext i8 %7 to i32
  %and4 = and i32 %conv3, 2
  %cmp5 = icmp ne i32 %and4, 0
  %conv6 = zext i1 %cmp5 to i32
  %retain_spot_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 1
  store i32 %conv6, i32* %retain_spot_comps, align 4, !tbaa !41
  %idle = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 2
  store i32 0, i32* %idle, align 4, !tbaa !38
  %8 = load i8, i8* %flags, align 1, !tbaa !43
  %conv7 = zext i8 %8 to i32
  %and8 = and i32 %conv7, 4
  %cmp9 = icmp ne i32 %and8, 0
  %conv10 = zext i1 %cmp9 to i32
  %blendspot = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 5
  store i32 %conv10, i32* %blendspot, align 4, !tbaa !44
  %k_value = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 4
  store i16 0, i16* %k_value, align 2, !tbaa !45
  %retain_any_comps11 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 0
  %9 = load i32, i32* %retain_any_comps11, align 4, !tbaa !40
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %do.end
  %retain_spot_comps12 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 1
  %10 = load i32, i32* %retain_spot_comps12, align 4, !tbaa !41
  %tobool13 = icmp ne i32 %10, 0
  br i1 %tobool13, label %lor.lhs.false, label %if.then.16

lor.lhs.false:                                    ; preds = %land.lhs.true
  %blendspot14 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 5
  %11 = load i32, i32* %blendspot14, align 4, !tbaa !44
  %tobool15 = icmp ne i32 %11, 0
  br i1 %tobool15, label %if.then.16, label %if.end.33

if.then.16:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %drawn_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 3
  %12 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i32, i32* %size.addr, align 4, !tbaa !34
  %sub = sub i32 %13, 1
  %call = call i32 @read_color_index(i64* %drawn_comps, i8* %add.ptr, i32 %sub) #4
  store i32 %call, i32* %code, align 4, !tbaa !34
  %14 = load i32, i32* %code, align 4, !tbaa !34
  %cmp17 = icmp slt i32 %14, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.16
  %15 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.then.16
  %16 = load i32, i32* %code, align 4, !tbaa !34
  %17 = load i32, i32* %nbytes, align 4, !tbaa !34
  %add = add nsw i32 %17, %16
  store i32 %add, i32* %nbytes, align 4, !tbaa !34
  %k_value21 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 4
  %18 = bitcast i16* %k_value21 to i8*
  %19 = load i32, i32* %nbytes, align 4, !tbaa !34
  %idxprom = sext i32 %19 to i64
  %20 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 %idxprom
  %call22 = call i8* @memcpy(i8* %18, i8* %arrayidx, i64 2) #5
  %21 = load i32, i32* %nbytes, align 4, !tbaa !34
  %conv23 = sext i32 %21 to i64
  %add24 = add i64 %conv23, 2
  %conv25 = trunc i64 %add24 to i32
  store i32 %conv25, i32* %nbytes, align 4, !tbaa !34
  %blendspot26 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 5
  %22 = bitcast i32* %blendspot26 to i8*
  %23 = load i32, i32* %nbytes, align 4, !tbaa !34
  %idxprom27 = sext i32 %23 to i64
  %24 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %24, i64 %idxprom27
  %call29 = call i8* @memcpy(i8* %22, i8* %arrayidx28, i64 4) #5
  %25 = load i32, i32* %nbytes, align 4, !tbaa !34
  %conv30 = sext i32 %25 to i64
  %add31 = add i64 %conv30, 4
  %conv32 = trunc i64 %add31 to i32
  store i32 %conv32, i32* %nbytes, align 4, !tbaa !34
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.20, %lor.lhs.false, %do.end
  %26 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppct.addr, align 8, !tbaa !1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call34 = call i32 @gs_create_overprint(%struct.gs_composite_s** %26, %struct.gs_overprint_params_s* %params, %struct.gs_memory_s* %27) #4
  store i32 %call34, i32* %code, align 4, !tbaa !34
  %28 = load i32, i32* %code, align 4, !tbaa !34
  %cmp35 = icmp slt i32 %28, 0
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.33
  %29 = load i32, i32* %code, align 4, !tbaa !34
  br label %cond.end

cond.false:                                       ; preds = %if.end.33
  %30 = load i32, i32* %nbytes, align 4, !tbaa !34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %30, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.19, %if.then
  %31 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  call void @llvm.lifetime.end(i64 1, i8* %flags) #2
  %33 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 32, i8* %33) #2
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i32 @gx_default_composite_adjust_ctm(%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @c_overprint_is_closing(%struct.gs_composite_s* %this, %struct.gs_composite_s** %ppcte, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.gs_composite_s*, align 8
  %ppcte.addr = alloca %struct.gs_composite_s**, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_composite_s* %this, %struct.gs_composite_s** %this.addr, align 8, !tbaa !1
  store %struct.gs_composite_s** %ppcte, %struct.gs_composite_s*** %ppcte.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcte.addr, align 8, !tbaa !1
  %1 = load %struct.gs_composite_s*, %struct.gs_composite_s** %0, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_composite_s* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcte.addr, align 8, !tbaa !1
  %3 = load %struct.gs_composite_s*, %struct.gs_composite_s** %2, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %3, i32 0, i32 0
  %4 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type, align 8, !tbaa !39
  %comp_id = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %4, i32 0, i32 0
  %5 = load i8, i8* %comp_id, align 1, !tbaa !46
  %conv = zext i8 %5 to i32
  %cmp1 = icmp ne i32 %conv, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @gx_default_composite_is_friendly(%struct.gs_composite_s*, i8 zeroext, i8 zeroext) #1

declare i32 @gx_default_composite_clist_write_update(%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*) #1

declare i32 @gx_default_composite_clist_read_update(%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*) #1

declare i32 @gx_default_composite_get_cropping(%struct.gs_composite_s*, i32*, i32*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gs_create_overprint(%struct.gs_composite_s** %ppct, %struct.gs_overprint_params_s* %pparams, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppct.addr = alloca %struct.gs_composite_s**, align 8
  %pparams.addr = alloca %struct.gs_overprint_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pct = alloca %struct.gs_overprint_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_composite_s** %ppct, %struct.gs_composite_s*** %ppct.addr, align 8, !tbaa !1
  store %struct.gs_overprint_params_s* %pparams, %struct.gs_overprint_params_s** %pparams.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_overprint_s** %pct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !49
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_overprint, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)) #4
  %4 = bitcast i8* %call to %struct.gs_overprint_s*
  store %struct.gs_overprint_s* %4, %struct.gs_overprint_s** %pct, align 8, !tbaa !1
  %5 = load %struct.gs_overprint_s*, %struct.gs_overprint_s** %pct, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_overprint_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_overprint_s*, %struct.gs_overprint_s** %pct, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_overprint_s, %struct.gs_overprint_s* %6, i32 0, i32 0
  store %struct.gs_composite_type_s* bitcast ({ i8, { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* } }* @gs_composite_overprint_type to %struct.gs_composite_type_s*), %struct.gs_composite_type_s** %type, align 8, !tbaa !50
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i64 @gs_next_ids(%struct.gs_memory_s* %7, i32 1) #4
  %8 = load %struct.gs_overprint_s*, %struct.gs_overprint_s** %pct, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_overprint_s, %struct.gs_overprint_s* %8, i32 0, i32 1
  store i64 %call1, i64* %id, align 8, !tbaa !51
  %9 = load %struct.gs_overprint_s*, %struct.gs_overprint_s** %pct, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_overprint_s, %struct.gs_overprint_s* %9, i32 0, i32 5
  %10 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gs_overprint_params_s* %params to i8*
  %12 = bitcast %struct.gs_overprint_params_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false), !tbaa.struct !33
  %13 = load %struct.gs_overprint_s*, %struct.gs_overprint_s** %pct, align 8, !tbaa !1
  %idle = getelementptr inbounds %struct.gs_overprint_s, %struct.gs_overprint_s* %13, i32 0, i32 2
  store i32 0, i32* %idle, align 4, !tbaa !37
  %14 = load %struct.gs_overprint_s*, %struct.gs_overprint_s** %pct, align 8, !tbaa !1
  %15 = bitcast %struct.gs_overprint_s* %14 to %struct.gs_composite_s*
  %16 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppct.addr, align 8, !tbaa !1
  store %struct.gs_composite_s* %15, %struct.gs_composite_s** %16, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast %struct.gs_overprint_s** %pct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gs_is_overprint_compositor(%struct.gs_composite_s* %pct) #0 {
entry:
  %pct.addr = alloca %struct.gs_composite_s*, align 8
  store %struct.gs_composite_s* %pct, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  %0 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %0, i32 0, i32 0
  %1 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type, align 8, !tbaa !39
  %cmp = icmp eq %struct.gs_composite_type_s* %1, bitcast ({ i8, { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* } }* @gs_composite_overprint_type to %struct.gs_composite_type_s*)
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @write_color_index(i64 %cindex, i8* %data, i32* %psize) #0 {
entry:
  %retval = alloca i32, align 4
  %cindex.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  %num_bytes = alloca i32, align 4
  %ctmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %cindex, i64* %cindex.addr, align 8, !tbaa !35
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %num_bytes, align 4, !tbaa !34
  %1 = bitcast i64* %ctmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i64, i64* %cindex.addr, align 8, !tbaa !35
  store i64 %2, i64* %ctmp, align 8, !tbaa !35
  store i32 1, i32* %num_bytes, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %ctmp, align 8, !tbaa !35
  %shr = lshr i64 %3, 7
  store i64 %shr, i64* %ctmp, align 8, !tbaa !35
  %cmp = icmp ne i64 %shr, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %num_bytes, align 4, !tbaa !34
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %num_bytes, align 4, !tbaa !34
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %num_bytes, align 4, !tbaa !34
  %6 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %7 = load i32, i32* %6, align 4, !tbaa !34
  %cmp1 = icmp ugt i32 %5, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %8 = load i32, i32* %num_bytes, align 4, !tbaa !34
  %9 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %8, i32* %9, align 4, !tbaa !34
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end
  %10 = load i64, i64* %cindex.addr, align 8, !tbaa !35
  store i64 %10, i64* %ctmp, align 8, !tbaa !35
  %11 = load i32, i32* %num_bytes, align 4, !tbaa !34
  %12 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %11, i32* %12, align 4, !tbaa !34
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.5, %if.end
  %13 = load i32, i32* %num_bytes, align 4, !tbaa !34
  %cmp3 = icmp sgt i32 %13, 1
  br i1 %cmp3, label %for.body.4, label %for.end.7

for.body.4:                                       ; preds = %for.cond.2
  %14 = load i64, i64* %ctmp, align 8, !tbaa !35
  %and = and i64 %14, 127
  %or = or i64 128, %and
  %conv = trunc i64 %or to i8
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv, i8* %15, align 1, !tbaa !43
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.body.4
  %16 = load i64, i64* %ctmp, align 8, !tbaa !35
  %shr6 = lshr i64 %16, 7
  store i64 %shr6, i64* %ctmp, align 8, !tbaa !35
  %17 = load i32, i32* %num_bytes, align 4, !tbaa !34
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %num_bytes, align 4, !tbaa !34
  br label %for.cond.2

for.end.7:                                        ; preds = %for.cond.2
  %18 = load i64, i64* %ctmp, align 8, !tbaa !35
  %and8 = and i64 %18, 127
  %conv9 = trunc i64 %and8 to i8
  %19 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv9, i8* %19, align 1, !tbaa !43
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.7, %if.then
  %20 = bitcast i64* %ctmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @read_color_index(i64* %pcindex, i8* %data, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pcindex.addr = alloca i64*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %cindex = alloca i64, align 8
  %nbytes = alloca i32, align 4
  %shift = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %byte = alloca i8, align 1
  %c = alloca i64, align 8
  store i64* %pcindex, i64** %pcindex.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !34
  %0 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store i64 0, i64* %cindex, align 8, !tbaa !35
  %1 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %nbytes, align 4, !tbaa !34
  %2 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %shift, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %nbytes, align 4, !tbaa !34
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %nbytes, align 4, !tbaa !34
  %4 = load i32, i32* %size.addr, align 4, !tbaa !34
  %cmp = icmp ugt i32 %inc, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.8

if.else:                                          ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %byte) #2
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !43
  store i8 %6, i8* %byte, align 1, !tbaa !43
  %7 = bitcast i64* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i8, i8* %byte, align 1, !tbaa !43
  %conv = zext i8 %8 to i64
  store i64 %conv, i64* %c, align 8, !tbaa !35
  %9 = load i64, i64* %c, align 8, !tbaa !35
  %and = and i64 %9, 127
  %10 = load i32, i32* %shift, align 4, !tbaa !34
  %sh_prom = zext i32 %10 to i64
  %shl = shl i64 %and, %sh_prom
  %11 = load i64, i64* %cindex, align 8, !tbaa !35
  %add = add i64 %11, %shl
  store i64 %add, i64* %cindex, align 8, !tbaa !35
  %12 = load i64, i64* %c, align 8, !tbaa !35
  %and1 = and i64 %12, 128
  %cmp2 = icmp eq i64 %and1, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %13 = bitcast i64* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  call void @llvm.lifetime.end(i64 1, i8* %byte) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.6

if.end.6:                                         ; preds = %cleanup.cont
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %14 = load i32, i32* %shift, align 4, !tbaa !34
  %add7 = add nsw i32 %14, 7
  store i32 %add7, i32* %shift, align 4, !tbaa !34
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %cleanup
  %16 = load i64, i64* %cindex, align 8, !tbaa !35
  %17 = load i64*, i64** %pcindex.addr, align 8, !tbaa !1
  store i64 %16, i64* %17, align 8, !tbaa !35
  %18 = load i32, i32* %nbytes, align 4, !tbaa !34
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.8

cleanup.8:                                        ; preds = %for.end, %if.then
  %19 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = load i32, i32* %retval
  ret i32 %22

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @gx_device_init(%struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @fill_in_procs(%struct.gx_device_procs_s* %pprocs) #0 {
entry:
  %pprocs.addr = alloca %struct.gx_device_procs_s*, align 8
  %tmpdev = alloca %struct.gx_device_forward_s, align 8
  store %struct.gx_device_procs_s* %pprocs, %struct.gx_device_procs_s** %pprocs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s* %tmpdev to i8*
  call void @llvm.lifetime.start(i64 1736, i8* %0) #2
  %color_info = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %tmpdev, i32 0, i32 11
  %1 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  %call = call i8* @memcpy(i8* %1, i8* bitcast (%struct.gx_device_color_info_s* getelementptr inbounds (%struct.overprint_device_s, %struct.overprint_device_s* @gs_overprint_device, i32 0, i32 11) to i8*), i64 720) #5
  %color_info1 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %tmpdev, i32 0, i32 11
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 10
  store i32 0, i32* %separable_and_linear, align 4, !tbaa !52
  %static_procs = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %tmpdev, i32 0, i32 1
  store %struct.gx_device_procs_s* null, %struct.gx_device_procs_s** %static_procs, align 8, !tbaa !54
  %procs = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %tmpdev, i32 0, i32 42
  %2 = bitcast %struct.gx_device_procs_s* %procs to i8*
  %3 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %pprocs.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_procs_s* %3 to i8*
  %call2 = call i8* @memcpy(i8* %2, i8* %4, i64 584) #5
  call void @gx_device_forward_fill_in_procs(%struct.gx_device_forward_s* %tmpdev) #4
  %5 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %pprocs.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_procs_s* %5 to i8*
  %procs3 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %tmpdev, i32 0, i32 42
  %7 = bitcast %struct.gx_device_procs_s* %procs3 to i8*
  %call4 = call i8* @memcpy(i8* %6, i8* %7, i64 584) #5
  %8 = bitcast %struct.gx_device_forward_s* %tmpdev to i8*
  call void @llvm.lifetime.end(i64 1736, i8* %8) #2
  ret void
}

declare void @gx_device_copy_params(%struct.gx_device_s*, %struct.gx_device_s*) #1

declare void @gx_device_set_target(%struct.gx_device_forward_s*, %struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @update_overprint_params(%struct.overprint_device_s* %opdev, %struct.gs_overprint_params_s* %pparams) #0 {
entry:
  %retval = alloca i32, align 4
  %opdev.addr = alloca %struct.overprint_device_s*, align 8
  %pparams.addr = alloca %struct.gs_overprint_params_s*, align 8
  %ncomps = alloca i32, align 4
  %degenerate_k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dev = alloca %struct.gx_device_s*, align 8
  %pprocs = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %cvals = alloca [64 x i16], align 16
  %drawn_comps19 = alloca i64, align 8
  store %struct.overprint_device_s* %opdev, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  store %struct.gs_overprint_params_s* %pparams, %struct.gs_overprint_params_s** %pparams.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !55
  store i32 %2, i32* %ncomps, align 4, !tbaa !34
  %3 = bitcast i32* %degenerate_k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 1, i32* %degenerate_k, align 4, !tbaa !34
  %4 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams.addr, align 8, !tbaa !1
  %retain_any_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %4, i32 0, i32 0
  %5 = load i32, i32* %retain_any_comps, align 4, !tbaa !40
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams.addr, align 8, !tbaa !1
  %idle = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %6, i32 0, i32 2
  %7 = load i32, i32* %idle, align 4, !tbaa !38
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.then, label %if.end.4

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %8, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %9 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !56
  %cmp = icmp ne i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %9, @gx_forward_fill_rectangle
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %10 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %10, i32 0, i32 42
  %11 = bitcast %struct.gx_device_procs_s* %procs3 to i8*
  %12 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %no_overprint_procs = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %12, i32 0, i32 50
  %13 = bitcast %struct.gx_device_procs_s* %no_overprint_procs to i8*
  %call = call i8* @memcpy(i8* %11, i8* %13, i64 584) #5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.99

if.end.4:                                         ; preds = %lor.lhs.false
  %14 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %14, i32 0, i32 11
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 10
  %15 = load i32, i32* %separable_and_linear, align 4, !tbaa !57
  %cmp6 = icmp eq i32 %15, 1
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.4
  %16 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %16, i32 0, i32 42
  %17 = bitcast %struct.gx_device_procs_s* %procs8 to i8*
  %18 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %sep_overprint_procs = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %18, i32 0, i32 51
  %19 = bitcast %struct.gx_device_procs_s* %sep_overprint_procs to i8*
  %call9 = call i8* @memcpy(i8* %17, i8* %19, i64 584) #5
  br label %if.end.12

if.else:                                          ; preds = %if.end.4
  %20 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %20, i32 0, i32 42
  %21 = bitcast %struct.gx_device_procs_s* %procs10 to i8*
  %22 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %generic_overprint_procs = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %22, i32 0, i32 49
  %23 = bitcast %struct.gx_device_procs_s* %generic_overprint_procs to i8*
  %call11 = call i8* @memcpy(i8* %21, i8* %23, i64 584) #5
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.7
  %24 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams.addr, align 8, !tbaa !1
  %blendspot = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %24, i32 0, i32 5
  %25 = load i32, i32* %blendspot, align 4, !tbaa !44
  %26 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %blendspot13 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %26, i32 0, i32 46
  store i32 %25, i32* %blendspot13, align 4, !tbaa !58
  %27 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams.addr, align 8, !tbaa !1
  %retain_spot_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %27, i32 0, i32 1
  %28 = load i32, i32* %retain_spot_comps, align 4, !tbaa !41
  %tobool14 = icmp ne i32 %28, 0
  br i1 %tobool14, label %if.else.18, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  %29 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams.addr, align 8, !tbaa !1
  %drawn_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %29, i32 0, i32 3
  %30 = load i64, i64* %drawn_comps, align 8, !tbaa !42
  %31 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %drawn_comps16 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %31, i32 0, i32 44
  store i64 %30, i64* %drawn_comps16, align 8, !tbaa !59
  %32 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams.addr, align 8, !tbaa !1
  %k_value = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %32, i32 0, i32 4
  %33 = load i16, i16* %k_value, align 2, !tbaa !45
  %34 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %k_value17 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %34, i32 0, i32 45
  store i16 %33, i16* %k_value17, align 2, !tbaa !60
  br label %if.end.73

if.else.18:                                       ; preds = %if.end.12
  %35 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %36 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %37 = bitcast %struct.overprint_device_s* %36 to %struct.gx_device_s*
  store %struct.gx_device_s* %37, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %38 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #2
  %39 = bitcast [64 x i16]* %cvals to i8*
  call void @llvm.lifetime.start(i64 128, i8* %39) #2
  %40 = bitcast i64* %drawn_comps19 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #2
  store i64 0, i64* %drawn_comps19, align 8, !tbaa !35
  %41 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %procs20 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %41, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs20, i32 0, i32 49
  %42 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !61
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call21 = call %struct.gx_cm_color_map_procs_s* %42(%struct.gx_device_s* %43) #4
  store %struct.gx_cm_color_map_procs_s* %call21, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %cmp22 = icmp eq %struct.gx_cm_color_map_procs_s* %call21, null
  br i1 %cmp22, label %if.then.29, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.else.18
  %44 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_gray = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %44, i32 0, i32 0
  %45 = load void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, i16, i16*)** %map_gray, align 8, !tbaa !62
  %cmp24 = icmp eq void (%struct.gx_device_s*, i16, i16*)* %45, null
  br i1 %cmp24, label %if.then.29, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.23
  %46 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_rgb = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %46, i32 0, i32 1
  %47 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb, align 8, !tbaa !64
  %cmp26 = icmp eq void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* %47, null
  br i1 %cmp26, label %if.then.29, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.25
  %48 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_cmyk = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %48, i32 0, i32 2
  %49 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk, align 8, !tbaa !65
  %cmp28 = icmp eq void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* %49, null
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false.27, %lor.lhs.false.25, %lor.lhs.false.23, %if.else.18
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %lor.lhs.false.27
  %50 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_gray31 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %50, i32 0, i32 0
  %51 = load void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, i16, i16*)** %map_gray31, align 8, !tbaa !62
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  call void %51(%struct.gx_device_s* %52, i16 signext 10920, i16* %arraydecay) #4
  %53 = load i32, i32* %ncomps, align 4, !tbaa !34
  %arraydecay32 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  %call33 = call i64 @check_drawn_comps(i32 %53, i16* %arraydecay32) #4
  %54 = load i64, i64* %drawn_comps19, align 8, !tbaa !35
  %or = or i64 %54, %call33
  store i64 %or, i64* %drawn_comps19, align 8, !tbaa !35
  %55 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_rgb34 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %55, i32 0, i32 1
  %56 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb34, align 8, !tbaa !64
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %arraydecay35 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  call void %56(%struct.gx_device_s* %57, %struct.gs_imager_state_s* null, i16 signext 10920, i16 signext 0, i16 signext 0, i16* %arraydecay35) #4
  %58 = load i32, i32* %ncomps, align 4, !tbaa !34
  %arraydecay36 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  %call37 = call i64 @check_drawn_comps(i32 %58, i16* %arraydecay36) #4
  %59 = load i64, i64* %drawn_comps19, align 8, !tbaa !35
  %or38 = or i64 %59, %call37
  store i64 %or38, i64* %drawn_comps19, align 8, !tbaa !35
  %60 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_rgb39 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %60, i32 0, i32 1
  %61 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb39, align 8, !tbaa !64
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %arraydecay40 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  call void %61(%struct.gx_device_s* %62, %struct.gs_imager_state_s* null, i16 signext 0, i16 signext 10920, i16 signext 0, i16* %arraydecay40) #4
  %63 = load i32, i32* %ncomps, align 4, !tbaa !34
  %arraydecay41 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  %call42 = call i64 @check_drawn_comps(i32 %63, i16* %arraydecay41) #4
  %64 = load i64, i64* %drawn_comps19, align 8, !tbaa !35
  %or43 = or i64 %64, %call42
  store i64 %or43, i64* %drawn_comps19, align 8, !tbaa !35
  %65 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_rgb44 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %65, i32 0, i32 1
  %66 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb44, align 8, !tbaa !64
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %arraydecay45 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  call void %66(%struct.gx_device_s* %67, %struct.gs_imager_state_s* null, i16 signext 0, i16 signext 0, i16 signext 10920, i16* %arraydecay45) #4
  %68 = load i32, i32* %ncomps, align 4, !tbaa !34
  %arraydecay46 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  %call47 = call i64 @check_drawn_comps(i32 %68, i16* %arraydecay46) #4
  %69 = load i64, i64* %drawn_comps19, align 8, !tbaa !35
  %or48 = or i64 %69, %call47
  store i64 %or48, i64* %drawn_comps19, align 8, !tbaa !35
  %70 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_cmyk49 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %70, i32 0, i32 2
  %71 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk49, align 8, !tbaa !65
  %72 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %arraydecay50 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  call void %71(%struct.gx_device_s* %72, i16 signext 10920, i16 signext 0, i16 signext 0, i16 signext 0, i16* %arraydecay50) #4
  %73 = load i32, i32* %ncomps, align 4, !tbaa !34
  %arraydecay51 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  %call52 = call i64 @check_drawn_comps(i32 %73, i16* %arraydecay51) #4
  %74 = load i64, i64* %drawn_comps19, align 8, !tbaa !35
  %or53 = or i64 %74, %call52
  store i64 %or53, i64* %drawn_comps19, align 8, !tbaa !35
  %75 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_cmyk54 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %75, i32 0, i32 2
  %76 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk54, align 8, !tbaa !65
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %arraydecay55 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  call void %76(%struct.gx_device_s* %77, i16 signext 0, i16 signext 10920, i16 signext 0, i16 signext 0, i16* %arraydecay55) #4
  %78 = load i32, i32* %ncomps, align 4, !tbaa !34
  %arraydecay56 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  %call57 = call i64 @check_drawn_comps(i32 %78, i16* %arraydecay56) #4
  %79 = load i64, i64* %drawn_comps19, align 8, !tbaa !35
  %or58 = or i64 %79, %call57
  store i64 %or58, i64* %drawn_comps19, align 8, !tbaa !35
  %80 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_cmyk59 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %80, i32 0, i32 2
  %81 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk59, align 8, !tbaa !65
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %arraydecay60 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  call void %81(%struct.gx_device_s* %82, i16 signext 0, i16 signext 0, i16 signext 10920, i16 signext 0, i16* %arraydecay60) #4
  %83 = load i32, i32* %ncomps, align 4, !tbaa !34
  %arraydecay61 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  %call62 = call i64 @check_drawn_comps(i32 %83, i16* %arraydecay61) #4
  %84 = load i64, i64* %drawn_comps19, align 8, !tbaa !35
  %or63 = or i64 %84, %call62
  store i64 %or63, i64* %drawn_comps19, align 8, !tbaa !35
  %85 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_cmyk64 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %85, i32 0, i32 2
  %86 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk64, align 8, !tbaa !65
  %87 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %arraydecay65 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  call void %86(%struct.gx_device_s* %87, i16 signext 0, i16 signext 0, i16 signext 0, i16 signext 10920, i16* %arraydecay65) #4
  %88 = load i32, i32* %ncomps, align 4, !tbaa !34
  %arraydecay66 = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  %call67 = call i64 @check_drawn_comps(i32 %88, i16* %arraydecay66) #4
  %89 = load i64, i64* %drawn_comps19, align 8, !tbaa !35
  %or68 = or i64 %89, %call67
  store i64 %or68, i64* %drawn_comps19, align 8, !tbaa !35
  %90 = load i64, i64* %drawn_comps19, align 8, !tbaa !35
  %91 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %drawn_comps69 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %91, i32 0, i32 44
  store i64 %90, i64* %drawn_comps69, align 8, !tbaa !59
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.29
  %92 = bitcast i64* %drawn_comps19 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %93 = bitcast [64 x i16]* %cvals to i8*
  call void @llvm.lifetime.end(i64 128, i8* %93) #2
  %94 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #2
  %95 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.99 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.73

if.end.73:                                        ; preds = %cleanup.cont, %if.then.15
  %96 = load i32, i32* %ncomps, align 4, !tbaa !34
  %cmp74 = icmp eq i32 %96, 3
  br i1 %cmp74, label %land.lhs.true, label %if.end.79

land.lhs.true:                                    ; preds = %if.end.73
  %97 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams.addr, align 8, !tbaa !1
  %k_value75 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %97, i32 0, i32 4
  %98 = load i16, i16* %k_value75, align 2, !tbaa !45
  %conv = zext i16 %98 to i32
  %cmp76 = icmp ne i32 %conv, 0
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %land.lhs.true
  store i32 0, i32* %degenerate_k, align 4, !tbaa !34
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %land.lhs.true, %if.end.73
  %99 = load i32, i32* %degenerate_k, align 4, !tbaa !34
  %tobool80 = icmp ne i32 %99, 0
  br i1 %tobool80, label %land.lhs.true.81, label %if.end.92

land.lhs.true.81:                                 ; preds = %if.end.79
  %100 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %blendspot82 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %100, i32 0, i32 46
  %101 = load i32, i32* %blendspot82, align 4, !tbaa !58
  %tobool83 = icmp ne i32 %101, 0
  br i1 %tobool83, label %if.end.92, label %land.lhs.true.84

land.lhs.true.84:                                 ; preds = %land.lhs.true.81
  %102 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %drawn_comps85 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %102, i32 0, i32 44
  %103 = load i64, i64* %drawn_comps85, align 8, !tbaa !59
  %104 = load i32, i32* %ncomps, align 4, !tbaa !34
  %sh_prom = zext i32 %104 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  %cmp86 = icmp eq i64 %103, %sub
  br i1 %cmp86, label %if.then.88, label %if.end.92

if.then.88:                                       ; preds = %land.lhs.true.84
  %105 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %procs89 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %105, i32 0, i32 42
  %106 = bitcast %struct.gx_device_procs_s* %procs89 to i8*
  %107 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %no_overprint_procs90 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %107, i32 0, i32 50
  %108 = bitcast %struct.gx_device_procs_s* %no_overprint_procs90 to i8*
  %call91 = call i8* @memcpy(i8* %106, i8* %108, i64 584) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.99

if.end.92:                                        ; preds = %land.lhs.true.84, %land.lhs.true.81, %if.end.79
  %109 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %color_info93 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %109, i32 0, i32 11
  %separable_and_linear94 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info93, i32 0, i32 10
  %110 = load i32, i32* %separable_and_linear94, align 4, !tbaa !57
  %cmp95 = icmp eq i32 %110, 1
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.92
  %111 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  call void @set_retain_mask(%struct.overprint_device_s* %111) #4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.end.92
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.99

cleanup.99:                                       ; preds = %if.end.98, %if.then.88, %cleanup, %if.end
  %112 = bitcast i32* %degenerate_k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = load i32, i32* %retval
  ret i32 %114
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @overprint_device_t_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !34
  store i32 %index, i32* %index.addr, align 4, !tbaa !34
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 4), align 8, !tbaa !66
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !34
  %4 = load i32, i32* %index.addr, align 4, !tbaa !34
  %sub = sub nsw i32 %4, 0
  %5 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %0(%struct.gs_memory_s* %1, i8* %2, i32 %3, i32 %sub, %struct.enum_ptr_s* %5, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %6) #4
  ret %struct.gs_ptr_procs_s* %call
}

; Function Attrs: nounwind uwtable
define internal void @overprint_device_t_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !34
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 5), align 8, !tbaa !68
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !34
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %0(i8* %1, i32 %2, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %3) #4
  ret void
}

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @overprint_open_device(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %opdev = alloca %struct.overprint_device_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.overprint_device_s*
  store %struct.overprint_device_s* %2, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !69
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %code, align 4, !tbaa !34
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call = call i32 @gs_opendevice(%struct.gx_device_s* %8) #4
  store i32 %call, i32* %code, align 4, !tbaa !34
  %cmp1 = icmp sge i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  call void @gx_device_copy_params(%struct.gx_device_s* %9, %struct.gx_device_s* %10) #4
  %11 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %copy_alpha_hl = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %11, i32 0, i32 48
  store i32 0, i32* %copy_alpha_hl, align 4, !tbaa !70
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @gx_forward_fill_rectangle(%struct.gx_device_s*, i32, i32, i32, i32, i64) #1

declare i32 @gx_forward_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #1

declare i32 @gx_forward_copy_mono(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64) #1

declare i32 @gx_forward_copy_color(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @overprint_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %opdev = alloca %struct.overprint_device_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.overprint_device_s*
  store %struct.overprint_device_s* %2, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !69
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %code, align 4, !tbaa !34
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_s* %7, null
  br i1 %cmp, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %put_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 14
  %9 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %put_params, align 8, !tbaa !71
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 %9(%struct.gx_device_s* %10, %struct.gs_param_list_s* %11) #4
  store i32 %call, i32* %code, align 4, !tbaa !34
  %cmp1 = icmp sge i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end.4

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_decache_colors(%struct.gx_device_s* %12) #4
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 9
  %14 = load i32, i32* %is_open, align 4, !tbaa !72
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call3 = call i32 @gs_closedevice(%struct.gx_device_s* %15) #4
  store i32 %call3, i32* %code, align 4, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %land.lhs.true, %entry
  %16 = load i32, i32* %code, align 4, !tbaa !34
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct.gx_device_s* @overprint_get_page_device(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %opdev = alloca %struct.overprint_device_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.overprint_device_s*
  store %struct.overprint_device_s* %2, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !69
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 19
  %8 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !73
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call = call %struct.gx_device_s* %8(%struct.gx_device_s* %9) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_device_s* [ null, %cond.true ], [ %call, %cond.false ]
  %10 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret %struct.gx_device_s* %cond
}

declare i32 @gx_forward_strip_tile_rectangle(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @overprint_create_compositor(%struct.gx_device_s* %dev, %struct.gx_device_s** %pcdev, %struct.gs_composite_s* %pct, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %memory, %struct.gx_device_s* %cdev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcdev.addr = alloca %struct.gx_device_s**, align 8
  %pct.addr = alloca %struct.gs_composite_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %cdev.addr = alloca %struct.gx_device_s*, align 8
  %params = alloca %struct.gs_overprint_params_s, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %pcdev, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gs_composite_s* %pct, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %cdev, %struct.gx_device_s** %cdev.addr, align 8, !tbaa !1
  %0 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %0, i32 0, i32 0
  %1 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type, align 8, !tbaa !39
  %cmp = icmp ne %struct.gs_composite_type_s* %1, bitcast ({ i8, { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* } }* @gs_composite_overprint_type to %struct.gs_composite_type_s*)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  %4 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_create_compositor(%struct.gx_device_s* %2, %struct.gx_device_s** %3, %struct.gs_composite_s* %4, %struct.gs_imager_state_s* %5, %struct.gs_memory_s* %6, %struct.gx_device_s* %7) #4
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 32, i8* %8) #2
  %9 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_composite_s* %9 to %struct.gs_overprint_s*
  %params1 = getelementptr inbounds %struct.gs_overprint_s, %struct.gs_overprint_s* %10, i32 0, i32 5
  %11 = bitcast %struct.gs_overprint_params_s* %params to i8*
  %12 = bitcast %struct.gs_overprint_params_s* %params1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false), !tbaa.struct !33
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  %idle = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %14, i32 0, i32 2
  %15 = load i32, i32* %idle, align 4, !tbaa !11
  %idle2 = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %params, i32 0, i32 2
  store i32 %15, i32* %idle2, align 4, !tbaa !38
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_s* %16 to %struct.overprint_device_s*
  %call3 = call i32 @update_overprint_params(%struct.overprint_device_s* %17, %struct.gs_overprint_params_s* %params) #4
  store i32 %call3, i32* %code, align 4, !tbaa !34
  %18 = load i32, i32* %code, align 4, !tbaa !34
  %cmp4 = icmp sge i32 %18, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %20 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %19, %struct.gx_device_s** %20, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  %21 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %21, i32* %retval
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast %struct.gs_overprint_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 32, i8* %23) #2
  br label %return

return:                                           ; preds = %if.end, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @overprint_get_color_comp_index(%struct.gx_device_s* %dev, i8* %pname, i32 %name_size, i32 %component_type) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pname.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %component_type.addr = alloca i32, align 4
  %opdev = alloca %struct.overprint_device_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !34
  store i32 %component_type, i32* %component_type.addr, align 4, !tbaa !34
  %0 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.overprint_device_s*
  store %struct.overprint_device_s* %2, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !69
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %10 = load i32, i32* %name_size.addr, align 4, !tbaa !34
  %11 = load i32, i32* %component_type.addr, align 4, !tbaa !34
  %call = call i32 @gx_error_get_color_comp_index(%struct.gx_device_s* %8, i8* %9, i32 %10, i32 %11) #4
  store i32 %call, i32* %code, align 4, !tbaa !34
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 50
  %13 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !74
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %15 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %16 = load i32, i32* %name_size.addr, align 4, !tbaa !34
  %17 = load i32, i32* %component_type.addr, align 4, !tbaa !34
  %call1 = call i32 %13(%struct.gx_device_s* %14, i8* %15, i32 %16, i32 %17) #4
  store i32 %call1, i32* %code, align 4, !tbaa !34
  %18 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %18, i32 0, i32 11
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 11
  %20 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  %21 = bitcast %struct.gx_device_color_info_s* %color_info2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 720, i32 8, i1 false), !tbaa.struct !75
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load i32, i32* %code, align 4, !tbaa !34
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  ret i32 %22
}

declare i32 @gx_forward_fillpage(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*) #1

declare i32 @gx_forward_copy_planes(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32) #1

declare i32 @gs_opendevice(%struct.gx_device_s*) #1

declare void @gx_device_decache_colors(%struct.gx_device_s*) #1

declare i32 @gs_closedevice(%struct.gx_device_s*) #1

declare i32 @gx_default_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #1

declare i32 @gx_error_get_color_comp_index(%struct.gx_device_s*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @overprint_generic_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %width, i32 %height, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %opdev = alloca %struct.overprint_device_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !34
  store i32 %y, i32* %y.addr, align 4, !tbaa !34
  store i32 %width, i32* %width.addr, align 4, !tbaa !34
  store i32 %height, i32* %height.addr, align 4, !tbaa !34
  store i64 %color, i64* %color.addr, align 8, !tbaa !35
  %0 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.overprint_device_s*
  store %struct.overprint_device_s* %2, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !69
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %8 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %blendspot = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %8, i32 0, i32 46
  %9 = load i32, i32* %blendspot, align 4, !tbaa !58
  %10 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %drawn_comps = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %10, i32 0, i32 44
  %11 = load i64, i64* %drawn_comps, align 8, !tbaa !59
  %12 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %k_value = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %12, i32 0, i32 45
  %13 = load i16, i16* %k_value, align 2, !tbaa !60
  %14 = load i32, i32* %x.addr, align 4, !tbaa !34
  %15 = load i32, i32* %y.addr, align 4, !tbaa !34
  %16 = load i32, i32* %width.addr, align 4, !tbaa !34
  %17 = load i32, i32* %height.addr, align 4, !tbaa !34
  %18 = load i64, i64* %color.addr, align 8, !tbaa !35
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !76
  %call = call i32 @gx_overprint_generic_fill_rectangle(%struct.gx_device_s* %7, i32 %9, i64 %11, i16 zeroext %13, i32 %14, i32 %15, i32 %16, i32 %17, i64 %18, %struct.gs_memory_s* %20) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %21 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #1

declare i32 @gx_default_copy_mono(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64) #1

declare i32 @gx_default_copy_color(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32) #1

declare i32 @gx_default_draw_line(%struct.gx_device_s*, i32, i32, i32, i32, i64) #1

declare %struct.gx_device_s* @gx_default_get_xfont_device(%struct.gx_device_s*) #1

declare i32 @gx_default_copy_alpha(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32) #1

declare i32 @gx_default_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_draw_thin_line(%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32) #1

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

declare i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #1

declare i32 @gx_default_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

declare i32 @gx_default_text_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #1

; Function Attrs: nounwind uwtable
define internal i32 @overprint_fill_rectangle_hl_color(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %rect, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %opdev = alloca %struct.overprint_device_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %gb_buff = alloca i8*, align 8
  %gb_params = alloca %struct.gs_get_bits_params_s, align 8
  %gb_rect = alloca %struct.gs_int_rect_s, align 4
  %code = alloca i32, align 4
  %raster = alloca i32, align 4
  %byte_depth = alloca i32, align 4
  %depth = alloca i32, align 4
  %num_comps = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %comps = alloca i64, align 8
  %mask = alloca i64, align 8
  %shift = alloca i32, align 4
  %blendspot = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %kk = alloca i32, align 4
  %cp = alloca i8*, align 8
  %new_val = alloca i8, align 1
  %temp = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.overprint_device_s*
  store %struct.overprint_device_s* %2, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !69
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i8** %gb_buff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  store i8* null, i8** %gb_buff, align 8, !tbaa !1
  %7 = bitcast %struct.gs_get_bits_params_s* %gb_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %7) #2
  %8 = bitcast %struct.gs_int_rect_s* %gb_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #2
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  store i32 0, i32* %code, align 4, !tbaa !34
  %10 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %byte_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !76
  store %struct.gs_memory_s* %22, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %23 = bitcast i64* %comps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %drawn_comps = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %24, i32 0, i32 44
  %25 = load i64, i64* %drawn_comps, align 8, !tbaa !59
  store i64 %25, i64* %comps, align 8, !tbaa !35
  %26 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #2
  %27 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = bitcast i32* %blendspot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %blendspot1 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %29, i32 0, i32 46
  %30 = load i32, i32* %blendspot1, align 4, !tbaa !58
  store i32 %30, i32* %blendspot, align 4, !tbaa !34
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %31, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 11
  %depth2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %33 = load i16, i16* %depth2, align 2, !tbaa !77
  %conv = zext i16 %33 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !34
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 1
  %35 = load i32, i32* %num_components, align 4, !tbaa !78
  store i32 %35, i32* %num_comps, align 4, !tbaa !34
  %36 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %36, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %37 = load i32, i32* %x4, align 4, !tbaa !79
  %shr = ashr i32 %37, 8
  store i32 %shr, i32* %x, align 4, !tbaa !34
  %38 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p5 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %38, i32 0, i32 0
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p5, i32 0, i32 1
  %39 = load i32, i32* %y6, align 4, !tbaa !82
  %shr7 = ashr i32 %39, 8
  store i32 %shr7, i32* %y, align 4, !tbaa !34
  %40 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %40, i32 0, i32 1
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %41 = load i32, i32* %x8, align 4, !tbaa !83
  %shr9 = ashr i32 %41, 8
  %42 = load i32, i32* %x, align 4, !tbaa !34
  %sub = sub nsw i32 %shr9, %42
  store i32 %sub, i32* %w, align 4, !tbaa !34
  %43 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q10 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %43, i32 0, i32 1
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q10, i32 0, i32 1
  %44 = load i32, i32* %y11, align 4, !tbaa !84
  %shr12 = ashr i32 %44, 8
  %45 = load i32, i32* %y, align 4, !tbaa !34
  %sub13 = sub nsw i32 %shr12, %45
  store i32 %sub13, i32* %h, align 4, !tbaa !34
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.body.14

do.body.14:                                       ; preds = %do.body
  br label %do.body.15

do.body.15:                                       ; preds = %do.body.14
  %46 = load i32, i32* %x, align 4, !tbaa !34
  %47 = load i32, i32* %y, align 4, !tbaa !34
  %or = or i32 %46, %47
  %cmp16 = icmp slt i32 %or, 0
  br i1 %cmp16, label %if.then.18, label %if.end.28

if.then.18:                                       ; preds = %do.body.15
  %48 = load i32, i32* %x, align 4, !tbaa !34
  %cmp19 = icmp slt i32 %48, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.18
  %49 = load i32, i32* %x, align 4, !tbaa !34
  %50 = load i32, i32* %w, align 4, !tbaa !34
  %add = add nsw i32 %50, %49
  store i32 %add, i32* %w, align 4, !tbaa !34
  store i32 0, i32* %x, align 4, !tbaa !34
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.18
  %51 = load i32, i32* %y, align 4, !tbaa !34
  %cmp23 = icmp slt i32 %51, 0
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %52 = load i32, i32* %y, align 4, !tbaa !34
  %53 = load i32, i32* %h, align 4, !tbaa !34
  %add26 = add nsw i32 %53, %52
  store i32 %add26, i32* %h, align 4, !tbaa !34
  store i32 0, i32* %y, align 4, !tbaa !34
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.22
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %do.body.15
  br label %do.cond

do.cond:                                          ; preds = %if.end.28
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.29

do.body.29:                                       ; preds = %do.end
  %54 = load i32, i32* %w, align 4, !tbaa !34
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 13
  %56 = load i32, i32* %width, align 4, !tbaa !85
  %57 = load i32, i32* %x, align 4, !tbaa !34
  %sub30 = sub nsw i32 %56, %57
  %cmp31 = icmp sgt i32 %54, %sub30
  br i1 %cmp31, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %do.body.29
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %width34 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 13
  %59 = load i32, i32* %width34, align 4, !tbaa !85
  %60 = load i32, i32* %x, align 4, !tbaa !34
  %sub35 = sub nsw i32 %59, %60
  store i32 %sub35, i32* %w, align 4, !tbaa !34
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %do.body.29
  br label %do.cond.37

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38

do.end.38:                                        ; preds = %do.cond.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %61 = load i32, i32* %h, align 4, !tbaa !34
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %62, i32 0, i32 14
  %63 = load i32, i32* %height, align 4, !tbaa !86
  %64 = load i32, i32* %y, align 4, !tbaa !34
  %sub40 = sub nsw i32 %63, %64
  %cmp41 = icmp sgt i32 %61, %sub40
  br i1 %cmp41, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %do.body.39
  %65 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %height44 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %65, i32 0, i32 14
  %66 = load i32, i32* %height44, align 4, !tbaa !86
  %67 = load i32, i32* %y, align 4, !tbaa !34
  %sub45 = sub nsw i32 %66, %67
  store i32 %sub45, i32* %h, align 4, !tbaa !34
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %do.body.39
  br label %do.cond.47

do.cond.47:                                       ; preds = %if.end.46
  br label %do.end.48

do.end.48:                                        ; preds = %do.cond.47
  br label %do.cond.49

do.cond.49:                                       ; preds = %do.end.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  %68 = load i32, i32* %w, align 4, !tbaa !34
  %cmp51 = icmp sle i32 %68, 0
  br i1 %cmp51, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.50
  %69 = load i32, i32* %h, align 4, !tbaa !34
  %cmp53 = icmp sle i32 %69, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %lor.lhs.false, %do.end.50
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %lor.lhs.false
  br label %do.cond.57

do.cond.57:                                       ; preds = %if.end.56
  br label %do.end.58

do.end.58:                                        ; preds = %do.cond.57
  %70 = load i32, i32* %depth, align 4, !tbaa !34
  %71 = load i32, i32* %num_comps, align 4, !tbaa !34
  %div = sdiv i32 %70, %71
  store i32 %div, i32* %byte_depth, align 4, !tbaa !34
  %72 = load i32, i32* %byte_depth, align 4, !tbaa !34
  %sh_prom = zext i32 %72 to i64
  %shl = shl i64 1, %sh_prom
  %sub59 = sub i64 %shl, 1
  store i64 %sub59, i64* %mask, align 8, !tbaa !35
  %73 = load i32, i32* %byte_depth, align 4, !tbaa !34
  %sub60 = sub nsw i32 16, %73
  store i32 %sub60, i32* %shift, align 4, !tbaa !34
  %74 = load i32, i32* %w, align 4, !tbaa !34
  %75 = load i32, i32* %byte_depth, align 4, !tbaa !34
  %mul = mul nsw i32 %74, %75
  %add61 = add nsw i32 %mul, 63
  %shr62 = ashr i32 %add61, 6
  %shl63 = shl i32 %shr62, 3
  store i32 %shl63, i32* %raster, align 4, !tbaa !34
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %76, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %77 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !87
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %79 = load i32, i32* %raster, align 4, !tbaa !34
  %80 = load i32, i32* %num_comps, align 4, !tbaa !34
  %mul64 = mul nsw i32 %79, %80
  %call = call i8* %77(%struct.gs_memory_s* %78, i32 %mul64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)) #4
  store i8* %call, i8** %gb_buff, align 8, !tbaa !1
  %81 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %cmp65 = icmp eq i8* %81, null
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %do.end.58
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %do.end.58
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 0
  store i64 291127057, i64* %options, align 8, !tbaa !88
  %x_offset = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 2
  store i32 0, i32* %x_offset, align 4, !tbaa !90
  %82 = load i32, i32* %raster, align 4, !tbaa !34
  %raster69 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 4
  store i32 %82, i32* %raster69, align 4, !tbaa !91
  %83 = load i32, i32* %x, align 4, !tbaa !34
  %p70 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 0
  %x71 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p70, i32 0, i32 0
  store i32 %83, i32* %x71, align 4, !tbaa !92
  %84 = load i32, i32* %x, align 4, !tbaa !34
  %85 = load i32, i32* %w, align 4, !tbaa !34
  %add72 = add nsw i32 %84, %85
  %q73 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 1
  %x74 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q73, i32 0, i32 0
  store i32 %add72, i32* %x74, align 4, !tbaa !95
  br label %while.cond

while.cond:                                       ; preds = %for.end.161, %if.end.68
  %86 = load i32, i32* %h, align 4, !tbaa !34
  %dec = add nsw i32 %86, -1
  store i32 %dec, i32* %h, align 4, !tbaa !34
  %cmp75 = icmp sgt i32 %86, 0
  br i1 %cmp75, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %87 = load i32, i32* %code, align 4, !tbaa !34
  %cmp77 = icmp sge i32 %87, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %88 = phi i1 [ false, %while.cond ], [ %cmp77, %land.rhs ]
  br i1 %88, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %89 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %drawn_comps79 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %89, i32 0, i32 44
  %90 = load i64, i64* %drawn_comps79, align 8, !tbaa !59
  store i64 %90, i64* %comps, align 8, !tbaa !35
  %91 = load i32, i32* %y, align 4, !tbaa !34
  %inc = add nsw i32 %91, 1
  store i32 %inc, i32* %y, align 4, !tbaa !34
  %p80 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 0
  %y81 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p80, i32 0, i32 1
  store i32 %91, i32* %y81, align 4, !tbaa !96
  %92 = load i32, i32* %y, align 4, !tbaa !34
  %q82 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 1
  %y83 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q82, i32 0, i32 1
  store i32 %92, i32* %y83, align 4, !tbaa !97
  store i32 0, i32* %k, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc.159, %while.body
  %93 = load i32, i32* %k, align 4, !tbaa !34
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %color_info84 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %94, i32 0, i32 11
  %num_components85 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info84, i32 0, i32 1
  %95 = load i32, i32* %num_components85, align 4, !tbaa !78
  %cmp86 = icmp slt i32 %93, %95
  br i1 %cmp86, label %for.body, label %for.end.161

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !34
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc, %for.body
  %96 = load i32, i32* %j, align 4, !tbaa !34
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %color_info89 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %97, i32 0, i32 11
  %num_components90 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info89, i32 0, i32 1
  %98 = load i32, i32* %num_components90, align 4, !tbaa !78
  %cmp91 = icmp slt i32 %96, %98
  br i1 %cmp91, label %for.body.93, label %for.end

for.body.93:                                      ; preds = %for.cond.88
  %99 = load i32, i32* %j, align 4, !tbaa !34
  %idxprom = sext i32 %99 to i64
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.93
  %100 = load i32, i32* %j, align 4, !tbaa !34
  %inc94 = add nsw i32 %100, 1
  store i32 %inc94, i32* %j, align 4, !tbaa !34
  br label %for.cond.88

for.end:                                          ; preds = %for.cond.88
  %101 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %102 = load i32, i32* %k, align 4, !tbaa !34
  %103 = load i32, i32* %raster, align 4, !tbaa !34
  %mul95 = mul nsw i32 %102, %103
  %idx.ext = sext i32 %mul95 to i64
  %add.ptr = getelementptr inbounds i8, i8* %101, i64 %idx.ext
  %104 = load i32, i32* %k, align 4, !tbaa !34
  %idxprom96 = sext i32 %104 to i64
  %data97 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data97, i32 0, i64 %idxprom96
  store i8* %add.ptr, i8** %arrayidx98, align 8, !tbaa !1
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs99 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %105, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs99, i32 0, i32 38
  %106 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !98
  %107 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call100 = call i32 %106(%struct.gx_device_s* %107, %struct.gs_int_rect_s* %gb_rect, %struct.gs_get_bits_params_s* %gb_params, %struct.gs_int_rect_s** null) #4
  store i32 %call100, i32* %code, align 4, !tbaa !34
  %108 = load i32, i32* %code, align 4, !tbaa !34
  %cmp101 = icmp slt i32 %108, 0
  br i1 %cmp101, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %for.end
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs104 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %109, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs104, i32 0, i32 2
  %110 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !99
  %111 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %112 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  call void %110(%struct.gs_memory_s* %111, i8* %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)) #4
  %113 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %113, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.105:                                       ; preds = %for.end
  %114 = load i32, i32* %blendspot, align 4, !tbaa !34
  %tobool = icmp ne i32 %114, 0
  br i1 %tobool, label %if.then.106, label %if.else

if.then.106:                                      ; preds = %if.end.105
  %115 = load i64, i64* %comps, align 8, !tbaa !35
  %and = and i64 %115, 1
  %cmp107 = icmp eq i64 %and, 1
  br i1 %cmp107, label %if.then.109, label %if.end.135

if.then.109:                                      ; preds = %if.then.106
  %116 = bitcast i32* %kk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %116) #2
  %117 = bitcast i8** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #2
  %118 = load i32, i32* %k, align 4, !tbaa !34
  %idxprom110 = sext i32 %118 to i64
  %data111 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data111, i32 0, i64 %idxprom110
  %119 = load i8*, i8** %arrayidx112, align 8, !tbaa !1
  store i8* %119, i8** %cp, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %new_val) #2
  %120 = load i32, i32* %k, align 4, !tbaa !34
  %idxprom113 = sext i32 %120 to i64
  %121 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %121, i32 0, i32 1
  %devn = bitcast %union._c* %colors to %struct._devn*
  %values = getelementptr inbounds %struct._devn, %struct._devn* %devn, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i64 %idxprom113
  %122 = load i16, i16* %arrayidx114, align 2, !tbaa !36
  %conv115 = zext i16 %122 to i32
  %123 = load i32, i32* %shift, align 4, !tbaa !34
  %shr116 = ashr i32 %conv115, %123
  %conv117 = sext i32 %shr116 to i64
  %124 = load i64, i64* %mask, align 8, !tbaa !35
  %and118 = and i64 %conv117, %124
  %conv119 = trunc i64 %and118 to i8
  store i8 %conv119, i8* %new_val, align 1, !tbaa !43
  store i32 0, i32* %kk, align 4, !tbaa !34
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.132, %if.then.109
  %125 = load i32, i32* %kk, align 4, !tbaa !34
  %126 = load i32, i32* %w, align 4, !tbaa !34
  %cmp121 = icmp slt i32 %125, %126
  br i1 %cmp121, label %for.body.123, label %for.end.134

for.body.123:                                     ; preds = %for.cond.120
  %127 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %127) #2
  %128 = load i8*, i8** %cp, align 8, !tbaa !1
  %129 = load i8, i8* %128, align 1, !tbaa !43
  %conv124 = zext i8 %129 to i32
  %sub125 = sub nsw i32 255, %conv124
  %130 = load i8, i8* %new_val, align 1, !tbaa !43
  %conv126 = zext i8 %130 to i32
  %sub127 = sub nsw i32 255, %conv126
  %mul128 = mul nsw i32 %sub125, %sub127
  store i32 %mul128, i32* %temp, align 4, !tbaa !34
  %131 = load i32, i32* %temp, align 4, !tbaa !34
  %shr129 = ashr i32 %131, 8
  store i32 %shr129, i32* %temp, align 4, !tbaa !34
  %132 = load i32, i32* %temp, align 4, !tbaa !34
  %sub130 = sub nsw i32 255, %132
  %conv131 = trunc i32 %sub130 to i8
  %133 = load i8*, i8** %cp, align 8, !tbaa !1
  store i8 %conv131, i8* %133, align 1, !tbaa !43
  %134 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #2
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.body.123
  %135 = load i32, i32* %kk, align 4, !tbaa !34
  %inc133 = add nsw i32 %135, 1
  store i32 %inc133, i32* %kk, align 4, !tbaa !34
  %136 = load i8*, i8** %cp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8, !tbaa !1
  br label %for.cond.120

for.end.134:                                      ; preds = %for.cond.120
  call void @llvm.lifetime.end(i64 1, i8* %new_val) #2
  %137 = bitcast i8** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #2
  %138 = bitcast i32* %kk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  br label %if.end.135

if.end.135:                                       ; preds = %for.end.134, %if.then.106
  %139 = load i64, i64* %comps, align 8, !tbaa !35
  %shr136 = lshr i64 %139, 1
  store i64 %shr136, i64* %comps, align 8, !tbaa !35
  br label %if.end.158

if.else:                                          ; preds = %if.end.105
  %140 = load i64, i64* %comps, align 8, !tbaa !35
  %and137 = and i64 %140, 1
  %cmp138 = icmp eq i64 %and137, 1
  br i1 %cmp138, label %if.then.140, label %if.end.156

if.then.140:                                      ; preds = %if.else
  %141 = load i32, i32* %k, align 4, !tbaa !34
  %idxprom141 = sext i32 %141 to i64
  %data142 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data142, i32 0, i64 %idxprom141
  %142 = load i8*, i8** %arrayidx143, align 8, !tbaa !1
  %143 = load i32, i32* %k, align 4, !tbaa !34
  %idxprom144 = sext i32 %143 to i64
  %144 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors145 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %144, i32 0, i32 1
  %devn146 = bitcast %union._c* %colors145 to %struct._devn*
  %values147 = getelementptr inbounds %struct._devn, %struct._devn* %devn146, i32 0, i32 0
  %arrayidx148 = getelementptr inbounds [64 x i16], [64 x i16]* %values147, i32 0, i64 %idxprom144
  %145 = load i16, i16* %arrayidx148, align 2, !tbaa !36
  %conv149 = zext i16 %145 to i32
  %146 = load i32, i32* %shift, align 4, !tbaa !34
  %shr150 = ashr i32 %conv149, %146
  %conv151 = sext i32 %shr150 to i64
  %147 = load i64, i64* %mask, align 8, !tbaa !35
  %and152 = and i64 %conv151, %147
  %conv153 = trunc i64 %and152 to i32
  %148 = load i32, i32* %w, align 4, !tbaa !34
  %conv154 = sext i32 %148 to i64
  %call155 = call i8* @memset(i8* %142, i32 %conv153, i64 %conv154) #5
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.140, %if.else
  %149 = load i64, i64* %comps, align 8, !tbaa !35
  %shr157 = lshr i64 %149, 1
  store i64 %shr157, i64* %comps, align 8, !tbaa !35
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.156, %if.end.135
  br label %for.inc.159

for.inc.159:                                      ; preds = %if.end.158
  %150 = load i32, i32* %k, align 4, !tbaa !34
  %inc160 = add nsw i32 %150, 1
  store i32 %inc160, i32* %k, align 4, !tbaa !34
  br label %for.cond

for.end.161:                                      ; preds = %for.cond
  %151 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs162 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %151, i32 0, i32 42
  %copy_planes = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs162, i32 0, i32 66
  %152 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes, align 8, !tbaa !100
  %153 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %154 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %155 = load i32, i32* %raster, align 4, !tbaa !34
  %156 = load i32, i32* %x, align 4, !tbaa !34
  %157 = load i32, i32* %y, align 4, !tbaa !34
  %sub163 = sub nsw i32 %157, 1
  %158 = load i32, i32* %w, align 4, !tbaa !34
  %call164 = call i32 %152(%struct.gx_device_s* %153, i8* %154, i32 0, i32 %155, i64 0, i32 %156, i32 %sub163, i32 %158, i32 1, i32 1) #4
  store i32 %call164, i32* %code, align 4, !tbaa !34
  br label %while.cond

while.end:                                        ; preds = %land.end
  %159 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs165 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %159, i32 0, i32 1
  %free_object166 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs165, i32 0, i32 2
  %160 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object166, align 8, !tbaa !99
  %161 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %162 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  call void %160(%struct.gs_memory_s* %161, i8* %162, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)) #4
  %163 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %163, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.103, %if.then.67, %if.then.55, %if.then
  %164 = bitcast i32* %blendspot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #2
  %165 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #2
  %166 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #2
  %167 = bitcast i64* %comps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #2
  %168 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #2
  %169 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #2
  %171 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #2
  %172 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #2
  %173 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #2
  %174 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #2
  %175 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #2
  %176 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #2
  %177 = bitcast i32* %byte_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #2
  %178 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #2
  %179 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #2
  %180 = bitcast %struct.gs_int_rect_s* %gb_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %180) #2
  %181 = bitcast %struct.gs_get_bits_params_s* %gb_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %181) #2
  %182 = bitcast i8** %gb_buff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #2
  %183 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #2
  %184 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #2
  %185 = load i32, i32* %retval
  ret i32 %185
}

declare i32 @gx_overprint_generic_fill_rectangle(%struct.gx_device_s*, i32, i64, i16 zeroext, i32, i32, i32, i32, i64, %struct.gs_memory_s*) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @overprint_sep_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %width, i32 %height, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %opdev = alloca %struct.overprint_device_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  %depth = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !34
  store i32 %y, i32* %y.addr, align 4, !tbaa !34
  store i32 %width, i32* %width.addr, align 4, !tbaa !34
  store i32 %height, i32* %height.addr, align 4, !tbaa !34
  store i64 %color, i64* %color.addr, align 8, !tbaa !35
  %0 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.overprint_device_s*
  store %struct.overprint_device_s* %2, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !69
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18

if.else:                                          ; preds = %entry
  %7 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %9 = load i16, i16* %depth1, align 2, !tbaa !77
  %conv = zext i16 %9 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !34
  %10 = load i32, i32* %depth, align 4, !tbaa !34
  %cmp2 = icmp sgt i32 %10, 8
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %11 = load i32, i32* %depth, align 4, !tbaa !34
  %12 = load i64, i64* %color.addr, align 8, !tbaa !35
  %call = call i64 @swap_color_index(i32 %11, i64 %12) #4
  store i64 %call, i64* %color.addr, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  %13 = load i32, i32* %depth, align 4, !tbaa !34
  %conv5 = sext i32 %13 to i64
  %cmp6 = icmp ule i64 %conv5, 32
  br i1 %cmp6, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.end
  %14 = load i32, i32* %depth, align 4, !tbaa !34
  %15 = load i32, i32* %depth, align 4, !tbaa !34
  %sub = sub nsw i32 %15, 1
  %and = and i32 %14, %sub
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %land.lhs.true.10, label %if.else.13

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %16 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %blendspot = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %16, i32 0, i32 46
  %17 = load i32, i32* %blendspot, align 4, !tbaa !58
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.else.13, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true.10
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %19 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %retain_mask = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %19, i32 0, i32 47
  %20 = load i64, i64* %retain_mask, align 8, !tbaa !101
  %21 = load i32, i32* %x.addr, align 4, !tbaa !34
  %22 = load i32, i32* %y.addr, align 4, !tbaa !34
  %23 = load i32, i32* %width.addr, align 4, !tbaa !34
  %24 = load i32, i32* %height.addr, align 4, !tbaa !34
  %25 = load i64, i64* %color.addr, align 8, !tbaa !35
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !76
  %call12 = call i32 @gx_overprint_sep_fill_rectangle_1(%struct.gx_device_s* %18, i64 %20, i32 %21, i32 %22, i32 %23, i32 %24, i64 %25, %struct.gs_memory_s* %27) #4
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.13:                                       ; preds = %land.lhs.true.10, %land.lhs.true, %if.end
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %29 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %blendspot14 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %29, i32 0, i32 46
  %30 = load i32, i32* %blendspot14, align 4, !tbaa !58
  %31 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %retain_mask15 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %31, i32 0, i32 47
  %32 = load i64, i64* %retain_mask15, align 8, !tbaa !101
  %33 = load i32, i32* %x.addr, align 4, !tbaa !34
  %34 = load i32, i32* %y.addr, align 4, !tbaa !34
  %35 = load i32, i32* %width.addr, align 4, !tbaa !34
  %36 = load i32, i32* %height.addr, align 4, !tbaa !34
  %37 = load i64, i64* %color.addr, align 8, !tbaa !35
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !76
  %call17 = call i32 @gx_overprint_sep_fill_rectangle_2(%struct.gx_device_s* %28, i32 %30, i64 %32, i32 %33, i32 %34, i32 %35, i32 %36, i64 %37, %struct.gs_memory_s* %39) #4
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.13, %if.then.11
  %40 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  br label %cleanup.18

cleanup.18:                                       ; preds = %cleanup, %if.then
  %41 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal i32 @overprint_copy_planes(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster_in, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i32 %plane_height) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster_in.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %plane_height.addr = alloca i32, align 4
  %opdev = alloca %struct.overprint_device_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %gb_buff = alloca i8*, align 8
  %gb_params = alloca %struct.gs_get_bits_params_s, align 8
  %gb_rect = alloca %struct.gs_int_rect_s, align 4
  %code = alloca i32, align 4
  %raster = alloca i32, align 4
  %byte_depth = alloca i32, align 4
  %depth = alloca i32, align 4
  %num_comps = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %comps = alloca i64, align 8
  %mask = alloca i64, align 8
  %shift = alloca i32, align 4
  %curr_data = alloca i8*, align 8
  %row = alloca i32, align 4
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !34
  store i32 %raster_in, i32* %raster_in.addr, align 4, !tbaa !34
  store i64 %id, i64* %id.addr, align 8, !tbaa !35
  store i32 %x, i32* %x.addr, align 4, !tbaa !34
  store i32 %y, i32* %y.addr, align 4, !tbaa !34
  store i32 %w, i32* %w.addr, align 4, !tbaa !34
  store i32 %h, i32* %h.addr, align 4, !tbaa !34
  store i32 %plane_height, i32* %plane_height.addr, align 4, !tbaa !34
  %0 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.overprint_device_s*
  store %struct.overprint_device_s* %2, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !69
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i8** %gb_buff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  store i8* null, i8** %gb_buff, align 8, !tbaa !1
  %7 = bitcast %struct.gs_get_bits_params_s* %gb_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %7) #2
  %8 = bitcast %struct.gs_int_rect_s* %gb_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #2
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  store i32 0, i32* %code, align 4, !tbaa !34
  %10 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %byte_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !76
  store %struct.gs_memory_s* %18, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %19 = bitcast i64* %comps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %drawn_comps = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %20, i32 0, i32 44
  %21 = load i64, i64* %drawn_comps, align 8, !tbaa !59
  store i64 %21, i64* %comps, align 8, !tbaa !35
  %22 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = bitcast i8** %curr_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %26 = load i32, i32* %data_x.addr, align 4, !tbaa !34
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  store i8* %add.ptr, i8** %curr_data, align 8, !tbaa !1
  %27 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %29, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %30 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %copy_alpha_hl = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %30, i32 0, i32 48
  %31 = load i32, i32* %copy_alpha_hl, align 4, !tbaa !70
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 11
  %depth2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %33 = load i16, i16* %depth2, align 2, !tbaa !77
  %conv = zext i16 %33 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !34
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 1
  %35 = load i32, i32* %num_components, align 4, !tbaa !78
  store i32 %35, i32* %num_comps, align 4, !tbaa !34
  br label %do.body

do.body:                                          ; preds = %if.then.1
  br label %do.body.4

do.body.4:                                        ; preds = %do.body
  br label %do.body.5

do.body.5:                                        ; preds = %do.body.4
  %36 = load i32, i32* %x.addr, align 4, !tbaa !34
  %37 = load i32, i32* %y.addr, align 4, !tbaa !34
  %or = or i32 %36, %37
  %cmp6 = icmp slt i32 %or, 0
  br i1 %cmp6, label %if.then.8, label %if.end.18

if.then.8:                                        ; preds = %do.body.5
  %38 = load i32, i32* %x.addr, align 4, !tbaa !34
  %cmp9 = icmp slt i32 %38, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  %39 = load i32, i32* %x.addr, align 4, !tbaa !34
  %40 = load i32, i32* %w.addr, align 4, !tbaa !34
  %add = add nsw i32 %40, %39
  store i32 %add, i32* %w.addr, align 4, !tbaa !34
  store i32 0, i32* %x.addr, align 4, !tbaa !34
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.8
  %41 = load i32, i32* %y.addr, align 4, !tbaa !34
  %cmp13 = icmp slt i32 %41, 0
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %42 = load i32, i32* %y.addr, align 4, !tbaa !34
  %43 = load i32, i32* %h.addr, align 4, !tbaa !34
  %add16 = add nsw i32 %43, %42
  store i32 %add16, i32* %h.addr, align 4, !tbaa !34
  store i32 0, i32* %y.addr, align 4, !tbaa !34
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %do.body.5
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.19

do.body.19:                                       ; preds = %do.end
  %44 = load i32, i32* %w.addr, align 4, !tbaa !34
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 13
  %46 = load i32, i32* %width, align 4, !tbaa !85
  %47 = load i32, i32* %x.addr, align 4, !tbaa !34
  %sub = sub nsw i32 %46, %47
  %cmp20 = icmp sgt i32 %44, %sub
  br i1 %cmp20, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %do.body.19
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %width23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 13
  %49 = load i32, i32* %width23, align 4, !tbaa !85
  %50 = load i32, i32* %x.addr, align 4, !tbaa !34
  %sub24 = sub nsw i32 %49, %50
  store i32 %sub24, i32* %w.addr, align 4, !tbaa !34
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %do.body.19
  br label %do.cond.26

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %51 = load i32, i32* %h.addr, align 4, !tbaa !34
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 14
  %53 = load i32, i32* %height, align 4, !tbaa !86
  %54 = load i32, i32* %y.addr, align 4, !tbaa !34
  %sub29 = sub nsw i32 %53, %54
  %cmp30 = icmp sgt i32 %51, %sub29
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %do.body.28
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %height33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 14
  %56 = load i32, i32* %height33, align 4, !tbaa !86
  %57 = load i32, i32* %y.addr, align 4, !tbaa !34
  %sub34 = sub nsw i32 %56, %57
  store i32 %sub34, i32* %h.addr, align 4, !tbaa !34
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %do.body.28
  br label %do.cond.36

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  br label %do.cond.38

do.cond.38:                                       ; preds = %do.end.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.cond.38
  %58 = load i32, i32* %w.addr, align 4, !tbaa !34
  %cmp40 = icmp sle i32 %58, 0
  br i1 %cmp40, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.39
  %59 = load i32, i32* %h.addr, align 4, !tbaa !34
  %cmp42 = icmp sle i32 %59, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false, %do.end.39
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %lor.lhs.false
  br label %do.cond.46

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  %60 = load i32, i32* %depth, align 4, !tbaa !34
  %61 = load i32, i32* %num_comps, align 4, !tbaa !34
  %div = sdiv i32 %60, %61
  store i32 %div, i32* %byte_depth, align 4, !tbaa !34
  %62 = load i32, i32* %byte_depth, align 4, !tbaa !34
  %sh_prom = zext i32 %62 to i64
  %shl = shl i64 1, %sh_prom
  %sub48 = sub i64 %shl, 1
  store i64 %sub48, i64* %mask, align 8, !tbaa !35
  %63 = load i32, i32* %byte_depth, align 4, !tbaa !34
  %sub49 = sub nsw i32 16, %63
  store i32 %sub49, i32* %shift, align 4, !tbaa !34
  %64 = load i32, i32* %w.addr, align 4, !tbaa !34
  %65 = load i32, i32* %byte_depth, align 4, !tbaa !34
  %mul = mul nsw i32 %64, %65
  %add50 = add nsw i32 %mul, 63
  %shr = ashr i32 %add50, 6
  %shl51 = shl i32 %shr, 3
  store i32 %shl51, i32* %raster, align 4, !tbaa !34
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %66, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %67 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !87
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %69 = load i32, i32* %raster, align 4, !tbaa !34
  %70 = load i32, i32* %num_comps, align 4, !tbaa !34
  %mul52 = mul nsw i32 %69, %70
  %call = call i8* %67(%struct.gs_memory_s* %68, i32 %mul52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)) #4
  store i8* %call, i8** %gb_buff, align 8, !tbaa !1
  %71 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %cmp53 = icmp eq i8* %71, null
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %do.end.47
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %do.end.47
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 0
  store i64 291127057, i64* %options, align 8, !tbaa !88
  %x_offset = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 2
  store i32 0, i32* %x_offset, align 4, !tbaa !90
  %72 = load i32, i32* %raster, align 4, !tbaa !34
  %raster57 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 4
  store i32 %72, i32* %raster57, align 4, !tbaa !91
  %73 = load i32, i32* %x.addr, align 4, !tbaa !34
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 0
  %x58 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %73, i32* %x58, align 4, !tbaa !92
  %74 = load i32, i32* %x.addr, align 4, !tbaa !34
  %75 = load i32, i32* %w.addr, align 4, !tbaa !34
  %add59 = add nsw i32 %74, %75
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 1
  %x60 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %add59, i32* %x60, align 4, !tbaa !95
  store i32 0, i32* %row, align 4, !tbaa !34
  br label %while.cond

while.cond:                                       ; preds = %for.end.115, %if.end.56
  %76 = load i32, i32* %h.addr, align 4, !tbaa !34
  %dec = add nsw i32 %76, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !34
  %cmp61 = icmp sgt i32 %76, 0
  br i1 %cmp61, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %77 = load i32, i32* %code, align 4, !tbaa !34
  %cmp63 = icmp sge i32 %77, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %78 = phi i1 [ false, %while.cond ], [ %cmp63, %land.rhs ]
  br i1 %78, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %79 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %drawn_comps65 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %79, i32 0, i32 44
  %80 = load i64, i64* %drawn_comps65, align 8, !tbaa !59
  store i64 %80, i64* %comps, align 8, !tbaa !35
  %81 = load i32, i32* %y.addr, align 4, !tbaa !34
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %y.addr, align 4, !tbaa !34
  %p66 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 0
  %y67 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p66, i32 0, i32 1
  store i32 %81, i32* %y67, align 4, !tbaa !96
  %82 = load i32, i32* %y.addr, align 4, !tbaa !34
  %q68 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 1
  %y69 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q68, i32 0, i32 1
  store i32 %82, i32* %y69, align 4, !tbaa !97
  %83 = load i32, i32* %row, align 4, !tbaa !34
  %84 = load i32, i32* %raster_in.addr, align 4, !tbaa !34
  %mul70 = mul nsw i32 %83, %84
  %85 = load i32, i32* %data_x.addr, align 4, !tbaa !34
  %add71 = add nsw i32 %mul70, %85
  store i32 %add71, i32* %offset, align 4, !tbaa !34
  %86 = load i32, i32* %row, align 4, !tbaa !34
  %inc72 = add nsw i32 %86, 1
  store i32 %inc72, i32* %row, align 4, !tbaa !34
  %87 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %88 = load i32, i32* %offset, align 4, !tbaa !34
  %idx.ext73 = sext i32 %88 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %87, i64 %idx.ext73
  store i8* %add.ptr74, i8** %curr_data, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc.113, %while.body
  %89 = load i32, i32* %k, align 4, !tbaa !34
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %color_info75 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %90, i32 0, i32 11
  %num_components76 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info75, i32 0, i32 1
  %91 = load i32, i32* %num_components76, align 4, !tbaa !78
  %cmp77 = icmp slt i32 %89, %91
  br i1 %cmp77, label %for.body, label %for.end.115

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !34
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc, %for.body
  %92 = load i32, i32* %j, align 4, !tbaa !34
  %93 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %color_info80 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %93, i32 0, i32 11
  %num_components81 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info80, i32 0, i32 1
  %94 = load i32, i32* %num_components81, align 4, !tbaa !78
  %cmp82 = icmp slt i32 %92, %94
  br i1 %cmp82, label %for.body.84, label %for.end

for.body.84:                                      ; preds = %for.cond.79
  %95 = load i32, i32* %j, align 4, !tbaa !34
  %idxprom = sext i32 %95 to i64
  %data85 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data85, i32 0, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.84
  %96 = load i32, i32* %j, align 4, !tbaa !34
  %inc86 = add nsw i32 %96, 1
  store i32 %inc86, i32* %j, align 4, !tbaa !34
  br label %for.cond.79

for.end:                                          ; preds = %for.cond.79
  %97 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %98 = load i32, i32* %k, align 4, !tbaa !34
  %99 = load i32, i32* %raster, align 4, !tbaa !34
  %mul87 = mul nsw i32 %98, %99
  %idx.ext88 = sext i32 %mul87 to i64
  %add.ptr89 = getelementptr inbounds i8, i8* %97, i64 %idx.ext88
  %100 = load i32, i32* %k, align 4, !tbaa !34
  %idxprom90 = sext i32 %100 to i64
  %data91 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data91, i32 0, i64 %idxprom90
  store i8* %add.ptr89, i8** %arrayidx92, align 8, !tbaa !1
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs93 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %101, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs93, i32 0, i32 38
  %102 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !98
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call94 = call i32 %102(%struct.gx_device_s* %103, %struct.gs_int_rect_s* %gb_rect, %struct.gs_get_bits_params_s* %gb_params, %struct.gs_int_rect_s** null) #4
  store i32 %call94, i32* %code, align 4, !tbaa !34
  %104 = load i32, i32* %code, align 4, !tbaa !34
  %cmp95 = icmp slt i32 %104, 0
  br i1 %cmp95, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %for.end
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs98 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %105, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs98, i32 0, i32 2
  %106 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !99
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %108 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  call void %106(%struct.gs_memory_s* %107, i8* %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)) #4
  %109 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %109, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.99:                                        ; preds = %for.end
  %110 = load i64, i64* %comps, align 8, !tbaa !35
  %and = and i64 %110, 1
  %cmp100 = icmp eq i64 %and, 1
  br i1 %cmp100, label %if.then.102, label %if.end.108

if.then.102:                                      ; preds = %if.end.99
  %111 = load i32, i32* %k, align 4, !tbaa !34
  %idxprom103 = sext i32 %111 to i64
  %data104 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data104, i32 0, i64 %idxprom103
  %112 = load i8*, i8** %arrayidx105, align 8, !tbaa !1
  %113 = load i8*, i8** %curr_data, align 8, !tbaa !1
  %114 = load i32, i32* %w.addr, align 4, !tbaa !34
  %conv106 = sext i32 %114 to i64
  %call107 = call i8* @memcpy(i8* %112, i8* %113, i64 %conv106) #5
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.102, %if.end.99
  %115 = load i32, i32* %plane_height.addr, align 4, !tbaa !34
  %116 = load i32, i32* %raster_in.addr, align 4, !tbaa !34
  %mul109 = mul nsw i32 %115, %116
  %117 = load i8*, i8** %curr_data, align 8, !tbaa !1
  %idx.ext110 = sext i32 %mul109 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %117, i64 %idx.ext110
  store i8* %add.ptr111, i8** %curr_data, align 8, !tbaa !1
  %118 = load i64, i64* %comps, align 8, !tbaa !35
  %shr112 = lshr i64 %118, 1
  store i64 %shr112, i64* %comps, align 8, !tbaa !35
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.108
  %119 = load i32, i32* %k, align 4, !tbaa !34
  %inc114 = add nsw i32 %119, 1
  store i32 %inc114, i32* %k, align 4, !tbaa !34
  br label %for.cond

for.end.115:                                      ; preds = %for.cond
  %120 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs116 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %120, i32 0, i32 42
  %copy_planes = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs116, i32 0, i32 66
  %121 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes, align 8, !tbaa !100
  %122 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %123 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %124 = load i32, i32* %raster, align 4, !tbaa !34
  %125 = load i32, i32* %x.addr, align 4, !tbaa !34
  %126 = load i32, i32* %y.addr, align 4, !tbaa !34
  %sub117 = sub nsw i32 %126, 1
  %127 = load i32, i32* %w.addr, align 4, !tbaa !34
  %call118 = call i32 %121(%struct.gx_device_s* %122, i8* %123, i32 0, i32 %124, i64 0, i32 %125, i32 %sub117, i32 %127, i32 1, i32 1) #4
  store i32 %call118, i32* %code, align 4, !tbaa !34
  br label %while.cond

while.end:                                        ; preds = %land.end
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs119 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %128, i32 0, i32 1
  %free_object120 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs119, i32 0, i32 2
  %129 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object120, align 8, !tbaa !99
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %131 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  call void %129(%struct.gs_memory_s* %130, i8* %131, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)) #4
  %132 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %132, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %133 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs121 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %133, i32 0, i32 42
  %copy_planes122 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs121, i32 0, i32 66
  %134 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes122, align 8, !tbaa !100
  %135 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %136 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %137 = load i32, i32* %data_x.addr, align 4, !tbaa !34
  %138 = load i32, i32* %raster_in.addr, align 4, !tbaa !34
  %139 = load i64, i64* %id.addr, align 8, !tbaa !35
  %140 = load i32, i32* %x.addr, align 4, !tbaa !34
  %141 = load i32, i32* %y.addr, align 4, !tbaa !34
  %142 = load i32, i32* %w.addr, align 4, !tbaa !34
  %143 = load i32, i32* %h.addr, align 4, !tbaa !34
  %144 = load i32, i32* %plane_height.addr, align 4, !tbaa !34
  %call123 = call i32 %134(%struct.gx_device_s* %135, i8* %136, i32 %137, i32 %138, i64 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144) #4
  store i32 %call123, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %while.end, %if.then.97, %if.then.55, %if.then.44, %if.then
  %145 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %146 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #2
  %147 = bitcast i8** %curr_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #2
  %148 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #2
  %149 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #2
  %150 = bitcast i64* %comps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #2
  %151 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %152 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #2
  %153 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #2
  %154 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %155 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast i32* %byte_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  %157 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  %158 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = bitcast %struct.gs_int_rect_s* %gb_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %159) #2
  %160 = bitcast %struct.gs_get_bits_params_s* %gb_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %160) #2
  %161 = bitcast i8** %gb_buff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #2
  %162 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #2
  %163 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #2
  %164 = load i32, i32* %retval
  ret i32 %164
}

; Function Attrs: nounwind uwtable
define internal i32 @overprint_copy_alpha_hl_color(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height, %struct.gx_device_color_s* %pdcolor, i32 %depth) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %opdev = alloca %struct.overprint_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !34
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !34
  store i64 %id, i64* %id.addr, align 8, !tbaa !35
  store i32 %x, i32* %x.addr, align 4, !tbaa !34
  store i32 %y, i32* %y.addr, align 4, !tbaa !34
  store i32 %width, i32* %width.addr, align 4, !tbaa !34
  store i32 %height, i32* %height.addr, align 4, !tbaa !34
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !34
  %0 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.overprint_device_s*
  store %struct.overprint_device_s* %2, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %copy_alpha_hl = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %4, i32 0, i32 48
  store i32 1, i32* %copy_alpha_hl, align 4, !tbaa !70
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %7 = load i32, i32* %data_x.addr, align 4, !tbaa !34
  %8 = load i32, i32* %raster.addr, align 4, !tbaa !34
  %9 = load i64, i64* %id.addr, align 8, !tbaa !35
  %10 = load i32, i32* %x.addr, align 4, !tbaa !34
  %11 = load i32, i32* %y.addr, align 4, !tbaa !34
  %12 = load i32, i32* %width.addr, align 4, !tbaa !34
  %13 = load i32, i32* %height.addr, align 4, !tbaa !34
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %15 = load i32, i32* %depth.addr, align 4, !tbaa !34
  %call = call i32 @gx_default_copy_alpha_hl_color(%struct.gx_device_s* %5, i8* %6, i32 %7, i32 %8, i64 %9, i32 %10, i32 %11, i32 %12, i32 %13, %struct.gx_device_color_s* %14, i32 %15) #4
  store i32 %call, i32* %code, align 4, !tbaa !34
  %16 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev, align 8, !tbaa !1
  %copy_alpha_hl1 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %16, i32 0, i32 48
  store i32 0, i32* %copy_alpha_hl1, align 4, !tbaa !70
  %17 = load i32, i32* %code, align 4, !tbaa !34
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast %struct.overprint_device_s** %opdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i64 @swap_color_index(i32 %depth, i64 %color) #0 {
entry:
  %depth.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %shift = alloca i32, align 4
  %mask = alloca i64, align 8
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !34
  store i64 %color, i64* %color.addr, align 8, !tbaa !35
  %0 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %depth.addr, align 4, !tbaa !34
  %sub = sub nsw i32 %1, 8
  store i32 %sub, i32* %shift, align 4, !tbaa !34
  %2 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  store i64 255, i64* %mask, align 8, !tbaa !35
  %3 = load i64, i64* %color.addr, align 8, !tbaa !35
  %4 = load i32, i32* %shift, align 4, !tbaa !34
  %sh_prom = zext i32 %4 to i64
  %shr = lshr i64 %3, %sh_prom
  %5 = load i64, i64* %mask, align 8, !tbaa !35
  %and = and i64 %shr, %5
  %6 = load i64, i64* %color.addr, align 8, !tbaa !35
  %7 = load i64, i64* %mask, align 8, !tbaa !35
  %and1 = and i64 %6, %7
  %8 = load i32, i32* %shift, align 4, !tbaa !34
  %sh_prom2 = zext i32 %8 to i64
  %shl = shl i64 %and1, %sh_prom2
  %or = or i64 %and, %shl
  %9 = load i64, i64* %color.addr, align 8, !tbaa !35
  %10 = load i64, i64* %mask, align 8, !tbaa !35
  %11 = load i32, i32* %shift, align 4, !tbaa !34
  %sh_prom3 = zext i32 %11 to i64
  %shl4 = shl i64 %10, %sh_prom3
  %12 = load i64, i64* %mask, align 8, !tbaa !35
  %or5 = or i64 %shl4, %12
  %neg = xor i64 %or5, -1
  %and6 = and i64 %9, %neg
  %or7 = or i64 %or, %and6
  store i64 %or7, i64* %color.addr, align 8, !tbaa !35
  %13 = load i32, i32* %depth.addr, align 4, !tbaa !34
  %cmp = icmp sgt i32 %13, 24
  br i1 %cmp, label %if.then, label %if.end.58

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %shift, align 4, !tbaa !34
  %sub8 = sub nsw i32 %14, 16
  store i32 %sub8, i32* %shift, align 4, !tbaa !34
  %15 = load i64, i64* %mask, align 8, !tbaa !35
  %shl9 = shl i64 %15, 8
  store i64 %shl9, i64* %mask, align 8, !tbaa !35
  %16 = load i64, i64* %color.addr, align 8, !tbaa !35
  %17 = load i32, i32* %shift, align 4, !tbaa !34
  %sh_prom10 = zext i32 %17 to i64
  %shr11 = lshr i64 %16, %sh_prom10
  %18 = load i64, i64* %mask, align 8, !tbaa !35
  %and12 = and i64 %shr11, %18
  %19 = load i64, i64* %color.addr, align 8, !tbaa !35
  %20 = load i64, i64* %mask, align 8, !tbaa !35
  %and13 = and i64 %19, %20
  %21 = load i32, i32* %shift, align 4, !tbaa !34
  %sh_prom14 = zext i32 %21 to i64
  %shl15 = shl i64 %and13, %sh_prom14
  %or16 = or i64 %and12, %shl15
  %22 = load i64, i64* %color.addr, align 8, !tbaa !35
  %23 = load i64, i64* %mask, align 8, !tbaa !35
  %24 = load i32, i32* %shift, align 4, !tbaa !34
  %sh_prom17 = zext i32 %24 to i64
  %shl18 = shl i64 %23, %sh_prom17
  %25 = load i64, i64* %mask, align 8, !tbaa !35
  %or19 = or i64 %shl18, %25
  %neg20 = xor i64 %or19, -1
  %and21 = and i64 %22, %neg20
  %or22 = or i64 %or16, %and21
  store i64 %or22, i64* %color.addr, align 8, !tbaa !35
  %26 = load i32, i32* %depth.addr, align 4, !tbaa !34
  %cmp23 = icmp sgt i32 %26, 40
  br i1 %cmp23, label %if.then.24, label %if.end.57

if.then.24:                                       ; preds = %if.then
  %27 = load i32, i32* %shift, align 4, !tbaa !34
  %sub25 = sub nsw i32 %27, 16
  store i32 %sub25, i32* %shift, align 4, !tbaa !34
  %28 = load i64, i64* %mask, align 8, !tbaa !35
  %shl26 = shl i64 %28, 8
  store i64 %shl26, i64* %mask, align 8, !tbaa !35
  %29 = load i64, i64* %color.addr, align 8, !tbaa !35
  %30 = load i32, i32* %shift, align 4, !tbaa !34
  %sh_prom27 = zext i32 %30 to i64
  %shr28 = lshr i64 %29, %sh_prom27
  %31 = load i64, i64* %mask, align 8, !tbaa !35
  %and29 = and i64 %shr28, %31
  %32 = load i64, i64* %color.addr, align 8, !tbaa !35
  %33 = load i64, i64* %mask, align 8, !tbaa !35
  %and30 = and i64 %32, %33
  %34 = load i32, i32* %shift, align 4, !tbaa !34
  %sh_prom31 = zext i32 %34 to i64
  %shl32 = shl i64 %and30, %sh_prom31
  %or33 = or i64 %and29, %shl32
  %35 = load i64, i64* %color.addr, align 8, !tbaa !35
  %36 = load i64, i64* %mask, align 8, !tbaa !35
  %37 = load i32, i32* %shift, align 4, !tbaa !34
  %sh_prom34 = zext i32 %37 to i64
  %shl35 = shl i64 %36, %sh_prom34
  %38 = load i64, i64* %mask, align 8, !tbaa !35
  %or36 = or i64 %shl35, %38
  %neg37 = xor i64 %or36, -1
  %and38 = and i64 %35, %neg37
  %or39 = or i64 %or33, %and38
  store i64 %or39, i64* %color.addr, align 8, !tbaa !35
  %39 = load i32, i32* %depth.addr, align 4, !tbaa !34
  %cmp40 = icmp sgt i32 %39, 56
  br i1 %cmp40, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %if.then.24
  %40 = load i32, i32* %shift, align 4, !tbaa !34
  %sub42 = sub nsw i32 %40, 16
  store i32 %sub42, i32* %shift, align 4, !tbaa !34
  %41 = load i64, i64* %mask, align 8, !tbaa !35
  %shl43 = shl i64 %41, 8
  store i64 %shl43, i64* %mask, align 8, !tbaa !35
  %42 = load i64, i64* %color.addr, align 8, !tbaa !35
  %43 = load i32, i32* %shift, align 4, !tbaa !34
  %sh_prom44 = zext i32 %43 to i64
  %shr45 = lshr i64 %42, %sh_prom44
  %44 = load i64, i64* %mask, align 8, !tbaa !35
  %and46 = and i64 %shr45, %44
  %45 = load i64, i64* %color.addr, align 8, !tbaa !35
  %46 = load i64, i64* %mask, align 8, !tbaa !35
  %and47 = and i64 %45, %46
  %47 = load i32, i32* %shift, align 4, !tbaa !34
  %sh_prom48 = zext i32 %47 to i64
  %shl49 = shl i64 %and47, %sh_prom48
  %or50 = or i64 %and46, %shl49
  %48 = load i64, i64* %color.addr, align 8, !tbaa !35
  %49 = load i64, i64* %mask, align 8, !tbaa !35
  %50 = load i32, i32* %shift, align 4, !tbaa !34
  %sh_prom51 = zext i32 %50 to i64
  %shl52 = shl i64 %49, %sh_prom51
  %51 = load i64, i64* %mask, align 8, !tbaa !35
  %or53 = or i64 %shl52, %51
  %neg54 = xor i64 %or53, -1
  %and55 = and i64 %48, %neg54
  %or56 = or i64 %or50, %and55
  store i64 %or56, i64* %color.addr, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.then.41, %if.then.24
  br label %if.end.57

if.end.57:                                        ; preds = %if.end, %if.then
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %entry
  %52 = load i64, i64* %color.addr, align 8, !tbaa !35
  %53 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  ret i64 %52
}

declare i32 @gx_overprint_sep_fill_rectangle_1(%struct.gx_device_s*, i64, i32, i32, i32, i32, i64, %struct.gs_memory_s*) #1

declare i32 @gx_overprint_sep_fill_rectangle_2(%struct.gx_device_s*, i32, i64, i32, i32, i32, i32, i64, %struct.gs_memory_s*) #1

declare i32 @gx_default_copy_alpha_hl_color(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare void @gx_device_forward_fill_in_procs(%struct.gx_device_forward_s*) #1

; Function Attrs: nounwind uwtable
define internal i64 @check_drawn_comps(i32 %ncomps, i16* %cvals) #0 {
entry:
  %ncomps.addr = alloca i32, align 4
  %cvals.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %mask = alloca i64, align 8
  %drawn_comps = alloca i64, align 8
  store i32 %ncomps, i32* %ncomps.addr, align 4, !tbaa !34
  store i16* %cvals, i16** %cvals.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  store i64 1, i64* %mask, align 8, !tbaa !35
  %2 = bitcast i64* %drawn_comps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  store i64 0, i64* %drawn_comps, align 8, !tbaa !35
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !34
  %4 = load i32, i32* %ncomps.addr, align 4, !tbaa !34
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom = sext i32 %5 to i64
  %6 = load i16*, i16** %cvals.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2, !tbaa !36
  %conv = sext i16 %7 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i64, i64* %mask, align 8, !tbaa !35
  %9 = load i64, i64* %drawn_comps, align 8, !tbaa !35
  %or = or i64 %9, %8
  store i64 %or, i64* %drawn_comps, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !tbaa !34
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4, !tbaa !34
  %11 = load i64, i64* %mask, align 8, !tbaa !35
  %shl = shl i64 %11, 1
  store i64 %shl, i64* %mask, align 8, !tbaa !35
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i64, i64* %drawn_comps, align 8, !tbaa !35
  %13 = bitcast i64* %drawn_comps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal void @set_retain_mask(%struct.overprint_device_s* %opdev) #0 {
entry:
  %opdev.addr = alloca %struct.overprint_device_s*, align 8
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %drawn_comps = alloca i64, align 8
  %retain_mask = alloca i64, align 8
  %depth = alloca i32, align 4
  store %struct.overprint_device_s* %opdev, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !55
  store i32 %3, i32* %ncomps, align 4, !tbaa !34
  %4 = bitcast i64* %drawn_comps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %drawn_comps1 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %5, i32 0, i32 44
  %6 = load i64, i64* %drawn_comps1, align 8, !tbaa !59
  store i64 %6, i64* %drawn_comps, align 8, !tbaa !35
  %7 = bitcast i64* %retain_mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  store i64 0, i64* %retain_mask, align 8, !tbaa !35
  %8 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %9, i32 0, i32 11
  %depth3 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 3
  %10 = load i16, i16* %depth3, align 2, !tbaa !102
  %conv = zext i16 %10 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !34
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !34
  %12 = load i32, i32* %ncomps, align 4, !tbaa !34
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %drawn_comps, align 8, !tbaa !35
  %and = and i64 %13, 1
  %cmp5 = icmp eq i64 %and, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %color_info7 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %15, i32 0, i32 11
  %comp_mask = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info7, i32 0, i32 13
  %arrayidx = getelementptr inbounds [64 x i64], [64 x i64]* %comp_mask, i32 0, i64 %idxprom
  %16 = load i64, i64* %arrayidx, align 8, !tbaa !35
  %17 = load i64, i64* %retain_mask, align 8, !tbaa !35
  %or = or i64 %17, %16
  store i64 %or, i64* %retain_mask, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4, !tbaa !34
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !34
  %19 = load i64, i64* %drawn_comps, align 8, !tbaa !35
  %shr = lshr i64 %19, 1
  store i64 %shr, i64* %drawn_comps, align 8, !tbaa !35
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %depth, align 4, !tbaa !34
  %cmp8 = icmp sgt i32 %20, 8
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.end
  %21 = load i32, i32* %depth, align 4, !tbaa !34
  %22 = load i64, i64* %retain_mask, align 8, !tbaa !35
  %call = call i64 @swap_color_index(i32 %21, i64 %22) #4
  store i64 %call, i64* %retain_mask, align 8, !tbaa !35
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.end
  %23 = load i64, i64* %retain_mask, align 8, !tbaa !35
  %24 = load %struct.overprint_device_s*, %struct.overprint_device_s** %opdev.addr, align 8, !tbaa !1
  %retain_mask12 = getelementptr inbounds %struct.overprint_device_s, %struct.overprint_device_s* %24, i32 0, i32 47
  store i64 %23, i64* %retain_mask12, align 8, !tbaa !101
  %25 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i64* %retain_mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast i64* %drawn_comps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !8, i64 40}
!6 = !{!"gs_overprint_s", !2, i64 0, !7, i64 8, !8, i64 16, !2, i64 24, !2, i64 32, !9, i64 40}
!7 = !{!"long", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!"gs_overprint_params_s", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 16, !10, i64 24, !8, i64 28}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !8, i64 16}
!12 = !{!"gs_composite_s", !2, i64 0, !7, i64 8, !8, i64 16, !2, i64 24, !2, i64 32}
!13 = !{!14, !2, i64 80}
!14 = !{!"gs_memory_s", !2, i64 0, !15, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!15 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!16 = !{!17, !8, i64 840}
!17 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !18, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !19, i64 96, !21, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !7, i64 928, !7, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !7, i64 968, !7, i64 976, !22, i64 984, !8, i64 1052, !8, i64 1056, !23, i64 1064, !2, i64 1104, !3, i64 1112, !25, i64 1120, !26, i64 1144}
!18 = !{!"rc_header_s", !7, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !10, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !20, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !7, i64 704, !8, i64 712}
!20 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!21 = !{!"gx_device_cached_colors_s", !7, i64 0, !7, i64 8}
!22 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!23 = !{!"gdev_space_params_s", !7, i64 0, !7, i64 8, !24, i64 16, !8, i64 32, !3, i64 36}
!24 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !7, i64 8}
!25 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!26 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!27 = !{!28, !8, i64 840}
!28 = !{!"overprint_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !18, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !19, i64 96, !21, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !7, i64 928, !7, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !7, i64 968, !7, i64 976, !22, i64 984, !8, i64 1052, !8, i64 1056, !23, i64 1064, !2, i64 1104, !3, i64 1112, !25, i64 1120, !26, i64 1144, !2, i64 1728, !7, i64 1736, !10, i64 1744, !8, i64 1748, !7, i64 1752, !8, i64 1760, !26, i64 1768, !26, i64 2352, !26, i64 2936}
!29 = !{!17, !8, i64 844}
!30 = !{!28, !8, i64 844}
!31 = !{!17, !8, i64 848}
!32 = !{!28, !8, i64 848}
!33 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 16, i64 8, !35, i64 24, i64 2, !36, i64 28, i64 4, !34}
!34 = !{!8, !8, i64 0}
!35 = !{!7, !7, i64 0}
!36 = !{!10, !10, i64 0}
!37 = !{!6, !8, i64 16}
!38 = !{!9, !8, i64 8}
!39 = !{!12, !2, i64 0}
!40 = !{!9, !8, i64 0}
!41 = !{!9, !8, i64 4}
!42 = !{!9, !7, i64 16}
!43 = !{!3, !3, i64 0}
!44 = !{!9, !8, i64 28}
!45 = !{!9, !10, i64 24}
!46 = !{!47, !3, i64 0}
!47 = !{!"gs_composite_type_s", !3, i64 0, !48, i64 8}
!48 = !{!"gs_composite_type_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72}
!49 = !{!14, !2, i64 72}
!50 = !{!6, !2, i64 0}
!51 = !{!6, !7, i64 8}
!52 = !{!53, !3, i64 136}
!53 = !{!"gx_device_forward_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !18, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !19, i64 96, !21, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !7, i64 928, !7, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !7, i64 968, !7, i64 976, !22, i64 984, !8, i64 1052, !8, i64 1056, !23, i64 1064, !2, i64 1104, !3, i64 1112, !25, i64 1120, !26, i64 1144, !2, i64 1728}
!54 = !{!53, !2, i64 8}
!55 = !{!28, !8, i64 100}
!56 = !{!28, !2, i64 1200}
!57 = !{!28, !3, i64 136}
!58 = !{!28, !8, i64 1748}
!59 = !{!28, !7, i64 1736}
!60 = !{!28, !10, i64 1744}
!61 = !{!28, !2, i64 1536}
!62 = !{!63, !2, i64 0}
!63 = !{!"gx_cm_color_map_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!64 = !{!63, !2, i64 8}
!65 = !{!63, !2, i64 16}
!66 = !{!67, !2, i64 32}
!67 = !{!"gs_memory_struct_type_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!68 = !{!67, !2, i64 40}
!69 = !{!28, !2, i64 1728}
!70 = !{!28, !8, i64 1760}
!71 = !{!17, !2, i64 1256}
!72 = !{!17, !8, i64 84}
!73 = !{!17, !2, i64 1296}
!74 = !{!17, !2, i64 1544}
!75 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !43, i64 12, i64 2, !36, i64 14, i64 1, !43, i64 16, i64 4, !34, i64 20, i64 4, !34, i64 24, i64 4, !34, i64 28, i64 4, !34, i64 32, i64 4, !34, i64 36, i64 4, !34, i64 40, i64 4, !43, i64 44, i64 64, !43, i64 108, i64 64, !43, i64 176, i64 512, !43, i64 688, i64 8, !1, i64 696, i64 4, !43, i64 704, i64 8, !35, i64 712, i64 4, !34}
!76 = !{!17, !2, i64 24}
!77 = !{!17, !10, i64 108}
!78 = !{!17, !8, i64 100}
!79 = !{!80, !8, i64 0}
!80 = !{!"gs_fixed_rect_s", !81, i64 0, !81, i64 8}
!81 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!82 = !{!80, !8, i64 4}
!83 = !{!80, !8, i64 8}
!84 = !{!80, !8, i64 12}
!85 = !{!17, !8, i64 832}
!86 = !{!17, !8, i64 836}
!87 = !{!14, !2, i64 64}
!88 = !{!89, !7, i64 0}
!89 = !{!"gs_get_bits_params_s", !7, i64 0, !3, i64 8, !8, i64 520, !8, i64 524, !8, i64 528}
!90 = !{!89, !8, i64 520}
!91 = !{!89, !8, i64 528}
!92 = !{!93, !8, i64 0}
!93 = !{!"gs_int_rect_s", !94, i64 0, !94, i64 8}
!94 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!95 = !{!93, !8, i64 8}
!96 = !{!93, !8, i64 4}
!97 = !{!93, !8, i64 12}
!98 = !{!17, !2, i64 1448}
!99 = !{!14, !2, i64 24}
!100 = !{!17, !2, i64 1672}
!101 = !{!28, !7, i64 1752}
!102 = !{!28, !10, i64 108}
