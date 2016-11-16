; ModuleID = './gsicc_monitorcm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
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
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, {}*, i32 (i8*, i32)* }
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
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
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
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_device_halftone_s = type opaque
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type { i32, %struct.pp_ }
%struct.pp_ = type { i32 (%struct.gs_pattern_template_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)*, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_pattern_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, {}*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type { i64, i32, %struct.gs_uid_s, i32, i32, %struct.gs_matrix_s, %struct.gs_rect_s, %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s, %struct.gx_pattern_trans_s*, %union.gx_device_clist_s*, i8, i8, i8, [2 x i8], i32, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_pattern_trans_s = type { %struct.gx_device_s*, i8*, %struct.gs_memory_s*, %struct.gx_pattern_trans_s*, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, i32, %struct.pdf14_nonseparable_blending_procs_s*, i32, i32, %struct.gs_int_rect_s*, void (i32, i32, i32, i32, i32, i32, %struct.gx_color_tile_s*, %struct.gx_pattern_trans_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.pdf14_nonseparable_blending_procs_s = type { void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)* }
%struct.gx_image_enum_s = type opaque
%union.gx_device_clist_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gx_image_enum_common_s = type opaque
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
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type { i32, i8**, i32, i32, i32, %struct.gs_separations_s, i32, [70 x i32], %struct.compressed_color_list_s*, %struct.compressed_color_list_s*, %struct.gs_separations_s }
%struct.compressed_color_list_s = type { %struct.gs_memory_s*, i32, i32, i32, %union.anon.2 }
%union.anon.2 = type { [256 x %struct.comp_bit_map_list_s] }
%struct.comp_bit_map_list_s = type { i16, i16, i32, i64, i64 }
%struct.gs_separations_s = type { i32, [64 x %struct.devn_separation_name_s] }
%struct.devn_separation_name_s = type { i32, i8* }
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @gsicc_mcm_monitor_rgb(i8* %inputcolor, i32 %num_bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %inputcolor.addr = alloca i8*, align 8
  %num_bytes.addr = alloca i32, align 4
  %rgb_val = alloca i8*, align 8
  %rg_diff = alloca i32, align 4
  %rb_diff = alloca i32, align 4
  %bg_diff = alloca i32, align 4
  %rgb_val21 = alloca i16*, align 8
  %rg_diff22 = alloca i32, align 4
  %rb_diff29 = alloca i32, align 4
  %bg_diff36 = alloca i32, align 4
  store i8* %inputcolor, i8** %inputcolor.addr, align 8, !tbaa !1
  store i32 %num_bytes, i32* %num_bytes.addr, align 4, !tbaa !5
  %0 = load i32, i32* %num_bytes.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = bitcast i8** %rgb_val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  store i8* %2, i8** %rgb_val, align 8, !tbaa !1
  %3 = bitcast i32* %rg_diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %rgb_val, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %rgb_val, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv2 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv, %conv2
  %call = call i32 @abs(i32 %sub) #5
  store i32 %call, i32* %rg_diff, align 4, !tbaa !5
  %8 = bitcast i32* %rb_diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i8*, i8** %rgb_val, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv4 = zext i8 %10 to i32
  %11 = load i8*, i8** %rgb_val, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %12 to i32
  %sub7 = sub nsw i32 %conv4, %conv6
  %call8 = call i32 @abs(i32 %sub7) #5
  store i32 %call8, i32* %rb_diff, align 4, !tbaa !5
  %13 = bitcast i32* %bg_diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i8*, i8** %rgb_val, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx9, align 1, !tbaa !7
  %conv10 = zext i8 %15 to i32
  %16 = load i8*, i8** %rgb_val, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %17 to i32
  %sub13 = sub nsw i32 %conv10, %conv12
  %call14 = call i32 @abs(i32 %sub13) #5
  store i32 %call14, i32* %bg_diff, align 4, !tbaa !5
  %18 = load i32, i32* %rg_diff, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %18, 5
  br i1 %cmp15, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then
  %19 = load i32, i32* %rb_diff, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %19, 5
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %20 = load i32, i32* %bg_diff, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %20, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.then
  %21 = phi i1 [ false, %land.lhs.true ], [ false, %if.then ], [ %cmp19, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  store i32 %land.ext, i32* %retval
  %22 = bitcast i32* %bg_diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %rb_diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %rg_diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i8** %rgb_val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  br label %return

if.else:                                          ; preds = %entry
  %26 = bitcast i16** %rgb_val21 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  %28 = bitcast i8* %27 to i16*
  store i16* %28, i16** %rgb_val21, align 8, !tbaa !1
  %29 = bitcast i32* %rg_diff22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i16*, i16** %rgb_val21, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i16, i16* %30, i64 0
  %31 = load i16, i16* %arrayidx23, align 2, !tbaa !8
  %conv24 = zext i16 %31 to i32
  %32 = load i16*, i16** %rgb_val21, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i16, i16* %32, i64 1
  %33 = load i16, i16* %arrayidx25, align 2, !tbaa !8
  %conv26 = zext i16 %33 to i32
  %sub27 = sub nsw i32 %conv24, %conv26
  %call28 = call i32 @abs(i32 %sub27) #5
  store i32 %call28, i32* %rg_diff22, align 4, !tbaa !5
  %34 = bitcast i32* %rb_diff29 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i16*, i16** %rgb_val21, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i16, i16* %35, i64 0
  %36 = load i16, i16* %arrayidx30, align 2, !tbaa !8
  %conv31 = zext i16 %36 to i32
  %37 = load i16*, i16** %rgb_val21, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i16, i16* %37, i64 2
  %38 = load i16, i16* %arrayidx32, align 2, !tbaa !8
  %conv33 = zext i16 %38 to i32
  %sub34 = sub nsw i32 %conv31, %conv33
  %call35 = call i32 @abs(i32 %sub34) #5
  store i32 %call35, i32* %rb_diff29, align 4, !tbaa !5
  %39 = bitcast i32* %bg_diff36 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load i16*, i16** %rgb_val21, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i16, i16* %40, i64 1
  %41 = load i16, i16* %arrayidx37, align 2, !tbaa !8
  %conv38 = zext i16 %41 to i32
  %42 = load i16*, i16** %rgb_val21, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i16, i16* %42, i64 2
  %43 = load i16, i16* %arrayidx39, align 2, !tbaa !8
  %conv40 = zext i16 %43 to i32
  %sub41 = sub nsw i32 %conv38, %conv40
  %call42 = call i32 @abs(i32 %sub41) #5
  store i32 %call42, i32* %bg_diff36, align 4, !tbaa !5
  %44 = load i32, i32* %rg_diff22, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %44, 5
  br i1 %cmp43, label %land.lhs.true.45, label %land.end.51

land.lhs.true.45:                                 ; preds = %if.else
  %45 = load i32, i32* %rb_diff29, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %45, 5
  br i1 %cmp46, label %land.rhs.48, label %land.end.51

land.rhs.48:                                      ; preds = %land.lhs.true.45
  %46 = load i32, i32* %bg_diff36, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %46, 5
  br label %land.end.51

land.end.51:                                      ; preds = %land.rhs.48, %land.lhs.true.45, %if.else
  %47 = phi i1 [ false, %land.lhs.true.45 ], [ false, %if.else ], [ %cmp49, %land.rhs.48 ]
  %land.ext52 = zext i1 %47 to i32
  store i32 %land.ext52, i32* %retval
  %48 = bitcast i32* %bg_diff36 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %rb_diff29 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %rg_diff22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i16** %rgb_val21 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  br label %return

return:                                           ; preds = %land.end.51, %land.end
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gsicc_mcm_monitor_cmyk(i8* %inputcolor, i32 %num_bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %inputcolor.addr = alloca i8*, align 8
  %num_bytes.addr = alloca i32, align 4
  %cmyk = alloca i8*, align 8
  %cm_diff = alloca i32, align 4
  %cy_diff = alloca i32, align 4
  %my_diff = alloca i32, align 4
  %cmyk21 = alloca i16*, align 8
  %cm_diff22 = alloca i32, align 4
  %cy_diff29 = alloca i32, align 4
  %my_diff36 = alloca i32, align 4
  store i8* %inputcolor, i8** %inputcolor.addr, align 8, !tbaa !1
  store i32 %num_bytes, i32* %num_bytes.addr, align 4, !tbaa !5
  %0 = load i32, i32* %num_bytes.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = bitcast i8** %cmyk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  store i8* %2, i8** %cmyk, align 8, !tbaa !1
  %3 = bitcast i32* %cm_diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %cmyk, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %cmyk, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv2 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv, %conv2
  %call = call i32 @abs(i32 %sub) #5
  store i32 %call, i32* %cm_diff, align 4, !tbaa !5
  %8 = bitcast i32* %cy_diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i8*, i8** %cmyk, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv4 = zext i8 %10 to i32
  %11 = load i8*, i8** %cmyk, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %12 to i32
  %sub7 = sub nsw i32 %conv4, %conv6
  %call8 = call i32 @abs(i32 %sub7) #5
  store i32 %call8, i32* %cy_diff, align 4, !tbaa !5
  %13 = bitcast i32* %my_diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i8*, i8** %cmyk, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx9, align 1, !tbaa !7
  %conv10 = zext i8 %15 to i32
  %16 = load i8*, i8** %cmyk, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %17 to i32
  %sub13 = sub nsw i32 %conv10, %conv12
  %call14 = call i32 @abs(i32 %sub13) #5
  store i32 %call14, i32* %my_diff, align 4, !tbaa !5
  %18 = load i32, i32* %cm_diff, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %18, 5
  br i1 %cmp15, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then
  %19 = load i32, i32* %cy_diff, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %19, 5
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %20 = load i32, i32* %my_diff, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %20, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.then
  %21 = phi i1 [ false, %land.lhs.true ], [ false, %if.then ], [ %cmp19, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  store i32 %land.ext, i32* %retval
  %22 = bitcast i32* %my_diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %cy_diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %cm_diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i8** %cmyk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  br label %return

if.else:                                          ; preds = %entry
  %26 = bitcast i16** %cmyk21 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  %28 = bitcast i8* %27 to i16*
  store i16* %28, i16** %cmyk21, align 8, !tbaa !1
  %29 = bitcast i32* %cm_diff22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i16*, i16** %cmyk21, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i16, i16* %30, i64 0
  %31 = load i16, i16* %arrayidx23, align 2, !tbaa !8
  %conv24 = zext i16 %31 to i32
  %32 = load i16*, i16** %cmyk21, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i16, i16* %32, i64 1
  %33 = load i16, i16* %arrayidx25, align 2, !tbaa !8
  %conv26 = zext i16 %33 to i32
  %sub27 = sub nsw i32 %conv24, %conv26
  %call28 = call i32 @abs(i32 %sub27) #5
  store i32 %call28, i32* %cm_diff22, align 4, !tbaa !5
  %34 = bitcast i32* %cy_diff29 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i16*, i16** %cmyk21, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i16, i16* %35, i64 0
  %36 = load i16, i16* %arrayidx30, align 2, !tbaa !8
  %conv31 = zext i16 %36 to i32
  %37 = load i16*, i16** %cmyk21, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i16, i16* %37, i64 2
  %38 = load i16, i16* %arrayidx32, align 2, !tbaa !8
  %conv33 = zext i16 %38 to i32
  %sub34 = sub nsw i32 %conv31, %conv33
  %call35 = call i32 @abs(i32 %sub34) #5
  store i32 %call35, i32* %cy_diff29, align 4, !tbaa !5
  %39 = bitcast i32* %my_diff36 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load i16*, i16** %cmyk21, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i16, i16* %40, i64 1
  %41 = load i16, i16* %arrayidx37, align 2, !tbaa !8
  %conv38 = zext i16 %41 to i32
  %42 = load i16*, i16** %cmyk21, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i16, i16* %42, i64 2
  %43 = load i16, i16* %arrayidx39, align 2, !tbaa !8
  %conv40 = zext i16 %43 to i32
  %sub41 = sub nsw i32 %conv38, %conv40
  %call42 = call i32 @abs(i32 %sub41) #5
  store i32 %call42, i32* %my_diff36, align 4, !tbaa !5
  %44 = load i32, i32* %cm_diff22, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %44, 5
  br i1 %cmp43, label %land.lhs.true.45, label %land.end.51

land.lhs.true.45:                                 ; preds = %if.else
  %45 = load i32, i32* %cy_diff29, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %45, 5
  br i1 %cmp46, label %land.rhs.48, label %land.end.51

land.rhs.48:                                      ; preds = %land.lhs.true.45
  %46 = load i32, i32* %my_diff36, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %46, 5
  br label %land.end.51

land.end.51:                                      ; preds = %land.rhs.48, %land.lhs.true.45, %if.else
  %47 = phi i1 [ false, %land.lhs.true.45 ], [ false, %if.else ], [ %cmp49, %land.rhs.48 ]
  %land.ext52 = zext i1 %47 to i32
  store i32 %land.ext52, i32* %retval
  %48 = bitcast i32* %my_diff36 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %cy_diff29 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %cm_diff22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i16** %cmyk21 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  br label %return

return:                                           ; preds = %land.end.51, %land.end
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_mcm_monitor_lab(i8* %inputcolor, i32 %num_bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %inputcolor.addr = alloca i8*, align 8
  %num_bytes.addr = alloca i32, align 4
  %lab = alloca i8*, align 8
  %diffa = alloca i32, align 4
  %diffb = alloca i32, align 4
  %lab9 = alloca i16*, align 8
  %diffa10 = alloca i32, align 4
  %diffb15 = alloca i32, align 4
  store i8* %inputcolor, i8** %inputcolor.addr, align 8, !tbaa !1
  store i32 %num_bytes, i32* %num_bytes.addr, align 4, !tbaa !5
  %0 = load i32, i32* %num_bytes.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = bitcast i8** %lab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  store i8* %2, i8** %lab, align 8, !tbaa !1
  %3 = bitcast i32* %diffa to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %lab, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %5 to i32
  %sub = sub nsw i32 %conv, 128
  %call = call i32 @abs(i32 %sub) #5
  store i32 %call, i32* %diffa, align 4, !tbaa !5
  %6 = bitcast i32* %diffb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %lab, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv2 = zext i8 %8 to i32
  %sub3 = sub nsw i32 %conv2, 128
  %call4 = call i32 @abs(i32 %sub3) #5
  store i32 %call4, i32* %diffb, align 4, !tbaa !5
  %9 = load i32, i32* %diffa, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %9, 5
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %10 = load i32, i32* %diffb, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %10, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %11 = phi i1 [ false, %if.then ], [ %cmp7, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, i32* %retval
  %12 = bitcast i32* %diffb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i32* %diffa to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast i8** %lab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  br label %return

if.else:                                          ; preds = %entry
  %15 = bitcast i16** %lab9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  %17 = bitcast i8* %16 to i16*
  store i16* %17, i16** %lab9, align 8, !tbaa !1
  %18 = bitcast i32* %diffa10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i16*, i16** %lab9, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %19, i64 1
  %20 = load i16, i16* %arrayidx11, align 2, !tbaa !8
  %conv12 = zext i16 %20 to i32
  %sub13 = sub nsw i32 %conv12, 32768
  %call14 = call i32 @abs(i32 %sub13) #5
  store i32 %call14, i32* %diffa10, align 4, !tbaa !5
  %21 = bitcast i32* %diffb15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i16*, i16** %lab9, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %22, i64 2
  %23 = load i16, i16* %arrayidx16, align 2, !tbaa !8
  %conv17 = zext i16 %23 to i32
  %sub18 = sub nsw i32 %conv17, 32768
  %call19 = call i32 @abs(i32 %sub18) #5
  store i32 %call19, i32* %diffb15, align 4, !tbaa !5
  %24 = load i32, i32* %diffa10, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %24, 5
  br i1 %cmp20, label %land.rhs.22, label %land.end.25

land.rhs.22:                                      ; preds = %if.else
  %25 = load i32, i32* %diffb15, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %25, 5
  br label %land.end.25

land.end.25:                                      ; preds = %land.rhs.22, %if.else
  %26 = phi i1 [ false, %if.else ], [ %cmp23, %land.rhs.22 ]
  %land.ext26 = zext i1 %26 to i32
  store i32 %land.ext26, i32* %retval
  %27 = bitcast i32* %diffb15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %diffa10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i16** %lab9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  br label %return

return:                                           ; preds = %land.end.25, %land.end
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define void @gsicc_mcm_set_link(%struct.gsicc_link_s* %link) #0 {
entry:
  %link.addr = alloca %struct.gsicc_link_s*, align 8
  store %struct.gsicc_link_s* %link, %struct.gsicc_link_s** %link.addr, align 8, !tbaa !1
  %0 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link.addr, align 8, !tbaa !1
  %orig_procs = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %0, i32 0, i32 13
  %1 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %1, i32 0, i32 1
  %2 = bitcast %struct.gscms_procs_s* %orig_procs to i8*
  %3 = bitcast %struct.gscms_procs_s* %procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false), !tbaa.struct !10
  %4 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link.addr, align 8, !tbaa !1
  %is_monitored = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %4, i32 0, i32 12
  store i32 1, i32* %is_monitored, align 4, !tbaa !11
  %5 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link.addr, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %5, i32 0, i32 10
  store i32 0, i32* %is_identity, align 4, !tbaa !16
  %6 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %6, i32 0, i32 1
  %map_buffer = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs1, i32 0, i32 0
  store void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)* @gsicc_mcm_transform_color_buffer, void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)** %map_buffer, align 8, !tbaa !17
  %7 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %7, i32 0, i32 1
  %map_color = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs2, i32 0, i32 1
  store void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)* @gsicc_mcm_transform_color, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)** %map_color, align 8, !tbaa !18
  %8 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link.addr, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %8, i32 0, i32 14
  %9 = load i32, i32* %data_cs, align 4, !tbaa !19
  switch i32 %9, label %sw.default [
    i32 2, label %sw.bb
    i32 6, label %sw.bb.4
    i32 3, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %10 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %10, i32 0, i32 1
  %is_color = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs3, i32 0, i32 3
  store i32 (i8*, i32)* @gsicc_mcm_monitor_rgb, i32 (i8*, i32)** %is_color, align 8, !tbaa !20
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %11 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %11, i32 0, i32 1
  %is_color6 = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs5, i32 0, i32 3
  store i32 (i8*, i32)* @gsicc_mcm_monitor_lab, i32 (i8*, i32)** %is_color6, align 8, !tbaa !20
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %12 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %link.addr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %12, i32 0, i32 1
  %is_color9 = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs8, i32 0, i32 3
  store i32 (i8*, i32)* @gsicc_mcm_monitor_cmyk, i32 (i8*, i32)** %is_color9, align 8, !tbaa !20
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb.4, %sw.bb
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @gsicc_mcm_transform_color_buffer(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %inputbuffer, i8* %outputbuffer) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %input_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %output_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %inputbuffer.addr = alloca i8*, align 8
  %outputbuffer.addr = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %output_buff_desc, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  store i8* %inputbuffer, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i8* %outputbuffer, i8** %outputbuffer.addr, align 8, !tbaa !1
  %0 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %0, i32 0, i32 5
  %1 = load i32, i32* %is_planar, align 4, !tbaa !21
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %2 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %is_planar1 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %2, i32 0, i32 5
  %3 = load i32, i32* %is_planar1, align 4, !tbaa !21
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %6 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %7 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  call void @gsicc_mcm_planar_to_planar(%struct.gx_device_s* %4, %struct.gsicc_link_s* %5, %struct.gsicc_bufferdesc_s* %6, %struct.gsicc_bufferdesc_s* %7, i8* %8, i8* %9) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %12 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %13 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  call void @gsicc_mcm_planar_to_chunky(%struct.gx_device_s* %10, %struct.gsicc_link_s* %11, %struct.gsicc_bufferdesc_s* %12, %struct.gsicc_bufferdesc_s* %13, i8* %14, i8* %15) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.10

if.else.4:                                        ; preds = %entry
  %16 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %is_planar5 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %16, i32 0, i32 5
  %17 = load i32, i32* %is_planar5, align 4, !tbaa !21
  %tobool6 = icmp ne i32 %17, 0
  br i1 %tobool6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.4
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %19 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %20 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %21 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %23 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  call void @gsicc_mcm_chunky_to_planar(%struct.gx_device_s* %18, %struct.gsicc_link_s* %19, %struct.gsicc_bufferdesc_s* %20, %struct.gsicc_bufferdesc_s* %21, i8* %22, i8* %23) #6
  br label %if.end.9

if.else.8:                                        ; preds = %if.else.4
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %25 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %26 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %27 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %28 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  call void @gsicc_mcm_chunky_to_chunky(%struct.gx_device_s* %24, %struct.gsicc_link_s* %25, %struct.gsicc_bufferdesc_s* %26, %struct.gsicc_bufferdesc_s* %27, i8* %28, i8* %29) #6
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_mcm_transform_color(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, i8* %inputcolor, i8* %outputcolor, i32 %num_bytes) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %inputcolor.addr = alloca i8*, align 8
  %outputcolor.addr = alloca i8*, align 8
  %num_bytes.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  store i8* %inputcolor, i8** %inputcolor.addr, align 8, !tbaa !1
  store i8* %outputcolor, i8** %outputcolor.addr, align 8, !tbaa !1
  store i32 %num_bytes, i32* %num_bytes.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %outputcolor.addr, align 8, !tbaa !1
  %4 = load i32, i32* %num_bytes.addr, align 4, !tbaa !5
  %5 = load i32, i32* %num_bytes.addr, align 4, !tbaa !5
  call void @gsicc_mcm_transform_general(%struct.gx_device_s* %0, %struct.gsicc_link_s* %1, i8* %2, i8* %3, i32 %4, i32 %5) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @gsicc_mcm_end_monitor(%struct.gsicc_link_cache_s* %cache, %struct.gx_device_s* %dev) #0 {
entry:
  %cache.addr = alloca %struct.gsicc_link_cache_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lock = alloca %struct.gx_monitor_s*, align 8
  %curr = alloca %struct.gsicc_link_s*, align 8
  %code = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  store %struct.gsicc_link_cache_s* %cache, %struct.gsicc_link_cache_s** %cache.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_monitor_s** %lock to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %cache.addr, align 8, !tbaa !1
  %lock1 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %1, i32 0, i32 4
  %2 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock1, align 8, !tbaa !23
  store %struct.gx_monitor_s* %2, %struct.gx_monitor_s** %lock, align 8, !tbaa !1
  %3 = bitcast %struct.gsicc_link_s** %curr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock, align 8, !tbaa !1
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %6, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #6
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %8 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !26
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call2 = call i32 %8(%struct.gx_device_s* %9, %struct.cmm_dev_profile_s** %dev_profile) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %10 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %pageneutralcolor = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %10, i32 0, i32 7
  store i32 0, i32* %pageneutralcolor, align 4, !tbaa !36
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 65
  %12 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !38
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call4 = call i32 %12(%struct.gx_device_s* %13, i32 9, i8* null, i32 0) #6
  %cmp = icmp sgt i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call5 = call i32 @gs_pdf14_device_color_mon_set(%struct.gx_device_s* %14, i32 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %cache.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %15, i32 0, i32 0
  %16 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %head, align 8, !tbaa !39
  store %struct.gsicc_link_s* %16, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %17 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %cmp6 = icmp ne %struct.gsicc_link_s* %17, null
  br i1 %cmp6, label %while.body, label %while.end.21

while.body:                                       ; preds = %while.cond
  %18 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %is_monitored = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %18, i32 0, i32 12
  %19 = load i32, i32* %is_monitored, align 4, !tbaa !11
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %while.body
  %20 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %20, i32 0, i32 1
  %21 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %orig_procs = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %21, i32 0, i32 13
  %22 = bitcast %struct.gscms_procs_s* %procs8 to i8*
  %23 = bitcast %struct.gscms_procs_s* %orig_procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false), !tbaa.struct !10
  %24 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %hashcode = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %24, i32 0, i32 2
  %des_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode, i32 0, i32 2
  %25 = load i64, i64* %des_hash, align 8, !tbaa !40
  %26 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %hashcode9 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %26, i32 0, i32 2
  %src_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode9, i32 0, i32 1
  %27 = load i64, i64* %src_hash, align 8, !tbaa !41
  %cmp10 = icmp eq i64 %25, %27
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.7
  %28 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %28, i32 0, i32 10
  store i32 1, i32* %is_identity, align 4, !tbaa !16
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.7
  %29 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %is_monitored13 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %29, i32 0, i32 12
  store i32 0, i32* %is_monitored13, align 4, !tbaa !11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.12, %while.body
  br label %while.cond.15

while.cond.15:                                    ; preds = %while.body.17, %if.end.14
  %30 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %num_waiting = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %30, i32 0, i32 7
  %31 = load i32, i32* %num_waiting, align 4, !tbaa !42
  %cmp16 = icmp sgt i32 %31, 0
  br i1 %cmp16, label %while.body.17, label %while.end

while.body.17:                                    ; preds = %while.cond.15
  %32 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %wait = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %32, i32 0, i32 6
  %33 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %wait, align 8, !tbaa !43
  %native18 = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %33, i32 0, i32 1
  %call19 = call i32 @gp_semaphore_signal(%union.gp_semaphore* %native18) #6
  %34 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %num_waiting20 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %34, i32 0, i32 7
  %35 = load i32, i32* %num_waiting20, align 4, !tbaa !42
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %num_waiting20, align 4, !tbaa !42
  br label %while.cond.15

while.end:                                        ; preds = %while.cond.15
  %36 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %36, i32 0, i32 5
  %37 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %next, align 8, !tbaa !44
  store %struct.gsicc_link_s* %37, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  br label %while.cond

while.end.21:                                     ; preds = %while.cond
  %38 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock, align 8, !tbaa !1
  %native22 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %38, i32 0, i32 1
  %call23 = call i32 @gp_monitor_leave(%union.gp_monitor* %native22) #6
  %39 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast %struct.gsicc_link_s** %curr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.gx_monitor_s** %lock to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  ret void
}

declare i32 @gp_monitor_enter(%union.gp_monitor*) #3

declare i32 @gs_pdf14_device_color_mon_set(%struct.gx_device_s*, i32) #3

declare i32 @gp_semaphore_signal(%union.gp_semaphore*) #3

declare i32 @gp_monitor_leave(%union.gp_monitor*) #3

; Function Attrs: nounwind uwtable
define void @gsicc_mcm_begin_monitor(%struct.gsicc_link_cache_s* %cache, %struct.gx_device_s* %dev) #0 {
entry:
  %cache.addr = alloca %struct.gsicc_link_cache_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lock = alloca %struct.gx_monitor_s*, align 8
  %curr = alloca %struct.gsicc_link_s*, align 8
  %code = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  store %struct.gsicc_link_cache_s* %cache, %struct.gsicc_link_cache_s** %cache.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_monitor_s** %lock to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %cache.addr, align 8, !tbaa !1
  %lock1 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %1, i32 0, i32 4
  %2 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock1, align 8, !tbaa !23
  store %struct.gx_monitor_s* %2, %struct.gx_monitor_s** %lock, align 8, !tbaa !1
  %3 = bitcast %struct.gsicc_link_s** %curr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock, align 8, !tbaa !1
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %6, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #6
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %8 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !26
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call2 = call i32 %8(%struct.gx_device_s* %9, %struct.cmm_dev_profile_s** %dev_profile) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %10 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %pageneutralcolor = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %10, i32 0, i32 7
  store i32 1, i32* %pageneutralcolor, align 4, !tbaa !36
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 65
  %12 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !38
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call4 = call i32 %12(%struct.gx_device_s* %13, i32 9, i8* null, i32 0) #6
  %cmp = icmp sgt i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call5 = call i32 @gs_pdf14_device_color_mon_set(%struct.gx_device_s* %14, i32 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %cache.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %15, i32 0, i32 0
  %16 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %head, align 8, !tbaa !39
  store %struct.gsicc_link_s* %16, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %17 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %cmp6 = icmp ne %struct.gsicc_link_s* %17, null
  br i1 %cmp6, label %while.body, label %while.end.16

while.body:                                       ; preds = %while.cond
  %18 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %18, i32 0, i32 14
  %19 = load i32, i32* %data_cs, align 4, !tbaa !19
  %cmp7 = icmp ne i32 %19, 1
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.body
  %20 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  call void @gsicc_mcm_set_link(%struct.gsicc_link_s* %20) #6
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %while.body
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.12, %if.end.9
  %21 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %num_waiting = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %21, i32 0, i32 7
  %22 = load i32, i32* %num_waiting, align 4, !tbaa !42
  %cmp11 = icmp sgt i32 %22, 0
  br i1 %cmp11, label %while.body.12, label %while.end

while.body.12:                                    ; preds = %while.cond.10
  %23 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %wait = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %23, i32 0, i32 6
  %24 = load %struct.gx_semaphore_s*, %struct.gx_semaphore_s** %wait, align 8, !tbaa !43
  %native13 = getelementptr inbounds %struct.gx_semaphore_s, %struct.gx_semaphore_s* %24, i32 0, i32 1
  %call14 = call i32 @gp_semaphore_signal(%union.gp_semaphore* %native13) #6
  %25 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %num_waiting15 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %25, i32 0, i32 7
  %26 = load i32, i32* %num_waiting15, align 4, !tbaa !42
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %num_waiting15, align 4, !tbaa !42
  br label %while.cond.10

while.end:                                        ; preds = %while.cond.10
  %27 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %27, i32 0, i32 5
  %28 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %next, align 8, !tbaa !44
  store %struct.gsicc_link_s* %28, %struct.gsicc_link_s** %curr, align 8, !tbaa !1
  br label %while.cond

while.end.16:                                     ; preds = %while.cond
  %29 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %lock, align 8, !tbaa !1
  %native17 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %29, i32 0, i32 1
  %call18 = call i32 @gp_monitor_leave(%union.gp_monitor* %native17) #6
  %30 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast %struct.gsicc_link_s** %curr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.gx_monitor_s** %lock to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_mcm_planar_to_planar(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %inputbuffer, i8* %outputbuffer) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %input_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %output_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %inputbuffer.addr = alloca i8*, align 8
  %outputbuffer.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %inputpos = alloca [4 x i8*], align 16
  %outputpos = alloca [4 x i8*], align 16
  %in_buffer_ptr = alloca i8*, align 8
  %out_buffer_ptr = alloca i8*, align 8
  %in_color = alloca [4 x i8], align 1
  %out_color = alloca [4 x i8], align 1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %output_buff_desc, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  store i8* %inputbuffer, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i8* %outputbuffer, i8** %outputbuffer.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast [4 x i8*]* %inputpos to i8*
  call void @llvm.lifetime.start(i64 32, i8* %2) #1
  %3 = bitcast [4 x i8*]* %outputpos to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast i8** %in_buffer_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i8* %5, i8** %in_buffer_ptr, align 8, !tbaa !1
  %6 = bitcast i8** %out_buffer_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  store i8* %7, i8** %out_buffer_ptr, align 8, !tbaa !1
  %8 = bitcast [4 x i8]* %in_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast [4 x i8]* %out_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %k, align 4, !tbaa !5
  %11 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %11, i32 0, i32 0
  %12 = load i8, i8* %num_chan, align 1, !tbaa !45
  %conv = zext i8 %12 to i32
  %cmp = icmp slt i32 %10, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %in_buffer_ptr, align 8, !tbaa !1
  %14 = load i32, i32* %k, align 4, !tbaa !5
  %15 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %plane_stride = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %15, i32 0, i32 6
  %16 = load i32, i32* %plane_stride, align 4, !tbaa !46
  %mul = mul nsw i32 %14, %16
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %17 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %inputpos, i32 0, i64 %idxprom
  store i8* %add.ptr, i8** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.14, %for.end
  %19 = load i32, i32* %k, align 4, !tbaa !5
  %20 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %num_chan3 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %20, i32 0, i32 0
  %21 = load i8, i8* %num_chan3, align 1, !tbaa !45
  %conv4 = zext i8 %21 to i32
  %cmp5 = icmp slt i32 %19, %conv4
  br i1 %cmp5, label %for.body.7, label %for.end.16

for.body.7:                                       ; preds = %for.cond.2
  %22 = load i8*, i8** %out_buffer_ptr, align 8, !tbaa !1
  %23 = load i32, i32* %k, align 4, !tbaa !5
  %24 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %plane_stride8 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %24, i32 0, i32 6
  %25 = load i32, i32* %plane_stride8, align 4, !tbaa !46
  %mul9 = mul nsw i32 %23, %25
  %idx.ext10 = sext i32 %mul9 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %22, i64 %idx.ext10
  %26 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom12 = sext i32 %26 to i64
  %arrayidx13 = getelementptr inbounds [4 x i8*], [4 x i8*]* %outputpos, i32 0, i64 %idxprom12
  store i8* %add.ptr11, i8** %arrayidx13, align 8, !tbaa !1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.7
  %27 = load i32, i32* %k, align 4, !tbaa !5
  %inc15 = add nsw i32 %27, 1
  store i32 %inc15, i32* %k, align 4, !tbaa !5
  br label %for.cond.2

for.end.16:                                       ; preds = %for.cond.2
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.61, %for.end.16
  %28 = load i32, i32* %k, align 4, !tbaa !5
  %29 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %plane_stride18 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %29, i32 0, i32 6
  %30 = load i32, i32* %plane_stride18, align 4, !tbaa !46
  %cmp19 = icmp slt i32 %28, %30
  br i1 %cmp19, label %for.body.21, label %for.end.63

for.body.21:                                      ; preds = %for.cond.17
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.37, %for.body.21
  %31 = load i32, i32* %j, align 4, !tbaa !5
  %32 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_chan23 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %32, i32 0, i32 0
  %33 = load i8, i8* %num_chan23, align 1, !tbaa !45
  %conv24 = zext i8 %33 to i32
  %cmp25 = icmp slt i32 %31, %conv24
  br i1 %cmp25, label %for.body.27, label %for.end.39

for.body.27:                                      ; preds = %for.cond.22
  %34 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom28 = sext i32 %34 to i64
  %arrayidx29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %inputpos, i32 0, i64 %idxprom28
  %35 = load i8*, i8** %arrayidx29, align 8, !tbaa !1
  %36 = load i8, i8* %35, align 1, !tbaa !7
  %37 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom30 = sext i32 %37 to i64
  %arrayidx31 = getelementptr inbounds [4 x i8], [4 x i8]* %in_color, i32 0, i64 %idxprom30
  store i8 %36, i8* %arrayidx31, align 1, !tbaa !7
  %38 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %38, i32 0, i32 1
  %39 = load i8, i8* %bytes_per_chan, align 1, !tbaa !47
  %conv32 = zext i8 %39 to i32
  %40 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom33 = sext i32 %40 to i64
  %arrayidx34 = getelementptr inbounds [4 x i8*], [4 x i8*]* %inputpos, i32 0, i64 %idxprom33
  %41 = load i8*, i8** %arrayidx34, align 8, !tbaa !1
  %idx.ext35 = sext i32 %conv32 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %41, i64 %idx.ext35
  store i8* %add.ptr36, i8** %arrayidx34, align 8, !tbaa !1
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.27
  %42 = load i32, i32* %j, align 4, !tbaa !5
  %inc38 = add nsw i32 %42, 1
  store i32 %inc38, i32* %j, align 4, !tbaa !5
  br label %for.cond.22

for.end.39:                                       ; preds = %for.cond.22
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %44 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds [4 x i8], [4 x i8]* %in_color, i32 0, i64 0
  %arrayidx41 = getelementptr inbounds [4 x i8], [4 x i8]* %out_color, i32 0, i64 0
  call void @gsicc_mcm_transform_general(%struct.gx_device_s* %43, %struct.gsicc_link_s* %44, i8* %arrayidx40, i8* %arrayidx41, i32 1, i32 1) #6
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.58, %for.end.39
  %45 = load i32, i32* %j, align 4, !tbaa !5
  %46 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %num_chan43 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %46, i32 0, i32 0
  %47 = load i8, i8* %num_chan43, align 1, !tbaa !45
  %conv44 = zext i8 %47 to i32
  %cmp45 = icmp slt i32 %45, %conv44
  br i1 %cmp45, label %for.body.47, label %for.end.60

for.body.47:                                      ; preds = %for.cond.42
  %48 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom48 = sext i32 %48 to i64
  %arrayidx49 = getelementptr inbounds [4 x i8], [4 x i8]* %out_color, i32 0, i64 %idxprom48
  %49 = load i8, i8* %arrayidx49, align 1, !tbaa !7
  %50 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom50 = sext i32 %50 to i64
  %arrayidx51 = getelementptr inbounds [4 x i8*], [4 x i8*]* %outputpos, i32 0, i64 %idxprom50
  %51 = load i8*, i8** %arrayidx51, align 8, !tbaa !1
  store i8 %49, i8* %51, align 1, !tbaa !7
  %52 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan52 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %52, i32 0, i32 1
  %53 = load i8, i8* %bytes_per_chan52, align 1, !tbaa !47
  %conv53 = zext i8 %53 to i32
  %54 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom54 = sext i32 %54 to i64
  %arrayidx55 = getelementptr inbounds [4 x i8*], [4 x i8*]* %outputpos, i32 0, i64 %idxprom54
  %55 = load i8*, i8** %arrayidx55, align 8, !tbaa !1
  %idx.ext56 = sext i32 %conv53 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %55, i64 %idx.ext56
  store i8* %add.ptr57, i8** %arrayidx55, align 8, !tbaa !1
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.47
  %56 = load i32, i32* %j, align 4, !tbaa !5
  %inc59 = add nsw i32 %56, 1
  store i32 %inc59, i32* %j, align 4, !tbaa !5
  br label %for.cond.42

for.end.60:                                       ; preds = %for.cond.42
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.end.60
  %57 = load i32, i32* %k, align 4, !tbaa !5
  %inc62 = add nsw i32 %57, 1
  store i32 %inc62, i32* %k, align 4, !tbaa !5
  br label %for.cond.17

for.end.63:                                       ; preds = %for.cond.17
  %58 = bitcast [4 x i8]* %out_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast [4 x i8]* %in_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i8** %out_buffer_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i8** %in_buffer_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast [4 x i8*]* %outputpos to i8*
  call void @llvm.lifetime.end(i64 32, i8* %62) #1
  %63 = bitcast [4 x i8*]* %inputpos to i8*
  call void @llvm.lifetime.end(i64 32, i8* %63) #1
  %64 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_mcm_planar_to_chunky(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %inputbuffer, i8* %outputbuffer) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %input_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %output_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %inputbuffer.addr = alloca i8*, align 8
  %outputbuffer.addr = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %output_buff_desc, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  store i8* %inputbuffer, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i8* %outputbuffer, i8** %outputbuffer.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_mcm_chunky_to_planar(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %inputbuffer, i8* %outputbuffer) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %input_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %output_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %inputbuffer.addr = alloca i8*, align 8
  %outputbuffer.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %inputpos = alloca i8*, align 8
  %outputpos = alloca i8*, align 8
  %output_loc = alloca i8*, align 8
  %inputcolor = alloca i8*, align 8
  %outputcolor = alloca [8 x i8], align 1
  %pos_in_short = alloca i16*, align 8
  %pos_out_short = alloca i16*, align 8
  %num_bytes_in = alloca i32, align 4
  %num_bytes_out = alloca i32, align 4
  %pixel_in_step = alloca i32, align 4
  %plane_stride = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %output_buff_desc, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  store i8* %inputbuffer, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i8* %outputbuffer, i8** %outputbuffer.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %inputpos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i8* %4, i8** %inputpos, align 8, !tbaa !1
  %5 = bitcast i8** %outputpos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  store i8* %6, i8** %outputpos, align 8, !tbaa !1
  %7 = bitcast i8** %output_loc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %inputcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast [8 x i8]* %outputcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i16** %pos_in_short to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i16** %pos_out_short to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %num_bytes_in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %13, i32 0, i32 1
  %14 = load i8, i8* %bytes_per_chan, align 1, !tbaa !47
  %conv = zext i8 %14 to i32
  store i32 %conv, i32* %num_bytes_in, align 4, !tbaa !5
  %15 = bitcast i32* %num_bytes_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan1 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %16, i32 0, i32 1
  %17 = load i8, i8* %bytes_per_chan1, align 1, !tbaa !47
  %conv2 = zext i8 %17 to i32
  store i32 %conv2, i32* %num_bytes_out, align 4, !tbaa !5
  %18 = bitcast i32* %pixel_in_step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %num_bytes_in, align 4, !tbaa !5
  %20 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %20, i32 0, i32 0
  %21 = load i8, i8* %num_chan, align 1, !tbaa !45
  %conv3 = zext i8 %21 to i32
  %mul = mul nsw i32 %19, %conv3
  store i32 %mul, i32* %pixel_in_step, align 4, !tbaa !5
  %22 = bitcast i32* %plane_stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %plane_stride4 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %23, i32 0, i32 6
  %24 = load i32, i32* %plane_stride4, align 4, !tbaa !46
  store i32 %24, i32* %plane_stride, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.68, %entry
  %25 = load i32, i32* %k, align 4, !tbaa !5
  %26 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_rows = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %26, i32 0, i32 8
  %27 = load i32, i32* %num_rows, align 4, !tbaa !48
  %cmp = icmp slt i32 %25, %27
  br i1 %cmp, label %for.body, label %for.end.70

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %inputpos, align 8, !tbaa !1
  store i8* %28, i8** %inputcolor, align 8, !tbaa !1
  %29 = load i8*, i8** %outputpos, align 8, !tbaa !1
  store i8* %29, i8** %output_loc, align 8, !tbaa !1
  %30 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan6 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %30, i32 0, i32 1
  %31 = load i8, i8* %bytes_per_chan6, align 1, !tbaa !47
  %conv7 = zext i8 %31 to i32
  %cmp8 = icmp eq i32 %conv7, 1
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.26, %if.then
  %32 = load i32, i32* %j, align 4, !tbaa !5
  %33 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %pixels_per_row = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %33, i32 0, i32 9
  %34 = load i32, i32* %pixels_per_row, align 4, !tbaa !49
  %cmp11 = icmp slt i32 %32, %34
  br i1 %cmp11, label %for.body.13, label %for.end.28

for.body.13:                                      ; preds = %for.cond.10
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %36 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %outputcolor, i32 0, i64 0
  %38 = load i32, i32* %num_bytes_in, align 4, !tbaa !5
  %39 = load i32, i32* %num_bytes_out, align 4, !tbaa !5
  call void @gsicc_mcm_transform_general(%struct.gx_device_s* %35, %struct.gsicc_link_s* %36, i8* %37, i8* %arrayidx, i32 %38, i32 %39) #6
  store i32 0, i32* %m, align 4, !tbaa !5
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body.13
  %40 = load i32, i32* %m, align 4, !tbaa !5
  %41 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %num_chan15 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %41, i32 0, i32 0
  %42 = load i8, i8* %num_chan15, align 1, !tbaa !45
  %conv16 = zext i8 %42 to i32
  %cmp17 = icmp slt i32 %40, %conv16
  br i1 %cmp17, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.14
  %43 = load i32, i32* %m, align 4, !tbaa !5
  %idxprom = sext i32 %43 to i64
  %arrayidx20 = getelementptr inbounds [8 x i8], [8 x i8]* %outputcolor, i32 0, i64 %idxprom
  %44 = load i8, i8* %arrayidx20, align 1, !tbaa !7
  %45 = load i8*, i8** %output_loc, align 8, !tbaa !1
  %46 = load i32, i32* %m, align 4, !tbaa !5
  %47 = load i32, i32* %plane_stride, align 4, !tbaa !5
  %mul21 = mul nsw i32 %46, %47
  %idx.ext = sext i32 %mul21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %idx.ext
  %48 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext22 = sext i32 %48 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext22
  store i8 %44, i8* %add.ptr23, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %49 = load i32, i32* %m, align 4, !tbaa !5
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %m, align 4, !tbaa !5
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %50 = load i32, i32* %pixel_in_step, align 4, !tbaa !5
  %51 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %idx.ext24 = sext i32 %50 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %51, i64 %idx.ext24
  store i8* %add.ptr25, i8** %inputcolor, align 8, !tbaa !1
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %52 = load i32, i32* %j, align 4, !tbaa !5
  %inc27 = add nsw i32 %52, 1
  store i32 %inc27, i32* %j, align 4, !tbaa !5
  br label %for.cond.10

for.end.28:                                       ; preds = %for.cond.10
  %53 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %row_stride = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %53, i32 0, i32 7
  %54 = load i32, i32* %row_stride, align 4, !tbaa !50
  %55 = load i8*, i8** %inputpos, align 8, !tbaa !1
  %idx.ext29 = sext i32 %54 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %55, i64 %idx.ext29
  store i8* %add.ptr30, i8** %inputpos, align 8, !tbaa !1
  %56 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %row_stride31 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %56, i32 0, i32 7
  %57 = load i32, i32* %row_stride31, align 4, !tbaa !50
  %58 = load i8*, i8** %outputpos, align 8, !tbaa !1
  %idx.ext32 = sext i32 %57 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %58, i64 %idx.ext32
  store i8* %add.ptr33, i8** %outputpos, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.59, %if.else
  %59 = load i32, i32* %j, align 4, !tbaa !5
  %60 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %pixels_per_row35 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %60, i32 0, i32 9
  %61 = load i32, i32* %pixels_per_row35, align 4, !tbaa !49
  %cmp36 = icmp slt i32 %59, %61
  br i1 %cmp36, label %for.body.38, label %for.end.61

for.body.38:                                      ; preds = %for.cond.34
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %63 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %64 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds [8 x i8], [8 x i8]* %outputcolor, i32 0, i64 0
  %65 = load i32, i32* %num_bytes_in, align 4, !tbaa !5
  %66 = load i32, i32* %num_bytes_out, align 4, !tbaa !5
  call void @gsicc_mcm_transform_general(%struct.gx_device_s* %62, %struct.gsicc_link_s* %63, i8* %64, i8* %arrayidx39, i32 %65, i32 %66) #6
  %arrayidx40 = getelementptr inbounds [8 x i8], [8 x i8]* %outputcolor, i32 0, i64 0
  %67 = bitcast i8* %arrayidx40 to i16*
  store i16* %67, i16** %pos_in_short, align 8, !tbaa !1
  %68 = load i8*, i8** %output_loc, align 8, !tbaa !1
  %69 = bitcast i8* %68 to i16*
  store i16* %69, i16** %pos_out_short, align 8, !tbaa !1
  store i32 0, i32* %m, align 4, !tbaa !5
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.54, %for.body.38
  %70 = load i32, i32* %m, align 4, !tbaa !5
  %71 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %num_chan42 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %71, i32 0, i32 0
  %72 = load i8, i8* %num_chan42, align 1, !tbaa !45
  %conv43 = zext i8 %72 to i32
  %cmp44 = icmp slt i32 %70, %conv43
  br i1 %cmp44, label %for.body.46, label %for.end.56

for.body.46:                                      ; preds = %for.cond.41
  %73 = load i32, i32* %m, align 4, !tbaa !5
  %idxprom47 = sext i32 %73 to i64
  %74 = load i16*, i16** %pos_in_short, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i16, i16* %74, i64 %idxprom47
  %75 = load i16, i16* %arrayidx48, align 2, !tbaa !8
  %76 = load i16*, i16** %pos_out_short, align 8, !tbaa !1
  %77 = load i32, i32* %m, align 4, !tbaa !5
  %78 = load i32, i32* %plane_stride, align 4, !tbaa !5
  %mul49 = mul nsw i32 %77, %78
  %idx.ext50 = sext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds i16, i16* %76, i64 %idx.ext50
  %79 = load i32, i32* %j, align 4, !tbaa !5
  %idx.ext52 = sext i32 %79 to i64
  %add.ptr53 = getelementptr inbounds i16, i16* %add.ptr51, i64 %idx.ext52
  store i16 %75, i16* %add.ptr53, align 2, !tbaa !8
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.46
  %80 = load i32, i32* %m, align 4, !tbaa !5
  %inc55 = add nsw i32 %80, 1
  store i32 %inc55, i32* %m, align 4, !tbaa !5
  br label %for.cond.41

for.end.56:                                       ; preds = %for.cond.41
  %81 = load i32, i32* %pixel_in_step, align 4, !tbaa !5
  %82 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %idx.ext57 = sext i32 %81 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %82, i64 %idx.ext57
  store i8* %add.ptr58, i8** %inputcolor, align 8, !tbaa !1
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end.56
  %83 = load i32, i32* %j, align 4, !tbaa !5
  %inc60 = add nsw i32 %83, 1
  store i32 %inc60, i32* %j, align 4, !tbaa !5
  br label %for.cond.34

for.end.61:                                       ; preds = %for.cond.34
  %84 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %row_stride62 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %84, i32 0, i32 7
  %85 = load i32, i32* %row_stride62, align 4, !tbaa !50
  %86 = load i8*, i8** %inputpos, align 8, !tbaa !1
  %idx.ext63 = sext i32 %85 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %86, i64 %idx.ext63
  store i8* %add.ptr64, i8** %inputpos, align 8, !tbaa !1
  %87 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %row_stride65 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %87, i32 0, i32 7
  %88 = load i32, i32* %row_stride65, align 4, !tbaa !50
  %89 = load i8*, i8** %outputpos, align 8, !tbaa !1
  %idx.ext66 = sext i32 %88 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %89, i64 %idx.ext66
  store i8* %add.ptr67, i8** %outputpos, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %for.end.61, %for.end.28
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end
  %90 = load i32, i32* %k, align 4, !tbaa !5
  %inc69 = add nsw i32 %90, 1
  store i32 %inc69, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end.70:                                       ; preds = %for.cond
  %91 = bitcast i32* %plane_stride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %pixel_in_step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %num_bytes_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %num_bytes_in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i16** %pos_out_short to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i16** %pos_in_short to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast [8 x i8]* %outputcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i8** %inputcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i8** %output_loc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i8** %outputpos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i8** %inputpos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_mcm_chunky_to_chunky(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %inputbuffer, i8* %outputbuffer) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %input_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %output_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %inputbuffer.addr = alloca i8*, align 8
  %outputbuffer.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %inputpos = alloca i8*, align 8
  %outputpos = alloca i8*, align 8
  %inputcolor = alloca i8*, align 8
  %outputcolor = alloca i8*, align 8
  %num_bytes_in = alloca i32, align 4
  %num_bytes_out = alloca i32, align 4
  %pixel_in_step = alloca i32, align 4
  %pixel_out_step = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  store %struct.gsicc_bufferdesc_s* %output_buff_desc, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  store i8* %inputbuffer, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i8* %outputbuffer, i8** %outputbuffer.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %inputpos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i8* %3, i8** %inputpos, align 8, !tbaa !1
  %4 = bitcast i8** %outputpos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  store i8* %5, i8** %outputpos, align 8, !tbaa !1
  %6 = bitcast i8** %inputcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %outputcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %num_bytes_in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %9, i32 0, i32 1
  %10 = load i8, i8* %bytes_per_chan, align 1, !tbaa !47
  %conv = zext i8 %10 to i32
  store i32 %conv, i32* %num_bytes_in, align 4, !tbaa !5
  %11 = bitcast i32* %num_bytes_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %bytes_per_chan1 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %12, i32 0, i32 1
  %13 = load i8, i8* %bytes_per_chan1, align 1, !tbaa !47
  %conv2 = zext i8 %13 to i32
  store i32 %conv2, i32* %num_bytes_out, align 4, !tbaa !5
  %14 = bitcast i32* %pixel_in_step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %num_bytes_in, align 4, !tbaa !5
  %16 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %16, i32 0, i32 0
  %17 = load i8, i8* %num_chan, align 1, !tbaa !45
  %conv3 = zext i8 %17 to i32
  %mul = mul nsw i32 %15, %conv3
  store i32 %mul, i32* %pixel_in_step, align 4, !tbaa !5
  %18 = bitcast i32* %pixel_out_step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %num_bytes_out, align 4, !tbaa !5
  %20 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %num_chan4 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %20, i32 0, i32 0
  %21 = load i8, i8* %num_chan4, align 1, !tbaa !45
  %conv5 = zext i8 %21 to i32
  %mul6 = mul nsw i32 %19, %conv5
  store i32 %mul6, i32* %pixel_out_step, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %22 = load i32, i32* %k, align 4, !tbaa !5
  %23 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %num_rows = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %23, i32 0, i32 8
  %24 = load i32, i32* %num_rows, align 4, !tbaa !48
  %cmp = icmp slt i32 %22, %24
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %25 = load i8*, i8** %inputpos, align 8, !tbaa !1
  store i8* %25, i8** %inputcolor, align 8, !tbaa !1
  %26 = load i8*, i8** %outputpos, align 8, !tbaa !1
  store i8* %26, i8** %outputcolor, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %27 = load i32, i32* %j, align 4, !tbaa !5
  %28 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %pixels_per_row = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %28, i32 0, i32 9
  %29 = load i32, i32* %pixels_per_row, align 4, !tbaa !49
  %cmp9 = icmp slt i32 %27, %29
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %31 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %33 = load i8*, i8** %outputcolor, align 8, !tbaa !1
  %34 = load i32, i32* %num_bytes_in, align 4, !tbaa !5
  %35 = load i32, i32* %num_bytes_out, align 4, !tbaa !5
  call void @gsicc_mcm_transform_general(%struct.gx_device_s* %30, %struct.gsicc_link_s* %31, i8* %32, i8* %33, i32 %34, i32 %35) #6
  %36 = load i32, i32* %pixel_in_step, align 4, !tbaa !5
  %37 = load i8*, i8** %inputcolor, align 8, !tbaa !1
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  store i8* %add.ptr, i8** %inputcolor, align 8, !tbaa !1
  %38 = load i32, i32* %pixel_out_step, align 4, !tbaa !5
  %39 = load i8*, i8** %outputcolor, align 8, !tbaa !1
  %idx.ext12 = sext i32 %38 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %39, i64 %idx.ext12
  store i8* %add.ptr13, i8** %outputcolor, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %40 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %41 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8, !tbaa !1
  %row_stride = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %41, i32 0, i32 7
  %42 = load i32, i32* %row_stride, align 4, !tbaa !50
  %43 = load i8*, i8** %inputpos, align 8, !tbaa !1
  %idx.ext14 = sext i32 %42 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %43, i64 %idx.ext14
  store i8* %add.ptr15, i8** %inputpos, align 8, !tbaa !1
  %44 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8, !tbaa !1
  %row_stride16 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %44, i32 0, i32 7
  %45 = load i32, i32* %row_stride16, align 4, !tbaa !50
  %46 = load i8*, i8** %outputpos, align 8, !tbaa !1
  %idx.ext17 = sext i32 %45 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %46, i64 %idx.ext17
  store i8* %add.ptr18, i8** %outputpos, align 8, !tbaa !1
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %47 = load i32, i32* %k, align 4, !tbaa !5
  %inc20 = add nsw i32 %47, 1
  store i32 %inc20, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %48 = bitcast i32* %pixel_out_step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %pixel_in_step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %num_bytes_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %num_bytes_in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i8** %outputcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i8** %inputcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i8** %outputpos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i8** %inputpos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_mcm_transform_general(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, i8* %inputcolor, i8* %outputcolor, i32 %num_bytes_in, i32 %num_bytes_out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %inputcolor.addr = alloca i8*, align 8
  %outputcolor.addr = alloca i8*, align 8
  %num_bytes_in.addr = alloca i32, align 4
  %num_bytes_out.addr = alloca i32, align 4
  %is_neutral = alloca i32, align 4
  %outputcolor_cm = alloca [64 x i16], align 16
  %outputcolor_cm_ptr = alloca i8*, align 8
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %code = alloca i32, align 4
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %in_ptr = alloca i16*, align 8
  %out_ptr = alloca i8*, align 8
  %in_ptr29 = alloca i8*, align 8
  %out_ptr30 = alloca i16*, align 8
  %in_ptr59 = alloca i16*, align 8
  %out_ptr60 = alloca i8*, align 8
  %in_ptr80 = alloca i8*, align 8
  %out_ptr81 = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  store i8* %inputcolor, i8** %inputcolor.addr, align 8, !tbaa !1
  store i8* %outputcolor, i8** %outputcolor.addr, align 8, !tbaa !1
  store i32 %num_bytes_in, i32* %num_bytes_in.addr, align 4, !tbaa !5
  store i32 %num_bytes_out, i32* %num_bytes_out.addr, align 4, !tbaa !5
  %0 = bitcast i32* %is_neutral to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %is_neutral, align 4, !tbaa !5
  %1 = bitcast [64 x i16]* %outputcolor_cm to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #1
  %2 = bitcast i8** %outputcolor_cm_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %outputcolor_cm, i32 0, i32 0
  %3 = bitcast i16* %arraydecay to i8*
  store i8* %3, i8** %outputcolor_cm_ptr, align 8, !tbaa !1
  %4 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %8 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !26
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %8(%struct.gx_device_s* %9, %struct.cmm_dev_profile_s** %dev_profile) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %pageneutralcolor = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %10, i32 0, i32 7
  %11 = load i32, i32* %pageneutralcolor, align 4, !tbaa !36
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %12, i32 0, i32 1
  %is_color = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs1, i32 0, i32 3
  %13 = load i32 (i8*, i32)*, i32 (i8*, i32)** %is_color, align 8, !tbaa !20
  %14 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  %15 = load i32, i32* %num_bytes_in.addr, align 4, !tbaa !5
  %call2 = call i32 %13(i8* %14, i32 %15) #6
  store i32 %call2, i32* %is_neutral, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %is_neutral, align 4, !tbaa !5
  %tobool3 = icmp ne i32 %16, 0
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %17 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %pageneutralcolor5 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %17, i32 0, i32 7
  store i32 0, i32* %pageneutralcolor5, align 4, !tbaa !36
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %18 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %pageneutralcolor7 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %18, i32 0, i32 7
  %19 = load i32, i32* %pageneutralcolor7, align 4, !tbaa !36
  %tobool8 = icmp ne i32 %19, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  %20 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %icc_link_cache = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %20, i32 0, i32 3
  %21 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !51
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gsicc_mcm_end_monitor(%struct.gsicc_link_cache_s* %21, %struct.gx_device_s* %22) #6
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.6
  %23 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %hashcode = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %23, i32 0, i32 2
  %des_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode, i32 0, i32 2
  %24 = load i64, i64* %des_hash, align 8, !tbaa !40
  %25 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %hashcode11 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %25, i32 0, i32 2
  %src_hash = getelementptr inbounds %struct.gsicc_hashlink_s, %struct.gsicc_hashlink_s* %hashcode11, i32 0, i32 1
  %26 = load i64, i64* %src_hash, align 8, !tbaa !41
  %cmp = icmp eq i64 %24, %26
  br i1 %cmp, label %if.then.12, label %if.else.49

if.then.12:                                       ; preds = %if.end.10
  %27 = load i32, i32* %num_bytes_in.addr, align 4, !tbaa !5
  %28 = load i32, i32* %num_bytes_out.addr, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %27, %28
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.12
  %29 = load i8*, i8** %outputcolor.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  %31 = load i32, i32* %num_bytes_in.addr, align 4, !tbaa !5
  %32 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %num_input = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %32, i32 0, i32 15
  %33 = load i32, i32* %num_input, align 4, !tbaa !52
  %mul = mul nsw i32 %31, %33
  %conv = sext i32 %mul to i64
  %call15 = call i8* @memcpy(i8* %29, i8* %30, i64 %conv) #7
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then.12
  %34 = load i32, i32* %num_bytes_in.addr, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %34, 2
  br i1 %cmp16, label %if.then.18, label %if.else.28

if.then.18:                                       ; preds = %if.else
  %35 = bitcast i16** %in_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  %37 = bitcast i8* %36 to i16*
  store i16* %37, i16** %in_ptr, align 8, !tbaa !1
  %38 = bitcast i8** %out_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = load i8*, i8** %outputcolor.addr, align 8, !tbaa !1
  store i8* %39, i8** %out_ptr, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %40 = load i32, i32* %k, align 4, !tbaa !5
  %41 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %num_input19 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %41, i32 0, i32 15
  %42 = load i32, i32* %num_input19, align 4, !tbaa !52
  %cmp20 = icmp slt i32 %40, %42
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %43 to i64
  %44 = load i16*, i16** %in_ptr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %44, i64 %idxprom
  %45 = load i16, i16* %arrayidx, align 2, !tbaa !8
  %conv22 = zext i16 %45 to i32
  %mul23 = mul i32 %conv22, 65281
  %add = add i32 %mul23, 8388608
  %shr = lshr i32 %add, 24
  %conv24 = trunc i32 %shr to i16
  %conv25 = trunc i16 %conv24 to i8
  %46 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom26 = sext i32 %46 to i64
  %47 = load i8*, i8** %out_ptr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %47, i64 %idxprom26
  store i8 %conv25, i8* %arrayidx27, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = bitcast i8** %out_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i16** %in_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  br label %if.end.48

if.else.28:                                       ; preds = %if.else
  %51 = bitcast i8** %in_ptr29 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  store i8* %52, i8** %in_ptr29, align 8, !tbaa !1
  %53 = bitcast i16** %out_ptr30 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  %54 = load i8*, i8** %outputcolor.addr, align 8, !tbaa !1
  %55 = bitcast i8* %54 to i16*
  store i16* %55, i16** %out_ptr30, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.45, %if.else.28
  %56 = load i32, i32* %k, align 4, !tbaa !5
  %57 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %num_input32 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %57, i32 0, i32 15
  %58 = load i32, i32* %num_input32, align 4, !tbaa !52
  %cmp33 = icmp slt i32 %56, %58
  br i1 %cmp33, label %for.body.35, label %for.end.47

for.body.35:                                      ; preds = %for.cond.31
  %59 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom36 = sext i32 %59 to i64
  %60 = load i8*, i8** %in_ptr29, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %60, i64 %idxprom36
  %61 = load i8, i8* %arrayidx37, align 1, !tbaa !7
  %conv38 = zext i8 %61 to i32
  %mul39 = mul i32 %conv38, 65281
  %add40 = add i32 %mul39, 8388608
  %shr41 = lshr i32 %add40, 24
  %conv42 = trunc i32 %shr41 to i16
  %62 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom43 = sext i32 %62 to i64
  %63 = load i16*, i16** %out_ptr30, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i16, i16* %63, i64 %idxprom43
  store i16 %conv42, i16* %arrayidx44, align 2, !tbaa !8
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.35
  %64 = load i32, i32* %k, align 4, !tbaa !5
  %inc46 = add nsw i32 %64, 1
  store i32 %inc46, i32* %k, align 4, !tbaa !5
  br label %for.cond.31

for.end.47:                                       ; preds = %for.cond.31
  %65 = bitcast i16** %out_ptr30 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i8** %in_ptr29 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.47, %for.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.49:                                       ; preds = %if.end.10
  %67 = load i32, i32* %num_bytes_in.addr, align 4, !tbaa !5
  %68 = load i32, i32* %num_bytes_out.addr, align 4, !tbaa !5
  %cmp50 = icmp eq i32 %67, %68
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.else.49
  %69 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %orig_procs = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %69, i32 0, i32 13
  %map_color = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %orig_procs, i32 0, i32 1
  %70 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)** %map_color, align 8, !tbaa !53
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %72 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %73 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  %74 = load i8*, i8** %outputcolor.addr, align 8, !tbaa !1
  %75 = load i32, i32* %num_bytes_in.addr, align 4, !tbaa !5
  call void %70(%struct.gx_device_s* %71, %struct.gsicc_link_s* %72, i8* %73, i8* %74, i32 %75) #6
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.53:                                       ; preds = %if.else.49
  %76 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %orig_procs54 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %76, i32 0, i32 13
  %map_color55 = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %orig_procs54, i32 0, i32 1
  %77 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)** %map_color55, align 8, !tbaa !53
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %79 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %80 = load i8*, i8** %inputcolor.addr, align 8, !tbaa !1
  %81 = load i8*, i8** %outputcolor_cm_ptr, align 8, !tbaa !1
  %82 = load i32, i32* %num_bytes_in.addr, align 4, !tbaa !5
  call void %77(%struct.gx_device_s* %78, %struct.gsicc_link_s* %79, i8* %80, i8* %81, i32 %82) #6
  %83 = load i32, i32* %num_bytes_in.addr, align 4, !tbaa !5
  %cmp56 = icmp eq i32 %83, 2
  br i1 %cmp56, label %if.then.58, label %if.else.79

if.then.58:                                       ; preds = %if.else.53
  %84 = bitcast i16** %in_ptr59 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  %85 = load i8*, i8** %outputcolor_cm_ptr, align 8, !tbaa !1
  %86 = bitcast i8* %85 to i16*
  store i16* %86, i16** %in_ptr59, align 8, !tbaa !1
  %87 = bitcast i8** %out_ptr60 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  %88 = load i8*, i8** %outputcolor.addr, align 8, !tbaa !1
  store i8* %88, i8** %out_ptr60, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.76, %if.then.58
  %89 = load i32, i32* %k, align 4, !tbaa !5
  %90 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %num_input62 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %90, i32 0, i32 15
  %91 = load i32, i32* %num_input62, align 4, !tbaa !52
  %cmp63 = icmp slt i32 %89, %91
  br i1 %cmp63, label %for.body.65, label %for.end.78

for.body.65:                                      ; preds = %for.cond.61
  %92 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom66 = sext i32 %92 to i64
  %93 = load i16*, i16** %in_ptr59, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i16, i16* %93, i64 %idxprom66
  %94 = load i16, i16* %arrayidx67, align 2, !tbaa !8
  %conv68 = zext i16 %94 to i32
  %mul69 = mul i32 %conv68, 65281
  %add70 = add i32 %mul69, 8388608
  %shr71 = lshr i32 %add70, 24
  %conv72 = trunc i32 %shr71 to i16
  %conv73 = trunc i16 %conv72 to i8
  %95 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom74 = sext i32 %95 to i64
  %96 = load i8*, i8** %out_ptr60, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i8, i8* %96, i64 %idxprom74
  store i8 %conv73, i8* %arrayidx75, align 1, !tbaa !7
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.65
  %97 = load i32, i32* %k, align 4, !tbaa !5
  %inc77 = add nsw i32 %97, 1
  store i32 %inc77, i32* %k, align 4, !tbaa !5
  br label %for.cond.61

for.end.78:                                       ; preds = %for.cond.61
  %98 = bitcast i8** %out_ptr60 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i16** %in_ptr59 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  br label %if.end.99

if.else.79:                                       ; preds = %if.else.53
  %100 = bitcast i8** %in_ptr80 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #1
  %101 = load i8*, i8** %outputcolor_cm_ptr, align 8, !tbaa !1
  store i8* %101, i8** %in_ptr80, align 8, !tbaa !1
  %102 = bitcast i16** %out_ptr81 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #1
  %103 = load i8*, i8** %outputcolor.addr, align 8, !tbaa !1
  %104 = bitcast i8* %103 to i16*
  store i16* %104, i16** %out_ptr81, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.96, %if.else.79
  %105 = load i32, i32* %k, align 4, !tbaa !5
  %106 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !1
  %num_input83 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %106, i32 0, i32 15
  %107 = load i32, i32* %num_input83, align 4, !tbaa !52
  %cmp84 = icmp slt i32 %105, %107
  br i1 %cmp84, label %for.body.86, label %for.end.98

for.body.86:                                      ; preds = %for.cond.82
  %108 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom87 = sext i32 %108 to i64
  %109 = load i8*, i8** %in_ptr80, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i8, i8* %109, i64 %idxprom87
  %110 = load i8, i8* %arrayidx88, align 1, !tbaa !7
  %conv89 = zext i8 %110 to i32
  %mul90 = mul i32 %conv89, 65281
  %add91 = add i32 %mul90, 8388608
  %shr92 = lshr i32 %add91, 24
  %conv93 = trunc i32 %shr92 to i16
  %111 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom94 = sext i32 %111 to i64
  %112 = load i16*, i16** %out_ptr81, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i16, i16* %112, i64 %idxprom94
  store i16 %conv93, i16* %arrayidx95, align 2, !tbaa !8
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.86
  %113 = load i32, i32* %k, align 4, !tbaa !5
  %inc97 = add nsw i32 %113, 1
  store i32 %inc97, i32* %k, align 4, !tbaa !5
  br label %for.cond.82

for.end.98:                                       ; preds = %for.cond.82
  %114 = bitcast i16** %out_ptr81 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast i8** %in_ptr80 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  br label %if.end.99

if.end.99:                                        ; preds = %for.end.98, %for.end.78
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.99, %if.then.52, %if.end.48, %if.then.14
  %116 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast i8** %outputcolor_cm_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast [64 x i16]* %outputcolor_cm to i8*
  call void @llvm.lifetime.end(i64 128, i8* %120) #1
  %121 = bitcast i32* %is_neutral to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind readnone }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1}
!11 = !{!12, !6, i64 124}
!12 = !{!"gsicc_link_s", !2, i64 0, !13, i64 8, !14, i64 40, !2, i64 72, !6, i64 80, !2, i64 88, !2, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !13, i64 128, !3, i64 160, !6, i64 164, !6, i64 168}
!13 = !{!"gscms_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!14 = !{!"gsicc_hashlink_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!15 = !{!"long", !3, i64 0}
!16 = !{!12, !6, i64 116}
!17 = !{!12, !2, i64 8}
!18 = !{!12, !2, i64 16}
!19 = !{!12, !3, i64 160}
!20 = !{!12, !2, i64 32}
!21 = !{!22, !6, i64 16}
!22 = !{!"gsicc_bufferdesc_s", !3, i64 0, !3, i64 1, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!23 = !{!24, !2, i64 48}
!24 = !{!"gsicc_link_cache_s", !2, i64 0, !6, i64 8, !25, i64 16, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64}
!25 = !{!"rc_header_s", !15, i64 0, !2, i64 8, !2, i64 16}
!26 = !{!27, !2, i64 1680}
!27 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !25, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !28, i64 96, !30, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !15, i64 928, !15, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !15, i64 968, !15, i64 976, !31, i64 984, !6, i64 1052, !6, i64 1056, !32, i64 1064, !2, i64 1104, !3, i64 1112, !34, i64 1120, !35, i64 1144}
!28 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !9, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !29, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !15, i64 704, !6, i64 712}
!29 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!30 = !{!"gx_device_cached_colors_s", !15, i64 0, !15, i64 8}
!31 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!32 = !{!"gdev_space_params_s", !15, i64 0, !15, i64 8, !33, i64 16, !6, i64 32, !3, i64 36}
!33 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !15, i64 8}
!34 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!35 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!36 = !{!37, !6, i64 160}
!37 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !2, i64 176, !6, i64 184, !2, i64 192, !25, i64 200}
!38 = !{!27, !2, i64 1664}
!39 = !{!24, !2, i64 0}
!40 = !{!12, !15, i64 56}
!41 = !{!12, !15, i64 48}
!42 = !{!12, !6, i64 104}
!43 = !{!12, !2, i64 96}
!44 = !{!12, !2, i64 88}
!45 = !{!22, !3, i64 0}
!46 = !{!22, !6, i64 20}
!47 = !{!22, !3, i64 1}
!48 = !{!22, !6, i64 28}
!49 = !{!22, !6, i64 32}
!50 = !{!22, !6, i64 24}
!51 = !{!12, !2, i64 72}
!52 = !{!12, !6, i64 164}
!53 = !{!12, !2, i64 136}
