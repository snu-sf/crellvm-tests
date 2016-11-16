; ModuleID = './gstype2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_type1_state_s = type { %struct.t1_hinter_s, %struct.gs_font_type1_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, i32, i32, i8*, %struct.fixed_coeff, float, %struct.point_scale_s, %struct.gs_log2_scale_point_s, %struct.gs_fixed_point_s, [48 x i32], i32, [11 x %struct.ip_state_t], i32, i32, i32, i32, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, [32 x i32] }
%struct.t1_hinter_s = type { %struct.fraction_matrix, %struct.fraction_matrix, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [110 x %struct.t1_pole_s], %struct.t1_pole_s*, [30 x %struct.t1_hint_s], %struct.t1_hint_s*, [6 x %struct.t1_zone_s], %struct.t1_zone_s*, [10 x i32], i32*, [10 x i32], i32*, [2 x [13 x i32]], [2 x i32*], [13 x i32], i32*, [30 x %struct.t1_hint_range_s], %struct.t1_hint_range_s*, [120 x %struct.t1_hint_applying_s], %struct.t1_hint_applying_s*, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gx_path_s*, %struct.gs_memory_s* }
%struct.fraction_matrix = type { i32, i32, i32, i32, i32, i32 }
%struct.t1_pole_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t1_hint_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32 }
%struct.t1_zone_s = type { i32, i32, i32, i32, i32 }
%struct.t1_hint_range_s = type { i16, i16, i32 }
%struct.t1_hint_applying_s = type { i32, i32, i32 }
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
%struct.gs_font_type1_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type1_data_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
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
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type opaque
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
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.gx_device_halftone_s = type opaque
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_type1_data_s = type { %struct.gs_type1_data_procs_s, {}*, i8*, %struct.gs_font_base_s*, i32, i32, i32, i64, i32, i32, i32, float, float, %struct.anon, float, i32, %struct.anon.1, %struct.anon.2, i32, %struct.anon.3, i32, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.anon.7, %struct.anon.8, [16 x i8], i32 }
%struct.gs_type1_data_procs_s = type { i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*)* }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.anon = type { i32, [14 x float] }
%struct.anon.1 = type { i32, [14 x float] }
%struct.anon.2 = type { i32, [10 x float] }
%struct.anon.3 = type { i32, [10 x float] }
%struct.anon.4 = type { i32, [1 x float] }
%struct.anon.5 = type { i32, [1 x float] }
%struct.anon.6 = type { i32, [12 x float] }
%struct.anon.7 = type { i32, [12 x float] }
%struct.anon.8 = type { i32, [16 x float] }
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
%struct.gx_path_s = type opaque
%struct.fixed_coeff = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.point_scale_s = type { %struct.pixel_scale_s, %struct.pixel_scale_s }
%struct.pixel_scale_s = type { i32, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.ip_state_t = type { i8*, i8*, i16, %struct.gs_glyph_data_s }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.anon.9 = type { float*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"gs_type2_interpret\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_type2_interpret(%struct.gs_type1_state_s* %pcis, %struct.gs_glyph_data_s* %pgd, i32* %ignore_pindex) #0 {
entry:
  %retval = alloca i32, align 4
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %ignore_pindex.addr = alloca i32*, align 8
  %pfont = alloca %struct.gs_font_type1_s*, align 8
  %pdata = alloca %struct.gs_type1_data_s*, align 8
  %h = alloca %struct.t1_hinter_s*, align 8
  %encrypted = alloca i32, align 4
  %cstack = alloca [48 x i32], align 16
  %csp = alloca i32*, align 8
  %ipsp = alloca %struct.ip_state_t*, align 8
  %cip = alloca i8*, align 8
  %state = alloca i16, align 2
  %c = alloca i32, align 4
  %ap = alloca i32*, align 8
  %vertical = alloca i32, align 4
  %code = alloca i32, align 4
  %Registry = alloca [1 x %struct.anon.9], align 16
  %cleanup.dest.slot = alloca i32
  %skip = alloca i32, align 4
  %c0 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %cn = alloca i32, align 4
  %lw = alloca i64, align 8
  %i = alloca i32, align 4
  %c4 = alloca i32, align 4
  %pt = alloca [2 x %struct.gs_fixed_point_s], align 16
  %n = alloca i32, align 4
  %num_values = alloca i32, align 4
  %pfont560 = alloca %struct.gs_font_type1_s*, align 8
  %k = alloca i32, align 4
  %i564 = alloca i32, align 4
  %j = alloca i32, align 4
  %base565 = alloca i32*, align 8
  %deltas = alloca i32*, align 8
  %x623 = alloca i32, align 4
  %mask = alloca [12 x i8], align 1
  %i685 = alloca i32, align 4
  %n824 = alloca i32, align 4
  %dxa = alloca i32, align 4
  %n862 = alloca i32, align 4
  %dya = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2899 = alloca i32, align 4
  %i1005 = alloca i32, align 4
  %n1006 = alloca i32, align 4
  %to = alloca float*, align 8
  %from = alloca i32*, align 8
  %i1060 = alloca i32, align 4
  %n1061 = alloca i32, align 4
  %from1063 = alloca float*, align 8
  %to1069 = alloca i32*, align 8
  %prod = alloca double, align 8
  %top1176 = alloca i32, align 4
  %distance = alloca i32, align 4
  %count1194 = alloca i32, align 4
  %bot = alloca i32*, align 8
  %top1229 = alloca i32, align 4
  %x_join = alloca i32, align 4
  %y_join = alloca i32, align 4
  %x_end = alloca i32, align 4
  %y_end = alloca i32, align 4
  %join = alloca %struct.gs_point_s, align 8
  %end = alloca %struct.gs_point_s, align 8
  %flex_depth = alloca double, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i32* %ignore_pindex, i32** %ignore_pindex.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont1 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !5
  store %struct.gs_font_type1_s* %2, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %3 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %4, i32 0, i32 29
  store %struct.gs_type1_data_s* %data, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %5 = bitcast %struct.t1_hinter_s** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %h2 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %6, i32 0, i32 0
  store %struct.t1_hinter_s* %h2, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %7 = bitcast i32* %encrypted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %8, i32 0, i32 4
  %9 = load i32, i32* %lenIV, align 4, !tbaa !18
  %cmp = icmp sge i32 %9, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %encrypted, align 4, !tbaa !22
  %10 = bitcast [48 x i32]* %cstack to i8*
  call void @llvm.lifetime.start(i64 192, i8* %10) #1
  %11 = bitcast i32** %csp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.ip_state_t** %ipsp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %13, i32 0, i32 15
  %14 = load i32, i32* %ips_count, align 4, !tbaa !23
  %sub = sub nsw i32 %14, 1
  %idxprom = sext i32 %sub to i64
  %15 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ipstack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %15, i32 0, i32 14
  %arrayidx = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack, i32 0, i64 %idxprom
  store %struct.ip_state_t* %arrayidx, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %16 = bitcast i8** %cip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i16* %state to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #1
  %18 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32** %ap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i32* %vertical to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 0, i32* %code, align 4, !tbaa !22
  %22 = bitcast [1 x %struct.anon.9]* %Registry to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #1
  %23 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont3 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %23, i32 0, i32 1
  %24 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont3, align 8, !tbaa !5
  %data4 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %24, i32 0, i32 29
  %WeightVector = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data4, i32 0, i32 25
  %values = getelementptr inbounds %struct.anon.8, %struct.anon.8* %WeightVector, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x float], [16 x float]* %values, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [1 x %struct.anon.9], [1 x %struct.anon.9]* %Registry, i32 0, i64 0
  %values6 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx5, i32 0, i32 0
  store float* %arraydecay, float** %values6, align 8, !tbaa !24
  %25 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %init_done = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %25, i32 0, i32 16
  %26 = load i32, i32* %init_done, align 4, !tbaa !26
  switch i32 %26, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %27 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %28 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %28, i32 0, i32 3
  %29 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !27
  call void @t1_hinter__init(%struct.t1_hinter_s* %27, %struct.gx_path_s* %29) #5
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %30 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  call void @gs_type1_finish_init(%struct.gs_type1_state_s* %30) #5
  %31 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %32 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %32, i32 0, i32 2
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !28
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 5
  %34 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %34, i32 0, i32 9
  %35 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %35, i32 0, i32 7
  %36 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !29
  %FontMatrix8 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %36, i32 0, i32 9
  %37 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %scale = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %37, i32 0, i32 9
  %x = getelementptr inbounds %struct.point_scale_s, %struct.point_scale_s* %scale, i32 0, i32 0
  %log2_unit = getelementptr inbounds %struct.pixel_scale_s, %struct.pixel_scale_s* %x, i32 0, i32 2
  %38 = load i32, i32* %log2_unit, align 4, !tbaa !38
  %39 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %scale9 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %39, i32 0, i32 9
  %x10 = getelementptr inbounds %struct.point_scale_s, %struct.point_scale_s* %scale9, i32 0, i32 0
  %log2_unit11 = getelementptr inbounds %struct.pixel_scale_s, %struct.pixel_scale_s* %x10, i32 0, i32 2
  %40 = load i32, i32* %log2_unit11, align 4, !tbaa !38
  %41 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %scale12 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %41, i32 0, i32 9
  %x13 = getelementptr inbounds %struct.point_scale_s, %struct.point_scale_s* %scale12, i32 0, i32 0
  %log2_unit14 = getelementptr inbounds %struct.pixel_scale_s, %struct.pixel_scale_s* %x13, i32 0, i32 2
  %42 = load i32, i32* %log2_unit14, align 4, !tbaa !38
  %43 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %log2_subpixels = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %43, i32 0, i32 10
  %x15 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_subpixels, i32 0, i32 0
  %44 = load i32, i32* %x15, align 4, !tbaa !39
  %sub16 = sub nsw i32 %42, %44
  %45 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %scale17 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %45, i32 0, i32 9
  %y = getelementptr inbounds %struct.point_scale_s, %struct.point_scale_s* %scale17, i32 0, i32 1
  %log2_unit18 = getelementptr inbounds %struct.pixel_scale_s, %struct.pixel_scale_s* %y, i32 0, i32 2
  %46 = load i32, i32* %log2_unit18, align 4, !tbaa !40
  %47 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %log2_subpixels19 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %47, i32 0, i32 10
  %y20 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_subpixels19, i32 0, i32 1
  %48 = load i32, i32* %y20, align 4, !tbaa !41
  %sub21 = sub nsw i32 %46, %48
  %49 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %49, i32 0, i32 11
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin, i32 0, i32 0
  %50 = load i32, i32* %x22, align 4, !tbaa !42
  %51 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin23 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %51, i32 0, i32 11
  %y24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin23, i32 0, i32 1
  %52 = load i32, i32* %y24, align 4, !tbaa !43
  %53 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %53, i32 0, i32 3
  %54 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !44
  %call = call i32 @gs_currentaligntopixels(%struct.gs_font_dir_s* %54) #5
  %call25 = call i32 @t1_hinter__set_mapping(%struct.t1_hinter_s* %31, %struct.gs_matrix_fixed_s* %ctm, %struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s* %FontMatrix8, i32 %38, i32 %40, i32 %sub16, i32 %sub21, i32 %50, i32 %52, i32 %call) #5
  store i32 %call25, i32* %code, align 4, !tbaa !22
  %55 = load i32, i32* %code, align 4, !tbaa !22
  %cmp26 = icmp slt i32 %55, 0
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.7
  %56 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1444

if.end:                                           ; preds = %sw.bb.7
  %57 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %58 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %59 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %no_grid_fitting = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %59, i32 0, i32 4
  %60 = load i32, i32* %no_grid_fitting, align 4, !tbaa !45
  %61 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont28 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %61, i32 0, i32 1
  %62 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont28, align 8, !tbaa !5
  %is_resource = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %62, i32 0, i32 4
  %63 = load i32, i32* %is_resource, align 4, !tbaa !46
  %call29 = call i32 @t1_hinter__set_font_data(%struct.t1_hinter_s* %57, i32 2, %struct.gs_type1_data_s* %58, i32 %60, i32 %63) #5
  store i32 %call29, i32* %code, align 4, !tbaa !22
  %64 = load i32, i32* %code, align 4, !tbaa !22
  %cmp30 = icmp slt i32 %64, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end
  %65 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1444

if.end.33:                                        ; preds = %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.33, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %66 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %os_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %66, i32 0, i32 13
  %67 = load i32, i32* %os_count, align 4, !tbaa !47
  %cmp34 = icmp eq i32 %67, 0
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %do.body
  %arraydecay37 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay37, i64 -1
  store i32* %add.ptr, i32** %csp, align 8, !tbaa !1
  br label %if.end.47

if.else:                                          ; preds = %do.body
  %arraydecay38 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %68 = bitcast i32* %arraydecay38 to i8*
  %69 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ostack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %69, i32 0, i32 12
  %arraydecay39 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack, i32 0, i32 0
  %70 = bitcast i32* %arraydecay39 to i8*
  %71 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %os_count40 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %71, i32 0, i32 13
  %72 = load i32, i32* %os_count40, align 4, !tbaa !47
  %conv41 = sext i32 %72 to i64
  %mul = mul i64 %conv41, 4
  %call42 = call i8* @memcpy(i8* %68, i8* %70, i64 %mul) #6
  %73 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %os_count43 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %73, i32 0, i32 13
  %74 = load i32, i32* %os_count43, align 4, !tbaa !47
  %sub44 = sub nsw i32 %74, 1
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 %idxprom45
  store i32* %arrayidx46, i32** %csp, align 8, !tbaa !1
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.36
  br label %do.cond

do.cond:                                          ; preds = %if.end.47
  br label %do.end

do.end:                                           ; preds = %do.cond
  %75 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %cmp48 = icmp eq %struct.gs_glyph_data_s* %75, null
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %do.end
  br label %cont

if.end.51:                                        ; preds = %do.end
  %76 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %76, i32 0, i32 3
  %77 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %78 = bitcast %struct.gs_glyph_data_s* %cs_data to i8*
  %79 = bitcast %struct.gs_glyph_data_s* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 48, i32 8, i1 false), !tbaa.struct !48
  %80 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %80, i32 0, i32 0
  %data52 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  %81 = load i8*, i8** %data52, align 8, !tbaa !49
  store i8* %81, i8** %cip, align 8, !tbaa !1
  %82 = load i8*, i8** %cip, align 8, !tbaa !1
  %cmp53 = icmp eq i8* %82, null
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.51
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1444

if.end.56:                                        ; preds = %if.end.51
  br label %call.57

call.57:                                          ; preds = %cleanup.1441, %if.end.56
  store i16 4330, i16* %state, align 2, !tbaa !52
  %83 = load i32, i32* %encrypted, align 4, !tbaa !22
  %tobool = icmp ne i32 %83, 0
  br i1 %tobool, label %if.then.58, label %if.end.67

if.then.58:                                       ; preds = %call.57
  %84 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %lenIV59 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %85, i32 0, i32 4
  %86 = load i32, i32* %lenIV59, align 4, !tbaa !18
  store i32 %86, i32* %skip, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.58
  %87 = load i32, i32* %skip, align 4, !tbaa !22
  %cmp60 = icmp sgt i32 %87, 0
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %88 = load i8*, i8** %cip, align 8, !tbaa !1
  %89 = load i8, i8* %88, align 1, !tbaa !54
  %conv62 = zext i8 %89 to i32
  %90 = load i16, i16* %state, align 2, !tbaa !52
  %conv63 = zext i16 %90 to i32
  %add = add nsw i32 %conv62, %conv63
  %mul64 = mul nsw i32 %add, 52845
  %add65 = add nsw i32 %mul64, 22719
  %conv66 = trunc i32 %add65 to i16
  store i16 %conv66, i16* %state, align 2, !tbaa !52
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %91 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr, i8** %cip, align 8, !tbaa !1
  %92 = load i32, i32* %skip, align 4, !tbaa !22
  %dec = add nsw i32 %92, -1
  store i32 %dec, i32* %skip, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %93 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  br label %if.end.67

if.end.67:                                        ; preds = %for.end, %call.57
  br label %top

cont:                                             ; preds = %cleanup.1441, %if.then.50
  %94 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %95 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ipstack68 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %95, i32 0, i32 14
  %arraydecay69 = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack68, i32 0, i32 0
  %cmp70 = icmp ult %struct.ip_state_t* %94, %arraydecay69
  br i1 %cmp70, label %if.then.74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cont
  %96 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %96, i32 0, i32 0
  %97 = load i8*, i8** %ip, align 8, !tbaa !55
  %cmp72 = icmp eq i8* %97, null
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %lor.lhs.false, %cont
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1444

if.end.75:                                        ; preds = %lor.lhs.false
  %98 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip76 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %98, i32 0, i32 0
  %99 = load i8*, i8** %ip76, align 8, !tbaa !55
  store i8* %99, i8** %cip, align 8, !tbaa !1
  %100 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %100, i32 0, i32 2
  %101 = load i16, i16* %dstate, align 2, !tbaa !57
  store i16 %101, i16* %state, align 2, !tbaa !52
  br label %top

top:                                              ; preds = %cleanup.1441, %if.end.75, %if.end.67
  br label %for.cond.77

for.cond.77:                                      ; preds = %cleanup.cont.1443, %cleanup.1441, %top
  %102 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #1
  %103 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr78 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr78, i8** %cip, align 8, !tbaa !1
  %104 = load i8, i8* %103, align 1, !tbaa !54
  %conv79 = zext i8 %104 to i32
  store i32 %conv79, i32* %c0, align 4, !tbaa !22
  %105 = load i32, i32* %encrypted, align 4, !tbaa !22
  %tobool80 = icmp ne i32 %105, 0
  br i1 %tobool80, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond.77
  %106 = load i32, i32* %c0, align 4, !tbaa !22
  %107 = load i16, i16* %state, align 2, !tbaa !52
  %conv81 = zext i16 %107 to i32
  %shr = ashr i32 %conv81, 8
  %xor = xor i32 %106, %shr
  store i32 %xor, i32* %c, align 4, !tbaa !22
  %108 = load i32, i32* %c0, align 4, !tbaa !22
  %109 = load i16, i16* %state, align 2, !tbaa !52
  %conv82 = zext i16 %109 to i32
  %add83 = add i32 %108, %conv82
  %mul84 = mul i32 %add83, 52845
  %add85 = add i32 %mul84, 22719
  %conv86 = trunc i32 %add85 to i16
  store i16 %conv86, i16* %state, align 2, !tbaa !52
  %conv87 = zext i16 %conv86 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.cond.77
  %110 = load i32, i32* %c0, align 4, !tbaa !22
  store i32 %110, i32* %c, align 4, !tbaa !22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv87, %cond.true ], [ %110, %cond.false ]
  %111 = load i32, i32* %c, align 4, !tbaa !22
  %cmp88 = icmp sge i32 %111, 32
  br i1 %cmp88, label %if.then.90, label %if.end.233

if.then.90:                                       ; preds = %cond.end
  %112 = load i32, i32* %c, align 4, !tbaa !22
  %cmp91 = icmp slt i32 %112, 247
  br i1 %cmp91, label %if.then.93, label %if.else.109

if.then.93:                                       ; preds = %if.then.90
  br label %do.body.94

do.body.94:                                       ; preds = %if.then.93
  br label %do.body.95

do.body.95:                                       ; preds = %do.body.94
  %113 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 47
  %cmp97 = icmp uge i32* %113, %arrayidx96
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %do.body.95
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.100:                                       ; preds = %do.body.95
  br label %do.cond.101

do.cond.101:                                      ; preds = %if.end.100
  br label %do.end.102

do.end.102:                                       ; preds = %do.cond.101
  %114 = load i32, i32* %c, align 4, !tbaa !22
  %conv103 = trunc i32 %114 to i8
  %conv104 = zext i8 %conv103 to i32
  %sub105 = sub nsw i32 %conv104, 139
  %shl = shl i32 %sub105, 8
  %115 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr106 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %incdec.ptr106, i32** %csp, align 8, !tbaa !1
  store i32 %shl, i32* %incdec.ptr106, align 4, !tbaa !22
  br label %do.cond.107

do.cond.107:                                      ; preds = %do.end.102
  br label %do.end.108

do.end.108:                                       ; preds = %do.cond.107
  br label %if.end.229

if.else.109:                                      ; preds = %if.then.90
  %116 = load i32, i32* %c, align 4, !tbaa !22
  %cmp110 = icmp slt i32 %116, 255
  br i1 %cmp110, label %if.then.112, label %if.else.176

if.then.112:                                      ; preds = %if.else.109
  br label %do.body.113

do.body.113:                                      ; preds = %if.then.112
  %117 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #1
  %118 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr114 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr114, i8** %cip, align 8, !tbaa !1
  %119 = load i8, i8* %118, align 1, !tbaa !54
  %conv115 = zext i8 %119 to i32
  store i32 %conv115, i32* %c2, align 4, !tbaa !22
  %120 = bitcast i32* %cn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %120) #1
  br label %do.body.116

do.body.116:                                      ; preds = %do.body.113
  %121 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 47
  %cmp118 = icmp uge i32* %121, %arrayidx117
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %do.body.116
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.121:                                       ; preds = %do.body.116
  br label %do.cond.122

do.cond.122:                                      ; preds = %if.end.121
  br label %do.end.123

do.end.123:                                       ; preds = %do.cond.122
  %122 = load i32, i32* %encrypted, align 4, !tbaa !22
  %tobool124 = icmp ne i32 %122, 0
  br i1 %tobool124, label %cond.true.125, label %cond.false.129

cond.true.125:                                    ; preds = %do.end.123
  %123 = load i32, i32* %c2, align 4, !tbaa !22
  %124 = load i16, i16* %state, align 2, !tbaa !52
  %conv126 = zext i16 %124 to i32
  %shr127 = ashr i32 %conv126, 8
  %xor128 = xor i32 %123, %shr127
  br label %cond.end.130

cond.false.129:                                   ; preds = %do.end.123
  %125 = load i32, i32* %c2, align 4, !tbaa !22
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.129, %cond.true.125
  %cond131 = phi i32 [ %xor128, %cond.true.125 ], [ %125, %cond.false.129 ]
  store i32 %cond131, i32* %cn, align 4, !tbaa !22
  %126 = load i32, i32* %c, align 4, !tbaa !22
  %cmp132 = icmp slt i32 %126, 251
  br i1 %cmp132, label %if.then.134, label %if.else.147

if.then.134:                                      ; preds = %cond.end.130
  br label %do.body.135

do.body.135:                                      ; preds = %if.then.134
  br label %do.cond.136

do.cond.136:                                      ; preds = %do.body.135
  br label %do.end.137

do.end.137:                                       ; preds = %do.cond.136
  %127 = load i32, i32* %c, align 4, !tbaa !22
  %sub138 = sub nsw i32 %127, 247
  %conv139 = trunc i32 %sub138 to i8
  %conv140 = zext i8 %conv139 to i32
  %shl141 = shl i32 %conv140, 8
  %add142 = add nsw i32 %shl141, 0
  %add143 = add nsw i32 %add142, 108
  %128 = load i32, i32* %cn, align 4, !tbaa !22
  %add144 = add nsw i32 %add143, %128
  %shl145 = shl i32 %add144, 8
  %129 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr146 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %incdec.ptr146, i32** %csp, align 8, !tbaa !1
  store i32 %shl145, i32* %incdec.ptr146, align 4, !tbaa !22
  br label %if.end.161

if.else.147:                                      ; preds = %cond.end.130
  br label %do.body.148

do.body.148:                                      ; preds = %if.else.147
  br label %do.cond.149

do.cond.149:                                      ; preds = %do.body.148
  br label %do.end.150

do.end.150:                                       ; preds = %do.cond.149
  %130 = load i32, i32* %c, align 4, !tbaa !22
  %sub151 = sub nsw i32 %130, 251
  %conv152 = trunc i32 %sub151 to i8
  %conv153 = zext i8 %conv152 to i32
  %shl154 = shl i32 %conv153, 8
  %add155 = add nsw i32 %shl154, 0
  %add156 = add nsw i32 %add155, 108
  %sub157 = sub nsw i32 0, %add156
  %131 = load i32, i32* %cn, align 4, !tbaa !22
  %sub158 = sub nsw i32 %sub157, %131
  %shl159 = shl i32 %sub158, 8
  %132 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr160 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %incdec.ptr160, i32** %csp, align 8, !tbaa !1
  store i32 %shl159, i32* %incdec.ptr160, align 4, !tbaa !22
  br label %if.end.161

if.end.161:                                       ; preds = %do.end.150, %do.end.137
  %133 = load i32, i32* %encrypted, align 4, !tbaa !22
  %tobool162 = icmp ne i32 %133, 0
  br i1 %tobool162, label %cond.true.163, label %cond.false.170

cond.true.163:                                    ; preds = %if.end.161
  %134 = load i32, i32* %c2, align 4, !tbaa !22
  %135 = load i16, i16* %state, align 2, !tbaa !52
  %conv164 = zext i16 %135 to i32
  %add165 = add i32 %134, %conv164
  %mul166 = mul i32 %add165, 52845
  %add167 = add i32 %mul166, 22719
  %conv168 = trunc i32 %add167 to i16
  store i16 %conv168, i16* %state, align 2, !tbaa !52
  %conv169 = zext i16 %conv168 to i32
  br label %cond.end.171

cond.false.170:                                   ; preds = %if.end.161
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.170, %cond.true.163
  %cond172 = phi i32 [ %conv169, %cond.true.163 ], [ 0, %cond.false.170 ]
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.171, %if.then.120
  %136 = bitcast i32* %cn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.1441 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond.174

do.cond.174:                                      ; preds = %cleanup.cont
  br label %do.end.175

do.end.175:                                       ; preds = %do.cond.174
  br label %if.end.228

if.else.176:                                      ; preds = %if.else.109
  %138 = load i32, i32* %c, align 4, !tbaa !22
  %cmp177 = icmp eq i32 %138, 255
  br i1 %cmp177, label %if.then.179, label %if.else.226

if.then.179:                                      ; preds = %if.else.176
  %139 = bitcast i64* %lw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %139) #1
  br label %do.body.180

do.body.180:                                      ; preds = %if.then.179
  %140 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #1
  %141 = bitcast i32* %c4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %141) #1
  store i64 0, i64* %lw, align 8, !tbaa !58
  store i32 4, i32* %i, align 4, !tbaa !22
  br label %for.cond.181

for.cond.181:                                     ; preds = %cond.end.201, %do.body.180
  %142 = load i32, i32* %i, align 4, !tbaa !22
  %dec182 = add nsw i32 %142, -1
  store i32 %dec182, i32* %i, align 4, !tbaa !22
  %cmp183 = icmp sge i32 %dec182, 0
  br i1 %cmp183, label %for.body.185, label %for.end.207

for.body.185:                                     ; preds = %for.cond.181
  %143 = load i32, i32* %encrypted, align 4, !tbaa !22
  %tobool186 = icmp ne i32 %143, 0
  br i1 %tobool186, label %cond.true.187, label %cond.false.199

cond.true.187:                                    ; preds = %for.body.185
  %144 = load i8*, i8** %cip, align 8, !tbaa !1
  %145 = load i8, i8* %144, align 1, !tbaa !54
  %conv188 = zext i8 %145 to i32
  %146 = load i16, i16* %state, align 2, !tbaa !52
  %conv189 = zext i16 %146 to i32
  %shr190 = ashr i32 %conv189, 8
  %xor191 = xor i32 %conv188, %shr190
  store i32 %xor191, i32* %c4, align 4, !tbaa !22
  %147 = load i8*, i8** %cip, align 8, !tbaa !1
  %148 = load i8, i8* %147, align 1, !tbaa !54
  %conv192 = zext i8 %148 to i32
  %149 = load i16, i16* %state, align 2, !tbaa !52
  %conv193 = zext i16 %149 to i32
  %add194 = add nsw i32 %conv192, %conv193
  %mul195 = mul nsw i32 %add194, 52845
  %add196 = add nsw i32 %mul195, 22719
  %conv197 = trunc i32 %add196 to i16
  store i16 %conv197, i16* %state, align 2, !tbaa !52
  %conv198 = zext i16 %conv197 to i32
  br label %cond.end.201

cond.false.199:                                   ; preds = %for.body.185
  %150 = load i8*, i8** %cip, align 8, !tbaa !1
  %151 = load i8, i8* %150, align 1, !tbaa !54
  %conv200 = zext i8 %151 to i32
  store i32 %conv200, i32* %c4, align 4, !tbaa !22
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.false.199, %cond.true.187
  %cond202 = phi i32 [ %conv198, %cond.true.187 ], [ %conv200, %cond.false.199 ]
  %152 = load i64, i64* %lw, align 8, !tbaa !58
  %shl203 = shl i64 %152, 8
  %153 = load i32, i32* %c4, align 4, !tbaa !22
  %conv204 = zext i32 %153 to i64
  %add205 = add nsw i64 %shl203, %conv204
  store i64 %add205, i64* %lw, align 8, !tbaa !58
  %154 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr206 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %incdec.ptr206, i8** %cip, align 8, !tbaa !1
  br label %for.cond.181

for.end.207:                                      ; preds = %for.cond.181
  %155 = load i64, i64* %lw, align 8, !tbaa !58
  %xor208 = xor i64 %155, 2147483648
  %sub209 = sub nsw i64 %xor208, 2147483648
  store i64 %sub209, i64* %lw, align 8, !tbaa !58
  %156 = bitcast i32* %c4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  br label %do.cond.210

do.cond.210:                                      ; preds = %for.end.207
  br label %do.end.211

do.end.211:                                       ; preds = %do.cond.210
  br label %do.body.212

do.body.212:                                      ; preds = %do.end.211
  %158 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 47
  %cmp214 = icmp uge i32* %158, %arrayidx213
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %do.body.212
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.223

if.end.217:                                       ; preds = %do.body.212
  br label %do.cond.218

do.cond.218:                                      ; preds = %if.end.217
  br label %do.end.219

do.end.219:                                       ; preds = %do.cond.218
  %159 = load i64, i64* %lw, align 8, !tbaa !58
  %shr220 = ashr i64 %159, 8
  %conv221 = trunc i64 %shr220 to i32
  %160 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr222 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %incdec.ptr222, i32** %csp, align 8, !tbaa !1
  store i32 %conv221, i32* %incdec.ptr222, align 4, !tbaa !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.223

cleanup.223:                                      ; preds = %do.end.219, %if.then.216
  %161 = bitcast i64* %lw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %cleanup.dest.224 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.224, label %cleanup.1441 [
    i32 0, label %cleanup.cont.225
  ]

cleanup.cont.225:                                 ; preds = %cleanup.223
  br label %if.end.227

if.else.226:                                      ; preds = %if.else.176
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.227:                                       ; preds = %cleanup.cont.225
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %do.end.175
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %do.end.108
  br label %pushed

pushed:                                           ; preds = %cleanup.cont.953, %if.end.229
  br label %do.body.230

do.body.230:                                      ; preds = %pushed
  br label %do.cond.231

do.cond.231:                                      ; preds = %do.body.230
  br label %do.end.232

do.end.232:                                       ; preds = %do.cond.231
  store i32 12, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.233:                                       ; preds = %cond.end
  %162 = load i32, i32* %c, align 4, !tbaa !22
  switch i32 %162, label %sw.default.1439 [
    i32 0, label %sw.bb.234
    i32 2, label %sw.bb.234
    i32 17, label %sw.bb.234
    i32 10, label %sw.bb.235
    i32 11, label %sw.bb.253
    i32 15, label %sw.bb.256
    i32 1, label %sw.bb.259
    i32 3, label %sw.bb.260
    i32 4, label %sw.bb.261
    i32 5, label %sw.bb.282
    i32 6, label %sw.bb.301
    i32 7, label %sw.bb.302
    i32 8, label %sw.bb.324
    i32 14, label %sw.bb.345
    i32 21, label %sw.bb.437
    i32 22, label %sw.bb.471
    i32 30, label %sw.bb.488
    i32 31, label %sw.bb.489
    i32 16, label %sw.bb.552
    i32 18, label %sw.bb.601
    i32 19, label %sw.bb.659
    i32 20, label %sw.bb.659
    i32 23, label %sw.bb.748
    i32 24, label %sw.bb.774
    i32 25, label %sw.bb.798
    i32 26, label %sw.bb.822
    i32 27, label %sw.bb.860
    i32 28, label %sw.bb.898
    i32 29, label %sw.bb.954
    i32 12, label %sw.bb.962
    i32 9, label %sw.bb.1438
    i32 13, label %sw.bb.1438
  ]

sw.bb.234:                                        ; preds = %if.end.233, %if.end.233, %if.end.233
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

sw.bb.235:                                        ; preds = %if.end.233
  %163 = load i32*, i32** %csp, align 8, !tbaa !1
  %164 = load i32, i32* %163, align 4, !tbaa !22
  %shr236 = ashr i32 %164, 8
  %165 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %subroutineNumberBias = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %165, i32 0, i32 5
  %166 = load i32, i32* %subroutineNumberBias, align 4, !tbaa !59
  %add237 = add i32 %shr236, %166
  store i32 %add237, i32* %c, align 4, !tbaa !22
  %167 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %167, i32 0, i32 0
  %subr_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 1
  %168 = load i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)** %subr_data, align 8, !tbaa !60
  %169 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %170 = load i32, i32* %c, align 4, !tbaa !22
  %171 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %arrayidx238 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %171, i64 1
  %cs_data239 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %arrayidx238, i32 0, i32 3
  %call240 = call i32 %168(%struct.gs_font_type1_s* %169, i32 %170, i32 0, %struct.gs_glyph_data_s* %cs_data239) #5
  store i32 %call240, i32* %code, align 4, !tbaa !22
  br label %subr

subr:                                             ; preds = %sw.bb.954, %sw.bb.235
  %172 = load i32, i32* %code, align 4, !tbaa !22
  %cmp241 = icmp slt i32 %172, 0
  br i1 %cmp241, label %if.then.243, label %if.end.245

if.then.243:                                      ; preds = %subr
  %173 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr244 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %incdec.ptr244, i8** %cip, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.245:                                       ; preds = %subr
  %174 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr246 = getelementptr inbounds i32, i32* %174, i32 -1
  store i32* %incdec.ptr246, i32** %csp, align 8, !tbaa !1
  %175 = load i8*, i8** %cip, align 8, !tbaa !1
  %176 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip247 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %176, i32 0, i32 0
  store i8* %175, i8** %ip247, align 8, !tbaa !55
  %177 = load i16, i16* %state, align 2, !tbaa !52
  %178 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate248 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %178, i32 0, i32 2
  store i16 %177, i16* %dstate248, align 2, !tbaa !57
  %179 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %incdec.ptr249 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %179, i32 1
  store %struct.ip_state_t* %incdec.ptr249, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %180 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data250 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %180, i32 0, i32 3
  %bits251 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data250, i32 0, i32 0
  %data252 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits251, i32 0, i32 0
  %181 = load i8*, i8** %data252, align 8, !tbaa !61
  store i8* %181, i8** %cip, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.1441

sw.bb.253:                                        ; preds = %if.end.233
  %182 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data254 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %182, i32 0, i32 3
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %cs_data254, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #5
  %183 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %incdec.ptr255 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %183, i32 -1
  store %struct.ip_state_t* %incdec.ptr255, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.1441

sw.bb.256:                                        ; preds = %if.end.233
  %arraydecay257 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr258 = getelementptr inbounds i32, i32* %arraydecay257, i64 -1
  store i32* %add.ptr258, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.1441

sw.bb.259:                                        ; preds = %if.end.233
  br label %hstem

sw.bb.260:                                        ; preds = %if.end.233
  br label %vstem

sw.bb.261:                                        ; preds = %if.end.233
  br label %do.body.262

do.body.262:                                      ; preds = %sw.bb.261
  %184 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %init_done263 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %184, i32 0, i32 16
  %185 = load i32, i32* %init_done263, align 4, !tbaa !26
  %cmp264 = icmp slt i32 %185, 0
  br i1 %cmp264, label %if.then.266, label %if.end.274

if.then.266:                                      ; preds = %do.body.262
  %186 = load i8*, i8** %cip, align 8, !tbaa !1
  %187 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip267 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %187, i32 0, i32 0
  store i8* %186, i8** %ip267, align 8, !tbaa !55
  %188 = load i16, i16* %state, align 2, !tbaa !52
  %189 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate268 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %189, i32 0, i32 2
  store i16 %188, i16* %dstate268, align 2, !tbaa !57
  %190 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %191 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay269 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %192 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %193 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay270 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %cmp271 = icmp ugt i32* %193, %arraydecay270
  %conv272 = zext i1 %cmp271 to i32
  %call273 = call i32 @type2_sbw(%struct.gs_type1_state_s* %190, i32* %191, i32* %arraydecay269, %struct.ip_state_t* %192, i32 %conv272) #5
  store i32 %call273, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.274:                                       ; preds = %do.body.262
  br label %do.cond.275

do.cond.275:                                      ; preds = %if.end.274
  br label %do.end.276

do.end.276:                                       ; preds = %do.cond.275
  %194 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %195 = load i32*, i32** %csp, align 8, !tbaa !1
  %196 = load i32, i32* %195, align 4, !tbaa !22
  %call277 = call i32 @t1_hinter__rmoveto(%struct.t1_hinter_s* %194, i32 0, i32 %196) #5
  store i32 %call277, i32* %code, align 4, !tbaa !22
  br label %move

move:                                             ; preds = %do.end.486, %if.end.468, %do.end.276
  br label %cc

cc:                                               ; preds = %for.end.814, %for.end.794, %move
  %197 = load i32, i32* %code, align 4, !tbaa !22
  %cmp278 = icmp slt i32 %197, 0
  br i1 %cmp278, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %cc
  %198 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %198, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.281:                                       ; preds = %cc
  br label %pp

sw.bb.282:                                        ; preds = %if.end.233
  %arraydecay283 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  store i32* %arraydecay283, i32** %ap, align 8, !tbaa !1
  br label %for.cond.284

for.cond.284:                                     ; preds = %for.inc.296, %sw.bb.282
  %199 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr285 = getelementptr inbounds i32, i32* %199, i64 1
  %200 = load i32*, i32** %csp, align 8, !tbaa !1
  %cmp286 = icmp ule i32* %add.ptr285, %200
  br i1 %cmp286, label %for.body.288, label %for.end.298

for.body.288:                                     ; preds = %for.cond.284
  %201 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %202 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx289 = getelementptr inbounds i32, i32* %202, i64 0
  %203 = load i32, i32* %arrayidx289, align 4, !tbaa !22
  %204 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx290 = getelementptr inbounds i32, i32* %204, i64 1
  %205 = load i32, i32* %arrayidx290, align 4, !tbaa !22
  %call291 = call i32 @t1_hinter__rlineto(%struct.t1_hinter_s* %201, i32 %203, i32 %205) #5
  store i32 %call291, i32* %code, align 4, !tbaa !22
  %206 = load i32, i32* %code, align 4, !tbaa !22
  %cmp292 = icmp slt i32 %206, 0
  br i1 %cmp292, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %for.body.288
  %207 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %207, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.295:                                       ; preds = %for.body.288
  br label %for.inc.296

for.inc.296:                                      ; preds = %if.end.295
  %208 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr297 = getelementptr inbounds i32, i32* %208, i64 2
  store i32* %add.ptr297, i32** %ap, align 8, !tbaa !1
  br label %for.cond.284

for.end.298:                                      ; preds = %for.cond.284
  br label %pp

pp:                                               ; preds = %cleanup.cont.897, %cleanup.cont.859, %for.end.551, %for.end.344, %for.end.323, %for.end.298, %if.end.281
  %arraydecay299 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr300 = getelementptr inbounds i32, i32* %arraydecay299, i64 -1
  store i32* %add.ptr300, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.1441

sw.bb.301:                                        ; preds = %if.end.233
  store i32 0, i32* %vertical, align 4, !tbaa !22
  br label %hvl

sw.bb.302:                                        ; preds = %if.end.233
  store i32 1, i32* %vertical, align 4, !tbaa !22
  br label %hvl

hvl:                                              ; preds = %sw.bb.302, %sw.bb.301
  %arraydecay303 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  store i32* %arraydecay303, i32** %ap, align 8, !tbaa !1
  br label %for.cond.304

for.cond.304:                                     ; preds = %for.inc.320, %hvl
  %209 = load i32*, i32** %ap, align 8, !tbaa !1
  %210 = load i32*, i32** %csp, align 8, !tbaa !1
  %cmp305 = icmp ule i32* %209, %210
  br i1 %cmp305, label %for.body.307, label %for.end.323

for.body.307:                                     ; preds = %for.cond.304
  %211 = load i32, i32* %vertical, align 4, !tbaa !22
  %tobool308 = icmp ne i32 %211, 0
  br i1 %tobool308, label %if.then.309, label %if.else.312

if.then.309:                                      ; preds = %for.body.307
  %212 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %213 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx310 = getelementptr inbounds i32, i32* %213, i64 0
  %214 = load i32, i32* %arrayidx310, align 4, !tbaa !22
  %call311 = call i32 @t1_hinter__rlineto(%struct.t1_hinter_s* %212, i32 0, i32 %214) #5
  store i32 %call311, i32* %code, align 4, !tbaa !22
  br label %if.end.315

if.else.312:                                      ; preds = %for.body.307
  %215 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %216 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx313 = getelementptr inbounds i32, i32* %216, i64 0
  %217 = load i32, i32* %arrayidx313, align 4, !tbaa !22
  %call314 = call i32 @t1_hinter__rlineto(%struct.t1_hinter_s* %215, i32 %217, i32 0) #5
  store i32 %call314, i32* %code, align 4, !tbaa !22
  br label %if.end.315

if.end.315:                                       ; preds = %if.else.312, %if.then.309
  %218 = load i32, i32* %code, align 4, !tbaa !22
  %cmp316 = icmp slt i32 %218, 0
  br i1 %cmp316, label %if.then.318, label %if.end.319

if.then.318:                                      ; preds = %if.end.315
  %219 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %219, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.319:                                       ; preds = %if.end.315
  br label %for.inc.320

for.inc.320:                                      ; preds = %if.end.319
  %220 = load i32, i32* %vertical, align 4, !tbaa !22
  %tobool321 = icmp ne i32 %220, 0
  %lnot = xor i1 %tobool321, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %vertical, align 4, !tbaa !22
  %221 = load i32*, i32** %ap, align 8, !tbaa !1
  %incdec.ptr322 = getelementptr inbounds i32, i32* %221, i32 1
  store i32* %incdec.ptr322, i32** %ap, align 8, !tbaa !1
  br label %for.cond.304

for.end.323:                                      ; preds = %for.cond.304
  br label %pp

sw.bb.324:                                        ; preds = %if.end.233
  %arraydecay325 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  store i32* %arraydecay325, i32** %ap, align 8, !tbaa !1
  br label %for.cond.326

for.cond.326:                                     ; preds = %for.inc.342, %sw.bb.324
  %222 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr327 = getelementptr inbounds i32, i32* %222, i64 5
  %223 = load i32*, i32** %csp, align 8, !tbaa !1
  %cmp328 = icmp ule i32* %add.ptr327, %223
  br i1 %cmp328, label %for.body.330, label %for.end.344

for.body.330:                                     ; preds = %for.cond.326
  %224 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %225 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx331 = getelementptr inbounds i32, i32* %225, i64 0
  %226 = load i32, i32* %arrayidx331, align 4, !tbaa !22
  %227 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx332 = getelementptr inbounds i32, i32* %227, i64 1
  %228 = load i32, i32* %arrayidx332, align 4, !tbaa !22
  %229 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx333 = getelementptr inbounds i32, i32* %229, i64 2
  %230 = load i32, i32* %arrayidx333, align 4, !tbaa !22
  %231 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx334 = getelementptr inbounds i32, i32* %231, i64 3
  %232 = load i32, i32* %arrayidx334, align 4, !tbaa !22
  %233 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx335 = getelementptr inbounds i32, i32* %233, i64 4
  %234 = load i32, i32* %arrayidx335, align 4, !tbaa !22
  %235 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx336 = getelementptr inbounds i32, i32* %235, i64 5
  %236 = load i32, i32* %arrayidx336, align 4, !tbaa !22
  %call337 = call i32 @t1_hinter__rcurveto(%struct.t1_hinter_s* %224, i32 %226, i32 %228, i32 %230, i32 %232, i32 %234, i32 %236) #5
  store i32 %call337, i32* %code, align 4, !tbaa !22
  %237 = load i32, i32* %code, align 4, !tbaa !22
  %cmp338 = icmp slt i32 %237, 0
  br i1 %cmp338, label %if.then.340, label %if.end.341

if.then.340:                                      ; preds = %for.body.330
  %238 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %238, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.341:                                       ; preds = %for.body.330
  br label %for.inc.342

for.inc.342:                                      ; preds = %if.end.341
  %239 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr343 = getelementptr inbounds i32, i32* %239, i64 6
  store i32* %add.ptr343, i32** %ap, align 8, !tbaa !1
  br label %for.cond.326

for.end.344:                                      ; preds = %for.cond.326
  br label %pp

sw.bb.345:                                        ; preds = %if.end.233
  %240 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay346 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr347 = getelementptr inbounds i32, i32* %arraydecay346, i64 3
  %cmp348 = icmp uge i32* %240, %add.ptr347
  br i1 %cmp348, label %if.then.350, label %if.end.378

if.then.350:                                      ; preds = %sw.bb.345
  br label %do.body.351

do.body.351:                                      ; preds = %if.then.350
  %241 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %init_done352 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %241, i32 0, i32 16
  %242 = load i32, i32* %init_done352, align 4, !tbaa !26
  %cmp353 = icmp slt i32 %242, 0
  br i1 %cmp353, label %if.then.355, label %if.end.364

if.then.355:                                      ; preds = %do.body.351
  %243 = load i8*, i8** %cip, align 8, !tbaa !1
  %244 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip356 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %244, i32 0, i32 0
  store i8* %243, i8** %ip356, align 8, !tbaa !55
  %245 = load i16, i16* %state, align 2, !tbaa !52
  %246 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate357 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %246, i32 0, i32 2
  store i16 %245, i16* %dstate357, align 2, !tbaa !57
  %247 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %248 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay358 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %249 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %250 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay359 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr360 = getelementptr inbounds i32, i32* %arraydecay359, i64 3
  %cmp361 = icmp ugt i32* %250, %add.ptr360
  %conv362 = zext i1 %cmp361 to i32
  %call363 = call i32 @type2_sbw(%struct.gs_type1_state_s* %247, i32* %248, i32* %arraydecay358, %struct.ip_state_t* %249, i32 %conv362) #5
  store i32 %call363, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.364:                                       ; preds = %do.body.351
  br label %do.cond.365

do.cond.365:                                      ; preds = %if.end.364
  br label %do.end.366

do.end.366:                                       ; preds = %do.cond.365
  %251 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %arraydecay367 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %252 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %call368 = call i32 @gs_type1_seac(%struct.gs_type1_state_s* %251, i32* %arraydecay367, i32 0, %struct.ip_state_t* %252) #5
  store i32 %call368, i32* %code, align 4, !tbaa !22
  %253 = load i32, i32* %code, align 4, !tbaa !22
  %cmp369 = icmp slt i32 %253, 0
  br i1 %cmp369, label %if.then.371, label %if.end.372

if.then.371:                                      ; preds = %do.end.366
  %254 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %254, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.372:                                       ; preds = %do.end.366
  %arraydecay373 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr374 = getelementptr inbounds i32, i32* %arraydecay373, i64 -1
  store i32* %add.ptr374, i32** %csp, align 8, !tbaa !1
  %255 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data375 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %255, i32 0, i32 3
  %bits376 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data375, i32 0, i32 0
  %data377 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits376, i32 0, i32 0
  %256 = load i8*, i8** %data377, align 8, !tbaa !61
  store i8* %256, i8** %cip, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.378:                                       ; preds = %sw.bb.345
  br label %do.body.379

do.body.379:                                      ; preds = %if.end.378
  %257 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %init_done380 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %257, i32 0, i32 16
  %258 = load i32, i32* %init_done380, align 4, !tbaa !26
  %cmp381 = icmp slt i32 %258, 0
  br i1 %cmp381, label %if.then.383, label %if.end.391

if.then.383:                                      ; preds = %do.body.379
  %259 = load i8*, i8** %cip, align 8, !tbaa !1
  %260 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip384 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %260, i32 0, i32 0
  store i8* %259, i8** %ip384, align 8, !tbaa !55
  %261 = load i16, i16* %state, align 2, !tbaa !52
  %262 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate385 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %262, i32 0, i32 2
  store i16 %261, i16* %dstate385, align 2, !tbaa !57
  %263 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %264 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay386 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %265 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %266 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay387 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %cmp388 = icmp uge i32* %266, %arraydecay387
  %conv389 = zext i1 %cmp388 to i32
  %call390 = call i32 @type2_sbw(%struct.gs_type1_state_s* %263, i32* %264, i32* %arraydecay386, %struct.ip_state_t* %265, i32 %conv389) #5
  store i32 %call390, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.391:                                       ; preds = %do.body.379
  br label %do.cond.392

do.cond.392:                                      ; preds = %if.end.391
  br label %do.end.393

do.end.393:                                       ; preds = %do.cond.392
  %267 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %seac_accent = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %267, i32 0, i32 23
  %268 = load i32, i32* %seac_accent, align 4, !tbaa !62
  %cmp394 = icmp slt i32 %268, 0
  br i1 %cmp394, label %if.then.396, label %if.else.409

if.then.396:                                      ; preds = %do.end.393
  %269 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %call397 = call i32 @t1_hinter__endglyph(%struct.t1_hinter_s* %269) #5
  store i32 %call397, i32* %code, align 4, !tbaa !22
  %270 = load i32, i32* %code, align 4, !tbaa !22
  %cmp398 = icmp slt i32 %270, 0
  br i1 %cmp398, label %if.then.400, label %if.end.401

if.then.400:                                      ; preds = %if.then.396
  %271 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %271, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.401:                                       ; preds = %if.then.396
  %272 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pis402 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %272, i32 0, i32 2
  %273 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis402, align 8, !tbaa !28
  %274 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %path403 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %274, i32 0, i32 3
  %275 = load %struct.gx_path_s*, %struct.gx_path_s** %path403, align 8, !tbaa !27
  %call404 = call i32 @gx_setcurrentpoint_from_path(%struct.gs_imager_state_s* %273, %struct.gx_path_s* %275) #5
  store i32 %call404, i32* %code, align 4, !tbaa !22
  %276 = load i32, i32* %code, align 4, !tbaa !22
  %cmp405 = icmp slt i32 %276, 0
  br i1 %cmp405, label %if.then.407, label %if.end.408

if.then.407:                                      ; preds = %if.end.401
  %277 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %277, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.408:                                       ; preds = %if.end.401
  br label %if.end.423

if.else.409:                                      ; preds = %do.end.393
  %278 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %279 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %save_adxy = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %279, i32 0, i32 26
  %x410 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %save_adxy, i32 0, i32 0
  %280 = load i32, i32* %x410, align 4, !tbaa !63
  %281 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin_offset = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %281, i32 0, i32 31
  %x411 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin_offset, i32 0, i32 0
  %282 = load i32, i32* %x411, align 4, !tbaa !64
  %add412 = add nsw i32 %280, %282
  %283 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %save_adxy413 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %283, i32 0, i32 26
  %y414 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %save_adxy413, i32 0, i32 1
  %284 = load i32, i32* %y414, align 4, !tbaa !65
  %285 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin_offset415 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %285, i32 0, i32 31
  %y416 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin_offset415, i32 0, i32 1
  %286 = load i32, i32* %y416, align 4, !tbaa !66
  %add417 = add nsw i32 %284, %286
  call void @t1_hinter__setcurrentpoint(%struct.t1_hinter_s* %278, i32 %add412, i32 %add417) #5
  %287 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %call418 = call i32 @t1_hinter__end_subglyph(%struct.t1_hinter_s* %287) #5
  store i32 %call418, i32* %code, align 4, !tbaa !22
  %288 = load i32, i32* %code, align 4, !tbaa !22
  %cmp419 = icmp slt i32 %288, 0
  br i1 %cmp419, label %if.then.421, label %if.end.422

if.then.421:                                      ; preds = %if.else.409
  %289 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %289, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.422:                                       ; preds = %if.else.409
  br label %if.end.423

if.end.423:                                       ; preds = %if.end.422, %if.end.408
  %290 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %call424 = call i32 @gs_type1_endchar(%struct.gs_type1_state_s* %290) #5
  store i32 %call424, i32* %code, align 4, !tbaa !22
  %291 = load i32, i32* %code, align 4, !tbaa !22
  %cmp425 = icmp eq i32 %291, 1
  br i1 %cmp425, label %if.then.427, label %if.end.436

if.then.427:                                      ; preds = %if.end.423
  %292 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %num_hints = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %292, i32 0, i32 20
  store i32 0, i32* %num_hints, align 4, !tbaa !67
  %293 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count428 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %293, i32 0, i32 15
  %294 = load i32, i32* %ips_count428, align 4, !tbaa !23
  %sub429 = sub nsw i32 %294, 1
  %idxprom430 = sext i32 %sub429 to i64
  %295 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ipstack431 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %295, i32 0, i32 14
  %arrayidx432 = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack431, i32 0, i64 %idxprom430
  store %struct.ip_state_t* %arrayidx432, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %296 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data433 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %296, i32 0, i32 3
  %bits434 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data433, i32 0, i32 0
  %data435 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits434, i32 0, i32 0
  %297 = load i8*, i8** %data435, align 8, !tbaa !61
  store i8* %297, i8** %cip, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.436:                                       ; preds = %if.end.423
  %298 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %298, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

sw.bb.437:                                        ; preds = %if.end.233
  br label %do.body.438

do.body.438:                                      ; preds = %sw.bb.437
  %299 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %init_done439 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %299, i32 0, i32 16
  %300 = load i32, i32* %init_done439, align 4, !tbaa !26
  %cmp440 = icmp slt i32 %300, 0
  br i1 %cmp440, label %if.then.442, label %if.end.451

if.then.442:                                      ; preds = %do.body.438
  %301 = load i8*, i8** %cip, align 8, !tbaa !1
  %302 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip443 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %302, i32 0, i32 0
  store i8* %301, i8** %ip443, align 8, !tbaa !55
  %303 = load i16, i16* %state, align 2, !tbaa !52
  %304 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate444 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %304, i32 0, i32 2
  store i16 %303, i16* %dstate444, align 2, !tbaa !57
  %305 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %306 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay445 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %307 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %308 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay446 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i32* %308 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %arraydecay446 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %and = and i64 %sub.ptr.div, 1
  %tobool447 = icmp ne i64 %and, 0
  %lnot448 = xor i1 %tobool447, true
  %lnot.ext449 = zext i1 %lnot448 to i32
  %call450 = call i32 @type2_sbw(%struct.gs_type1_state_s* %305, i32* %306, i32* %arraydecay445, %struct.ip_state_t* %307, i32 %lnot.ext449) #5
  store i32 %call450, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.451:                                       ; preds = %do.body.438
  br label %do.cond.452

do.cond.452:                                      ; preds = %if.end.451
  br label %do.end.453

do.end.453:                                       ; preds = %do.cond.452
  %309 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay454 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr455 = getelementptr inbounds i32, i32* %arraydecay454, i64 1
  %cmp456 = icmp ugt i32* %309, %add.ptr455
  br i1 %cmp456, label %if.then.458, label %if.end.468

if.then.458:                                      ; preds = %do.end.453
  %310 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %311 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr459 = getelementptr inbounds i32, i32* %311, i64 -2
  %arraydecay460 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %call461 = call i32 @type2_vstem(%struct.gs_type1_state_s* %310, i32* %add.ptr459, i32* %arraydecay460) #5
  %312 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx462 = getelementptr inbounds i32, i32* %312, i64 -1
  %313 = load i32, i32* %arrayidx462, align 4, !tbaa !22
  %arrayidx463 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  store i32 %313, i32* %arrayidx463, align 4, !tbaa !22
  %314 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx464 = getelementptr inbounds i32, i32* %314, i64 0
  %315 = load i32, i32* %arrayidx464, align 4, !tbaa !22
  %arrayidx465 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  store i32 %315, i32* %arrayidx465, align 4, !tbaa !22
  %arraydecay466 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr467 = getelementptr inbounds i32, i32* %arraydecay466, i64 1
  store i32* %add.ptr467, i32** %csp, align 8, !tbaa !1
  br label %if.end.468

if.end.468:                                       ; preds = %if.then.458, %do.end.453
  %316 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %317 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx469 = getelementptr inbounds i32, i32* %317, i64 -1
  %318 = load i32, i32* %arrayidx469, align 4, !tbaa !22
  %319 = load i32*, i32** %csp, align 8, !tbaa !1
  %320 = load i32, i32* %319, align 4, !tbaa !22
  %call470 = call i32 @t1_hinter__rmoveto(%struct.t1_hinter_s* %316, i32 %318, i32 %320) #5
  store i32 %call470, i32* %code, align 4, !tbaa !22
  br label %move

sw.bb.471:                                        ; preds = %if.end.233
  br label %do.body.472

do.body.472:                                      ; preds = %sw.bb.471
  %321 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %init_done473 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %321, i32 0, i32 16
  %322 = load i32, i32* %init_done473, align 4, !tbaa !26
  %cmp474 = icmp slt i32 %322, 0
  br i1 %cmp474, label %if.then.476, label %if.end.484

if.then.476:                                      ; preds = %do.body.472
  %323 = load i8*, i8** %cip, align 8, !tbaa !1
  %324 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip477 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %324, i32 0, i32 0
  store i8* %323, i8** %ip477, align 8, !tbaa !55
  %325 = load i16, i16* %state, align 2, !tbaa !52
  %326 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate478 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %326, i32 0, i32 2
  store i16 %325, i16* %dstate478, align 2, !tbaa !57
  %327 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %328 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay479 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %329 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %330 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay480 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %cmp481 = icmp ugt i32* %330, %arraydecay480
  %conv482 = zext i1 %cmp481 to i32
  %call483 = call i32 @type2_sbw(%struct.gs_type1_state_s* %327, i32* %328, i32* %arraydecay479, %struct.ip_state_t* %329, i32 %conv482) #5
  store i32 %call483, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.484:                                       ; preds = %do.body.472
  br label %do.cond.485

do.cond.485:                                      ; preds = %if.end.484
  br label %do.end.486

do.end.486:                                       ; preds = %do.cond.485
  %331 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %332 = load i32*, i32** %csp, align 8, !tbaa !1
  %333 = load i32, i32* %332, align 4, !tbaa !22
  %call487 = call i32 @t1_hinter__rmoveto(%struct.t1_hinter_s* %331, i32 %333, i32 0) #5
  store i32 %call487, i32* %code, align 4, !tbaa !22
  br label %move

sw.bb.488:                                        ; preds = %if.end.233
  store i32 1, i32* %vertical, align 4, !tbaa !22
  br label %hvc

sw.bb.489:                                        ; preds = %if.end.233
  store i32 0, i32* %vertical, align 4, !tbaa !22
  br label %hvc

hvc:                                              ; preds = %sw.bb.489, %sw.bb.488
  %arraydecay490 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  store i32* %arraydecay490, i32** %ap, align 8, !tbaa !1
  br label %for.cond.491

for.cond.491:                                     ; preds = %for.inc.546, %hvc
  %334 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr492 = getelementptr inbounds i32, i32* %334, i64 3
  %335 = load i32*, i32** %csp, align 8, !tbaa !1
  %cmp493 = icmp ule i32* %add.ptr492, %335
  br i1 %cmp493, label %for.body.495, label %for.end.551

for.body.495:                                     ; preds = %for.cond.491
  %336 = bitcast [2 x %struct.gs_fixed_point_s]* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %336) #1
  %337 = bitcast [2 x %struct.gs_fixed_point_s]* %pt to i8*
  call void @llvm.memset.p0i8.i64(i8* %337, i8 0, i64 16, i32 16, i1 false)
  %338 = load i32, i32* %vertical, align 4, !tbaa !22
  %tobool496 = icmp ne i32 %338, 0
  br i1 %tobool496, label %if.then.497, label %if.else.512

if.then.497:                                      ; preds = %for.body.495
  %339 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx498 = getelementptr inbounds i32, i32* %339, i64 0
  %340 = load i32, i32* %arrayidx498, align 4, !tbaa !22
  %arrayidx499 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %pt, i32 0, i64 0
  %y500 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx499, i32 0, i32 1
  store i32 %340, i32* %y500, align 4, !tbaa !68
  %341 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx501 = getelementptr inbounds i32, i32* %341, i64 3
  %342 = load i32, i32* %arrayidx501, align 4, !tbaa !22
  %arrayidx502 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %pt, i32 0, i64 1
  %x503 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx502, i32 0, i32 0
  store i32 %342, i32* %x503, align 4, !tbaa !69
  %343 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr504 = getelementptr inbounds i32, i32* %343, i64 4
  %344 = load i32*, i32** %csp, align 8, !tbaa !1
  %cmp505 = icmp eq i32* %add.ptr504, %344
  br i1 %cmp505, label %if.then.507, label %if.end.511

if.then.507:                                      ; preds = %if.then.497
  %345 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx508 = getelementptr inbounds i32, i32* %345, i64 4
  %346 = load i32, i32* %arrayidx508, align 4, !tbaa !22
  %arrayidx509 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %pt, i32 0, i64 1
  %y510 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx509, i32 0, i32 1
  store i32 %346, i32* %y510, align 4, !tbaa !68
  br label %if.end.511

if.end.511:                                       ; preds = %if.then.507, %if.then.497
  br label %if.end.527

if.else.512:                                      ; preds = %for.body.495
  %347 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx513 = getelementptr inbounds i32, i32* %347, i64 0
  %348 = load i32, i32* %arrayidx513, align 4, !tbaa !22
  %arrayidx514 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %pt, i32 0, i64 0
  %x515 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx514, i32 0, i32 0
  store i32 %348, i32* %x515, align 4, !tbaa !69
  %349 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr516 = getelementptr inbounds i32, i32* %349, i64 4
  %350 = load i32*, i32** %csp, align 8, !tbaa !1
  %cmp517 = icmp eq i32* %add.ptr516, %350
  br i1 %cmp517, label %if.then.519, label %if.end.523

if.then.519:                                      ; preds = %if.else.512
  %351 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx520 = getelementptr inbounds i32, i32* %351, i64 4
  %352 = load i32, i32* %arrayidx520, align 4, !tbaa !22
  %arrayidx521 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %pt, i32 0, i64 1
  %x522 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx521, i32 0, i32 0
  store i32 %352, i32* %x522, align 4, !tbaa !69
  br label %if.end.523

if.end.523:                                       ; preds = %if.then.519, %if.else.512
  %353 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx524 = getelementptr inbounds i32, i32* %353, i64 3
  %354 = load i32, i32* %arrayidx524, align 4, !tbaa !22
  %arrayidx525 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %pt, i32 0, i64 1
  %y526 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx525, i32 0, i32 1
  store i32 %354, i32* %y526, align 4, !tbaa !68
  br label %if.end.527

if.end.527:                                       ; preds = %if.end.523, %if.end.511
  %355 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %arrayidx528 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %pt, i32 0, i64 0
  %x529 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx528, i32 0, i32 0
  %356 = load i32, i32* %x529, align 4, !tbaa !69
  %arrayidx530 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %pt, i32 0, i64 0
  %y531 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx530, i32 0, i32 1
  %357 = load i32, i32* %y531, align 4, !tbaa !68
  %358 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx532 = getelementptr inbounds i32, i32* %358, i64 1
  %359 = load i32, i32* %arrayidx532, align 4, !tbaa !22
  %360 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx533 = getelementptr inbounds i32, i32* %360, i64 2
  %361 = load i32, i32* %arrayidx533, align 4, !tbaa !22
  %arrayidx534 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %pt, i32 0, i64 1
  %x535 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx534, i32 0, i32 0
  %362 = load i32, i32* %x535, align 4, !tbaa !69
  %arrayidx536 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %pt, i32 0, i64 1
  %y537 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx536, i32 0, i32 1
  %363 = load i32, i32* %y537, align 4, !tbaa !68
  %call538 = call i32 @t1_hinter__rcurveto(%struct.t1_hinter_s* %355, i32 %356, i32 %357, i32 %359, i32 %361, i32 %362, i32 %363) #5
  store i32 %call538, i32* %code, align 4, !tbaa !22
  %364 = load i32, i32* %code, align 4, !tbaa !22
  %cmp539 = icmp slt i32 %364, 0
  br i1 %cmp539, label %if.then.541, label %if.end.542

if.then.541:                                      ; preds = %if.end.527
  %365 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %365, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.543

if.end.542:                                       ; preds = %if.end.527
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.543

cleanup.543:                                      ; preds = %if.end.542, %if.then.541
  %366 = bitcast [2 x %struct.gs_fixed_point_s]* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %366) #1
  %cleanup.dest.544 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.544, label %cleanup.1441 [
    i32 0, label %cleanup.cont.545
  ]

cleanup.cont.545:                                 ; preds = %cleanup.543
  br label %for.inc.546

for.inc.546:                                      ; preds = %cleanup.cont.545
  %367 = load i32, i32* %vertical, align 4, !tbaa !22
  %tobool547 = icmp ne i32 %367, 0
  %lnot548 = xor i1 %tobool547, true
  %lnot.ext549 = zext i1 %lnot548 to i32
  store i32 %lnot.ext549, i32* %vertical, align 4, !tbaa !22
  %368 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr550 = getelementptr inbounds i32, i32* %368, i64 4
  store i32* %add.ptr550, i32** %ap, align 8, !tbaa !1
  br label %for.cond.491

for.end.551:                                      ; preds = %for.cond.491
  br label %pp

sw.bb.552:                                        ; preds = %if.end.233
  %369 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %369) #1
  %370 = load i32*, i32** %csp, align 8, !tbaa !1
  %371 = load i32, i32* %370, align 4, !tbaa !22
  %shr553 = ashr i32 %371, 8
  store i32 %shr553, i32* %n, align 4, !tbaa !22
  %372 = bitcast i32* %num_values to i8*
  call void @llvm.lifetime.start(i64 4, i8* %372) #1
  %373 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay554 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast555 = ptrtoint i32* %373 to i64
  %sub.ptr.rhs.cast556 = ptrtoint i32* %arraydecay554 to i64
  %sub.ptr.sub557 = sub i64 %sub.ptr.lhs.cast555, %sub.ptr.rhs.cast556
  %sub.ptr.div558 = sdiv exact i64 %sub.ptr.sub557, 4
  %conv559 = trunc i64 %sub.ptr.div558 to i32
  store i32 %conv559, i32* %num_values, align 4, !tbaa !22
  %374 = bitcast %struct.gs_font_type1_s** %pfont560 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %374) #1
  %375 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont561 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %375, i32 0, i32 1
  %376 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont561, align 8, !tbaa !5
  store %struct.gs_font_type1_s* %376, %struct.gs_font_type1_s** %pfont560, align 8, !tbaa !1
  %377 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %377) #1
  %378 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont560, align 8, !tbaa !1
  %data562 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %378, i32 0, i32 29
  %WeightVector563 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data562, i32 0, i32 25
  %count = getelementptr inbounds %struct.anon.8, %struct.anon.8* %WeightVector563, i32 0, i32 0
  %379 = load i32, i32* %count, align 4, !tbaa !70
  store i32 %379, i32* %k, align 4, !tbaa !22
  %380 = bitcast i32* %i564 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %380) #1
  %381 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %381) #1
  %382 = bitcast i32** %base565 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %382) #1
  %383 = bitcast i32** %deltas to i8*
  call void @llvm.lifetime.start(i64 8, i8* %383) #1
  %384 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr566 = getelementptr inbounds i32, i32* %384, i64 -1
  %385 = load i32, i32* %num_values, align 4, !tbaa !22
  %idx.ext = sext i32 %385 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr567 = getelementptr inbounds i32, i32* %add.ptr566, i64 %idx.neg
  store i32* %add.ptr567, i32** %base565, align 8, !tbaa !1
  %386 = load i32*, i32** %base565, align 8, !tbaa !1
  %387 = load i32, i32* %n, align 4, !tbaa !22
  %idx.ext568 = sext i32 %387 to i64
  %add.ptr569 = getelementptr inbounds i32, i32* %386, i64 %idx.ext568
  %add.ptr570 = getelementptr inbounds i32, i32* %add.ptr569, i64 -1
  store i32* %add.ptr570, i32** %deltas, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !22
  br label %for.cond.571

for.cond.571:                                     ; preds = %for.inc.592, %sw.bb.552
  %388 = load i32, i32* %j, align 4, !tbaa !22
  %389 = load i32, i32* %n, align 4, !tbaa !22
  %cmp572 = icmp slt i32 %388, %389
  br i1 %cmp572, label %for.body.574, label %for.end.598

for.body.574:                                     ; preds = %for.cond.571
  store i32 1, i32* %i564, align 4, !tbaa !22
  br label %for.cond.575

for.cond.575:                                     ; preds = %for.inc.590, %for.body.574
  %390 = load i32, i32* %i564, align 4, !tbaa !22
  %391 = load i32, i32* %k, align 4, !tbaa !22
  %cmp576 = icmp slt i32 %390, %391
  br i1 %cmp576, label %for.body.578, label %for.end.591

for.body.578:                                     ; preds = %for.cond.575
  %392 = load i32, i32* %i564, align 4, !tbaa !22
  %idxprom579 = sext i32 %392 to i64
  %393 = load i32*, i32** %deltas, align 8, !tbaa !1
  %arrayidx580 = getelementptr inbounds i32, i32* %393, i64 %idxprom579
  %394 = load i32, i32* %arrayidx580, align 4, !tbaa !22
  %conv581 = sitofp i32 %394 to float
  %395 = load i32, i32* %i564, align 4, !tbaa !22
  %idxprom582 = sext i32 %395 to i64
  %396 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont560, align 8, !tbaa !1
  %data583 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %396, i32 0, i32 29
  %WeightVector584 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data583, i32 0, i32 25
  %values585 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %WeightVector584, i32 0, i32 1
  %arrayidx586 = getelementptr inbounds [16 x float], [16 x float]* %values585, i32 0, i64 %idxprom582
  %397 = load float, float* %arrayidx586, align 4, !tbaa !71
  %mul587 = fmul float %conv581, %397
  %conv588 = fptosi float %mul587 to i32
  %398 = load i32*, i32** %base565, align 8, !tbaa !1
  %399 = load i32, i32* %398, align 4, !tbaa !22
  %add589 = add nsw i32 %399, %conv588
  store i32 %add589, i32* %398, align 4, !tbaa !22
  br label %for.inc.590

for.inc.590:                                      ; preds = %for.body.578
  %400 = load i32, i32* %i564, align 4, !tbaa !22
  %inc = add nsw i32 %400, 1
  store i32 %inc, i32* %i564, align 4, !tbaa !22
  br label %for.cond.575

for.end.591:                                      ; preds = %for.cond.575
  br label %for.inc.592

for.inc.592:                                      ; preds = %for.end.591
  %401 = load i32, i32* %j, align 4, !tbaa !22
  %inc593 = add nsw i32 %401, 1
  store i32 %inc593, i32* %j, align 4, !tbaa !22
  %402 = load i32*, i32** %base565, align 8, !tbaa !1
  %incdec.ptr594 = getelementptr inbounds i32, i32* %402, i32 1
  store i32* %incdec.ptr594, i32** %base565, align 8, !tbaa !1
  %403 = load i32, i32* %k, align 4, !tbaa !22
  %sub595 = sub nsw i32 %403, 1
  %404 = load i32*, i32** %deltas, align 8, !tbaa !1
  %idx.ext596 = sext i32 %sub595 to i64
  %add.ptr597 = getelementptr inbounds i32, i32* %404, i64 %idx.ext596
  store i32* %add.ptr597, i32** %deltas, align 8, !tbaa !1
  br label %for.cond.571

for.end.598:                                      ; preds = %for.cond.571
  %405 = bitcast i32** %deltas to i8*
  call void @llvm.lifetime.end(i64 8, i8* %405) #1
  %406 = bitcast i32** %base565 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %406) #1
  %407 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %407) #1
  %408 = bitcast i32* %i564 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %408) #1
  %409 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %409) #1
  %410 = bitcast %struct.gs_font_type1_s** %pfont560 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %410) #1
  %411 = bitcast i32* %num_values to i8*
  call void @llvm.lifetime.end(i64 4, i8* %411) #1
  %412 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %412) #1
  %arraydecay599 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr600 = getelementptr inbounds i32, i32* %arraydecay599, i64 -1
  store i32* %add.ptr600, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.1441

sw.bb.601:                                        ; preds = %if.end.233
  br label %hstem

hstem:                                            ; preds = %sw.bb.601, %sw.bb.259
  br label %do.body.602

do.body.602:                                      ; preds = %hstem
  %413 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %init_done603 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %413, i32 0, i32 16
  %414 = load i32, i32* %init_done603, align 4, !tbaa !26
  %cmp604 = icmp slt i32 %414, 0
  br i1 %cmp604, label %if.then.606, label %if.end.620

if.then.606:                                      ; preds = %do.body.602
  %415 = load i8*, i8** %cip, align 8, !tbaa !1
  %416 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip607 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %416, i32 0, i32 0
  store i8* %415, i8** %ip607, align 8, !tbaa !55
  %417 = load i16, i16* %state, align 2, !tbaa !52
  %418 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate608 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %418, i32 0, i32 2
  store i16 %417, i16* %dstate608, align 2, !tbaa !57
  %419 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %420 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay609 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %421 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %422 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay610 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast611 = ptrtoint i32* %422 to i64
  %sub.ptr.rhs.cast612 = ptrtoint i32* %arraydecay610 to i64
  %sub.ptr.sub613 = sub i64 %sub.ptr.lhs.cast611, %sub.ptr.rhs.cast612
  %sub.ptr.div614 = sdiv exact i64 %sub.ptr.sub613, 4
  %and615 = and i64 %sub.ptr.div614, 1
  %tobool616 = icmp ne i64 %and615, 0
  %lnot617 = xor i1 %tobool616, true
  %lnot.ext618 = zext i1 %lnot617 to i32
  %call619 = call i32 @type2_sbw(%struct.gs_type1_state_s* %419, i32* %420, i32* %arraydecay609, %struct.ip_state_t* %421, i32 %lnot.ext618) #5
  store i32 %call619, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.620:                                       ; preds = %do.body.602
  br label %do.cond.621

do.cond.621:                                      ; preds = %if.end.620
  br label %do.end.622

do.end.622:                                       ; preds = %do.cond.621
  %423 = bitcast i32* %x623 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %423) #1
  store i32 0, i32* %x623, align 4, !tbaa !22
  %arraydecay624 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  store i32* %arraydecay624, i32** %ap, align 8, !tbaa !1
  br label %for.cond.625

for.cond.625:                                     ; preds = %for.inc.638, %do.end.622
  %424 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr626 = getelementptr inbounds i32, i32* %424, i64 1
  %425 = load i32*, i32** %csp, align 8, !tbaa !1
  %cmp627 = icmp ule i32* %add.ptr626, %425
  br i1 %cmp627, label %for.body.629, label %for.end.642

for.body.629:                                     ; preds = %for.cond.625
  %426 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %427 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx630 = getelementptr inbounds i32, i32* %427, i64 0
  %428 = load i32, i32* %arrayidx630, align 4, !tbaa !22
  %429 = load i32, i32* %x623, align 4, !tbaa !22
  %add631 = add nsw i32 %429, %428
  store i32 %add631, i32* %x623, align 4, !tbaa !22
  %430 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx632 = getelementptr inbounds i32, i32* %430, i64 1
  %431 = load i32, i32* %arrayidx632, align 4, !tbaa !22
  %call633 = call i32 @t1_hinter__hstem(%struct.t1_hinter_s* %426, i32 %add631, i32 %431) #5
  store i32 %call633, i32* %code, align 4, !tbaa !22
  %432 = load i32, i32* %code, align 4, !tbaa !22
  %cmp634 = icmp slt i32 %432, 0
  br i1 %cmp634, label %if.then.636, label %if.end.637

if.then.636:                                      ; preds = %for.body.629
  %433 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %433, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.643

if.end.637:                                       ; preds = %for.body.629
  br label %for.inc.638

for.inc.638:                                      ; preds = %if.end.637
  %434 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx639 = getelementptr inbounds i32, i32* %434, i64 1
  %435 = load i32, i32* %arrayidx639, align 4, !tbaa !22
  %436 = load i32, i32* %x623, align 4, !tbaa !22
  %add640 = add nsw i32 %436, %435
  store i32 %add640, i32* %x623, align 4, !tbaa !22
  %437 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr641 = getelementptr inbounds i32, i32* %437, i64 2
  store i32* %add.ptr641, i32** %ap, align 8, !tbaa !1
  br label %for.cond.625

for.end.642:                                      ; preds = %for.cond.625
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.643

cleanup.643:                                      ; preds = %for.end.642, %if.then.636
  %438 = bitcast i32* %x623 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %438) #1
  %cleanup.dest.644 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.644, label %cleanup.1441 [
    i32 0, label %cleanup.cont.645
  ]

cleanup.cont.645:                                 ; preds = %cleanup.643
  %439 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr646 = getelementptr inbounds i32, i32* %439, i64 1
  %arraydecay647 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast648 = ptrtoint i32* %add.ptr646 to i64
  %sub.ptr.rhs.cast649 = ptrtoint i32* %arraydecay647 to i64
  %sub.ptr.sub650 = sub i64 %sub.ptr.lhs.cast648, %sub.ptr.rhs.cast649
  %sub.ptr.div651 = sdiv exact i64 %sub.ptr.sub650, 4
  %shr652 = ashr i64 %sub.ptr.div651, 1
  %440 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %num_hints653 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %440, i32 0, i32 20
  %441 = load i32, i32* %num_hints653, align 4, !tbaa !67
  %conv654 = sext i32 %441 to i64
  %add655 = add nsw i64 %conv654, %shr652
  %conv656 = trunc i64 %add655 to i32
  store i32 %conv656, i32* %num_hints653, align 4, !tbaa !67
  %arraydecay657 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr658 = getelementptr inbounds i32, i32* %arraydecay657, i64 -1
  store i32* %add.ptr658, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.1441

sw.bb.659:                                        ; preds = %if.end.233, %if.end.233
  br label %do.body.660

do.body.660:                                      ; preds = %sw.bb.659
  %442 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %init_done661 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %442, i32 0, i32 16
  %443 = load i32, i32* %init_done661, align 4, !tbaa !26
  %cmp662 = icmp slt i32 %443, 0
  br i1 %cmp662, label %if.then.664, label %if.end.678

if.then.664:                                      ; preds = %do.body.660
  %444 = load i8*, i8** %cip, align 8, !tbaa !1
  %445 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip665 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %445, i32 0, i32 0
  store i8* %444, i8** %ip665, align 8, !tbaa !55
  %446 = load i16, i16* %state, align 2, !tbaa !52
  %447 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate666 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %447, i32 0, i32 2
  store i16 %446, i16* %dstate666, align 2, !tbaa !57
  %448 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %449 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay667 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %450 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %451 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay668 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast669 = ptrtoint i32* %451 to i64
  %sub.ptr.rhs.cast670 = ptrtoint i32* %arraydecay668 to i64
  %sub.ptr.sub671 = sub i64 %sub.ptr.lhs.cast669, %sub.ptr.rhs.cast670
  %sub.ptr.div672 = sdiv exact i64 %sub.ptr.sub671, 4
  %and673 = and i64 %sub.ptr.div672, 1
  %tobool674 = icmp ne i64 %and673, 0
  %lnot675 = xor i1 %tobool674, true
  %lnot.ext676 = zext i1 %lnot675 to i32
  %call677 = call i32 @type2_sbw(%struct.gs_type1_state_s* %448, i32* %449, i32* %arraydecay667, %struct.ip_state_t* %450, i32 %lnot.ext676) #5
  store i32 %call677, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.678:                                       ; preds = %do.body.660
  br label %do.cond.679

do.cond.679:                                      ; preds = %if.end.678
  br label %do.end.680

do.end.680:                                       ; preds = %do.cond.679
  %452 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %453 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay681 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %call682 = call i32 @type2_vstem(%struct.gs_type1_state_s* %452, i32* %453, i32* %arraydecay681) #5
  %arraydecay683 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr684 = getelementptr inbounds i32, i32* %arraydecay683, i64 -1
  store i32* %add.ptr684, i32** %csp, align 8, !tbaa !1
  %454 = bitcast [12 x i8]* %mask to i8*
  call void @llvm.lifetime.start(i64 12, i8* %454) #1
  %455 = bitcast i32* %i685 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %455) #1
  store i32 0, i32* %i685, align 4, !tbaa !22
  br label %for.cond.686

for.cond.686:                                     ; preds = %for.inc.718, %do.end.680
  %456 = load i32, i32* %i685, align 4, !tbaa !22
  %457 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %num_hints687 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %457, i32 0, i32 20
  %458 = load i32, i32* %num_hints687, align 4, !tbaa !67
  %cmp688 = icmp slt i32 %456, %458
  br i1 %cmp688, label %for.body.690, label %for.end.721

for.body.690:                                     ; preds = %for.cond.686
  %459 = load i32, i32* %encrypted, align 4, !tbaa !22
  %tobool691 = icmp ne i32 %459, 0
  br i1 %tobool691, label %cond.true.692, label %cond.false.708

cond.true.692:                                    ; preds = %for.body.690
  %460 = load i8*, i8** %cip, align 8, !tbaa !1
  %461 = load i8, i8* %460, align 1, !tbaa !54
  %conv693 = zext i8 %461 to i32
  %462 = load i16, i16* %state, align 2, !tbaa !52
  %conv694 = zext i16 %462 to i32
  %shr695 = ashr i32 %conv694, 8
  %xor696 = xor i32 %conv693, %shr695
  %conv697 = trunc i32 %xor696 to i8
  %463 = load i32, i32* %i685, align 4, !tbaa !22
  %shr698 = ashr i32 %463, 3
  %idxprom699 = sext i32 %shr698 to i64
  %arrayidx700 = getelementptr inbounds [12 x i8], [12 x i8]* %mask, i32 0, i64 %idxprom699
  store i8 %conv697, i8* %arrayidx700, align 1, !tbaa !54
  %464 = load i8*, i8** %cip, align 8, !tbaa !1
  %465 = load i8, i8* %464, align 1, !tbaa !54
  %conv701 = zext i8 %465 to i32
  %466 = load i16, i16* %state, align 2, !tbaa !52
  %conv702 = zext i16 %466 to i32
  %add703 = add nsw i32 %conv701, %conv702
  %mul704 = mul nsw i32 %add703, 52845
  %add705 = add nsw i32 %mul704, 22719
  %conv706 = trunc i32 %add705 to i16
  store i16 %conv706, i16* %state, align 2, !tbaa !52
  %conv707 = zext i16 %conv706 to i32
  br label %cond.end.713

cond.false.708:                                   ; preds = %for.body.690
  %467 = load i8*, i8** %cip, align 8, !tbaa !1
  %468 = load i8, i8* %467, align 1, !tbaa !54
  %469 = load i32, i32* %i685, align 4, !tbaa !22
  %shr709 = ashr i32 %469, 3
  %idxprom710 = sext i32 %shr709 to i64
  %arrayidx711 = getelementptr inbounds [12 x i8], [12 x i8]* %mask, i32 0, i64 %idxprom710
  store i8 %468, i8* %arrayidx711, align 1, !tbaa !54
  %conv712 = zext i8 %468 to i32
  br label %cond.end.713

cond.end.713:                                     ; preds = %cond.false.708, %cond.true.692
  %cond714 = phi i32 [ %conv707, %cond.true.692 ], [ %conv712, %cond.false.708 ]
  br label %do.body.715

do.body.715:                                      ; preds = %cond.end.713
  br label %do.cond.716

do.cond.716:                                      ; preds = %do.body.715
  br label %do.end.717

do.end.717:                                       ; preds = %do.cond.716
  br label %for.inc.718

for.inc.718:                                      ; preds = %do.end.717
  %470 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr719 = getelementptr inbounds i8, i8* %470, i32 1
  store i8* %incdec.ptr719, i8** %cip, align 8, !tbaa !1
  %471 = load i32, i32* %i685, align 4, !tbaa !22
  %add720 = add nsw i32 %471, 8
  store i32 %add720, i32* %i685, align 4, !tbaa !22
  br label %for.cond.686

for.end.721:                                      ; preds = %for.cond.686
  br label %do.body.722

do.body.722:                                      ; preds = %for.end.721
  br label %do.cond.723

do.cond.723:                                      ; preds = %do.body.722
  br label %do.end.724

do.end.724:                                       ; preds = %do.cond.723
  %472 = load i8*, i8** %cip, align 8, !tbaa !1
  %473 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip725 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %473, i32 0, i32 0
  store i8* %472, i8** %ip725, align 8, !tbaa !55
  %474 = load i16, i16* %state, align 2, !tbaa !52
  %475 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate726 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %475, i32 0, i32 2
  store i16 %474, i16* %dstate726, align 2, !tbaa !57
  %476 = load i32, i32* %c, align 4, !tbaa !22
  %cmp727 = icmp eq i32 %476, 20
  br i1 %cmp727, label %if.then.729, label %if.else.730

if.then.729:                                      ; preds = %do.end.724
  br label %if.end.743

if.else.730:                                      ; preds = %do.end.724
  br label %do.body.731

do.body.731:                                      ; preds = %if.else.730
  br label %do.cond.732

do.cond.732:                                      ; preds = %do.body.731
  br label %do.end.733

do.end.733:                                       ; preds = %do.cond.732
  br label %do.body.734

do.body.734:                                      ; preds = %do.end.733
  br label %do.cond.735

do.cond.735:                                      ; preds = %do.body.734
  br label %do.end.736

do.end.736:                                       ; preds = %do.cond.735
  %477 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %arraydecay737 = getelementptr inbounds [12 x i8], [12 x i8]* %mask, i32 0, i32 0
  %call738 = call i32 @t1_hinter__hint_mask(%struct.t1_hinter_s* %477, i8* %arraydecay737) #5
  store i32 %call738, i32* %code, align 4, !tbaa !22
  %478 = load i32, i32* %code, align 4, !tbaa !22
  %cmp739 = icmp slt i32 %478, 0
  br i1 %cmp739, label %if.then.741, label %if.end.742

if.then.741:                                      ; preds = %do.end.736
  %479 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %479, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.744

if.end.742:                                       ; preds = %do.end.736
  br label %if.end.743

if.end.743:                                       ; preds = %if.end.742, %if.then.729
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.744

cleanup.744:                                      ; preds = %if.end.743, %if.then.741
  %480 = bitcast i32* %i685 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %480) #1
  %481 = bitcast [12 x i8]* %mask to i8*
  call void @llvm.lifetime.end(i64 12, i8* %481) #1
  %cleanup.dest.746 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.746, label %cleanup.1441 [
    i32 0, label %cleanup.cont.747
  ]

cleanup.cont.747:                                 ; preds = %cleanup.744
  br label %sw.epilog.1440

sw.bb.748:                                        ; preds = %if.end.233
  br label %vstem

vstem:                                            ; preds = %sw.bb.748, %sw.bb.260
  br label %do.body.749

do.body.749:                                      ; preds = %vstem
  %482 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %init_done750 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %482, i32 0, i32 16
  %483 = load i32, i32* %init_done750, align 4, !tbaa !26
  %cmp751 = icmp slt i32 %483, 0
  br i1 %cmp751, label %if.then.753, label %if.end.767

if.then.753:                                      ; preds = %do.body.749
  %484 = load i8*, i8** %cip, align 8, !tbaa !1
  %485 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip754 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %485, i32 0, i32 0
  store i8* %484, i8** %ip754, align 8, !tbaa !55
  %486 = load i16, i16* %state, align 2, !tbaa !52
  %487 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate755 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %487, i32 0, i32 2
  store i16 %486, i16* %dstate755, align 2, !tbaa !57
  %488 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %489 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay756 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %490 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %491 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay757 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast758 = ptrtoint i32* %491 to i64
  %sub.ptr.rhs.cast759 = ptrtoint i32* %arraydecay757 to i64
  %sub.ptr.sub760 = sub i64 %sub.ptr.lhs.cast758, %sub.ptr.rhs.cast759
  %sub.ptr.div761 = sdiv exact i64 %sub.ptr.sub760, 4
  %and762 = and i64 %sub.ptr.div761, 1
  %tobool763 = icmp ne i64 %and762, 0
  %lnot764 = xor i1 %tobool763, true
  %lnot.ext765 = zext i1 %lnot764 to i32
  %call766 = call i32 @type2_sbw(%struct.gs_type1_state_s* %488, i32* %489, i32* %arraydecay756, %struct.ip_state_t* %490, i32 %lnot.ext765) #5
  store i32 %call766, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.767:                                       ; preds = %do.body.749
  br label %do.cond.768

do.cond.768:                                      ; preds = %if.end.767
  br label %do.end.769

do.end.769:                                       ; preds = %do.cond.768
  %492 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %493 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay770 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %call771 = call i32 @type2_vstem(%struct.gs_type1_state_s* %492, i32* %493, i32* %arraydecay770) #5
  %arraydecay772 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr773 = getelementptr inbounds i32, i32* %arraydecay772, i64 -1
  store i32* %add.ptr773, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.1441

sw.bb.774:                                        ; preds = %if.end.233
  %arraydecay775 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  store i32* %arraydecay775, i32** %ap, align 8, !tbaa !1
  br label %for.cond.776

for.cond.776:                                     ; preds = %for.inc.792, %sw.bb.774
  %494 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr777 = getelementptr inbounds i32, i32* %494, i64 5
  %495 = load i32*, i32** %csp, align 8, !tbaa !1
  %cmp778 = icmp ule i32* %add.ptr777, %495
  br i1 %cmp778, label %for.body.780, label %for.end.794

for.body.780:                                     ; preds = %for.cond.776
  %496 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %497 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx781 = getelementptr inbounds i32, i32* %497, i64 0
  %498 = load i32, i32* %arrayidx781, align 4, !tbaa !22
  %499 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx782 = getelementptr inbounds i32, i32* %499, i64 1
  %500 = load i32, i32* %arrayidx782, align 4, !tbaa !22
  %501 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx783 = getelementptr inbounds i32, i32* %501, i64 2
  %502 = load i32, i32* %arrayidx783, align 4, !tbaa !22
  %503 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx784 = getelementptr inbounds i32, i32* %503, i64 3
  %504 = load i32, i32* %arrayidx784, align 4, !tbaa !22
  %505 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx785 = getelementptr inbounds i32, i32* %505, i64 4
  %506 = load i32, i32* %arrayidx785, align 4, !tbaa !22
  %507 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx786 = getelementptr inbounds i32, i32* %507, i64 5
  %508 = load i32, i32* %arrayidx786, align 4, !tbaa !22
  %call787 = call i32 @t1_hinter__rcurveto(%struct.t1_hinter_s* %496, i32 %498, i32 %500, i32 %502, i32 %504, i32 %506, i32 %508) #5
  store i32 %call787, i32* %code, align 4, !tbaa !22
  %509 = load i32, i32* %code, align 4, !tbaa !22
  %cmp788 = icmp slt i32 %509, 0
  br i1 %cmp788, label %if.then.790, label %if.end.791

if.then.790:                                      ; preds = %for.body.780
  %510 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %510, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.791:                                       ; preds = %for.body.780
  br label %for.inc.792

for.inc.792:                                      ; preds = %if.end.791
  %511 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr793 = getelementptr inbounds i32, i32* %511, i64 6
  store i32* %add.ptr793, i32** %ap, align 8, !tbaa !1
  br label %for.cond.776

for.end.794:                                      ; preds = %for.cond.776
  %512 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %513 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx795 = getelementptr inbounds i32, i32* %513, i64 0
  %514 = load i32, i32* %arrayidx795, align 4, !tbaa !22
  %515 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx796 = getelementptr inbounds i32, i32* %515, i64 1
  %516 = load i32, i32* %arrayidx796, align 4, !tbaa !22
  %call797 = call i32 @t1_hinter__rlineto(%struct.t1_hinter_s* %512, i32 %514, i32 %516) #5
  store i32 %call797, i32* %code, align 4, !tbaa !22
  br label %cc

sw.bb.798:                                        ; preds = %if.end.233
  %arraydecay799 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  store i32* %arraydecay799, i32** %ap, align 8, !tbaa !1
  br label %for.cond.800

for.cond.800:                                     ; preds = %for.inc.812, %sw.bb.798
  %517 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr801 = getelementptr inbounds i32, i32* %517, i64 7
  %518 = load i32*, i32** %csp, align 8, !tbaa !1
  %cmp802 = icmp ule i32* %add.ptr801, %518
  br i1 %cmp802, label %for.body.804, label %for.end.814

for.body.804:                                     ; preds = %for.cond.800
  %519 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %520 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx805 = getelementptr inbounds i32, i32* %520, i64 0
  %521 = load i32, i32* %arrayidx805, align 4, !tbaa !22
  %522 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx806 = getelementptr inbounds i32, i32* %522, i64 1
  %523 = load i32, i32* %arrayidx806, align 4, !tbaa !22
  %call807 = call i32 @t1_hinter__rlineto(%struct.t1_hinter_s* %519, i32 %521, i32 %523) #5
  store i32 %call807, i32* %code, align 4, !tbaa !22
  %524 = load i32, i32* %code, align 4, !tbaa !22
  %cmp808 = icmp slt i32 %524, 0
  br i1 %cmp808, label %if.then.810, label %if.end.811

if.then.810:                                      ; preds = %for.body.804
  %525 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %525, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.811:                                       ; preds = %for.body.804
  br label %for.inc.812

for.inc.812:                                      ; preds = %if.end.811
  %526 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr813 = getelementptr inbounds i32, i32* %526, i64 2
  store i32* %add.ptr813, i32** %ap, align 8, !tbaa !1
  br label %for.cond.800

for.end.814:                                      ; preds = %for.cond.800
  %527 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %528 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx815 = getelementptr inbounds i32, i32* %528, i64 0
  %529 = load i32, i32* %arrayidx815, align 4, !tbaa !22
  %530 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx816 = getelementptr inbounds i32, i32* %530, i64 1
  %531 = load i32, i32* %arrayidx816, align 4, !tbaa !22
  %532 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx817 = getelementptr inbounds i32, i32* %532, i64 2
  %533 = load i32, i32* %arrayidx817, align 4, !tbaa !22
  %534 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx818 = getelementptr inbounds i32, i32* %534, i64 3
  %535 = load i32, i32* %arrayidx818, align 4, !tbaa !22
  %536 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx819 = getelementptr inbounds i32, i32* %536, i64 4
  %537 = load i32, i32* %arrayidx819, align 4, !tbaa !22
  %538 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx820 = getelementptr inbounds i32, i32* %538, i64 5
  %539 = load i32, i32* %arrayidx820, align 4, !tbaa !22
  %call821 = call i32 @t1_hinter__rcurveto(%struct.t1_hinter_s* %527, i32 %529, i32 %531, i32 %533, i32 %535, i32 %537, i32 %539) #5
  store i32 %call821, i32* %code, align 4, !tbaa !22
  br label %cc

sw.bb.822:                                        ; preds = %if.end.233
  %arraydecay823 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  store i32* %arraydecay823, i32** %ap, align 8, !tbaa !1
  %540 = bitcast i32* %n824 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %540) #1
  %541 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr825 = getelementptr inbounds i32, i32* %541, i64 1
  %arraydecay826 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast827 = ptrtoint i32* %add.ptr825 to i64
  %sub.ptr.rhs.cast828 = ptrtoint i32* %arraydecay826 to i64
  %sub.ptr.sub829 = sub i64 %sub.ptr.lhs.cast827, %sub.ptr.rhs.cast828
  %sub.ptr.div830 = sdiv exact i64 %sub.ptr.sub829, 4
  %conv831 = trunc i64 %sub.ptr.div830 to i32
  store i32 %conv831, i32* %n824, align 4, !tbaa !22
  %542 = bitcast i32* %dxa to i8*
  call void @llvm.lifetime.start(i64 4, i8* %542) #1
  %543 = load i32, i32* %n824, align 4, !tbaa !22
  %and832 = and i32 %543, 1
  %tobool833 = icmp ne i32 %and832, 0
  br i1 %tobool833, label %cond.true.834, label %cond.false.836

cond.true.834:                                    ; preds = %sw.bb.822
  %544 = load i32*, i32** %ap, align 8, !tbaa !1
  %incdec.ptr835 = getelementptr inbounds i32, i32* %544, i32 1
  store i32* %incdec.ptr835, i32** %ap, align 8, !tbaa !1
  %545 = load i32, i32* %544, align 4, !tbaa !22
  br label %cond.end.837

cond.false.836:                                   ; preds = %sw.bb.822
  br label %cond.end.837

cond.end.837:                                     ; preds = %cond.false.836, %cond.true.834
  %cond838 = phi i32 [ %545, %cond.true.834 ], [ 0, %cond.false.836 ]
  store i32 %cond838, i32* %dxa, align 4, !tbaa !22
  br label %for.cond.839

for.cond.839:                                     ; preds = %for.inc.853, %cond.end.837
  %546 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr840 = getelementptr inbounds i32, i32* %546, i64 3
  %547 = load i32*, i32** %csp, align 8, !tbaa !1
  %cmp841 = icmp ule i32* %add.ptr840, %547
  br i1 %cmp841, label %for.body.843, label %for.end.855

for.body.843:                                     ; preds = %for.cond.839
  %548 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %549 = load i32, i32* %dxa, align 4, !tbaa !22
  %550 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx844 = getelementptr inbounds i32, i32* %550, i64 0
  %551 = load i32, i32* %arrayidx844, align 4, !tbaa !22
  %552 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx845 = getelementptr inbounds i32, i32* %552, i64 1
  %553 = load i32, i32* %arrayidx845, align 4, !tbaa !22
  %554 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx846 = getelementptr inbounds i32, i32* %554, i64 2
  %555 = load i32, i32* %arrayidx846, align 4, !tbaa !22
  %556 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx847 = getelementptr inbounds i32, i32* %556, i64 3
  %557 = load i32, i32* %arrayidx847, align 4, !tbaa !22
  %call848 = call i32 @t1_hinter__rcurveto(%struct.t1_hinter_s* %548, i32 %549, i32 %551, i32 %553, i32 %555, i32 0, i32 %557) #5
  store i32 %call848, i32* %code, align 4, !tbaa !22
  %558 = load i32, i32* %code, align 4, !tbaa !22
  %cmp849 = icmp slt i32 %558, 0
  br i1 %cmp849, label %if.then.851, label %if.end.852

if.then.851:                                      ; preds = %for.body.843
  %559 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %559, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.856

if.end.852:                                       ; preds = %for.body.843
  store i32 0, i32* %dxa, align 4, !tbaa !22
  br label %for.inc.853

for.inc.853:                                      ; preds = %if.end.852
  %560 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr854 = getelementptr inbounds i32, i32* %560, i64 4
  store i32* %add.ptr854, i32** %ap, align 8, !tbaa !1
  br label %for.cond.839

for.end.855:                                      ; preds = %for.cond.839
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.856

cleanup.856:                                      ; preds = %for.end.855, %if.then.851
  %561 = bitcast i32* %dxa to i8*
  call void @llvm.lifetime.end(i64 4, i8* %561) #1
  %562 = bitcast i32* %n824 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %562) #1
  %cleanup.dest.858 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.858, label %cleanup.1441 [
    i32 0, label %cleanup.cont.859
  ]

cleanup.cont.859:                                 ; preds = %cleanup.856
  br label %pp

sw.bb.860:                                        ; preds = %if.end.233
  %arraydecay861 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  store i32* %arraydecay861, i32** %ap, align 8, !tbaa !1
  %563 = bitcast i32* %n862 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %563) #1
  %564 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr863 = getelementptr inbounds i32, i32* %564, i64 1
  %arraydecay864 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast865 = ptrtoint i32* %add.ptr863 to i64
  %sub.ptr.rhs.cast866 = ptrtoint i32* %arraydecay864 to i64
  %sub.ptr.sub867 = sub i64 %sub.ptr.lhs.cast865, %sub.ptr.rhs.cast866
  %sub.ptr.div868 = sdiv exact i64 %sub.ptr.sub867, 4
  %conv869 = trunc i64 %sub.ptr.div868 to i32
  store i32 %conv869, i32* %n862, align 4, !tbaa !22
  %565 = bitcast i32* %dya to i8*
  call void @llvm.lifetime.start(i64 4, i8* %565) #1
  %566 = load i32, i32* %n862, align 4, !tbaa !22
  %and870 = and i32 %566, 1
  %tobool871 = icmp ne i32 %and870, 0
  br i1 %tobool871, label %cond.true.872, label %cond.false.874

cond.true.872:                                    ; preds = %sw.bb.860
  %567 = load i32*, i32** %ap, align 8, !tbaa !1
  %incdec.ptr873 = getelementptr inbounds i32, i32* %567, i32 1
  store i32* %incdec.ptr873, i32** %ap, align 8, !tbaa !1
  %568 = load i32, i32* %567, align 4, !tbaa !22
  br label %cond.end.875

cond.false.874:                                   ; preds = %sw.bb.860
  br label %cond.end.875

cond.end.875:                                     ; preds = %cond.false.874, %cond.true.872
  %cond876 = phi i32 [ %568, %cond.true.872 ], [ 0, %cond.false.874 ]
  store i32 %cond876, i32* %dya, align 4, !tbaa !22
  br label %for.cond.877

for.cond.877:                                     ; preds = %for.inc.891, %cond.end.875
  %569 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr878 = getelementptr inbounds i32, i32* %569, i64 3
  %570 = load i32*, i32** %csp, align 8, !tbaa !1
  %cmp879 = icmp ule i32* %add.ptr878, %570
  br i1 %cmp879, label %for.body.881, label %for.end.893

for.body.881:                                     ; preds = %for.cond.877
  %571 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %572 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx882 = getelementptr inbounds i32, i32* %572, i64 0
  %573 = load i32, i32* %arrayidx882, align 4, !tbaa !22
  %574 = load i32, i32* %dya, align 4, !tbaa !22
  %575 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx883 = getelementptr inbounds i32, i32* %575, i64 1
  %576 = load i32, i32* %arrayidx883, align 4, !tbaa !22
  %577 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx884 = getelementptr inbounds i32, i32* %577, i64 2
  %578 = load i32, i32* %arrayidx884, align 4, !tbaa !22
  %579 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx885 = getelementptr inbounds i32, i32* %579, i64 3
  %580 = load i32, i32* %arrayidx885, align 4, !tbaa !22
  %call886 = call i32 @t1_hinter__rcurveto(%struct.t1_hinter_s* %571, i32 %573, i32 %574, i32 %576, i32 %578, i32 %580, i32 0) #5
  store i32 %call886, i32* %code, align 4, !tbaa !22
  %581 = load i32, i32* %code, align 4, !tbaa !22
  %cmp887 = icmp slt i32 %581, 0
  br i1 %cmp887, label %if.then.889, label %if.end.890

if.then.889:                                      ; preds = %for.body.881
  %582 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %582, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.894

if.end.890:                                       ; preds = %for.body.881
  store i32 0, i32* %dya, align 4, !tbaa !22
  br label %for.inc.891

for.inc.891:                                      ; preds = %if.end.890
  %583 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr892 = getelementptr inbounds i32, i32* %583, i64 4
  store i32* %add.ptr892, i32** %ap, align 8, !tbaa !1
  br label %for.cond.877

for.end.893:                                      ; preds = %for.cond.877
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.894

cleanup.894:                                      ; preds = %for.end.893, %if.then.889
  %584 = bitcast i32* %dya to i8*
  call void @llvm.lifetime.end(i64 4, i8* %584) #1
  %585 = bitcast i32* %n862 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %585) #1
  %cleanup.dest.896 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.896, label %cleanup.1441 [
    i32 0, label %cleanup.cont.897
  ]

cleanup.cont.897:                                 ; preds = %cleanup.894
  br label %pp

sw.bb.898:                                        ; preds = %if.end.233
  %586 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %586) #1
  %587 = bitcast i32* %c2899 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %587) #1
  %588 = load i32, i32* %encrypted, align 4, !tbaa !22
  %tobool900 = icmp ne i32 %588, 0
  br i1 %tobool900, label %cond.true.901, label %cond.false.913

cond.true.901:                                    ; preds = %sw.bb.898
  %589 = load i8*, i8** %cip, align 8, !tbaa !1
  %590 = load i8, i8* %589, align 1, !tbaa !54
  %conv902 = zext i8 %590 to i32
  %591 = load i16, i16* %state, align 2, !tbaa !52
  %conv903 = zext i16 %591 to i32
  %shr904 = ashr i32 %conv903, 8
  %xor905 = xor i32 %conv902, %shr904
  store i32 %xor905, i32* %c1, align 4, !tbaa !22
  %592 = load i8*, i8** %cip, align 8, !tbaa !1
  %593 = load i8, i8* %592, align 1, !tbaa !54
  %conv906 = zext i8 %593 to i32
  %594 = load i16, i16* %state, align 2, !tbaa !52
  %conv907 = zext i16 %594 to i32
  %add908 = add nsw i32 %conv906, %conv907
  %mul909 = mul nsw i32 %add908, 52845
  %add910 = add nsw i32 %mul909, 22719
  %conv911 = trunc i32 %add910 to i16
  store i16 %conv911, i16* %state, align 2, !tbaa !52
  %conv912 = zext i16 %conv911 to i32
  br label %cond.end.915

cond.false.913:                                   ; preds = %sw.bb.898
  %595 = load i8*, i8** %cip, align 8, !tbaa !1
  %596 = load i8, i8* %595, align 1, !tbaa !54
  %conv914 = zext i8 %596 to i32
  store i32 %conv914, i32* %c1, align 4, !tbaa !22
  br label %cond.end.915

cond.end.915:                                     ; preds = %cond.false.913, %cond.true.901
  %cond916 = phi i32 [ %conv912, %cond.true.901 ], [ %conv914, %cond.false.913 ]
  %597 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr917 = getelementptr inbounds i8, i8* %597, i32 1
  store i8* %incdec.ptr917, i8** %cip, align 8, !tbaa !1
  %598 = load i32, i32* %encrypted, align 4, !tbaa !22
  %tobool918 = icmp ne i32 %598, 0
  br i1 %tobool918, label %cond.true.919, label %cond.false.931

cond.true.919:                                    ; preds = %cond.end.915
  %599 = load i8*, i8** %cip, align 8, !tbaa !1
  %600 = load i8, i8* %599, align 1, !tbaa !54
  %conv920 = zext i8 %600 to i32
  %601 = load i16, i16* %state, align 2, !tbaa !52
  %conv921 = zext i16 %601 to i32
  %shr922 = ashr i32 %conv921, 8
  %xor923 = xor i32 %conv920, %shr922
  store i32 %xor923, i32* %c2899, align 4, !tbaa !22
  %602 = load i8*, i8** %cip, align 8, !tbaa !1
  %603 = load i8, i8* %602, align 1, !tbaa !54
  %conv924 = zext i8 %603 to i32
  %604 = load i16, i16* %state, align 2, !tbaa !52
  %conv925 = zext i16 %604 to i32
  %add926 = add nsw i32 %conv924, %conv925
  %mul927 = mul nsw i32 %add926, 52845
  %add928 = add nsw i32 %mul927, 22719
  %conv929 = trunc i32 %add928 to i16
  store i16 %conv929, i16* %state, align 2, !tbaa !52
  %conv930 = zext i16 %conv929 to i32
  br label %cond.end.933

cond.false.931:                                   ; preds = %cond.end.915
  %605 = load i8*, i8** %cip, align 8, !tbaa !1
  %606 = load i8, i8* %605, align 1, !tbaa !54
  %conv932 = zext i8 %606 to i32
  store i32 %conv932, i32* %c2899, align 4, !tbaa !22
  br label %cond.end.933

cond.end.933:                                     ; preds = %cond.false.931, %cond.true.919
  %cond934 = phi i32 [ %conv930, %cond.true.919 ], [ %conv932, %cond.false.931 ]
  %607 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr935 = getelementptr inbounds i8, i8* %607, i32 1
  store i8* %incdec.ptr935, i8** %cip, align 8, !tbaa !1
  br label %do.body.936

do.body.936:                                      ; preds = %cond.end.933
  %608 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx937 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 47
  %cmp938 = icmp uge i32* %608, %arrayidx937
  br i1 %cmp938, label %if.then.940, label %if.end.941

if.then.940:                                      ; preds = %do.body.936
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.950

if.end.941:                                       ; preds = %do.body.936
  br label %do.cond.942

do.cond.942:                                      ; preds = %if.end.941
  br label %do.end.943

do.end.943:                                       ; preds = %do.cond.942
  %609 = load i32, i32* %c1, align 4, !tbaa !22
  %xor944 = xor i32 %609, 128
  %sub945 = sub nsw i32 %xor944, 128
  %shl946 = shl i32 %sub945, 8
  %610 = load i32, i32* %c2899, align 4, !tbaa !22
  %add947 = add nsw i32 %shl946, %610
  %shl948 = shl i32 %add947, 8
  %611 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr949 = getelementptr inbounds i32, i32* %611, i32 1
  store i32* %incdec.ptr949, i32** %csp, align 8, !tbaa !1
  store i32 %shl948, i32* %incdec.ptr949, align 4, !tbaa !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.950

cleanup.950:                                      ; preds = %do.end.943, %if.then.940
  %612 = bitcast i32* %c2899 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %612) #1
  %613 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %613) #1
  %cleanup.dest.952 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.952, label %cleanup.1441 [
    i32 0, label %cleanup.cont.953
  ]

cleanup.cont.953:                                 ; preds = %cleanup.950
  br label %pushed

sw.bb.954:                                        ; preds = %if.end.233
  %614 = load i32*, i32** %csp, align 8, !tbaa !1
  %615 = load i32, i32* %614, align 4, !tbaa !22
  %shr955 = ashr i32 %615, 8
  %616 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %gsubrNumberBias = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %616, i32 0, i32 6
  %617 = load i32, i32* %gsubrNumberBias, align 4, !tbaa !72
  %add956 = add i32 %shr955, %617
  store i32 %add956, i32* %c, align 4, !tbaa !22
  %618 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %procs957 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %618, i32 0, i32 0
  %subr_data958 = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs957, i32 0, i32 1
  %619 = load i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)** %subr_data958, align 8, !tbaa !60
  %620 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %621 = load i32, i32* %c, align 4, !tbaa !22
  %622 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %arrayidx959 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %622, i64 1
  %cs_data960 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %arrayidx959, i32 0, i32 3
  %call961 = call i32 %619(%struct.gs_font_type1_s* %620, i32 %621, i32 1, %struct.gs_glyph_data_s* %cs_data960) #5
  store i32 %call961, i32* %code, align 4, !tbaa !22
  br label %subr

sw.bb.962:                                        ; preds = %if.end.233
  %623 = load i32, i32* %encrypted, align 4, !tbaa !22
  %tobool963 = icmp ne i32 %623, 0
  br i1 %tobool963, label %cond.true.964, label %cond.false.976

cond.true.964:                                    ; preds = %sw.bb.962
  %624 = load i8*, i8** %cip, align 8, !tbaa !1
  %625 = load i8, i8* %624, align 1, !tbaa !54
  %conv965 = zext i8 %625 to i32
  %626 = load i16, i16* %state, align 2, !tbaa !52
  %conv966 = zext i16 %626 to i32
  %shr967 = ashr i32 %conv966, 8
  %xor968 = xor i32 %conv965, %shr967
  store i32 %xor968, i32* %c, align 4, !tbaa !22
  %627 = load i8*, i8** %cip, align 8, !tbaa !1
  %628 = load i8, i8* %627, align 1, !tbaa !54
  %conv969 = zext i8 %628 to i32
  %629 = load i16, i16* %state, align 2, !tbaa !52
  %conv970 = zext i16 %629 to i32
  %add971 = add nsw i32 %conv969, %conv970
  %mul972 = mul nsw i32 %add971, 52845
  %add973 = add nsw i32 %mul972, 22719
  %conv974 = trunc i32 %add973 to i16
  store i16 %conv974, i16* %state, align 2, !tbaa !52
  %conv975 = zext i16 %conv974 to i32
  br label %cond.end.978

cond.false.976:                                   ; preds = %sw.bb.962
  %630 = load i8*, i8** %cip, align 8, !tbaa !1
  %631 = load i8, i8* %630, align 1, !tbaa !54
  %conv977 = zext i8 %631 to i32
  store i32 %conv977, i32* %c, align 4, !tbaa !22
  br label %cond.end.978

cond.end.978:                                     ; preds = %cond.false.976, %cond.true.964
  %cond979 = phi i32 [ %conv975, %cond.true.964 ], [ %conv977, %cond.false.976 ]
  %632 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr980 = getelementptr inbounds i8, i8* %632, i32 1
  store i8* %incdec.ptr980, i8** %cip, align 8, !tbaa !1
  %633 = load i32, i32* %c, align 4, !tbaa !22
  switch i32 %633, label %sw.epilog.1437 [
    i32 3, label %sw.bb.981
    i32 4, label %sw.bb.993
    i32 5, label %sw.bb.1000
    i32 8, label %sw.bb.1004
    i32 9, label %sw.bb.1037
    i32 10, label %sw.bb.1043
    i32 11, label %sw.bb.1047
    i32 12, label %sw.bb.1051
    i32 13, label %sw.bb.1059
    i32 14, label %sw.bb.1090
    i32 15, label %sw.bb.1092
    i32 18, label %sw.bb.1100
    i32 20, label %sw.bb.1102
    i32 21, label %sw.bb.1109
    i32 22, label %sw.bb.1114
    i32 23, label %sw.bb.1123
    i32 24, label %sw.bb.1133
    i32 26, label %sw.bb.1154
    i32 27, label %sw.bb.1164
    i32 28, label %sw.bb.1175
    i32 29, label %sw.bb.1179
    i32 30, label %sw.bb.1192
    i32 34, label %sw.bb.1240
    i32 35, label %sw.bb.1260
    i32 36, label %sw.bb.1375
    i32 37, label %sw.bb.1393
  ]

sw.bb.981:                                        ; preds = %cond.end.978
  %634 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx982 = getelementptr inbounds i32, i32* %634, i64 -1
  %635 = load i32, i32* %arrayidx982, align 4, !tbaa !22
  %cmp983 = icmp ne i32 %635, 0
  %conv984 = zext i1 %cmp983 to i32
  %636 = load i32*, i32** %csp, align 8, !tbaa !1
  %637 = load i32, i32* %636, align 4, !tbaa !22
  %cmp985 = icmp ne i32 %637, 0
  %conv986 = zext i1 %cmp985 to i32
  %and987 = and i32 %conv984, %conv986
  %tobool988 = icmp ne i32 %and987, 0
  %cond989 = select i1 %tobool988, i64 256, i64 0
  %conv990 = trunc i64 %cond989 to i32
  %638 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx991 = getelementptr inbounds i32, i32* %638, i64 -1
  store i32 %conv990, i32* %arrayidx991, align 4, !tbaa !22
  %639 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr992 = getelementptr inbounds i32, i32* %639, i32 -1
  store i32* %incdec.ptr992, i32** %csp, align 8, !tbaa !1
  br label %sw.epilog.1437

sw.bb.993:                                        ; preds = %cond.end.978
  %640 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx994 = getelementptr inbounds i32, i32* %640, i64 -1
  %641 = load i32, i32* %arrayidx994, align 4, !tbaa !22
  %642 = load i32*, i32** %csp, align 8, !tbaa !1
  %643 = load i32, i32* %642, align 4, !tbaa !22
  %or = or i32 %641, %643
  %tobool995 = icmp ne i32 %or, 0
  %cond996 = select i1 %tobool995, i64 256, i64 0
  %conv997 = trunc i64 %cond996 to i32
  %644 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx998 = getelementptr inbounds i32, i32* %644, i64 -1
  store i32 %conv997, i32* %arrayidx998, align 4, !tbaa !22
  %645 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr999 = getelementptr inbounds i32, i32* %645, i32 -1
  store i32* %incdec.ptr999, i32** %csp, align 8, !tbaa !1
  br label %sw.epilog.1437

sw.bb.1000:                                       ; preds = %cond.end.978
  %646 = load i32*, i32** %csp, align 8, !tbaa !1
  %647 = load i32, i32* %646, align 4, !tbaa !22
  %tobool1001 = icmp ne i32 %647, 0
  %cond1002 = select i1 %tobool1001, i64 0, i64 256
  %conv1003 = trunc i64 %cond1002 to i32
  %648 = load i32*, i32** %csp, align 8, !tbaa !1
  store i32 %conv1003, i32* %648, align 4, !tbaa !22
  br label %sw.epilog.1437

sw.bb.1004:                                       ; preds = %cond.end.978
  %649 = bitcast i32* %i1005 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %649) #1
  %650 = bitcast i32* %n1006 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %650) #1
  %651 = load i32*, i32** %csp, align 8, !tbaa !1
  %652 = load i32, i32* %651, align 4, !tbaa !22
  %shr1007 = ashr i32 %652, 8
  store i32 %shr1007, i32* %n1006, align 4, !tbaa !22
  %653 = bitcast float** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %653) #1
  %654 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1008 = getelementptr inbounds i32, i32* %654, i64 -3
  %655 = load i32, i32* %arrayidx1008, align 4, !tbaa !22
  %shr1009 = ashr i32 %655, 8
  %idxprom1010 = sext i32 %shr1009 to i64
  %arrayidx1011 = getelementptr inbounds [1 x %struct.anon.9], [1 x %struct.anon.9]* %Registry, i32 0, i64 %idxprom1010
  %values1012 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx1011, i32 0, i32 0
  %656 = load float*, float** %values1012, align 8, !tbaa !24
  %657 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1013 = getelementptr inbounds i32, i32* %657, i64 -2
  %658 = load i32, i32* %arrayidx1013, align 4, !tbaa !22
  %shr1014 = ashr i32 %658, 8
  %idx.ext1015 = sext i32 %shr1014 to i64
  %add.ptr1016 = getelementptr inbounds float, float* %656, i64 %idx.ext1015
  store float* %add.ptr1016, float** %to, align 8, !tbaa !1
  %659 = bitcast i32** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %659) #1
  %660 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %transient_array = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %660, i32 0, i32 35
  %arraydecay1017 = getelementptr inbounds [32 x i32], [32 x i32]* %transient_array, i32 0, i32 0
  %661 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1018 = getelementptr inbounds i32, i32* %661, i64 -1
  %662 = load i32, i32* %arrayidx1018, align 4, !tbaa !22
  %shr1019 = ashr i32 %662, 8
  %idx.ext1020 = sext i32 %shr1019 to i64
  %add.ptr1021 = getelementptr inbounds i32, i32* %arraydecay1017, i64 %idx.ext1020
  store i32* %add.ptr1021, i32** %from, align 8, !tbaa !1
  store i32 0, i32* %i1005, align 4, !tbaa !22
  br label %for.cond.1022

for.cond.1022:                                    ; preds = %for.inc.1033, %sw.bb.1004
  %663 = load i32, i32* %i1005, align 4, !tbaa !22
  %664 = load i32, i32* %n1006, align 4, !tbaa !22
  %cmp1023 = icmp slt i32 %663, %664
  br i1 %cmp1023, label %for.body.1025, label %for.end.1035

for.body.1025:                                    ; preds = %for.cond.1022
  %665 = load i32, i32* %i1005, align 4, !tbaa !22
  %idxprom1026 = sext i32 %665 to i64
  %666 = load i32*, i32** %from, align 8, !tbaa !1
  %arrayidx1027 = getelementptr inbounds i32, i32* %666, i64 %idxprom1026
  %667 = load i32, i32* %arrayidx1027, align 4, !tbaa !22
  %conv1028 = sitofp i32 %667 to double
  %mul1029 = fmul double %conv1028, 3.906250e-03
  %conv1030 = fptrunc double %mul1029 to float
  %668 = load i32, i32* %i1005, align 4, !tbaa !22
  %idxprom1031 = sext i32 %668 to i64
  %669 = load float*, float** %to, align 8, !tbaa !1
  %arrayidx1032 = getelementptr inbounds float, float* %669, i64 %idxprom1031
  store float %conv1030, float* %arrayidx1032, align 4, !tbaa !71
  br label %for.inc.1033

for.inc.1033:                                     ; preds = %for.body.1025
  %670 = load i32, i32* %i1005, align 4, !tbaa !22
  %inc1034 = add nsw i32 %670, 1
  store i32 %inc1034, i32* %i1005, align 4, !tbaa !22
  br label %for.cond.1022

for.end.1035:                                     ; preds = %for.cond.1022
  %671 = bitcast i32** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %671) #1
  %672 = bitcast float** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %672) #1
  %673 = bitcast i32* %n1006 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %673) #1
  %674 = bitcast i32* %i1005 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %674) #1
  %675 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr1036 = getelementptr inbounds i32, i32* %675, i64 -4
  store i32* %add.ptr1036, i32** %csp, align 8, !tbaa !1
  br label %sw.epilog.1437

sw.bb.1037:                                       ; preds = %cond.end.978
  %676 = load i32*, i32** %csp, align 8, !tbaa !1
  %677 = load i32, i32* %676, align 4, !tbaa !22
  %cmp1038 = icmp slt i32 %677, 0
  br i1 %cmp1038, label %if.then.1040, label %if.end.1042

if.then.1040:                                     ; preds = %sw.bb.1037
  %678 = load i32*, i32** %csp, align 8, !tbaa !1
  %679 = load i32, i32* %678, align 4, !tbaa !22
  %sub1041 = sub nsw i32 0, %679
  %680 = load i32*, i32** %csp, align 8, !tbaa !1
  store i32 %sub1041, i32* %680, align 4, !tbaa !22
  br label %if.end.1042

if.end.1042:                                      ; preds = %if.then.1040, %sw.bb.1037
  br label %sw.epilog.1437

sw.bb.1043:                                       ; preds = %cond.end.978
  %681 = load i32*, i32** %csp, align 8, !tbaa !1
  %682 = load i32, i32* %681, align 4, !tbaa !22
  %683 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1044 = getelementptr inbounds i32, i32* %683, i64 -1
  %684 = load i32, i32* %arrayidx1044, align 4, !tbaa !22
  %add1045 = add nsw i32 %684, %682
  store i32 %add1045, i32* %arrayidx1044, align 4, !tbaa !22
  %685 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr1046 = getelementptr inbounds i32, i32* %685, i32 -1
  store i32* %incdec.ptr1046, i32** %csp, align 8, !tbaa !1
  br label %sw.epilog.1437

sw.bb.1047:                                       ; preds = %cond.end.978
  %686 = load i32*, i32** %csp, align 8, !tbaa !1
  %687 = load i32, i32* %686, align 4, !tbaa !22
  %688 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1048 = getelementptr inbounds i32, i32* %688, i64 -1
  %689 = load i32, i32* %arrayidx1048, align 4, !tbaa !22
  %sub1049 = sub nsw i32 %689, %687
  store i32 %sub1049, i32* %arrayidx1048, align 4, !tbaa !22
  %690 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr1050 = getelementptr inbounds i32, i32* %690, i32 -1
  store i32* %incdec.ptr1050, i32** %csp, align 8, !tbaa !1
  br label %sw.epilog.1437

sw.bb.1051:                                       ; preds = %cond.end.978
  %691 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1052 = getelementptr inbounds i32, i32* %691, i64 -1
  %692 = load i32, i32* %arrayidx1052, align 4, !tbaa !22
  %conv1053 = sitofp i32 %692 to double
  %693 = load i32*, i32** %csp, align 8, !tbaa !1
  %694 = load i32, i32* %693, align 4, !tbaa !22
  %conv1054 = sitofp i32 %694 to double
  %div = fdiv double %conv1053, %conv1054
  %mul1055 = fmul double %div, 2.560000e+02
  %conv1056 = fptosi double %mul1055 to i32
  %695 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1057 = getelementptr inbounds i32, i32* %695, i64 -1
  store i32 %conv1056, i32* %arrayidx1057, align 4, !tbaa !22
  %696 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr1058 = getelementptr inbounds i32, i32* %696, i32 -1
  store i32* %incdec.ptr1058, i32** %csp, align 8, !tbaa !1
  br label %sw.epilog.1437

sw.bb.1059:                                       ; preds = %cond.end.978
  %697 = bitcast i32* %i1060 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %697) #1
  %698 = bitcast i32* %n1061 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %698) #1
  %699 = load i32*, i32** %csp, align 8, !tbaa !1
  %700 = load i32, i32* %699, align 4, !tbaa !22
  %shr1062 = ashr i32 %700, 8
  store i32 %shr1062, i32* %n1061, align 4, !tbaa !22
  %701 = bitcast float** %from1063 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %701) #1
  %702 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1064 = getelementptr inbounds i32, i32* %702, i64 -2
  %703 = load i32, i32* %arrayidx1064, align 4, !tbaa !22
  %shr1065 = ashr i32 %703, 8
  %idxprom1066 = sext i32 %shr1065 to i64
  %arrayidx1067 = getelementptr inbounds [1 x %struct.anon.9], [1 x %struct.anon.9]* %Registry, i32 0, i64 %idxprom1066
  %values1068 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx1067, i32 0, i32 0
  %704 = load float*, float** %values1068, align 8, !tbaa !24
  store float* %704, float** %from1063, align 8, !tbaa !1
  %705 = bitcast i32** %to1069 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %705) #1
  %706 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %transient_array1070 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %706, i32 0, i32 35
  %arraydecay1071 = getelementptr inbounds [32 x i32], [32 x i32]* %transient_array1070, i32 0, i32 0
  %707 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1072 = getelementptr inbounds i32, i32* %707, i64 -1
  %708 = load i32, i32* %arrayidx1072, align 4, !tbaa !22
  %shr1073 = ashr i32 %708, 8
  %idx.ext1074 = sext i32 %shr1073 to i64
  %add.ptr1075 = getelementptr inbounds i32, i32* %arraydecay1071, i64 %idx.ext1074
  store i32* %add.ptr1075, i32** %to1069, align 8, !tbaa !1
  store i32 0, i32* %i1060, align 4, !tbaa !22
  br label %for.cond.1076

for.cond.1076:                                    ; preds = %for.inc.1086, %sw.bb.1059
  %709 = load i32, i32* %i1060, align 4, !tbaa !22
  %710 = load i32, i32* %n1061, align 4, !tbaa !22
  %cmp1077 = icmp slt i32 %709, %710
  br i1 %cmp1077, label %for.body.1079, label %for.end.1088

for.body.1079:                                    ; preds = %for.cond.1076
  %711 = load i32, i32* %i1060, align 4, !tbaa !22
  %idxprom1080 = sext i32 %711 to i64
  %712 = load float*, float** %from1063, align 8, !tbaa !1
  %arrayidx1081 = getelementptr inbounds float, float* %712, i64 %idxprom1080
  %713 = load float, float* %arrayidx1081, align 4, !tbaa !71
  %mul1082 = fmul float %713, 2.560000e+02
  %conv1083 = fptosi float %mul1082 to i32
  %714 = load i32, i32* %i1060, align 4, !tbaa !22
  %idxprom1084 = sext i32 %714 to i64
  %715 = load i32*, i32** %to1069, align 8, !tbaa !1
  %arrayidx1085 = getelementptr inbounds i32, i32* %715, i64 %idxprom1084
  store i32 %conv1083, i32* %arrayidx1085, align 4, !tbaa !22
  br label %for.inc.1086

for.inc.1086:                                     ; preds = %for.body.1079
  %716 = load i32, i32* %i1060, align 4, !tbaa !22
  %inc1087 = add nsw i32 %716, 1
  store i32 %inc1087, i32* %i1060, align 4, !tbaa !22
  br label %for.cond.1076

for.end.1088:                                     ; preds = %for.cond.1076
  %717 = bitcast i32** %to1069 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %717) #1
  %718 = bitcast float** %from1063 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %718) #1
  %719 = bitcast i32* %n1061 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %719) #1
  %720 = bitcast i32* %i1060 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %720) #1
  %721 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr1089 = getelementptr inbounds i32, i32* %721, i64 -3
  store i32* %add.ptr1089, i32** %csp, align 8, !tbaa !1
  br label %sw.epilog.1437

sw.bb.1090:                                       ; preds = %cond.end.978
  %722 = load i32*, i32** %csp, align 8, !tbaa !1
  %723 = load i32, i32* %722, align 4, !tbaa !22
  %sub1091 = sub nsw i32 0, %723
  %724 = load i32*, i32** %csp, align 8, !tbaa !1
  store i32 %sub1091, i32* %724, align 4, !tbaa !22
  br label %sw.epilog.1437

sw.bb.1092:                                       ; preds = %cond.end.978
  %725 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1093 = getelementptr inbounds i32, i32* %725, i64 -1
  %726 = load i32, i32* %arrayidx1093, align 4, !tbaa !22
  %727 = load i32*, i32** %csp, align 8, !tbaa !1
  %728 = load i32, i32* %727, align 4, !tbaa !22
  %cmp1094 = icmp eq i32 %726, %728
  %cond1096 = select i1 %cmp1094, i64 256, i64 0
  %conv1097 = trunc i64 %cond1096 to i32
  %729 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1098 = getelementptr inbounds i32, i32* %729, i64 -1
  store i32 %conv1097, i32* %arrayidx1098, align 4, !tbaa !22
  %730 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr1099 = getelementptr inbounds i32, i32* %730, i32 -1
  store i32* %incdec.ptr1099, i32** %csp, align 8, !tbaa !1
  br label %sw.epilog.1437

sw.bb.1100:                                       ; preds = %cond.end.978
  %731 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr1101 = getelementptr inbounds i32, i32* %731, i32 -1
  store i32* %incdec.ptr1101, i32** %csp, align 8, !tbaa !1
  br label %sw.epilog.1437

sw.bb.1102:                                       ; preds = %cond.end.978
  %732 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1103 = getelementptr inbounds i32, i32* %732, i64 -1
  %733 = load i32, i32* %arrayidx1103, align 4, !tbaa !22
  %734 = load i32*, i32** %csp, align 8, !tbaa !1
  %735 = load i32, i32* %734, align 4, !tbaa !22
  %shr1104 = ashr i32 %735, 8
  %idxprom1105 = sext i32 %shr1104 to i64
  %736 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %transient_array1106 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %736, i32 0, i32 35
  %arrayidx1107 = getelementptr inbounds [32 x i32], [32 x i32]* %transient_array1106, i32 0, i64 %idxprom1105
  store i32 %733, i32* %arrayidx1107, align 4, !tbaa !22
  %737 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr1108 = getelementptr inbounds i32, i32* %737, i64 -2
  store i32* %add.ptr1108, i32** %csp, align 8, !tbaa !1
  br label %sw.epilog.1437

sw.bb.1109:                                       ; preds = %cond.end.978
  %738 = load i32*, i32** %csp, align 8, !tbaa !1
  %739 = load i32, i32* %738, align 4, !tbaa !22
  %shr1110 = ashr i32 %739, 8
  %idxprom1111 = sext i32 %shr1110 to i64
  %740 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %transient_array1112 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %740, i32 0, i32 35
  %arrayidx1113 = getelementptr inbounds [32 x i32], [32 x i32]* %transient_array1112, i32 0, i64 %idxprom1111
  %741 = load i32, i32* %arrayidx1113, align 4, !tbaa !22
  %742 = load i32*, i32** %csp, align 8, !tbaa !1
  store i32 %741, i32* %742, align 4, !tbaa !22
  br label %sw.epilog.1437

sw.bb.1114:                                       ; preds = %cond.end.978
  %743 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1115 = getelementptr inbounds i32, i32* %743, i64 -1
  %744 = load i32, i32* %arrayidx1115, align 4, !tbaa !22
  %745 = load i32*, i32** %csp, align 8, !tbaa !1
  %746 = load i32, i32* %745, align 4, !tbaa !22
  %cmp1116 = icmp sgt i32 %744, %746
  br i1 %cmp1116, label %if.then.1118, label %if.end.1121

if.then.1118:                                     ; preds = %sw.bb.1114
  %747 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1119 = getelementptr inbounds i32, i32* %747, i64 -2
  %748 = load i32, i32* %arrayidx1119, align 4, !tbaa !22
  %749 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1120 = getelementptr inbounds i32, i32* %749, i64 -3
  store i32 %748, i32* %arrayidx1120, align 4, !tbaa !22
  br label %if.end.1121

if.end.1121:                                      ; preds = %if.then.1118, %sw.bb.1114
  %750 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr1122 = getelementptr inbounds i32, i32* %750, i64 -3
  store i32* %add.ptr1122, i32** %csp, align 8, !tbaa !1
  br label %sw.epilog.1437

sw.bb.1123:                                       ; preds = %cond.end.978
  br label %do.body.1124

do.body.1124:                                     ; preds = %sw.bb.1123
  %751 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1125 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 47
  %cmp1126 = icmp uge i32* %751, %arrayidx1125
  br i1 %cmp1126, label %if.then.1128, label %if.end.1129

if.then.1128:                                     ; preds = %do.body.1124
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.1129:                                      ; preds = %do.body.1124
  br label %do.cond.1130

do.cond.1130:                                     ; preds = %if.end.1129
  br label %do.end.1131

do.end.1131:                                      ; preds = %do.cond.1130
  %752 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr1132 = getelementptr inbounds i32, i32* %752, i32 1
  store i32* %incdec.ptr1132, i32** %csp, align 8, !tbaa !1
  br label %sw.epilog.1437

sw.bb.1133:                                       ; preds = %cond.end.978
  %753 = bitcast double* %prod to i8*
  call void @llvm.lifetime.start(i64 8, i8* %753) #1
  %754 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1134 = getelementptr inbounds i32, i32* %754, i64 -1
  %755 = load i32, i32* %arrayidx1134, align 4, !tbaa !22
  %conv1135 = sitofp i32 %755 to double
  %mul1136 = fmul double %conv1135, 3.906250e-03
  %756 = load i32*, i32** %csp, align 8, !tbaa !1
  %757 = load i32, i32* %756, align 4, !tbaa !22
  %conv1137 = sitofp i32 %757 to double
  %mul1138 = fmul double %mul1136, %conv1137
  store double %mul1138, double* %prod, align 8, !tbaa !73
  %758 = load double, double* %prod, align 8, !tbaa !73
  %cmp1139 = fcmp ogt double %758, 0x41DFFFFFFFC00000
  br i1 %cmp1139, label %cond.true.1141, label %cond.false.1142

cond.true.1141:                                   ; preds = %sw.bb.1133
  br label %cond.end.1150

cond.false.1142:                                  ; preds = %sw.bb.1133
  %759 = load double, double* %prod, align 8, !tbaa !73
  %cmp1143 = fcmp olt double %759, 0xC1E0000000000000
  br i1 %cmp1143, label %cond.true.1145, label %cond.false.1146

cond.true.1145:                                   ; preds = %cond.false.1142
  br label %cond.end.1148

cond.false.1146:                                  ; preds = %cond.false.1142
  %760 = load double, double* %prod, align 8, !tbaa !73
  %conv1147 = fptosi double %760 to i32
  br label %cond.end.1148

cond.end.1148:                                    ; preds = %cond.false.1146, %cond.true.1145
  %cond1149 = phi i32 [ -2147483648, %cond.true.1145 ], [ %conv1147, %cond.false.1146 ]
  br label %cond.end.1150

cond.end.1150:                                    ; preds = %cond.end.1148, %cond.true.1141
  %cond1151 = phi i32 [ 2147483647, %cond.true.1141 ], [ %cond1149, %cond.end.1148 ]
  %761 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1152 = getelementptr inbounds i32, i32* %761, i64 -1
  store i32 %cond1151, i32* %arrayidx1152, align 4, !tbaa !22
  %762 = bitcast double* %prod to i8*
  call void @llvm.lifetime.end(i64 8, i8* %762) #1
  %763 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr1153 = getelementptr inbounds i32, i32* %763, i32 -1
  store i32* %incdec.ptr1153, i32** %csp, align 8, !tbaa !1
  br label %sw.epilog.1437

sw.bb.1154:                                       ; preds = %cond.end.978
  %764 = load i32*, i32** %csp, align 8, !tbaa !1
  %765 = load i32, i32* %764, align 4, !tbaa !22
  %cmp1155 = icmp sge i32 %765, 0
  br i1 %cmp1155, label %if.then.1157, label %if.end.1163

if.then.1157:                                     ; preds = %sw.bb.1154
  %766 = load i32*, i32** %csp, align 8, !tbaa !1
  %767 = load i32, i32* %766, align 4, !tbaa !22
  %conv1158 = sitofp i32 %767 to double
  %mul1159 = fmul double %conv1158, 3.906250e-03
  %call1160 = call double @sqrt(double %mul1159) #6
  %mul1161 = fmul double %call1160, 2.560000e+02
  %conv1162 = fptosi double %mul1161 to i32
  %768 = load i32*, i32** %csp, align 8, !tbaa !1
  store i32 %conv1162, i32* %768, align 4, !tbaa !22
  br label %if.end.1163

if.end.1163:                                      ; preds = %if.then.1157, %sw.bb.1154
  br label %sw.epilog.1437

sw.bb.1164:                                       ; preds = %cond.end.978
  br label %do.body.1165

do.body.1165:                                     ; preds = %sw.bb.1164
  %769 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1166 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 47
  %cmp1167 = icmp uge i32* %769, %arrayidx1166
  br i1 %cmp1167, label %if.then.1169, label %if.end.1170

if.then.1169:                                     ; preds = %do.body.1165
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

if.end.1170:                                      ; preds = %do.body.1165
  br label %do.cond.1171

do.cond.1171:                                     ; preds = %if.end.1170
  br label %do.end.1172

do.end.1172:                                      ; preds = %do.cond.1171
  %770 = load i32*, i32** %csp, align 8, !tbaa !1
  %771 = load i32, i32* %770, align 4, !tbaa !22
  %772 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1173 = getelementptr inbounds i32, i32* %772, i64 1
  store i32 %771, i32* %arrayidx1173, align 4, !tbaa !22
  %773 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr1174 = getelementptr inbounds i32, i32* %773, i32 1
  store i32* %incdec.ptr1174, i32** %csp, align 8, !tbaa !1
  br label %sw.epilog.1437

sw.bb.1175:                                       ; preds = %cond.end.978
  %774 = bitcast i32* %top1176 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %774) #1
  %775 = load i32*, i32** %csp, align 8, !tbaa !1
  %776 = load i32, i32* %775, align 4, !tbaa !22
  store i32 %776, i32* %top1176, align 4, !tbaa !22
  %777 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1177 = getelementptr inbounds i32, i32* %777, i64 -1
  %778 = load i32, i32* %arrayidx1177, align 4, !tbaa !22
  %779 = load i32*, i32** %csp, align 8, !tbaa !1
  store i32 %778, i32* %779, align 4, !tbaa !22
  %780 = load i32, i32* %top1176, align 4, !tbaa !22
  %781 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1178 = getelementptr inbounds i32, i32* %781, i64 -1
  store i32 %780, i32* %arrayidx1178, align 4, !tbaa !22
  %782 = bitcast i32* %top1176 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %782) #1
  br label %sw.epilog.1437

sw.bb.1179:                                       ; preds = %cond.end.978
  %783 = load i32*, i32** %csp, align 8, !tbaa !1
  %784 = load i32, i32* %783, align 4, !tbaa !22
  %cmp1180 = icmp slt i32 %784, 0
  br i1 %cmp1180, label %cond.true.1182, label %cond.false.1184

cond.true.1182:                                   ; preds = %sw.bb.1179
  %785 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1183 = getelementptr inbounds i32, i32* %785, i64 -1
  %786 = load i32, i32* %arrayidx1183, align 4, !tbaa !22
  br label %cond.end.1190

cond.false.1184:                                  ; preds = %sw.bb.1179
  %787 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1185 = getelementptr inbounds i32, i32* %787, i64 -1
  %788 = load i32, i32* %arrayidx1185, align 4, !tbaa !22
  %shr1186 = ashr i32 %788, 8
  %sub1187 = sub nsw i32 -1, %shr1186
  %idxprom1188 = sext i32 %sub1187 to i64
  %789 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1189 = getelementptr inbounds i32, i32* %789, i64 %idxprom1188
  %790 = load i32, i32* %arrayidx1189, align 4, !tbaa !22
  br label %cond.end.1190

cond.end.1190:                                    ; preds = %cond.false.1184, %cond.true.1182
  %cond1191 = phi i32 [ %786, %cond.true.1182 ], [ %790, %cond.false.1184 ]
  %791 = load i32*, i32** %csp, align 8, !tbaa !1
  store i32 %cond1191, i32* %791, align 4, !tbaa !22
  br label %sw.epilog.1437

sw.bb.1192:                                       ; preds = %cond.end.978
  %792 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.start(i64 4, i8* %792) #1
  %793 = load i32*, i32** %csp, align 8, !tbaa !1
  %794 = load i32, i32* %793, align 4, !tbaa !22
  %shr1193 = ashr i32 %794, 8
  store i32 %shr1193, i32* %distance, align 4, !tbaa !22
  %795 = bitcast i32* %count1194 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %795) #1
  %796 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1195 = getelementptr inbounds i32, i32* %796, i64 -1
  %797 = load i32, i32* %arrayidx1195, align 4, !tbaa !22
  %shr1196 = ashr i32 %797, 8
  store i32 %shr1196, i32* %count1194, align 4, !tbaa !22
  %798 = bitcast i32** %bot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %798) #1
  %799 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr1197 = getelementptr inbounds i32, i32* %799, i64 -2
  store i32* %add.ptr1197, i32** %csp, align 8, !tbaa !1
  %800 = load i32, i32* %count1194, align 4, !tbaa !22
  %cmp1198 = icmp slt i32 %800, 0
  br i1 %cmp1198, label %if.then.1210, label %lor.lhs.false.1200

lor.lhs.false.1200:                               ; preds = %sw.bb.1192
  %801 = load i32, i32* %count1194, align 4, !tbaa !22
  %conv1201 = sext i32 %801 to i64
  %802 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr1202 = getelementptr inbounds i32, i32* %802, i64 1
  %arraydecay1203 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast1204 = ptrtoint i32* %add.ptr1202 to i64
  %sub.ptr.rhs.cast1205 = ptrtoint i32* %arraydecay1203 to i64
  %sub.ptr.sub1206 = sub i64 %sub.ptr.lhs.cast1204, %sub.ptr.rhs.cast1205
  %sub.ptr.div1207 = sdiv exact i64 %sub.ptr.sub1206, 4
  %cmp1208 = icmp sgt i64 %conv1201, %sub.ptr.div1207
  br i1 %cmp1208, label %if.then.1210, label %if.end.1211

if.then.1210:                                     ; preds = %lor.lhs.false.1200, %sw.bb.1192
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1235

if.end.1211:                                      ; preds = %lor.lhs.false.1200
  %803 = load i32, i32* %count1194, align 4, !tbaa !22
  %cmp1212 = icmp eq i32 %803, 0
  br i1 %cmp1212, label %if.then.1214, label %if.end.1215

if.then.1214:                                     ; preds = %if.end.1211
  store i32 105, i32* %cleanup.dest.slot
  br label %cleanup.1235

if.end.1215:                                      ; preds = %if.end.1211
  %804 = load i32, i32* %distance, align 4, !tbaa !22
  %cmp1216 = icmp slt i32 %804, 0
  br i1 %cmp1216, label %if.then.1218, label %if.end.1221

if.then.1218:                                     ; preds = %if.end.1215
  %805 = load i32, i32* %count1194, align 4, !tbaa !22
  %806 = load i32, i32* %distance, align 4, !tbaa !22
  %sub1219 = sub nsw i32 0, %806
  %807 = load i32, i32* %count1194, align 4, !tbaa !22
  %rem = srem i32 %sub1219, %807
  %sub1220 = sub nsw i32 %805, %rem
  store i32 %sub1220, i32* %distance, align 4, !tbaa !22
  br label %if.end.1221

if.end.1221:                                      ; preds = %if.then.1218, %if.end.1215
  %808 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr1222 = getelementptr inbounds i32, i32* %808, i64 1
  %809 = load i32, i32* %count1194, align 4, !tbaa !22
  %idx.ext1223 = sext i32 %809 to i64
  %idx.neg1224 = sub i64 0, %idx.ext1223
  %add.ptr1225 = getelementptr inbounds i32, i32* %add.ptr1222, i64 %idx.neg1224
  store i32* %add.ptr1225, i32** %bot, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.1221
  %810 = load i32, i32* %distance, align 4, !tbaa !22
  %dec1226 = add nsw i32 %810, -1
  store i32 %dec1226, i32* %distance, align 4, !tbaa !22
  %cmp1227 = icmp sge i32 %dec1226, 0
  br i1 %cmp1227, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %811 = bitcast i32* %top1229 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %811) #1
  %812 = load i32*, i32** %csp, align 8, !tbaa !1
  %813 = load i32, i32* %812, align 4, !tbaa !22
  store i32 %813, i32* %top1229, align 4, !tbaa !22
  %814 = load i32*, i32** %bot, align 8, !tbaa !1
  %add.ptr1230 = getelementptr inbounds i32, i32* %814, i64 1
  %815 = bitcast i32* %add.ptr1230 to i8*
  %816 = load i32*, i32** %bot, align 8, !tbaa !1
  %817 = bitcast i32* %816 to i8*
  %818 = load i32, i32* %count1194, align 4, !tbaa !22
  %sub1231 = sub nsw i32 %818, 1
  %conv1232 = sext i32 %sub1231 to i64
  %mul1233 = mul i64 %conv1232, 4
  %call1234 = call i8* @memmove(i8* %815, i8* %817, i64 %mul1233) #6
  %819 = load i32, i32* %top1229, align 4, !tbaa !22
  %820 = load i32*, i32** %bot, align 8, !tbaa !1
  store i32 %819, i32* %820, align 4, !tbaa !22
  %821 = bitcast i32* %top1229 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %821) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1235

cleanup.1235:                                     ; preds = %while.end, %if.then.1214, %if.then.1210
  %822 = bitcast i32** %bot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %822) #1
  %823 = bitcast i32* %count1194 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %823) #1
  %824 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.end(i64 4, i8* %824) #1
  %cleanup.dest.1238 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1238, label %cleanup.1441 [
    i32 0, label %cleanup.cont.1239
    i32 105, label %sw.epilog.1437
  ]

cleanup.cont.1239:                                ; preds = %cleanup.1235
  br label %sw.epilog.1437

sw.bb.1240:                                       ; preds = %cond.end.978
  %825 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1241 = getelementptr inbounds i32, i32* %825, i64 6
  store i32 128, i32* %arrayidx1241, align 4, !tbaa !22
  %826 = load i32*, i32** %csp, align 8, !tbaa !1
  %827 = load i32, i32* %826, align 4, !tbaa !22
  %828 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1242 = getelementptr inbounds i32, i32* %828, i64 4
  store i32 %827, i32* %arrayidx1242, align 4, !tbaa !22
  %829 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1243 = getelementptr inbounds i32, i32* %829, i64 5
  store i32 0, i32* %arrayidx1243, align 4, !tbaa !22
  %830 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1244 = getelementptr inbounds i32, i32* %830, i64 -1
  %831 = load i32, i32* %arrayidx1244, align 4, !tbaa !22
  %832 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1245 = getelementptr inbounds i32, i32* %832, i64 2
  store i32 %831, i32* %arrayidx1245, align 4, !tbaa !22
  %833 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1246 = getelementptr inbounds i32, i32* %833, i64 -4
  %834 = load i32, i32* %arrayidx1246, align 4, !tbaa !22
  %sub1247 = sub nsw i32 0, %834
  %835 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1248 = getelementptr inbounds i32, i32* %835, i64 3
  store i32 %sub1247, i32* %arrayidx1248, align 4, !tbaa !22
  %836 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1249 = getelementptr inbounds i32, i32* %836, i64 -2
  %837 = load i32, i32* %arrayidx1249, align 4, !tbaa !22
  %838 = load i32*, i32** %csp, align 8, !tbaa !1
  store i32 %837, i32* %838, align 4, !tbaa !22
  %839 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1250 = getelementptr inbounds i32, i32* %839, i64 1
  store i32 0, i32* %arrayidx1250, align 4, !tbaa !22
  %840 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1251 = getelementptr inbounds i32, i32* %840, i64 -3
  %841 = load i32, i32* %arrayidx1251, align 4, !tbaa !22
  %842 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1252 = getelementptr inbounds i32, i32* %842, i64 -2
  store i32 %841, i32* %arrayidx1252, align 4, !tbaa !22
  %843 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1253 = getelementptr inbounds i32, i32* %843, i64 -1
  store i32 0, i32* %arrayidx1253, align 4, !tbaa !22
  %844 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1254 = getelementptr inbounds i32, i32* %844, i64 -4
  %845 = load i32, i32* %arrayidx1254, align 4, !tbaa !22
  %846 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1255 = getelementptr inbounds i32, i32* %846, i64 -3
  store i32 %845, i32* %arrayidx1255, align 4, !tbaa !22
  %847 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1256 = getelementptr inbounds i32, i32* %847, i64 -5
  %848 = load i32, i32* %arrayidx1256, align 4, !tbaa !22
  %849 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1257 = getelementptr inbounds i32, i32* %849, i64 -4
  store i32 %848, i32* %arrayidx1257, align 4, !tbaa !22
  %850 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1258 = getelementptr inbounds i32, i32* %850, i64 -5
  store i32 0, i32* %arrayidx1258, align 4, !tbaa !22
  %851 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr1259 = getelementptr inbounds i32, i32* %851, i64 6
  store i32* %add.ptr1259, i32** %csp, align 8, !tbaa !1
  br label %flex

sw.bb.1260:                                       ; preds = %cond.end.978
  %852 = load i32*, i32** %csp, align 8, !tbaa !1
  %853 = load i32, i32* %852, align 4, !tbaa !22
  %div1261 = sdiv i32 %853, 100
  store i32 %div1261, i32* %852, align 4, !tbaa !22
  br label %flex

flex:                                             ; preds = %if.end.1434, %sw.bb.1375, %sw.bb.1260, %sw.bb.1240
  %854 = bitcast i32* %x_join to i8*
  call void @llvm.lifetime.start(i64 4, i8* %854) #1
  %855 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1262 = getelementptr inbounds i32, i32* %855, i64 -12
  %856 = load i32, i32* %arrayidx1262, align 4, !tbaa !22
  %857 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1263 = getelementptr inbounds i32, i32* %857, i64 -10
  %858 = load i32, i32* %arrayidx1263, align 4, !tbaa !22
  %add1264 = add nsw i32 %856, %858
  %859 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1265 = getelementptr inbounds i32, i32* %859, i64 -8
  %860 = load i32, i32* %arrayidx1265, align 4, !tbaa !22
  %add1266 = add nsw i32 %add1264, %860
  store i32 %add1266, i32* %x_join, align 4, !tbaa !22
  %861 = bitcast i32* %y_join to i8*
  call void @llvm.lifetime.start(i64 4, i8* %861) #1
  %862 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1267 = getelementptr inbounds i32, i32* %862, i64 -11
  %863 = load i32, i32* %arrayidx1267, align 4, !tbaa !22
  %864 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1268 = getelementptr inbounds i32, i32* %864, i64 -9
  %865 = load i32, i32* %arrayidx1268, align 4, !tbaa !22
  %add1269 = add nsw i32 %863, %865
  %866 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1270 = getelementptr inbounds i32, i32* %866, i64 -7
  %867 = load i32, i32* %arrayidx1270, align 4, !tbaa !22
  %add1271 = add nsw i32 %add1269, %867
  store i32 %add1271, i32* %y_join, align 4, !tbaa !22
  %868 = bitcast i32* %x_end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %868) #1
  %869 = load i32, i32* %x_join, align 4, !tbaa !22
  %870 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1272 = getelementptr inbounds i32, i32* %870, i64 -6
  %871 = load i32, i32* %arrayidx1272, align 4, !tbaa !22
  %add1273 = add nsw i32 %869, %871
  %872 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1274 = getelementptr inbounds i32, i32* %872, i64 -4
  %873 = load i32, i32* %arrayidx1274, align 4, !tbaa !22
  %add1275 = add nsw i32 %add1273, %873
  %874 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1276 = getelementptr inbounds i32, i32* %874, i64 -2
  %875 = load i32, i32* %arrayidx1276, align 4, !tbaa !22
  %add1277 = add nsw i32 %add1275, %875
  store i32 %add1277, i32* %x_end, align 4, !tbaa !22
  %876 = bitcast i32* %y_end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %876) #1
  %877 = load i32, i32* %y_join, align 4, !tbaa !22
  %878 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1278 = getelementptr inbounds i32, i32* %878, i64 -5
  %879 = load i32, i32* %arrayidx1278, align 4, !tbaa !22
  %add1279 = add nsw i32 %877, %879
  %880 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1280 = getelementptr inbounds i32, i32* %880, i64 -3
  %881 = load i32, i32* %arrayidx1280, align 4, !tbaa !22
  %add1281 = add nsw i32 %add1279, %881
  %882 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1282 = getelementptr inbounds i32, i32* %882, i64 -1
  %883 = load i32, i32* %arrayidx1282, align 4, !tbaa !22
  %add1283 = add nsw i32 %add1281, %883
  store i32 %add1283, i32* %y_end, align 4, !tbaa !22
  %884 = bitcast %struct.gs_point_s* %join to i8*
  call void @llvm.lifetime.start(i64 16, i8* %884) #1
  %885 = bitcast %struct.gs_point_s* %end to i8*
  call void @llvm.lifetime.start(i64 16, i8* %885) #1
  %886 = bitcast double* %flex_depth to i8*
  call void @llvm.lifetime.start(i64 8, i8* %886) #1
  %887 = load i32, i32* %x_join, align 4, !tbaa !22
  %conv1284 = sitofp i32 %887 to double
  %mul1285 = fmul double %conv1284, 3.906250e-03
  %888 = load i32, i32* %y_join, align 4, !tbaa !22
  %conv1286 = sitofp i32 %888 to double
  %mul1287 = fmul double %conv1286, 3.906250e-03
  %889 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pis1288 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %889, i32 0, i32 2
  %890 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1288, align 8, !tbaa !28
  %ctm1289 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %890, i32 0, i32 5
  %891 = bitcast %struct.gs_matrix_fixed_s* %ctm1289 to %struct.gs_matrix_s*
  %call1290 = call i32 @gs_distance_transform(double %mul1285, double %mul1287, %struct.gs_matrix_s* %891, %struct.gs_point_s* %join) #5
  store i32 %call1290, i32* %code, align 4, !tbaa !22
  %cmp1291 = icmp slt i32 %call1290, 0
  br i1 %cmp1291, label %if.then.1303, label %lor.lhs.false.1293

lor.lhs.false.1293:                               ; preds = %flex
  %892 = load i32, i32* %x_end, align 4, !tbaa !22
  %conv1294 = sitofp i32 %892 to double
  %mul1295 = fmul double %conv1294, 3.906250e-03
  %893 = load i32, i32* %y_end, align 4, !tbaa !22
  %conv1296 = sitofp i32 %893 to double
  %mul1297 = fmul double %conv1296, 3.906250e-03
  %894 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pis1298 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %894, i32 0, i32 2
  %895 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1298, align 8, !tbaa !28
  %ctm1299 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %895, i32 0, i32 5
  %896 = bitcast %struct.gs_matrix_fixed_s* %ctm1299 to %struct.gs_matrix_s*
  %call1300 = call i32 @gs_distance_transform(double %mul1295, double %mul1297, %struct.gs_matrix_s* %896, %struct.gs_point_s* %end) #5
  store i32 %call1300, i32* %code, align 4, !tbaa !22
  %cmp1301 = icmp slt i32 %call1300, 0
  br i1 %cmp1301, label %if.then.1303, label %if.end.1304

if.then.1303:                                     ; preds = %lor.lhs.false.1293, %flex
  %897 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %897, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1364

if.end.1304:                                      ; preds = %lor.lhs.false.1293
  %y1305 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end, i32 0, i32 1
  %898 = load double, double* %y1305, align 8, !tbaa !74
  %cmp1306 = fcmp olt double %898, 0.000000e+00
  br i1 %cmp1306, label %cond.true.1308, label %cond.false.1311

cond.true.1308:                                   ; preds = %if.end.1304
  %y1309 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end, i32 0, i32 1
  %899 = load double, double* %y1309, align 8, !tbaa !74
  %sub1310 = fsub double -0.000000e+00, %899
  br label %cond.end.1313

cond.false.1311:                                  ; preds = %if.end.1304
  %y1312 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end, i32 0, i32 1
  %900 = load double, double* %y1312, align 8, !tbaa !74
  br label %cond.end.1313

cond.end.1313:                                    ; preds = %cond.false.1311, %cond.true.1308
  %cond1314 = phi double [ %sub1310, %cond.true.1308 ], [ %900, %cond.false.1311 ]
  %x1315 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end, i32 0, i32 0
  %901 = load double, double* %x1315, align 8, !tbaa !75
  %cmp1316 = fcmp olt double %901, 0.000000e+00
  br i1 %cmp1316, label %cond.true.1318, label %cond.false.1321

cond.true.1318:                                   ; preds = %cond.end.1313
  %x1319 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end, i32 0, i32 0
  %902 = load double, double* %x1319, align 8, !tbaa !75
  %sub1320 = fsub double -0.000000e+00, %902
  br label %cond.end.1323

cond.false.1321:                                  ; preds = %cond.end.1313
  %x1322 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end, i32 0, i32 0
  %903 = load double, double* %x1322, align 8, !tbaa !75
  br label %cond.end.1323

cond.end.1323:                                    ; preds = %cond.false.1321, %cond.true.1318
  %cond1324 = phi double [ %sub1320, %cond.true.1318 ], [ %903, %cond.false.1321 ]
  %cmp1325 = fcmp ogt double %cond1314, %cond1324
  br i1 %cmp1325, label %if.then.1327, label %if.else.1329

if.then.1327:                                     ; preds = %cond.end.1323
  %x1328 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %join, i32 0, i32 0
  %904 = load double, double* %x1328, align 8, !tbaa !75
  store double %904, double* %flex_depth, align 8, !tbaa !73
  br label %if.end.1331

if.else.1329:                                     ; preds = %cond.end.1323
  %y1330 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %join, i32 0, i32 1
  %905 = load double, double* %y1330, align 8, !tbaa !74
  store double %905, double* %flex_depth, align 8, !tbaa !73
  br label %if.end.1331

if.end.1331:                                      ; preds = %if.else.1329, %if.then.1327
  %906 = load double, double* %flex_depth, align 8, !tbaa !73
  %call1332 = call double @fabs(double %906) #7
  %907 = load i32*, i32** %csp, align 8, !tbaa !1
  %908 = load i32, i32* %907, align 4, !tbaa !22
  %conv1333 = sitofp i32 %908 to double
  %mul1334 = fmul double %conv1333, 3.906250e-03
  %cmp1335 = fcmp olt double %call1332, %mul1334
  br i1 %cmp1335, label %if.then.1337, label %if.else.1339

if.then.1337:                                     ; preds = %if.end.1331
  %909 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %910 = load i32, i32* %x_end, align 4, !tbaa !22
  %911 = load i32, i32* %y_end, align 4, !tbaa !22
  %call1338 = call i32 @t1_hinter__rlineto(%struct.t1_hinter_s* %909, i32 %910, i32 %911) #5
  store i32 %call1338, i32* %code, align 4, !tbaa !22
  br label %if.end.1358

if.else.1339:                                     ; preds = %if.end.1331
  %912 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %913 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1340 = getelementptr inbounds i32, i32* %913, i64 -12
  %914 = load i32, i32* %arrayidx1340, align 4, !tbaa !22
  %915 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1341 = getelementptr inbounds i32, i32* %915, i64 -11
  %916 = load i32, i32* %arrayidx1341, align 4, !tbaa !22
  %917 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1342 = getelementptr inbounds i32, i32* %917, i64 -10
  %918 = load i32, i32* %arrayidx1342, align 4, !tbaa !22
  %919 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1343 = getelementptr inbounds i32, i32* %919, i64 -9
  %920 = load i32, i32* %arrayidx1343, align 4, !tbaa !22
  %921 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1344 = getelementptr inbounds i32, i32* %921, i64 -8
  %922 = load i32, i32* %arrayidx1344, align 4, !tbaa !22
  %923 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1345 = getelementptr inbounds i32, i32* %923, i64 -7
  %924 = load i32, i32* %arrayidx1345, align 4, !tbaa !22
  %call1346 = call i32 @t1_hinter__rcurveto(%struct.t1_hinter_s* %912, i32 %914, i32 %916, i32 %918, i32 %920, i32 %922, i32 %924) #5
  store i32 %call1346, i32* %code, align 4, !tbaa !22
  %925 = load i32, i32* %code, align 4, !tbaa !22
  %cmp1347 = icmp slt i32 %925, 0
  br i1 %cmp1347, label %if.then.1349, label %if.end.1350

if.then.1349:                                     ; preds = %if.else.1339
  %926 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %926, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1364

if.end.1350:                                      ; preds = %if.else.1339
  %927 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %928 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1351 = getelementptr inbounds i32, i32* %928, i64 -6
  %929 = load i32, i32* %arrayidx1351, align 4, !tbaa !22
  %930 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1352 = getelementptr inbounds i32, i32* %930, i64 -5
  %931 = load i32, i32* %arrayidx1352, align 4, !tbaa !22
  %932 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1353 = getelementptr inbounds i32, i32* %932, i64 -4
  %933 = load i32, i32* %arrayidx1353, align 4, !tbaa !22
  %934 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1354 = getelementptr inbounds i32, i32* %934, i64 -3
  %935 = load i32, i32* %arrayidx1354, align 4, !tbaa !22
  %936 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1355 = getelementptr inbounds i32, i32* %936, i64 -2
  %937 = load i32, i32* %arrayidx1355, align 4, !tbaa !22
  %938 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1356 = getelementptr inbounds i32, i32* %938, i64 -1
  %939 = load i32, i32* %arrayidx1356, align 4, !tbaa !22
  %call1357 = call i32 @t1_hinter__rcurveto(%struct.t1_hinter_s* %927, i32 %929, i32 %931, i32 %933, i32 %935, i32 %937, i32 %939) #5
  store i32 %call1357, i32* %code, align 4, !tbaa !22
  br label %if.end.1358

if.end.1358:                                      ; preds = %if.end.1350, %if.then.1337
  %940 = load i32, i32* %code, align 4, !tbaa !22
  %cmp1359 = icmp slt i32 %940, 0
  br i1 %cmp1359, label %if.then.1361, label %if.end.1362

if.then.1361:                                     ; preds = %if.end.1358
  %941 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %941, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1364

if.end.1362:                                      ; preds = %if.end.1358
  %942 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr1363 = getelementptr inbounds i32, i32* %942, i64 -13
  store i32* %add.ptr1363, i32** %csp, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1364

cleanup.1364:                                     ; preds = %if.end.1362, %if.then.1361, %if.then.1349, %if.then.1303
  %943 = bitcast double* %flex_depth to i8*
  call void @llvm.lifetime.end(i64 8, i8* %943) #1
  %944 = bitcast %struct.gs_point_s* %end to i8*
  call void @llvm.lifetime.end(i64 16, i8* %944) #1
  %945 = bitcast %struct.gs_point_s* %join to i8*
  call void @llvm.lifetime.end(i64 16, i8* %945) #1
  %946 = bitcast i32* %y_end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %946) #1
  %947 = bitcast i32* %x_end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %947) #1
  %948 = bitcast i32* %y_join to i8*
  call void @llvm.lifetime.end(i64 4, i8* %948) #1
  %949 = bitcast i32* %x_join to i8*
  call void @llvm.lifetime.end(i64 4, i8* %949) #1
  %cleanup.dest.1371 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1371, label %cleanup.1441 [
    i32 0, label %cleanup.cont.1372
  ]

cleanup.cont.1372:                                ; preds = %cleanup.1364
  %arraydecay1373 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr1374 = getelementptr inbounds i32, i32* %arraydecay1373, i64 -1
  store i32* %add.ptr1374, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.1441

sw.bb.1375:                                       ; preds = %cond.end.978
  %950 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1376 = getelementptr inbounds i32, i32* %950, i64 4
  store i32 128, i32* %arrayidx1376, align 4, !tbaa !22
  %951 = load i32*, i32** %csp, align 8, !tbaa !1
  %952 = load i32, i32* %951, align 4, !tbaa !22
  %953 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1377 = getelementptr inbounds i32, i32* %953, i64 2
  store i32 %952, i32* %arrayidx1377, align 4, !tbaa !22
  %954 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1378 = getelementptr inbounds i32, i32* %954, i64 -7
  %955 = load i32, i32* %arrayidx1378, align 4, !tbaa !22
  %956 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1379 = getelementptr inbounds i32, i32* %956, i64 -5
  %957 = load i32, i32* %arrayidx1379, align 4, !tbaa !22
  %add1380 = add nsw i32 %955, %957
  %958 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1381 = getelementptr inbounds i32, i32* %958, i64 -1
  %959 = load i32, i32* %arrayidx1381, align 4, !tbaa !22
  %add1382 = add nsw i32 %add1380, %959
  %sub1383 = sub nsw i32 0, %add1382
  %960 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1384 = getelementptr inbounds i32, i32* %960, i64 3
  store i32 %sub1383, i32* %arrayidx1384, align 4, !tbaa !22
  %961 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1385 = getelementptr inbounds i32, i32* %961, i64 -2
  %962 = load i32, i32* %arrayidx1385, align 4, !tbaa !22
  %963 = load i32*, i32** %csp, align 8, !tbaa !1
  store i32 %962, i32* %963, align 4, !tbaa !22
  %964 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1386 = getelementptr inbounds i32, i32* %964, i64 -1
  %965 = load i32, i32* %arrayidx1386, align 4, !tbaa !22
  %966 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1387 = getelementptr inbounds i32, i32* %966, i64 1
  store i32 %965, i32* %arrayidx1387, align 4, !tbaa !22
  %967 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1388 = getelementptr inbounds i32, i32* %967, i64 -3
  %968 = load i32, i32* %arrayidx1388, align 4, !tbaa !22
  %969 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1389 = getelementptr inbounds i32, i32* %969, i64 -2
  store i32 %968, i32* %arrayidx1389, align 4, !tbaa !22
  %970 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1390 = getelementptr inbounds i32, i32* %970, i64 -1
  store i32 0, i32* %arrayidx1390, align 4, !tbaa !22
  %971 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1391 = getelementptr inbounds i32, i32* %971, i64 -3
  store i32 0, i32* %arrayidx1391, align 4, !tbaa !22
  %972 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr1392 = getelementptr inbounds i32, i32* %972, i64 4
  store i32* %add.ptr1392, i32** %csp, align 8, !tbaa !1
  br label %flex

sw.bb.1393:                                       ; preds = %cond.end.978
  %973 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %973) #1
  %974 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1394 = getelementptr inbounds i32, i32* %974, i64 -10
  %975 = load i32, i32* %arrayidx1394, align 4, !tbaa !22
  %976 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1395 = getelementptr inbounds i32, i32* %976, i64 -8
  %977 = load i32, i32* %arrayidx1395, align 4, !tbaa !22
  %add1396 = add nsw i32 %975, %977
  %978 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1397 = getelementptr inbounds i32, i32* %978, i64 -6
  %979 = load i32, i32* %arrayidx1397, align 4, !tbaa !22
  %add1398 = add nsw i32 %add1396, %979
  %980 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1399 = getelementptr inbounds i32, i32* %980, i64 -4
  %981 = load i32, i32* %arrayidx1399, align 4, !tbaa !22
  %add1400 = add nsw i32 %add1398, %981
  %982 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1401 = getelementptr inbounds i32, i32* %982, i64 -2
  %983 = load i32, i32* %arrayidx1401, align 4, !tbaa !22
  %add1402 = add nsw i32 %add1400, %983
  store i32 %add1402, i32* %dx, align 4, !tbaa !22
  %984 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %984) #1
  %985 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1403 = getelementptr inbounds i32, i32* %985, i64 -9
  %986 = load i32, i32* %arrayidx1403, align 4, !tbaa !22
  %987 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1404 = getelementptr inbounds i32, i32* %987, i64 -7
  %988 = load i32, i32* %arrayidx1404, align 4, !tbaa !22
  %add1405 = add nsw i32 %986, %988
  %989 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1406 = getelementptr inbounds i32, i32* %989, i64 -5
  %990 = load i32, i32* %arrayidx1406, align 4, !tbaa !22
  %add1407 = add nsw i32 %add1405, %990
  %991 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1408 = getelementptr inbounds i32, i32* %991, i64 -3
  %992 = load i32, i32* %arrayidx1408, align 4, !tbaa !22
  %add1409 = add nsw i32 %add1407, %992
  %993 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1410 = getelementptr inbounds i32, i32* %993, i64 -1
  %994 = load i32, i32* %arrayidx1410, align 4, !tbaa !22
  %add1411 = add nsw i32 %add1409, %994
  store i32 %add1411, i32* %dy, align 4, !tbaa !22
  %995 = load i32, i32* %dx, align 4, !tbaa !22
  %cmp1412 = icmp slt i32 %995, 0
  br i1 %cmp1412, label %cond.true.1414, label %cond.false.1416

cond.true.1414:                                   ; preds = %sw.bb.1393
  %996 = load i32, i32* %dx, align 4, !tbaa !22
  %sub1415 = sub nsw i32 0, %996
  br label %cond.end.1417

cond.false.1416:                                  ; preds = %sw.bb.1393
  %997 = load i32, i32* %dx, align 4, !tbaa !22
  br label %cond.end.1417

cond.end.1417:                                    ; preds = %cond.false.1416, %cond.true.1414
  %cond1418 = phi i32 [ %sub1415, %cond.true.1414 ], [ %997, %cond.false.1416 ]
  %998 = load i32, i32* %dy, align 4, !tbaa !22
  %cmp1419 = icmp slt i32 %998, 0
  br i1 %cmp1419, label %cond.true.1421, label %cond.false.1423

cond.true.1421:                                   ; preds = %cond.end.1417
  %999 = load i32, i32* %dy, align 4, !tbaa !22
  %sub1422 = sub nsw i32 0, %999
  br label %cond.end.1424

cond.false.1423:                                  ; preds = %cond.end.1417
  %1000 = load i32, i32* %dy, align 4, !tbaa !22
  br label %cond.end.1424

cond.end.1424:                                    ; preds = %cond.false.1423, %cond.true.1421
  %cond1425 = phi i32 [ %sub1422, %cond.true.1421 ], [ %1000, %cond.false.1423 ]
  %cmp1426 = icmp sgt i32 %cond1418, %cond1425
  br i1 %cmp1426, label %if.then.1428, label %if.else.1431

if.then.1428:                                     ; preds = %cond.end.1424
  %1001 = load i32, i32* %dy, align 4, !tbaa !22
  %sub1429 = sub nsw i32 0, %1001
  %1002 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1430 = getelementptr inbounds i32, i32* %1002, i64 1
  store i32 %sub1429, i32* %arrayidx1430, align 4, !tbaa !22
  br label %if.end.1434

if.else.1431:                                     ; preds = %cond.end.1424
  %1003 = load i32*, i32** %csp, align 8, !tbaa !1
  %1004 = load i32, i32* %1003, align 4, !tbaa !22
  %1005 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1432 = getelementptr inbounds i32, i32* %1005, i64 1
  store i32 %1004, i32* %arrayidx1432, align 4, !tbaa !22
  %1006 = load i32, i32* %dx, align 4, !tbaa !22
  %sub1433 = sub nsw i32 0, %1006
  %1007 = load i32*, i32** %csp, align 8, !tbaa !1
  store i32 %sub1433, i32* %1007, align 4, !tbaa !22
  br label %if.end.1434

if.end.1434:                                      ; preds = %if.else.1431, %if.then.1428
  %1008 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1008) #1
  %1009 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1009) #1
  %1010 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx1435 = getelementptr inbounds i32, i32* %1010, i64 2
  store i32 128, i32* %arrayidx1435, align 4, !tbaa !22
  %1011 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr1436 = getelementptr inbounds i32, i32* %1011, i64 2
  store i32* %add.ptr1436, i32** %csp, align 8, !tbaa !1
  br label %flex

sw.epilog.1437:                                   ; preds = %cond.end.978, %cleanup.cont.1239, %cleanup.1235, %cond.end.1190, %sw.bb.1175, %do.end.1172, %if.end.1163, %cond.end.1150, %do.end.1131, %if.end.1121, %sw.bb.1109, %sw.bb.1102, %sw.bb.1100, %sw.bb.1092, %sw.bb.1090, %for.end.1088, %sw.bb.1051, %sw.bb.1047, %sw.bb.1043, %if.end.1042, %for.end.1035, %sw.bb.1000, %sw.bb.993, %sw.bb.981
  br label %sw.epilog.1440

sw.bb.1438:                                       ; preds = %if.end.233, %if.end.233
  br label %sw.default.1439

sw.default.1439:                                  ; preds = %if.end.233, %sw.bb.1438
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1441

sw.epilog.1440:                                   ; preds = %sw.epilog.1437, %cleanup.cont.747
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1441

cleanup.1441:                                     ; preds = %sw.epilog.1440, %sw.default.1439, %cleanup.cont.1372, %cleanup.1364, %cleanup.1235, %if.then.1169, %if.then.1128, %cleanup.950, %cleanup.894, %cleanup.856, %if.then.810, %if.then.790, %do.end.769, %if.then.753, %cleanup.744, %if.then.664, %cleanup.cont.645, %cleanup.643, %if.then.606, %for.end.598, %cleanup.543, %if.then.476, %if.then.442, %if.end.436, %if.then.427, %if.then.421, %if.then.407, %if.then.400, %if.then.383, %if.end.372, %if.then.371, %if.then.355, %if.then.340, %if.then.318, %pp, %if.then.294, %if.then.280, %if.then.266, %sw.bb.256, %sw.bb.253, %if.end.245, %if.then.243, %sw.bb.234, %do.end.232, %if.else.226, %cleanup.223, %cleanup, %if.then.99
  %1012 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1012) #1
  %cleanup.dest.1442 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1442, label %cleanup.1444 [
    i32 0, label %cleanup.cont.1443
    i32 12, label %for.cond.77
    i32 10, label %top
    i32 6, label %call.57
    i32 5, label %cont
  ]

cleanup.cont.1443:                                ; preds = %cleanup.1441
  br label %for.cond.77

cleanup.1444:                                     ; preds = %cleanup.1441, %if.then.74, %if.then.55, %if.then.32, %if.then
  %1013 = bitcast [1 x %struct.anon.9]* %Registry to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1013) #1
  %1014 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1014) #1
  %1015 = bitcast i32* %vertical to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1015) #1
  %1016 = bitcast i32** %ap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1016) #1
  %1017 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1017) #1
  %1018 = bitcast i16* %state to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1018) #1
  %1019 = bitcast i8** %cip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1019) #1
  %1020 = bitcast %struct.ip_state_t** %ipsp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1020) #1
  %1021 = bitcast i32** %csp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1021) #1
  %1022 = bitcast [48 x i32]* %cstack to i8*
  call void @llvm.lifetime.end(i64 192, i8* %1022) #1
  %1023 = bitcast i32* %encrypted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1023) #1
  %1024 = bitcast %struct.t1_hinter_s** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1024) #1
  %1025 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1025) #1
  %1026 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1026) #1
  %1027 = load i32, i32* %retval
  ret i32 %1027
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @t1_hinter__init(%struct.t1_hinter_s*, %struct.gx_path_s*) #2

declare void @gs_type1_finish_init(%struct.gs_type1_state_s*) #2

declare i32 @t1_hinter__set_mapping(%struct.t1_hinter_s*, %struct.gs_matrix_fixed_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*, i32, i32, i32, i32, i32, i32, i32) #2

declare i32 @gs_currentaligntopixels(%struct.gs_font_dir_s*) #2

declare i32 @t1_hinter__set_font_data(%struct.t1_hinter_s*, i32, %struct.gs_type1_data_s*, i32, i32) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @gs_glyph_data_free(%struct.gs_glyph_data_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @type2_sbw(%struct.gs_type1_state_s* %pcis, i32* %csp, i32* %cstack, %struct.ip_state_t* %ipsp, i32 %explicit_width) #0 {
entry:
  %retval = alloca i32, align 4
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %csp.addr = alloca i32*, align 8
  %cstack.addr = alloca i32*, align 8
  %ipsp.addr = alloca %struct.ip_state_t*, align 8
  %explicit_width.addr = alloca i32, align 4
  %h = alloca %struct.t1_hinter_s*, align 8
  %sbx = alloca i32, align 4
  %sby = alloca i32, align 4
  %wx = alloca i32, align 4
  %wy = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store i32* %csp, i32** %csp.addr, align 8, !tbaa !1
  store i32* %cstack, i32** %cstack.addr, align 8, !tbaa !1
  store %struct.ip_state_t* %ipsp, %struct.ip_state_t** %ipsp.addr, align 8, !tbaa !1
  store i32 %explicit_width, i32* %explicit_width.addr, align 4, !tbaa !22
  %0 = bitcast %struct.t1_hinter_s** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %h1 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %1, i32 0, i32 0
  store %struct.t1_hinter_s* %h1, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %2 = bitcast i32* %sbx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %sbx, align 4, !tbaa !22
  %3 = bitcast i32* %sby to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %sby, align 4, !tbaa !22
  %4 = bitcast i32* %wx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %wy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %wy, align 4, !tbaa !22
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %explicit_width.addr, align 4, !tbaa !22
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32*, i32** %cstack.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx, align 4, !tbaa !22
  %10 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %10, i32 0, i32 1
  %11 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %11, i32 0, i32 29
  %nominalWidthX = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 9
  %12 = load i32, i32* %nominalWidthX, align 4, !tbaa !76
  %add = add nsw i32 %9, %12
  store i32 %add, i32* %wx, align 4, !tbaa !22
  %13 = load i32*, i32** %cstack.addr, align 8, !tbaa !1
  %14 = bitcast i32* %13 to i8*
  %15 = load i32*, i32** %cstack.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i32, i32* %15, i64 1
  %16 = bitcast i32* %add.ptr to i8*
  %17 = load i32*, i32** %csp.addr, align 8, !tbaa !1
  %18 = load i32*, i32** %cstack.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i32* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %mul = mul i64 %sub.ptr.div, 4
  %call = call i8* @memmove(i8* %14, i8* %16, i64 %mul) #6
  %19 = load i32*, i32** %csp.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %19, i32 -1
  store i32* %incdec.ptr, i32** %csp.addr, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont2 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %20, i32 0, i32 1
  %21 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont2, align 8, !tbaa !5
  %data3 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %21, i32 0, i32 29
  %defaultWidthX = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data3, i32 0, i32 8
  %22 = load i32, i32* %defaultWidthX, align 4, !tbaa !77
  store i32 %22, i32* %wx, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %seac_accent = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %23, i32 0, i32 23
  %24 = load i32, i32* %seac_accent, align 4, !tbaa !62
  %cmp = icmp slt i32 %24, 0
  br i1 %cmp, label %if.then.4, label %if.end.23

if.then.4:                                        ; preds = %if.end
  %25 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %sb_set = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %25, i32 0, i32 17
  %26 = load i32, i32* %sb_set, align 4, !tbaa !78
  %tobool5 = icmp ne i32 %26, 0
  br i1 %tobool5, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %if.then.4
  %27 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %lsb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %27, i32 0, i32 21
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb, i32 0, i32 0
  %28 = load i32, i32* %x, align 4, !tbaa !79
  %29 = load i32, i32* %sbx, align 4, !tbaa !22
  %sub = sub nsw i32 %28, %29
  %30 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin_offset = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %30, i32 0, i32 31
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin_offset, i32 0, i32 0
  store i32 %sub, i32* %x7, align 4, !tbaa !64
  %31 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %lsb8 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %31, i32 0, i32 21
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb8, i32 0, i32 1
  %32 = load i32, i32* %y, align 4, !tbaa !80
  %33 = load i32, i32* %sby, align 4, !tbaa !22
  %sub9 = sub nsw i32 %32, %33
  %34 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin_offset10 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %34, i32 0, i32 31
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin_offset10, i32 0, i32 1
  store i32 %sub9, i32* %y11, align 4, !tbaa !66
  %35 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %lsb12 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %35, i32 0, i32 21
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb12, i32 0, i32 0
  %36 = load i32, i32* %x13, align 4, !tbaa !79
  store i32 %36, i32* %sbx, align 4, !tbaa !22
  %37 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %lsb14 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %37, i32 0, i32 21
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb14, i32 0, i32 1
  %38 = load i32, i32* %y15, align 4, !tbaa !80
  store i32 %38, i32* %sby, align 4, !tbaa !22
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.6, %if.then.4
  %39 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width_set = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %39, i32 0, i32 18
  %40 = load i32, i32* %width_set, align 4, !tbaa !81
  %tobool17 = icmp ne i32 %40, 0
  br i1 %tobool17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end.16
  %41 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %41, i32 0, i32 22
  %x19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  %42 = load i32, i32* %x19, align 4, !tbaa !82
  store i32 %42, i32* %wx, align 4, !tbaa !22
  %43 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width20 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %43, i32 0, i32 22
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width20, i32 0, i32 1
  %44 = load i32, i32* %y21, align 4, !tbaa !83
  store i32 %44, i32* %wy, align 4, !tbaa !22
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %if.end.16
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  %45 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %46 = load i32, i32* %sbx, align 4, !tbaa !22
  %47 = load i32, i32* %sby, align 4, !tbaa !22
  %48 = load i32, i32* %wx, align 4, !tbaa !22
  %49 = load i32, i32* %wy, align 4, !tbaa !22
  %call24 = call i32 @t1_hinter__sbw(%struct.t1_hinter_s* %45, i32 %46, i32 %47, i32 %48, i32 %49) #5
  store i32 %call24, i32* %code, align 4, !tbaa !22
  %50 = load i32, i32* %code, align 4, !tbaa !22
  %cmp25 = icmp slt i32 %50, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  %51 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.23
  %52 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %53 = load i32, i32* %wx, align 4, !tbaa !22
  %call28 = call i32 @gs_type1_sbw(%struct.gs_type1_state_s* %52, i32 0, i32 0, i32 %53, i32 0) #5
  %54 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp.addr, align 8, !tbaa !1
  %ip = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %54, i32 0, i32 0
  %55 = load i8*, i8** %ip, align 8, !tbaa !55
  %incdec.ptr29 = getelementptr inbounds i8, i8* %55, i32 -1
  store i8* %incdec.ptr29, i8** %ip, align 8, !tbaa !55
  %56 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp.addr, align 8, !tbaa !1
  %dstate = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %56, i32 0, i32 2
  %57 = load i16, i16* %dstate, align 2, !tbaa !57
  %conv = zext i16 %57 to i32
  %sub30 = sub nsw i32 %conv, 22719
  %mul31 = mul nsw i32 %sub30, 27493
  %58 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp.addr, align 8, !tbaa !1
  %ip32 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %58, i32 0, i32 0
  %59 = load i8*, i8** %ip32, align 8, !tbaa !55
  %60 = load i8, i8* %59, align 1, !tbaa !54
  %conv33 = zext i8 %60 to i32
  %sub34 = sub nsw i32 %mul31, %conv33
  %conv35 = trunc i32 %sub34 to i16
  %61 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp.addr, align 8, !tbaa !1
  %dstate36 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %61, i32 0, i32 2
  store i16 %conv35, i16* %dstate36, align 2, !tbaa !57
  %62 = load i32*, i32** %csp.addr, align 8, !tbaa !1
  %add.ptr37 = getelementptr inbounds i32, i32* %62, i64 1
  %63 = load i32*, i32** %cstack.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast38 = ptrtoint i32* %add.ptr37 to i64
  %sub.ptr.rhs.cast39 = ptrtoint i32* %63 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %sub.ptr.div41 = sdiv exact i64 %sub.ptr.sub40, 4
  %conv42 = trunc i64 %sub.ptr.div41 to i32
  %64 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %os_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %64, i32 0, i32 13
  store i32 %conv42, i32* %os_count, align 4, !tbaa !47
  %65 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp.addr, align 8, !tbaa !1
  %66 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ipstack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %66, i32 0, i32 14
  %arrayidx43 = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack, i32 0, i64 0
  %sub.ptr.lhs.cast44 = ptrtoint %struct.ip_state_t* %65 to i64
  %sub.ptr.rhs.cast45 = ptrtoint %struct.ip_state_t* %arrayidx43 to i64
  %sub.ptr.sub46 = sub i64 %sub.ptr.lhs.cast44, %sub.ptr.rhs.cast45
  %sub.ptr.div47 = sdiv exact i64 %sub.ptr.sub46, 72
  %add48 = add nsw i64 %sub.ptr.div47, 1
  %conv49 = trunc i64 %add48 to i32
  %67 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %67, i32 0, i32 15
  store i32 %conv49, i32* %ips_count, align 4, !tbaa !23
  %68 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ostack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %68, i32 0, i32 12
  %arraydecay = getelementptr inbounds [48 x i32], [48 x i32]* %ostack, i32 0, i32 0
  %69 = bitcast i32* %arraydecay to i8*
  %70 = load i32*, i32** %cstack.addr, align 8, !tbaa !1
  %71 = bitcast i32* %70 to i8*
  %72 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %os_count50 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %72, i32 0, i32 13
  %73 = load i32, i32* %os_count50, align 4, !tbaa !47
  %conv51 = sext i32 %73 to i64
  %mul52 = mul i64 %conv51, 4
  %call53 = call i8* @memcpy(i8* %69, i8* %71, i64 %mul52) #6
  %74 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %init_done = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %74, i32 0, i32 16
  %75 = load i32, i32* %init_done, align 4, !tbaa !26
  %cmp54 = icmp slt i32 %75, 0
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.27
  %76 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %init_done57 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %76, i32 0, i32 16
  store i32 0, i32* %init_done57, align 4, !tbaa !26
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.27
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.58, %if.then.26
  %77 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %wy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %wx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %sby to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %sbx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast %struct.t1_hinter_s** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = load i32, i32* %retval
  ret i32 %83
}

declare i32 @t1_hinter__rmoveto(%struct.t1_hinter_s*, i32, i32) #2

declare i32 @t1_hinter__rlineto(%struct.t1_hinter_s*, i32, i32) #2

declare i32 @t1_hinter__rcurveto(%struct.t1_hinter_s*, i32, i32, i32, i32, i32, i32) #2

declare i32 @gs_type1_seac(%struct.gs_type1_state_s*, i32*, i32, %struct.ip_state_t*) #2

declare i32 @t1_hinter__endglyph(%struct.t1_hinter_s*) #2

declare i32 @gx_setcurrentpoint_from_path(%struct.gs_imager_state_s*, %struct.gx_path_s*) #2

declare void @t1_hinter__setcurrentpoint(%struct.t1_hinter_s*, i32, i32) #2

declare i32 @t1_hinter__end_subglyph(%struct.t1_hinter_s*) #2

declare i32 @gs_type1_endchar(%struct.gs_type1_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @type2_vstem(%struct.gs_type1_state_s* %pcis, i32* %csp, i32* %cstack) #0 {
entry:
  %retval = alloca i32, align 4
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %csp.addr = alloca i32*, align 8
  %cstack.addr = alloca i32*, align 8
  %x = alloca i32, align 4
  %ap = alloca i32*, align 8
  %h = alloca %struct.t1_hinter_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store i32* %csp, i32** %csp.addr, align 8, !tbaa !1
  store i32* %cstack, i32** %cstack.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %x, align 4, !tbaa !22
  %1 = bitcast i32** %ap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.t1_hinter_s** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %h1 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %3, i32 0, i32 0
  store %struct.t1_hinter_s* %h1, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32*, i32** %cstack.addr, align 8, !tbaa !1
  store i32* %5, i32** %ap, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i32, i32* %6, i64 1
  %7 = load i32*, i32** %csp.addr, align 8, !tbaa !1
  %cmp = icmp ule i32* %add.ptr, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %9 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx, align 4, !tbaa !22
  %11 = load i32, i32* %x, align 4, !tbaa !22
  %add = add nsw i32 %11, %10
  store i32 %add, i32* %x, align 4, !tbaa !22
  %12 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i32, i32* %12, i64 1
  %13 = load i32, i32* %arrayidx2, align 4, !tbaa !22
  %call = call i32 @t1_hinter__vstem(%struct.t1_hinter_s* %8, i32 %add, i32 %13) #5
  store i32 %call, i32* %code, align 4, !tbaa !22
  %14 = load i32, i32* %code, align 4, !tbaa !22
  %cmp3 = icmp slt i32 %14, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32*, i32** %ap, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %16, i64 1
  %17 = load i32, i32* %arrayidx4, align 4, !tbaa !22
  %18 = load i32, i32* %x, align 4, !tbaa !22
  %add5 = add nsw i32 %18, %17
  store i32 %add5, i32* %x, align 4, !tbaa !22
  %19 = load i32*, i32** %ap, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i32, i32* %19, i64 2
  store i32* %add.ptr6, i32** %ap, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32*, i32** %csp.addr, align 8, !tbaa !1
  %add.ptr7 = getelementptr inbounds i32, i32* %20, i64 1
  %21 = load i32*, i32** %cstack.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i32* %add.ptr7 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %shr = ashr i64 %sub.ptr.div, 1
  %22 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %num_hints = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %22, i32 0, i32 20
  %23 = load i32, i32* %num_hints, align 4, !tbaa !67
  %conv = sext i32 %23 to i64
  %add8 = add nsw i64 %conv, %shr
  %conv9 = trunc i64 %add8 to i32
  store i32 %conv9, i32* %num_hints, align 4, !tbaa !67
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast %struct.t1_hinter_s** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32** %ap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @t1_hinter__hstem(%struct.t1_hinter_s*, i32, i32) #2

declare i32 @t1_hinter__hint_mask(%struct.t1_hinter_s*, i8*) #2

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #3

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare i32 @t1_hinter__sbw(%struct.t1_hinter_s*, i32, i32, i32, i32) #2

declare i32 @gs_type1_sbw(%struct.gs_type1_state_s*, i32, i32, i32, i32) #2

declare i32 @t1_hinter__vstem(%struct.t1_hinter_s*, i32, i32) #2

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
!5 = !{!6, !2, i64 9856}
!6 = !{!"gs_type1_state_s", !7, i64 0, !2, i64 9856, !2, i64 9864, !2, i64 9872, !9, i64 9880, !9, i64 9884, !2, i64 9888, !12, i64 9896, !13, i64 9944, !14, i64 9948, !16, i64 9972, !17, i64 9980, !3, i64 9988, !9, i64 10180, !3, i64 10184, !9, i64 10976, !9, i64 10980, !9, i64 10984, !9, i64 10988, !9, i64 10992, !9, i64 10996, !17, i64 11000, !17, i64 11008, !9, i64 11016, !9, i64 11020, !17, i64 11024, !17, i64 11032, !9, i64 11040, !17, i64 11044, !9, i64 11052, !9, i64 11056, !17, i64 11060, !9, i64 11068, !9, i64 11072, !17, i64 11076, !3, i64 11084}
!7 = !{!"t1_hinter_s", !8, i64 0, !8, i64 24, !9, i64 48, !10, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !3, i64 188, !2, i64 5472, !3, i64 5480, !2, i64 7520, !3, i64 7528, !2, i64 7648, !3, i64 7656, !2, i64 7696, !3, i64 7704, !2, i64 7744, !3, i64 7752, !3, i64 7856, !3, i64 7872, !2, i64 7928, !3, i64 7936, !2, i64 8176, !3, i64 8184, !2, i64 9624, !3, i64 9632, !3, i64 9640, !9, i64 9648, !9, i64 9652, !9, i64 9656, !9, i64 9660, !9, i64 9664, !9, i64 9668, !9, i64 9672, !9, i64 9676, !9, i64 9680, !9, i64 9684, !9, i64 9688, !9, i64 9692, !9, i64 9696, !9, i64 9700, !9, i64 9704, !9, i64 9708, !9, i64 9712, !9, i64 9716, !9, i64 9720, !9, i64 9724, !9, i64 9728, !9, i64 9732, !9, i64 9736, !11, i64 9744, !11, i64 9752, !11, i64 9760, !11, i64 9768, !11, i64 9776, !11, i64 9784, !9, i64 9792, !9, i64 9796, !9, i64 9800, !9, i64 9804, !9, i64 9808, !9, i64 9812, !9, i64 9816, !9, i64 9820, !9, i64 9824, !9, i64 9828, !9, i64 9832, !9, i64 9836, !2, i64 9840, !2, i64 9848}
!8 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!9 = !{!"int", !3, i64 0}
!10 = !{!"long", !3, i64 0}
!11 = !{!"double", !3, i64 0}
!12 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!13 = !{!"float", !3, i64 0}
!14 = !{!"point_scale_s", !15, i64 0, !15, i64 12}
!15 = !{!"pixel_scale_s", !9, i64 0, !9, i64 4, !9, i64 8}
!16 = !{!"gs_log2_scale_point_s", !9, i64 0, !9, i64 4}
!17 = !{!"gs_fixed_point_s", !9, i64 0, !9, i64 4}
!18 = !{!19, !9, i64 64}
!19 = !{!"gs_type1_data_s", !20, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !10, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !13, i64 100, !13, i64 104, !21, i64 108, !13, i64 168, !9, i64 172, !21, i64 176, !21, i64 236, !9, i64 280, !21, i64 284, !9, i64 328, !21, i64 332, !21, i64 340, !21, i64 348, !21, i64 400, !21, i64 452, !3, i64 520, !9, i64 536}
!20 = !{!"gs_type1_data_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!21 = !{!"", !9, i64 0, !3, i64 4}
!22 = !{!9, !9, i64 0}
!23 = !{!6, !9, i64 10976}
!24 = !{!25, !2, i64 0}
!25 = !{!"", !2, i64 0, !9, i64 8}
!26 = !{!6, !9, i64 10980}
!27 = !{!6, !2, i64 9872}
!28 = !{!6, !2, i64 9864}
!29 = !{!30, !2, i64 64}
!30 = !{!"gs_font_type1_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !31, i64 40, !10, i64 56, !2, i64 64, !2, i64 72, !32, i64 80, !32, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !13, i64 156, !9, i64 160, !33, i64 168, !34, i64 272, !34, i64 324, !35, i64 376, !37, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !19, i64 448}
!31 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!32 = !{!"gs_matrix_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!33 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!34 = !{!"gs_font_name_s", !3, i64 0, !9, i64 48}
!35 = !{!"gs_rect_s", !36, i64 0, !36, i64 16}
!36 = !{!"gs_point_s", !11, i64 0, !11, i64 8}
!37 = !{!"gs_uid_s", !10, i64 0, !2, i64 8}
!38 = !{!6, !9, i64 9956}
!39 = !{!6, !9, i64 9972}
!40 = !{!6, !9, i64 9968}
!41 = !{!6, !9, i64 9976}
!42 = !{!6, !9, i64 9980}
!43 = !{!6, !9, i64 9984}
!44 = !{!30, !2, i64 24}
!45 = !{!6, !9, i64 9880}
!46 = !{!30, !9, i64 32}
!47 = !{!6, !9, i64 10180}
!48 = !{i64 0, i64 8, !1, i64 8, i64 4, !22, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1}
!49 = !{!50, !2, i64 0}
!50 = !{!"gs_glyph_data_s", !51, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!51 = !{!"gs_const_bytestring_s", !2, i64 0, !9, i64 8, !2, i64 16}
!52 = !{!53, !53, i64 0}
!53 = !{!"short", !3, i64 0}
!54 = !{!3, !3, i64 0}
!55 = !{!56, !2, i64 0}
!56 = !{!"", !2, i64 0, !2, i64 8, !53, i64 16, !50, i64 24}
!57 = !{!56, !53, i64 16}
!58 = !{!10, !10, i64 0}
!59 = !{!19, !9, i64 68}
!60 = !{!19, !2, i64 8}
!61 = !{!56, !2, i64 24}
!62 = !{!6, !9, i64 11016}
!63 = !{!6, !9, i64 11032}
!64 = !{!6, !9, i64 11060}
!65 = !{!6, !9, i64 11036}
!66 = !{!6, !9, i64 11064}
!67 = !{!6, !9, i64 10996}
!68 = !{!17, !9, i64 4}
!69 = !{!17, !9, i64 0}
!70 = !{!30, !9, i64 900}
!71 = !{!13, !13, i64 0}
!72 = !{!19, !9, i64 72}
!73 = !{!11, !11, i64 0}
!74 = !{!36, !11, i64 8}
!75 = !{!36, !11, i64 0}
!76 = !{!30, !9, i64 540}
!77 = !{!30, !9, i64 536}
!78 = !{!6, !9, i64 10984}
!79 = !{!6, !9, i64 11000}
!80 = !{!6, !9, i64 11004}
!81 = !{!6, !9, i64 10988}
!82 = !{!6, !9, i64 11008}
!83 = !{!6, !9, i64 11012}
