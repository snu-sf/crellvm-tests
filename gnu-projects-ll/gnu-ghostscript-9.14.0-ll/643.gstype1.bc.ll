; ModuleID = './gstype1.bc'
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

@.str = private unnamed_addr constant [19 x i8] c"gs_type1_interpret\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_type1_check_float(i16* %state, i32 %encrypted, i8** %ci, i32* %csp, i64 %lw) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i16*, align 8
  %encrypted.addr = alloca i32, align 4
  %ci.addr = alloca i8**, align 8
  %csp.addr = alloca i32*, align 8
  %lw.addr = alloca i64, align 8
  %denom = alloca i64, align 8
  %c0 = alloca i32, align 4
  %c = alloca i32, align 4
  %cip = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %c2 = alloca i32, align 4
  %cn = alloca i32, align 4
  %i = alloca i32, align 4
  %c4 = alloca i32, align 4
  store i16* %state, i16** %state.addr, align 8, !tbaa !1
  store i32 %encrypted, i32* %encrypted.addr, align 4, !tbaa !5
  store i8** %ci, i8*** %ci.addr, align 8, !tbaa !1
  store i32* %csp, i32** %csp.addr, align 8, !tbaa !1
  store i64 %lw, i64* %lw.addr, align 8, !tbaa !7
  %0 = bitcast i64* %denom to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %cip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8**, i8*** %ci.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %4, align 8, !tbaa !1
  store i8* %5, i8** %cip, align 8, !tbaa !1
  %6 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %cip, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !9
  %conv = zext i8 %7 to i32
  store i32 %conv, i32* %c0, align 4, !tbaa !5
  %8 = load i32, i32* %encrypted.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i32, i32* %c0, align 4, !tbaa !5
  %10 = load i16*, i16** %state.addr, align 8, !tbaa !1
  %11 = load i16, i16* %10, align 2, !tbaa !10
  %conv1 = zext i16 %11 to i32
  %shr = ashr i32 %conv1, 8
  %xor = xor i32 %9, %shr
  store i32 %xor, i32* %c, align 4, !tbaa !5
  %12 = load i32, i32* %c0, align 4, !tbaa !5
  %13 = load i16*, i16** %state.addr, align 8, !tbaa !1
  %14 = load i16, i16* %13, align 2, !tbaa !10
  %conv2 = zext i16 %14 to i32
  %add = add i32 %12, %conv2
  %mul = mul i32 %add, 52845
  %add3 = add i32 %mul, 22719
  %conv4 = trunc i32 %add3 to i16
  %15 = load i16*, i16** %state.addr, align 8, !tbaa !1
  store i16 %conv4, i16* %15, align 2, !tbaa !10
  %conv5 = zext i16 %conv4 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %16 = load i32, i32* %c0, align 4, !tbaa !5
  store i32 %16, i32* %c, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %16, %cond.false ]
  %17 = load i32, i32* %c, align 4, !tbaa !5
  %cmp = icmp slt i32 %17, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %18 = load i32, i32* %c, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %18, 247
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %19 = load i32, i32* %c, align 4, !tbaa !5
  %conv10 = trunc i32 %19 to i8
  %conv11 = zext i8 %conv10 to i32
  %sub = sub nsw i32 %conv11, 139
  %conv12 = sext i32 %sub to i64
  store i64 %conv12, i64* %denom, align 8, !tbaa !7
  br label %if.end.93

if.else:                                          ; preds = %if.end
  %20 = load i32, i32* %c, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %20, 255
  br i1 %cmp13, label %if.then.15, label %if.else.58

if.then.15:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %21 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr16, i8** %cip, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !9
  %conv17 = zext i8 %23 to i32
  store i32 %conv17, i32* %c2, align 4, !tbaa !5
  %24 = bitcast i32* %cn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i32, i32* %encrypted.addr, align 4, !tbaa !5
  %tobool18 = icmp ne i32 %25, 0
  br i1 %tobool18, label %cond.true.19, label %cond.false.23

cond.true.19:                                     ; preds = %do.body
  %26 = load i32, i32* %c2, align 4, !tbaa !5
  %27 = load i16*, i16** %state.addr, align 8, !tbaa !1
  %28 = load i16, i16* %27, align 2, !tbaa !10
  %conv20 = zext i16 %28 to i32
  %shr21 = ashr i32 %conv20, 8
  %xor22 = xor i32 %26, %shr21
  br label %cond.end.24

cond.false.23:                                    ; preds = %do.body
  %29 = load i32, i32* %c2, align 4, !tbaa !5
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.19
  %cond25 = phi i32 [ %xor22, %cond.true.19 ], [ %29, %cond.false.23 ]
  store i32 %cond25, i32* %cn, align 4, !tbaa !5
  %30 = load i32, i32* %c, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %30, 251
  br i1 %cmp26, label %cond.true.28, label %cond.false.35

cond.true.28:                                     ; preds = %cond.end.24
  %31 = load i32, i32* %c, align 4, !tbaa !5
  %sub29 = sub nsw i32 %31, 247
  %conv30 = trunc i32 %sub29 to i8
  %conv31 = zext i8 %conv30 to i32
  %shl = shl i32 %conv31, 8
  %add32 = add nsw i32 %shl, 0
  %add33 = add nsw i32 %add32, 108
  %32 = load i32, i32* %cn, align 4, !tbaa !5
  %add34 = add nsw i32 %add33, %32
  br label %cond.end.44

cond.false.35:                                    ; preds = %cond.end.24
  %33 = load i32, i32* %c, align 4, !tbaa !5
  %sub36 = sub nsw i32 %33, 251
  %conv37 = trunc i32 %sub36 to i8
  %conv38 = zext i8 %conv37 to i32
  %shl39 = shl i32 %conv38, 8
  %add40 = add nsw i32 %shl39, 0
  %add41 = add nsw i32 %add40, 108
  %sub42 = sub nsw i32 0, %add41
  %34 = load i32, i32* %cn, align 4, !tbaa !5
  %sub43 = sub nsw i32 %sub42, %34
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.35, %cond.true.28
  %cond45 = phi i32 [ %add34, %cond.true.28 ], [ %sub43, %cond.false.35 ]
  %conv46 = sext i32 %cond45 to i64
  store i64 %conv46, i64* %denom, align 8, !tbaa !7
  %35 = load i32, i32* %encrypted.addr, align 4, !tbaa !5
  %tobool47 = icmp ne i32 %35, 0
  br i1 %tobool47, label %cond.true.48, label %cond.false.55

cond.true.48:                                     ; preds = %cond.end.44
  %36 = load i32, i32* %c2, align 4, !tbaa !5
  %37 = load i16*, i16** %state.addr, align 8, !tbaa !1
  %38 = load i16, i16* %37, align 2, !tbaa !10
  %conv49 = zext i16 %38 to i32
  %add50 = add i32 %36, %conv49
  %mul51 = mul i32 %add50, 52845
  %add52 = add i32 %mul51, 22719
  %conv53 = trunc i32 %add52 to i16
  %39 = load i16*, i16** %state.addr, align 8, !tbaa !1
  store i16 %conv53, i16* %39, align 2, !tbaa !10
  %conv54 = zext i16 %conv53 to i32
  br label %cond.end.56

cond.false.55:                                    ; preds = %cond.end.44
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.48
  %cond57 = phi i32 [ %conv54, %cond.true.48 ], [ 0, %cond.false.55 ]
  %40 = bitcast i32* %cn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  br label %do.cond

do.cond:                                          ; preds = %cond.end.56
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.92

if.else.58:                                       ; preds = %if.else
  %42 = load i32, i32* %c, align 4, !tbaa !5
  %cmp59 = icmp eq i32 %42, 255
  br i1 %cmp59, label %if.then.61, label %if.else.90

if.then.61:                                       ; preds = %if.else.58
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = bitcast i32* %c4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i64 0, i64* %denom, align 8, !tbaa !7
  store i32 4, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %cond.end.80, %do.body.62
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %cmp63 = icmp sge i32 %dec, 0
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load i32, i32* %encrypted.addr, align 4, !tbaa !5
  %tobool65 = icmp ne i32 %46, 0
  br i1 %tobool65, label %cond.true.66, label %cond.false.78

cond.true.66:                                     ; preds = %for.body
  %47 = load i8*, i8** %cip, align 8, !tbaa !1
  %48 = load i8, i8* %47, align 1, !tbaa !9
  %conv67 = zext i8 %48 to i32
  %49 = load i16*, i16** %state.addr, align 8, !tbaa !1
  %50 = load i16, i16* %49, align 2, !tbaa !10
  %conv68 = zext i16 %50 to i32
  %shr69 = ashr i32 %conv68, 8
  %xor70 = xor i32 %conv67, %shr69
  store i32 %xor70, i32* %c4, align 4, !tbaa !5
  %51 = load i8*, i8** %cip, align 8, !tbaa !1
  %52 = load i8, i8* %51, align 1, !tbaa !9
  %conv71 = zext i8 %52 to i32
  %53 = load i16*, i16** %state.addr, align 8, !tbaa !1
  %54 = load i16, i16* %53, align 2, !tbaa !10
  %conv72 = zext i16 %54 to i32
  %add73 = add nsw i32 %conv71, %conv72
  %mul74 = mul nsw i32 %add73, 52845
  %add75 = add nsw i32 %mul74, 22719
  %conv76 = trunc i32 %add75 to i16
  %55 = load i16*, i16** %state.addr, align 8, !tbaa !1
  store i16 %conv76, i16* %55, align 2, !tbaa !10
  %conv77 = zext i16 %conv76 to i32
  br label %cond.end.80

cond.false.78:                                    ; preds = %for.body
  %56 = load i8*, i8** %cip, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !9
  %conv79 = zext i8 %57 to i32
  store i32 %conv79, i32* %c4, align 4, !tbaa !5
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.78, %cond.true.66
  %cond81 = phi i32 [ %conv77, %cond.true.66 ], [ %conv79, %cond.false.78 ]
  %58 = load i64, i64* %denom, align 8, !tbaa !7
  %shl82 = shl i64 %58, 8
  %59 = load i32, i32* %c4, align 4, !tbaa !5
  %conv83 = zext i32 %59 to i64
  %add84 = add nsw i64 %shl82, %conv83
  store i64 %add84, i64* %denom, align 8, !tbaa !7
  %60 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr85 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr85, i8** %cip, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = load i64, i64* %denom, align 8, !tbaa !7
  %xor86 = xor i64 %61, 2147483648
  %sub87 = sub nsw i64 %xor86, 2147483648
  store i64 %sub87, i64* %denom, align 8, !tbaa !7
  %62 = bitcast i32* %c4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  br label %do.cond.88

do.cond.88:                                       ; preds = %for.end
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  br label %if.end.91

if.else.90:                                       ; preds = %if.else.58
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.91:                                        ; preds = %do.end.89
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %do.end
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.9
  %64 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr94 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr94, i8** %cip, align 8, !tbaa !1
  %65 = load i8, i8* %64, align 1, !tbaa !9
  %conv95 = zext i8 %65 to i32
  store i32 %conv95, i32* %c0, align 4, !tbaa !5
  %66 = load i32, i32* %encrypted.addr, align 4, !tbaa !5
  %tobool96 = icmp ne i32 %66, 0
  br i1 %tobool96, label %cond.true.97, label %cond.false.107

cond.true.97:                                     ; preds = %if.end.93
  %67 = load i32, i32* %c0, align 4, !tbaa !5
  %68 = load i16*, i16** %state.addr, align 8, !tbaa !1
  %69 = load i16, i16* %68, align 2, !tbaa !10
  %conv98 = zext i16 %69 to i32
  %shr99 = ashr i32 %conv98, 8
  %xor100 = xor i32 %67, %shr99
  store i32 %xor100, i32* %c, align 4, !tbaa !5
  %70 = load i32, i32* %c0, align 4, !tbaa !5
  %71 = load i16*, i16** %state.addr, align 8, !tbaa !1
  %72 = load i16, i16* %71, align 2, !tbaa !10
  %conv101 = zext i16 %72 to i32
  %add102 = add i32 %70, %conv101
  %mul103 = mul i32 %add102, 52845
  %add104 = add i32 %mul103, 22719
  %conv105 = trunc i32 %add104 to i16
  %73 = load i16*, i16** %state.addr, align 8, !tbaa !1
  store i16 %conv105, i16* %73, align 2, !tbaa !10
  %conv106 = zext i16 %conv105 to i32
  br label %cond.end.108

cond.false.107:                                   ; preds = %if.end.93
  %74 = load i32, i32* %c0, align 4, !tbaa !5
  store i32 %74, i32* %c, align 4, !tbaa !5
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.107, %cond.true.97
  %cond109 = phi i32 [ %conv106, %cond.true.97 ], [ %74, %cond.false.107 ]
  %75 = load i32, i32* %c, align 4, !tbaa !5
  %cmp110 = icmp ne i32 %75, 12
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %cond.end.108
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.113:                                       ; preds = %cond.end.108
  %76 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr114 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr114, i8** %cip, align 8, !tbaa !1
  %77 = load i8, i8* %76, align 1, !tbaa !9
  %conv115 = zext i8 %77 to i32
  store i32 %conv115, i32* %c0, align 4, !tbaa !5
  %78 = load i32, i32* %encrypted.addr, align 4, !tbaa !5
  %tobool116 = icmp ne i32 %78, 0
  br i1 %tobool116, label %cond.true.117, label %cond.false.127

cond.true.117:                                    ; preds = %if.end.113
  %79 = load i32, i32* %c0, align 4, !tbaa !5
  %80 = load i16*, i16** %state.addr, align 8, !tbaa !1
  %81 = load i16, i16* %80, align 2, !tbaa !10
  %conv118 = zext i16 %81 to i32
  %shr119 = ashr i32 %conv118, 8
  %xor120 = xor i32 %79, %shr119
  store i32 %xor120, i32* %c, align 4, !tbaa !5
  %82 = load i32, i32* %c0, align 4, !tbaa !5
  %83 = load i16*, i16** %state.addr, align 8, !tbaa !1
  %84 = load i16, i16* %83, align 2, !tbaa !10
  %conv121 = zext i16 %84 to i32
  %add122 = add i32 %82, %conv121
  %mul123 = mul i32 %add122, 52845
  %add124 = add i32 %mul123, 22719
  %conv125 = trunc i32 %add124 to i16
  %85 = load i16*, i16** %state.addr, align 8, !tbaa !1
  store i16 %conv125, i16* %85, align 2, !tbaa !10
  %conv126 = zext i16 %conv125 to i32
  br label %cond.end.128

cond.false.127:                                   ; preds = %if.end.113
  %86 = load i32, i32* %c0, align 4, !tbaa !5
  store i32 %86, i32* %c, align 4, !tbaa !5
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.127, %cond.true.117
  %cond129 = phi i32 [ %conv126, %cond.true.117 ], [ %86, %cond.false.127 ]
  %87 = load i32, i32* %c, align 4, !tbaa !5
  %cmp130 = icmp ne i32 %87, 12
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %cond.end.128
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.133:                                       ; preds = %cond.end.128
  %88 = load i64, i64* %lw.addr, align 8, !tbaa !7
  %89 = load i64, i64* %denom, align 8, !tbaa !7
  %div = sdiv i64 %88, %89
  %cmp134 = icmp slt i64 %div, 0
  br i1 %cmp134, label %cond.true.136, label %cond.false.139

cond.true.136:                                    ; preds = %if.end.133
  %90 = load i64, i64* %lw.addr, align 8, !tbaa !7
  %91 = load i64, i64* %denom, align 8, !tbaa !7
  %div137 = sdiv i64 %90, %91
  %sub138 = sub nsw i64 0, %div137
  br label %cond.end.141

cond.false.139:                                   ; preds = %if.end.133
  %92 = load i64, i64* %lw.addr, align 8, !tbaa !7
  %93 = load i64, i64* %denom, align 8, !tbaa !7
  %div140 = sdiv i64 %92, %93
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.139, %cond.true.136
  %cond142 = phi i64 [ %sub138, %cond.true.136 ], [ %div140, %cond.false.139 ]
  %cmp143 = icmp sgt i64 %cond142, 8388607
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %cond.end.141
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.146:                                       ; preds = %cond.end.141
  %94 = load i64, i64* %lw.addr, align 8, !tbaa !7
  %conv147 = sitofp i64 %94 to double
  %95 = load i64, i64* %denom, align 8, !tbaa !7
  %conv148 = sitofp i64 %95 to double
  %div149 = fdiv double %conv147, %conv148
  %mul150 = fmul double %div149, 2.560000e+02
  %conv151 = fptosi double %mul150 to i32
  %96 = load i32*, i32** %csp.addr, align 8, !tbaa !1
  store i32 %conv151, i32* %96, align 4, !tbaa !5
  %97 = load i8*, i8** %cip, align 8, !tbaa !1
  %98 = load i8**, i8*** %ci.addr, align 8, !tbaa !1
  store i8* %97, i8** %98, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.146, %if.then.145, %if.then.132, %if.then.112, %if.else.90, %if.then
  %99 = bitcast i8** %cip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i64* %denom to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = load i32, i32* %retval
  ret i32 %103
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_type1_interpret(%struct.gs_type1_state_s* %pcis, %struct.gs_glyph_data_s* %pgd, i32* %pindex) #0 {
entry:
  %retval = alloca i32, align 4
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %pindex.addr = alloca i32*, align 8
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
  %code = alloca i32, align 4
  %ftx = alloca i32, align 4
  %fty = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %skip = alloca i32, align 4
  %c0 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %cn = alloca i32, align 4
  %lw = alloca i64, align 8
  %i = alloca i32, align 4
  %c4 = alloca i32, align 4
  %sbx = alloca i32, align 4
  %sby = alloca i32, align 4
  %wx = alloca i32, align 4
  %wy = alloca i32, align 4
  %accent_lsb = alloca i32, align 4
  %overall_x_offset = alloca i32, align 4
  %num_results = alloca i32, align 4
  %fheight = alloca i32, align 4
  %scount = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont1 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !12
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
  %9 = load i32, i32* %lenIV, align 4, !tbaa !23
  %cmp = icmp sge i32 %9, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %encrypted, align 4, !tbaa !5
  %10 = bitcast [48 x i32]* %cstack to i8*
  call void @llvm.lifetime.start(i64 192, i8* %10) #1
  %11 = bitcast i32** %csp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.ip_state_t** %ipsp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %13, i32 0, i32 15
  %14 = load i32, i32* %ips_count, align 4, !tbaa !27
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
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %20 = bitcast i32* %ftx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %21, i32 0, i32 11
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin, i32 0, i32 0
  %22 = load i32, i32* %x, align 4, !tbaa !28
  store i32 %22, i32* %ftx, align 4, !tbaa !5
  %23 = bitcast i32* %fty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin3 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %24, i32 0, i32 11
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin3, i32 0, i32 1
  %25 = load i32, i32* %y, align 4, !tbaa !29
  store i32 %25, i32* %fty, align 4, !tbaa !5
  %26 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %init_done = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %26, i32 0, i32 16
  %27 = load i32, i32* %init_done, align 4, !tbaa !30
  switch i32 %27, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %28 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %29 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %29, i32 0, i32 3
  %30 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !31
  call void @t1_hinter__init(%struct.t1_hinter_s* %28, %struct.gx_path_s* %30) #4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %31 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  call void @gs_type1_finish_init(%struct.gs_type1_state_s* %31) #4
  %32 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin5 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %32, i32 0, i32 11
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin5, i32 0, i32 0
  %33 = load i32, i32* %x6, align 4, !tbaa !28
  store i32 %33, i32* %ftx, align 4, !tbaa !5
  %34 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin7 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %34, i32 0, i32 11
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin7, i32 0, i32 1
  %35 = load i32, i32* %y8, align 4, !tbaa !29
  store i32 %35, i32* %fty, align 4, !tbaa !5
  %36 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %37 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %37, i32 0, i32 2
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !32
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %38, i32 0, i32 5
  %39 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %39, i32 0, i32 9
  %40 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %40, i32 0, i32 7
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !33
  %FontMatrix9 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %41, i32 0, i32 9
  %42 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %scale = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %42, i32 0, i32 9
  %x10 = getelementptr inbounds %struct.point_scale_s, %struct.point_scale_s* %scale, i32 0, i32 0
  %log2_unit = getelementptr inbounds %struct.pixel_scale_s, %struct.pixel_scale_s* %x10, i32 0, i32 2
  %43 = load i32, i32* %log2_unit, align 4, !tbaa !42
  %44 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %scale11 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %44, i32 0, i32 9
  %x12 = getelementptr inbounds %struct.point_scale_s, %struct.point_scale_s* %scale11, i32 0, i32 0
  %log2_unit13 = getelementptr inbounds %struct.pixel_scale_s, %struct.pixel_scale_s* %x12, i32 0, i32 2
  %45 = load i32, i32* %log2_unit13, align 4, !tbaa !42
  %46 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %scale14 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %46, i32 0, i32 9
  %x15 = getelementptr inbounds %struct.point_scale_s, %struct.point_scale_s* %scale14, i32 0, i32 0
  %log2_unit16 = getelementptr inbounds %struct.pixel_scale_s, %struct.pixel_scale_s* %x15, i32 0, i32 2
  %47 = load i32, i32* %log2_unit16, align 4, !tbaa !42
  %48 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %log2_subpixels = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %48, i32 0, i32 10
  %x17 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_subpixels, i32 0, i32 0
  %49 = load i32, i32* %x17, align 4, !tbaa !43
  %sub18 = sub nsw i32 %47, %49
  %50 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %scale19 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %50, i32 0, i32 9
  %y20 = getelementptr inbounds %struct.point_scale_s, %struct.point_scale_s* %scale19, i32 0, i32 1
  %log2_unit21 = getelementptr inbounds %struct.pixel_scale_s, %struct.pixel_scale_s* %y20, i32 0, i32 2
  %51 = load i32, i32* %log2_unit21, align 4, !tbaa !44
  %52 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %log2_subpixels22 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %52, i32 0, i32 10
  %y23 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %log2_subpixels22, i32 0, i32 1
  %53 = load i32, i32* %y23, align 4, !tbaa !45
  %sub24 = sub nsw i32 %51, %53
  %54 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin25 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %54, i32 0, i32 11
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin25, i32 0, i32 0
  %55 = load i32, i32* %x26, align 4, !tbaa !28
  %56 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin27 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %56, i32 0, i32 11
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin27, i32 0, i32 1
  %57 = load i32, i32* %y28, align 4, !tbaa !29
  %58 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %58, i32 0, i32 3
  %59 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !46
  %call = call i32 @gs_currentaligntopixels(%struct.gs_font_dir_s* %59) #4
  %call29 = call i32 @t1_hinter__set_mapping(%struct.t1_hinter_s* %36, %struct.gs_matrix_fixed_s* %ctm, %struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s* %FontMatrix9, i32 %43, i32 %45, i32 %sub18, i32 %sub24, i32 %55, i32 %57, i32 %call) #4
  store i32 %call29, i32* %code, align 4, !tbaa !5
  %60 = load i32, i32* %code, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %60, 0
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.4
  %61 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.737

if.end:                                           ; preds = %sw.bb.4
  %62 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %63 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %64 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %no_grid_fitting = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %64, i32 0, i32 4
  %65 = load i32, i32* %no_grid_fitting, align 4, !tbaa !47
  %66 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont32 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %66, i32 0, i32 1
  %67 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont32, align 8, !tbaa !12
  %is_resource = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %67, i32 0, i32 4
  %68 = load i32, i32* %is_resource, align 4, !tbaa !48
  %call33 = call i32 @t1_hinter__set_font_data(%struct.t1_hinter_s* %62, i32 1, %struct.gs_type1_data_s* %63, i32 %65, i32 %68) #4
  store i32 %call33, i32* %code, align 4, !tbaa !5
  %69 = load i32, i32* %code, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %69, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end
  %70 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %70, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.737

if.end.37:                                        ; preds = %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.37, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %71 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %os_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %71, i32 0, i32 13
  %72 = load i32, i32* %os_count, align 4, !tbaa !49
  %cmp38 = icmp eq i32 %72, 0
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %do.body
  %arraydecay = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay, i64 -1
  store i32* %add.ptr, i32** %csp, align 8, !tbaa !1
  br label %if.end.50

if.else:                                          ; preds = %do.body
  %arraydecay41 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %73 = bitcast i32* %arraydecay41 to i8*
  %74 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ostack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %74, i32 0, i32 12
  %arraydecay42 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack, i32 0, i32 0
  %75 = bitcast i32* %arraydecay42 to i8*
  %76 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %os_count43 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %76, i32 0, i32 13
  %77 = load i32, i32* %os_count43, align 4, !tbaa !49
  %conv44 = sext i32 %77 to i64
  %mul = mul i64 %conv44, 4
  %call45 = call i8* @memcpy(i8* %73, i8* %75, i64 %mul) #5
  %78 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %os_count46 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %78, i32 0, i32 13
  %79 = load i32, i32* %os_count46, align 4, !tbaa !49
  %sub47 = sub nsw i32 %79, 1
  %idxprom48 = sext i32 %sub47 to i64
  %arrayidx49 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 %idxprom48
  store i32* %arrayidx49, i32** %csp, align 8, !tbaa !1
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.40
  br label %do.cond

do.cond:                                          ; preds = %if.end.50
  br label %do.end

do.end:                                           ; preds = %do.cond
  %80 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %cmp51 = icmp eq %struct.gs_glyph_data_s* %80, null
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %do.end
  br label %cont

if.end.54:                                        ; preds = %do.end
  %81 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %81, i32 0, i32 3
  %82 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %83 = bitcast %struct.gs_glyph_data_s* %cs_data to i8*
  %84 = bitcast %struct.gs_glyph_data_s* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 48, i32 8, i1 false), !tbaa.struct !50
  %85 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %85, i32 0, i32 0
  %data55 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  %86 = load i8*, i8** %data55, align 8, !tbaa !51
  store i8* %86, i8** %cip, align 8, !tbaa !1
  %87 = load i8*, i8** %cip, align 8, !tbaa !1
  %cmp56 = icmp eq i8* %87, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.54
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.737

if.end.59:                                        ; preds = %if.end.54
  br label %call.60

call.60:                                          ; preds = %cleanup.735, %if.end.59
  store i16 4330, i16* %state, align 2, !tbaa !10
  %88 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool = icmp ne i32 %88, 0
  br i1 %tobool, label %if.then.61, label %if.end.70

if.then.61:                                       ; preds = %call.60
  %89 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  %90 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %lenIV62 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %90, i32 0, i32 4
  %91 = load i32, i32* %lenIV62, align 4, !tbaa !23
  store i32 %91, i32* %skip, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.61
  %92 = load i32, i32* %skip, align 4, !tbaa !5
  %cmp63 = icmp sgt i32 %92, 0
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %93 = load i8*, i8** %cip, align 8, !tbaa !1
  %94 = load i8, i8* %93, align 1, !tbaa !9
  %conv65 = zext i8 %94 to i32
  %95 = load i16, i16* %state, align 2, !tbaa !10
  %conv66 = zext i16 %95 to i32
  %add = add nsw i32 %conv65, %conv66
  %mul67 = mul nsw i32 %add, 52845
  %add68 = add nsw i32 %mul67, 22719
  %conv69 = trunc i32 %add68 to i16
  store i16 %conv69, i16* %state, align 2, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %96 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr, i8** %cip, align 8, !tbaa !1
  %97 = load i32, i32* %skip, align 4, !tbaa !5
  %dec = add nsw i32 %97, -1
  store i32 %dec, i32* %skip, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %98 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  br label %if.end.70

if.end.70:                                        ; preds = %for.end, %call.60
  br label %top

cont:                                             ; preds = %cleanup.735, %if.then.53
  %99 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %100 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ipstack71 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %100, i32 0, i32 14
  %arraydecay72 = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack71, i32 0, i32 0
  %cmp73 = icmp ult %struct.ip_state_t* %99, %arraydecay72
  br i1 %cmp73, label %if.then.77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cont
  %101 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %101, i32 0, i32 0
  %102 = load i8*, i8** %ip, align 8, !tbaa !54
  %cmp75 = icmp eq i8* %102, null
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %lor.lhs.false, %cont
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.737

if.end.78:                                        ; preds = %lor.lhs.false
  %103 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip79 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %103, i32 0, i32 0
  %104 = load i8*, i8** %ip79, align 8, !tbaa !54
  store i8* %104, i8** %cip, align 8, !tbaa !1
  %105 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %105, i32 0, i32 2
  %106 = load i16, i16* %dstate, align 2, !tbaa !56
  store i16 %106, i16* %state, align 2, !tbaa !10
  br label %top

top:                                              ; preds = %cleanup.735, %if.end.78, %if.end.70
  br label %for.cond.80

for.cond.80:                                      ; preds = %cleanup.735, %top
  %107 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #1
  %108 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr81 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr81, i8** %cip, align 8, !tbaa !1
  %109 = load i8, i8* %108, align 1, !tbaa !9
  %conv82 = zext i8 %109 to i32
  store i32 %conv82, i32* %c0, align 4, !tbaa !5
  %110 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool83 = icmp ne i32 %110, 0
  br i1 %tobool83, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond.80
  %111 = load i32, i32* %c0, align 4, !tbaa !5
  %112 = load i16, i16* %state, align 2, !tbaa !10
  %conv84 = zext i16 %112 to i32
  %shr = ashr i32 %conv84, 8
  %xor = xor i32 %111, %shr
  store i32 %xor, i32* %c, align 4, !tbaa !5
  %113 = load i32, i32* %c0, align 4, !tbaa !5
  %114 = load i16, i16* %state, align 2, !tbaa !10
  %conv85 = zext i16 %114 to i32
  %add86 = add i32 %113, %conv85
  %mul87 = mul i32 %add86, 52845
  %add88 = add i32 %mul87, 22719
  %conv89 = trunc i32 %add88 to i16
  store i16 %conv89, i16* %state, align 2, !tbaa !10
  %conv90 = zext i16 %conv89 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.cond.80
  %115 = load i32, i32* %c0, align 4, !tbaa !5
  store i32 %115, i32* %c, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv90, %cond.true ], [ %115, %cond.false ]
  %116 = load i32, i32* %c, align 4, !tbaa !5
  %cmp91 = icmp sge i32 %116, 32
  br i1 %cmp91, label %if.then.93, label %if.end.247

if.then.93:                                       ; preds = %cond.end
  %117 = load i32, i32* %c, align 4, !tbaa !5
  %cmp94 = icmp slt i32 %117, 247
  br i1 %cmp94, label %if.then.96, label %if.else.112

if.then.96:                                       ; preds = %if.then.93
  br label %do.body.97

do.body.97:                                       ; preds = %if.then.96
  br label %do.body.98

do.body.98:                                       ; preds = %do.body.97
  %118 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 47
  %cmp100 = icmp uge i32* %118, %arrayidx99
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %do.body.98
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.103:                                       ; preds = %do.body.98
  br label %do.cond.104

do.cond.104:                                      ; preds = %if.end.103
  br label %do.end.105

do.end.105:                                       ; preds = %do.cond.104
  %119 = load i32, i32* %c, align 4, !tbaa !5
  %conv106 = trunc i32 %119 to i8
  %conv107 = zext i8 %conv106 to i32
  %sub108 = sub nsw i32 %conv107, 139
  %shl = shl i32 %sub108, 8
  %120 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr109 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %incdec.ptr109, i32** %csp, align 8, !tbaa !1
  store i32 %shl, i32* %incdec.ptr109, align 4, !tbaa !5
  br label %do.cond.110

do.cond.110:                                      ; preds = %do.end.105
  br label %do.end.111

do.end.111:                                       ; preds = %do.cond.110
  br label %if.end.243

if.else.112:                                      ; preds = %if.then.93
  %121 = load i32, i32* %c, align 4, !tbaa !5
  %cmp113 = icmp slt i32 %121, 255
  br i1 %cmp113, label %if.then.115, label %if.else.179

if.then.115:                                      ; preds = %if.else.112
  br label %do.body.116

do.body.116:                                      ; preds = %if.then.115
  %122 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #1
  %123 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr117 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr117, i8** %cip, align 8, !tbaa !1
  %124 = load i8, i8* %123, align 1, !tbaa !9
  %conv118 = zext i8 %124 to i32
  store i32 %conv118, i32* %c2, align 4, !tbaa !5
  %125 = bitcast i32* %cn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %125) #1
  br label %do.body.119

do.body.119:                                      ; preds = %do.body.116
  %126 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 47
  %cmp121 = icmp uge i32* %126, %arrayidx120
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %do.body.119
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.124:                                       ; preds = %do.body.119
  br label %do.cond.125

do.cond.125:                                      ; preds = %if.end.124
  br label %do.end.126

do.end.126:                                       ; preds = %do.cond.125
  %127 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool127 = icmp ne i32 %127, 0
  br i1 %tobool127, label %cond.true.128, label %cond.false.132

cond.true.128:                                    ; preds = %do.end.126
  %128 = load i32, i32* %c2, align 4, !tbaa !5
  %129 = load i16, i16* %state, align 2, !tbaa !10
  %conv129 = zext i16 %129 to i32
  %shr130 = ashr i32 %conv129, 8
  %xor131 = xor i32 %128, %shr130
  br label %cond.end.133

cond.false.132:                                   ; preds = %do.end.126
  %130 = load i32, i32* %c2, align 4, !tbaa !5
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.132, %cond.true.128
  %cond134 = phi i32 [ %xor131, %cond.true.128 ], [ %130, %cond.false.132 ]
  store i32 %cond134, i32* %cn, align 4, !tbaa !5
  %131 = load i32, i32* %c, align 4, !tbaa !5
  %cmp135 = icmp slt i32 %131, 251
  br i1 %cmp135, label %if.then.137, label %if.else.150

if.then.137:                                      ; preds = %cond.end.133
  br label %do.body.138

do.body.138:                                      ; preds = %if.then.137
  br label %do.cond.139

do.cond.139:                                      ; preds = %do.body.138
  br label %do.end.140

do.end.140:                                       ; preds = %do.cond.139
  %132 = load i32, i32* %c, align 4, !tbaa !5
  %sub141 = sub nsw i32 %132, 247
  %conv142 = trunc i32 %sub141 to i8
  %conv143 = zext i8 %conv142 to i32
  %shl144 = shl i32 %conv143, 8
  %add145 = add nsw i32 %shl144, 0
  %add146 = add nsw i32 %add145, 108
  %133 = load i32, i32* %cn, align 4, !tbaa !5
  %add147 = add nsw i32 %add146, %133
  %shl148 = shl i32 %add147, 8
  %134 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr149 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %incdec.ptr149, i32** %csp, align 8, !tbaa !1
  store i32 %shl148, i32* %incdec.ptr149, align 4, !tbaa !5
  br label %if.end.164

if.else.150:                                      ; preds = %cond.end.133
  br label %do.body.151

do.body.151:                                      ; preds = %if.else.150
  br label %do.cond.152

do.cond.152:                                      ; preds = %do.body.151
  br label %do.end.153

do.end.153:                                       ; preds = %do.cond.152
  %135 = load i32, i32* %c, align 4, !tbaa !5
  %sub154 = sub nsw i32 %135, 251
  %conv155 = trunc i32 %sub154 to i8
  %conv156 = zext i8 %conv155 to i32
  %shl157 = shl i32 %conv156, 8
  %add158 = add nsw i32 %shl157, 0
  %add159 = add nsw i32 %add158, 108
  %sub160 = sub nsw i32 0, %add159
  %136 = load i32, i32* %cn, align 4, !tbaa !5
  %sub161 = sub nsw i32 %sub160, %136
  %shl162 = shl i32 %sub161, 8
  %137 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr163 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %incdec.ptr163, i32** %csp, align 8, !tbaa !1
  store i32 %shl162, i32* %incdec.ptr163, align 4, !tbaa !5
  br label %if.end.164

if.end.164:                                       ; preds = %do.end.153, %do.end.140
  %138 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool165 = icmp ne i32 %138, 0
  br i1 %tobool165, label %cond.true.166, label %cond.false.173

cond.true.166:                                    ; preds = %if.end.164
  %139 = load i32, i32* %c2, align 4, !tbaa !5
  %140 = load i16, i16* %state, align 2, !tbaa !10
  %conv167 = zext i16 %140 to i32
  %add168 = add i32 %139, %conv167
  %mul169 = mul i32 %add168, 52845
  %add170 = add i32 %mul169, 22719
  %conv171 = trunc i32 %add170 to i16
  store i16 %conv171, i16* %state, align 2, !tbaa !10
  %conv172 = zext i16 %conv171 to i32
  br label %cond.end.174

cond.false.173:                                   ; preds = %if.end.164
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.173, %cond.true.166
  %cond175 = phi i32 [ %conv172, %cond.true.166 ], [ 0, %cond.false.173 ]
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.174, %if.then.123
  %141 = bitcast i32* %cn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.735 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond.177

do.cond.177:                                      ; preds = %cleanup.cont
  br label %do.end.178

do.end.178:                                       ; preds = %do.cond.177
  br label %if.end.242

if.else.179:                                      ; preds = %if.else.112
  %143 = load i32, i32* %c, align 4, !tbaa !5
  %cmp180 = icmp eq i32 %143, 255
  br i1 %cmp180, label %if.then.182, label %if.else.240

if.then.182:                                      ; preds = %if.else.179
  %144 = bitcast i64* %lw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %144) #1
  br label %do.body.183

do.body.183:                                      ; preds = %if.then.182
  %145 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #1
  %146 = bitcast i32* %c4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #1
  store i64 0, i64* %lw, align 8, !tbaa !7
  store i32 4, i32* %i, align 4, !tbaa !5
  br label %for.cond.184

for.cond.184:                                     ; preds = %cond.end.204, %do.body.183
  %147 = load i32, i32* %i, align 4, !tbaa !5
  %dec185 = add nsw i32 %147, -1
  store i32 %dec185, i32* %i, align 4, !tbaa !5
  %cmp186 = icmp sge i32 %dec185, 0
  br i1 %cmp186, label %for.body.188, label %for.end.210

for.body.188:                                     ; preds = %for.cond.184
  %148 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool189 = icmp ne i32 %148, 0
  br i1 %tobool189, label %cond.true.190, label %cond.false.202

cond.true.190:                                    ; preds = %for.body.188
  %149 = load i8*, i8** %cip, align 8, !tbaa !1
  %150 = load i8, i8* %149, align 1, !tbaa !9
  %conv191 = zext i8 %150 to i32
  %151 = load i16, i16* %state, align 2, !tbaa !10
  %conv192 = zext i16 %151 to i32
  %shr193 = ashr i32 %conv192, 8
  %xor194 = xor i32 %conv191, %shr193
  store i32 %xor194, i32* %c4, align 4, !tbaa !5
  %152 = load i8*, i8** %cip, align 8, !tbaa !1
  %153 = load i8, i8* %152, align 1, !tbaa !9
  %conv195 = zext i8 %153 to i32
  %154 = load i16, i16* %state, align 2, !tbaa !10
  %conv196 = zext i16 %154 to i32
  %add197 = add nsw i32 %conv195, %conv196
  %mul198 = mul nsw i32 %add197, 52845
  %add199 = add nsw i32 %mul198, 22719
  %conv200 = trunc i32 %add199 to i16
  store i16 %conv200, i16* %state, align 2, !tbaa !10
  %conv201 = zext i16 %conv200 to i32
  br label %cond.end.204

cond.false.202:                                   ; preds = %for.body.188
  %155 = load i8*, i8** %cip, align 8, !tbaa !1
  %156 = load i8, i8* %155, align 1, !tbaa !9
  %conv203 = zext i8 %156 to i32
  store i32 %conv203, i32* %c4, align 4, !tbaa !5
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.202, %cond.true.190
  %cond205 = phi i32 [ %conv201, %cond.true.190 ], [ %conv203, %cond.false.202 ]
  %157 = load i64, i64* %lw, align 8, !tbaa !7
  %shl206 = shl i64 %157, 8
  %158 = load i32, i32* %c4, align 4, !tbaa !5
  %conv207 = zext i32 %158 to i64
  %add208 = add nsw i64 %shl206, %conv207
  store i64 %add208, i64* %lw, align 8, !tbaa !7
  %159 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr209 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr209, i8** %cip, align 8, !tbaa !1
  br label %for.cond.184

for.end.210:                                      ; preds = %for.cond.184
  %160 = load i64, i64* %lw, align 8, !tbaa !7
  %xor211 = xor i64 %160, 2147483648
  %sub212 = sub nsw i64 %xor211, 2147483648
  store i64 %sub212, i64* %lw, align 8, !tbaa !7
  %161 = bitcast i32* %c4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  br label %do.cond.213

do.cond.213:                                      ; preds = %for.end.210
  br label %do.end.214

do.end.214:                                       ; preds = %do.cond.213
  br label %do.body.215

do.body.215:                                      ; preds = %do.end.214
  %163 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx216 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 47
  %cmp217 = icmp uge i32* %163, %arrayidx216
  br i1 %cmp217, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %do.body.215
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.237

if.end.220:                                       ; preds = %do.body.215
  br label %do.cond.221

do.cond.221:                                      ; preds = %if.end.220
  br label %do.end.222

do.end.222:                                       ; preds = %do.cond.221
  %164 = load i64, i64* %lw, align 8, !tbaa !7
  %conv223 = trunc i64 %164 to i32
  %shl224 = shl i32 %conv223, 8
  %165 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr225 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %incdec.ptr225, i32** %csp, align 8, !tbaa !1
  store i32 %shl224, i32* %incdec.ptr225, align 4, !tbaa !5
  %166 = load i64, i64* %lw, align 8, !tbaa !7
  %167 = load i32*, i32** %csp, align 8, !tbaa !1
  %168 = load i32, i32* %167, align 4, !tbaa !5
  %shr226 = ashr i32 %168, 8
  %conv227 = sext i32 %shr226 to i64
  %cmp228 = icmp ne i64 %166, %conv227
  br i1 %cmp228, label %if.then.230, label %if.end.236

if.then.230:                                      ; preds = %do.end.222
  %169 = load i32, i32* %encrypted, align 4, !tbaa !5
  %170 = load i32*, i32** %csp, align 8, !tbaa !1
  %171 = load i64, i64* %lw, align 8, !tbaa !7
  %call231 = call i32 @gs_type1_check_float(i16* %state, i32 %169, i8** %cip, i32* %170, i64 %171) #4
  store i32 %call231, i32* %code, align 4, !tbaa !5
  %172 = load i32, i32* %code, align 4, !tbaa !5
  %cmp232 = icmp slt i32 %172, 0
  br i1 %cmp232, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %if.then.230
  %173 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %173, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.237

if.end.235:                                       ; preds = %if.then.230
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %do.end.222
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.237

cleanup.237:                                      ; preds = %if.end.236, %if.then.234, %if.then.219
  %174 = bitcast i64* %lw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %cleanup.dest.238 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.238, label %cleanup.735 [
    i32 0, label %cleanup.cont.239
  ]

cleanup.cont.239:                                 ; preds = %cleanup.237
  br label %if.end.241

if.else.240:                                      ; preds = %if.else.179
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.241:                                       ; preds = %cleanup.cont.239
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %do.end.178
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %do.end.111
  br label %pushed

pushed:                                           ; preds = %if.end.712, %sw.bb.560, %if.end.243
  br label %do.body.244

do.body.244:                                      ; preds = %pushed
  br label %do.cond.245

do.cond.245:                                      ; preds = %do.body.244
  br label %do.end.246

do.end.246:                                       ; preds = %do.cond.245
  store i32 12, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.247:                                       ; preds = %cond.end
  %175 = load i32, i32* %c, align 4, !tbaa !5
  switch i32 %175, label %sw.default.734 [
    i32 0, label %sw.bb.248
    i32 2, label %sw.bb.248
    i32 17, label %sw.bb.248
    i32 10, label %sw.bb.249
    i32 11, label %sw.bb.266
    i32 15, label %sw.bb.269
    i32 1, label %sw.bb.272
    i32 3, label %sw.bb.282
    i32 4, label %sw.bb.292
    i32 5, label %sw.bb.299
    i32 6, label %sw.bb.309
    i32 7, label %sw.bb.311
    i32 8, label %sw.bb.315
    i32 14, label %sw.bb.323
    i32 21, label %sw.bb.372
    i32 22, label %sw.bb.373
    i32 30, label %sw.bb.375
    i32 31, label %sw.bb.381
    i32 9, label %sw.bb.387
    i32 13, label %sw.bb.389
    i32 12, label %sw.bb.460
    i32 16, label %sw.bb.733
    i32 18, label %sw.bb.733
    i32 19, label %sw.bb.733
    i32 20, label %sw.bb.733
    i32 23, label %sw.bb.733
    i32 24, label %sw.bb.733
    i32 25, label %sw.bb.733
    i32 26, label %sw.bb.733
    i32 27, label %sw.bb.733
    i32 28, label %sw.bb.733
    i32 29, label %sw.bb.733
  ]

sw.bb.248:                                        ; preds = %if.end.247, %if.end.247, %if.end.247
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

sw.bb.249:                                        ; preds = %if.end.247
  %176 = load i32*, i32** %csp, align 8, !tbaa !1
  %177 = load i32, i32* %176, align 4, !tbaa !5
  %shr250 = ashr i32 %177, 8
  %178 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %subroutineNumberBias = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %178, i32 0, i32 5
  %179 = load i32, i32* %subroutineNumberBias, align 4, !tbaa !57
  %add251 = add i32 %shr250, %179
  store i32 %add251, i32* %c, align 4, !tbaa !5
  %180 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %180, i32 0, i32 0
  %subr_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 1
  %181 = load i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)** %subr_data, align 8, !tbaa !58
  %182 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %183 = load i32, i32* %c, align 4, !tbaa !5
  %184 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %arrayidx252 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %184, i64 1
  %cs_data253 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %arrayidx252, i32 0, i32 3
  %call254 = call i32 %181(%struct.gs_font_type1_s* %182, i32 %183, i32 0, %struct.gs_glyph_data_s* %cs_data253) #4
  store i32 %call254, i32* %code, align 4, !tbaa !5
  %185 = load i32, i32* %code, align 4, !tbaa !5
  %cmp255 = icmp slt i32 %185, 0
  br i1 %cmp255, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %sw.bb.249
  %186 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %186, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.258:                                       ; preds = %sw.bb.249
  %187 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr259 = getelementptr inbounds i32, i32* %187, i32 -1
  store i32* %incdec.ptr259, i32** %csp, align 8, !tbaa !1
  %188 = load i8*, i8** %cip, align 8, !tbaa !1
  %189 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip260 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %189, i32 0, i32 0
  store i8* %188, i8** %ip260, align 8, !tbaa !54
  %190 = load i16, i16* %state, align 2, !tbaa !10
  %191 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate261 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %191, i32 0, i32 2
  store i16 %190, i16* %dstate261, align 2, !tbaa !56
  %192 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %incdec.ptr262 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %192, i32 1
  store %struct.ip_state_t* %incdec.ptr262, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %193 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data263 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %193, i32 0, i32 3
  %bits264 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data263, i32 0, i32 0
  %data265 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits264, i32 0, i32 0
  %194 = load i8*, i8** %data265, align 8, !tbaa !59
  store i8* %194, i8** %cip, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.735

sw.bb.266:                                        ; preds = %if.end.247
  %195 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data267 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %195, i32 0, i32 3
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %cs_data267, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #4
  %196 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %incdec.ptr268 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %196, i32 -1
  store %struct.ip_state_t* %incdec.ptr268, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.735

sw.bb.269:                                        ; preds = %if.end.247
  %arraydecay270 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr271 = getelementptr inbounds i32, i32* %arraydecay270, i64 -1
  store i32* %add.ptr271, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.735

sw.bb.272:                                        ; preds = %if.end.247
  %197 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %198 = load i32, i32* %arrayidx273, align 4, !tbaa !5
  %arrayidx274 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %199 = load i32, i32* %arrayidx274, align 4, !tbaa !5
  %call275 = call i32 @t1_hinter__hstem(%struct.t1_hinter_s* %197, i32 %198, i32 %199) #4
  store i32 %call275, i32* %code, align 4, !tbaa !5
  %200 = load i32, i32* %code, align 4, !tbaa !5
  %cmp276 = icmp slt i32 %200, 0
  br i1 %cmp276, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %sw.bb.272
  %201 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %201, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.279:                                       ; preds = %sw.bb.272
  %arraydecay280 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr281 = getelementptr inbounds i32, i32* %arraydecay280, i64 -1
  store i32* %add.ptr281, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.735

sw.bb.282:                                        ; preds = %if.end.247
  %202 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %arrayidx283 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %203 = load i32, i32* %arrayidx283, align 4, !tbaa !5
  %arrayidx284 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %204 = load i32, i32* %arrayidx284, align 4, !tbaa !5
  %call285 = call i32 @t1_hinter__vstem(%struct.t1_hinter_s* %202, i32 %203, i32 %204) #4
  store i32 %call285, i32* %code, align 4, !tbaa !5
  %205 = load i32, i32* %code, align 4, !tbaa !5
  %cmp286 = icmp slt i32 %205, 0
  br i1 %cmp286, label %if.then.288, label %if.end.289

if.then.288:                                      ; preds = %sw.bb.282
  %206 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %206, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.289:                                       ; preds = %sw.bb.282
  %arraydecay290 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr291 = getelementptr inbounds i32, i32* %arraydecay290, i64 -1
  store i32* %add.ptr291, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.735

sw.bb.292:                                        ; preds = %if.end.247
  %arrayidx293 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %207 = load i32, i32* %arrayidx293, align 4, !tbaa !5
  %arrayidx294 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  store i32 %207, i32* %arrayidx294, align 4, !tbaa !5
  %arrayidx295 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  store i32 0, i32* %arrayidx295, align 4, !tbaa !5
  br label %move

move:                                             ; preds = %sw.bb.373, %sw.bb.372, %sw.bb.292
  %208 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %arrayidx296 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %209 = load i32, i32* %arrayidx296, align 4, !tbaa !5
  %arrayidx297 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %210 = load i32, i32* %arrayidx297, align 4, !tbaa !5
  %call298 = call i32 @t1_hinter__rmoveto(%struct.t1_hinter_s* %208, i32 %209, i32 %210) #4
  store i32 %call298, i32* %code, align 4, !tbaa !5
  br label %cc

sw.bb.299:                                        ; preds = %if.end.247
  br label %line

line:                                             ; preds = %sw.bb.311, %sw.bb.309, %sw.bb.299
  %211 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %arrayidx300 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %212 = load i32, i32* %arrayidx300, align 4, !tbaa !5
  %arrayidx301 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %213 = load i32, i32* %arrayidx301, align 4, !tbaa !5
  %call302 = call i32 @t1_hinter__rlineto(%struct.t1_hinter_s* %211, i32 %212, i32 %213) #4
  store i32 %call302, i32* %code, align 4, !tbaa !5
  br label %cc

cc:                                               ; preds = %sw.bb.387, %sw.bb.381, %sw.bb.375, %sw.bb.315, %line, %move
  %214 = load i32, i32* %code, align 4, !tbaa !5
  %cmp303 = icmp slt i32 %214, 0
  br i1 %cmp303, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %cc
  %215 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %215, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.306:                                       ; preds = %cc
  %arraydecay307 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr308 = getelementptr inbounds i32, i32* %arraydecay307, i64 -1
  store i32* %add.ptr308, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.735

sw.bb.309:                                        ; preds = %if.end.247
  %arrayidx310 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  store i32 0, i32* %arrayidx310, align 4, !tbaa !5
  br label %line

sw.bb.311:                                        ; preds = %if.end.247
  %arrayidx312 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %216 = load i32, i32* %arrayidx312, align 4, !tbaa !5
  %arrayidx313 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  store i32 %216, i32* %arrayidx313, align 4, !tbaa !5
  %arrayidx314 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  store i32 0, i32* %arrayidx314, align 4, !tbaa !5
  br label %line

sw.bb.315:                                        ; preds = %if.end.247
  %217 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %arrayidx316 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %218 = load i32, i32* %arrayidx316, align 4, !tbaa !5
  %arrayidx317 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %219 = load i32, i32* %arrayidx317, align 4, !tbaa !5
  %arrayidx318 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 2
  %220 = load i32, i32* %arrayidx318, align 4, !tbaa !5
  %arrayidx319 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 3
  %221 = load i32, i32* %arrayidx319, align 4, !tbaa !5
  %arrayidx320 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 4
  %222 = load i32, i32* %arrayidx320, align 4, !tbaa !5
  %arrayidx321 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 5
  %223 = load i32, i32* %arrayidx321, align 4, !tbaa !5
  %call322 = call i32 @t1_hinter__rcurveto(%struct.t1_hinter_s* %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223) #4
  store i32 %call322, i32* %code, align 4, !tbaa !5
  br label %cc

sw.bb.323:                                        ; preds = %if.end.247
  %224 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %seac_accent = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %224, i32 0, i32 23
  %225 = load i32, i32* %seac_accent, align 4, !tbaa !60
  %cmp324 = icmp slt i32 %225, 0
  br i1 %cmp324, label %if.then.326, label %if.else.352

if.then.326:                                      ; preds = %sw.bb.323
  %226 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %sb_set = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %226, i32 0, i32 17
  %227 = load i32, i32* %sb_set, align 4, !tbaa !61
  %tobool327 = icmp ne i32 %227, 0
  br i1 %tobool327, label %if.end.339, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.326
  %228 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width_set = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %228, i32 0, i32 18
  %229 = load i32, i32* %width_set, align 4, !tbaa !62
  %tobool328 = icmp ne i32 %229, 0
  br i1 %tobool328, label %if.end.339, label %if.then.329

if.then.329:                                      ; preds = %land.lhs.true
  %230 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits330 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %230, i32 0, i32 0
  %data331 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits330, i32 0, i32 0
  %231 = load i8*, i8** %data331, align 8, !tbaa !51
  store i8* %231, i8** %cip, align 8, !tbaa !1
  %232 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %233 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %path332 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %233, i32 0, i32 3
  %234 = load %struct.gx_path_s*, %struct.gx_path_s** %path332, align 8, !tbaa !31
  call void @t1_hinter__init(%struct.t1_hinter_s* %232, %struct.gx_path_s* %234) #4
  %235 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %call333 = call i32 @t1_hinter__sbw(%struct.t1_hinter_s* %235, i32 0, i32 0, i32 0, i32 0) #4
  store i32 %call333, i32* %code, align 4, !tbaa !5
  %236 = load i32, i32* %code, align 4, !tbaa !5
  %cmp334 = icmp slt i32 %236, 0
  br i1 %cmp334, label %if.then.336, label %if.end.337

if.then.336:                                      ; preds = %if.then.329
  %237 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %237, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.337:                                       ; preds = %if.then.329
  %238 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %call338 = call i32 @gs_type1_sbw(%struct.gs_type1_state_s* %238, i32 0, i32 0, i32 0, i32 0) #4
  br label %rsbw

if.end.339:                                       ; preds = %land.lhs.true, %if.then.326
  %239 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %call340 = call i32 @t1_hinter__endglyph(%struct.t1_hinter_s* %239) #4
  store i32 %call340, i32* %code, align 4, !tbaa !5
  %240 = load i32, i32* %code, align 4, !tbaa !5
  %cmp341 = icmp slt i32 %240, 0
  br i1 %cmp341, label %if.then.343, label %if.end.344

if.then.343:                                      ; preds = %if.end.339
  %241 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %241, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.344:                                       ; preds = %if.end.339
  %242 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pis345 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %242, i32 0, i32 2
  %243 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis345, align 8, !tbaa !32
  %244 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %path346 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %244, i32 0, i32 3
  %245 = load %struct.gx_path_s*, %struct.gx_path_s** %path346, align 8, !tbaa !31
  %call347 = call i32 @gx_setcurrentpoint_from_path(%struct.gs_imager_state_s* %243, %struct.gx_path_s* %245) #4
  store i32 %call347, i32* %code, align 4, !tbaa !5
  %246 = load i32, i32* %code, align 4, !tbaa !5
  %cmp348 = icmp slt i32 %246, 0
  br i1 %cmp348, label %if.then.350, label %if.end.351

if.then.350:                                      ; preds = %if.end.344
  %247 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %247, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.351:                                       ; preds = %if.end.344
  br label %if.end.358

if.else.352:                                      ; preds = %sw.bb.323
  %248 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %call353 = call i32 @t1_hinter__end_subglyph(%struct.t1_hinter_s* %248) #4
  store i32 %call353, i32* %code, align 4, !tbaa !5
  %249 = load i32, i32* %code, align 4, !tbaa !5
  %cmp354 = icmp slt i32 %249, 0
  br i1 %cmp354, label %if.then.356, label %if.end.357

if.then.356:                                      ; preds = %if.else.352
  %250 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %250, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.357:                                       ; preds = %if.else.352
  %251 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %seac_flag = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %251, i32 0, i32 19
  store i32 1, i32* %seac_flag, align 4, !tbaa !63
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.357, %if.end.351
  %252 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %call359 = call i32 @gs_type1_endchar(%struct.gs_type1_state_s* %252) #4
  store i32 %call359, i32* %code, align 4, !tbaa !5
  %253 = load i32, i32* %code, align 4, !tbaa !5
  %cmp360 = icmp eq i32 %253, 1
  br i1 %cmp360, label %if.then.362, label %if.end.371

if.then.362:                                      ; preds = %if.end.358
  %254 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count363 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %254, i32 0, i32 15
  %255 = load i32, i32* %ips_count363, align 4, !tbaa !27
  %sub364 = sub nsw i32 %255, 1
  %idxprom365 = sext i32 %sub364 to i64
  %256 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ipstack366 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %256, i32 0, i32 14
  %arrayidx367 = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack366, i32 0, i64 %idxprom365
  store %struct.ip_state_t* %arrayidx367, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %257 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data368 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %257, i32 0, i32 3
  %bits369 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data368, i32 0, i32 0
  %data370 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits369, i32 0, i32 0
  %258 = load i8*, i8** %data370, align 8, !tbaa !59
  store i8* %258, i8** %cip, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.371:                                       ; preds = %if.end.358
  %259 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %259, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

sw.bb.372:                                        ; preds = %if.end.247
  br label %move

sw.bb.373:                                        ; preds = %if.end.247
  %arrayidx374 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  store i32 0, i32* %arrayidx374, align 4, !tbaa !5
  br label %move

sw.bb.375:                                        ; preds = %if.end.247
  %260 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %arrayidx376 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %261 = load i32, i32* %arrayidx376, align 4, !tbaa !5
  %arrayidx377 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %262 = load i32, i32* %arrayidx377, align 4, !tbaa !5
  %arrayidx378 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 2
  %263 = load i32, i32* %arrayidx378, align 4, !tbaa !5
  %arrayidx379 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 3
  %264 = load i32, i32* %arrayidx379, align 4, !tbaa !5
  %call380 = call i32 @t1_hinter__rcurveto(%struct.t1_hinter_s* %260, i32 0, i32 %261, i32 %262, i32 %263, i32 %264, i32 0) #4
  store i32 %call380, i32* %code, align 4, !tbaa !5
  br label %cc

sw.bb.381:                                        ; preds = %if.end.247
  %265 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %arrayidx382 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %266 = load i32, i32* %arrayidx382, align 4, !tbaa !5
  %arrayidx383 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %267 = load i32, i32* %arrayidx383, align 4, !tbaa !5
  %arrayidx384 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 2
  %268 = load i32, i32* %arrayidx384, align 4, !tbaa !5
  %arrayidx385 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 3
  %269 = load i32, i32* %arrayidx385, align 4, !tbaa !5
  %call386 = call i32 @t1_hinter__rcurveto(%struct.t1_hinter_s* %265, i32 %266, i32 0, i32 %267, i32 %268, i32 0, i32 %269) #4
  store i32 %call386, i32* %code, align 4, !tbaa !5
  br label %cc

sw.bb.387:                                        ; preds = %if.end.247
  %270 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %call388 = call i32 @t1_hinter__closepath(%struct.t1_hinter_s* %270) #4
  store i32 %call388, i32* %code, align 4, !tbaa !5
  br label %cc

sw.bb.389:                                        ; preds = %if.end.247
  %271 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %seac_flag390 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %271, i32 0, i32 19
  %272 = load i32, i32* %seac_flag390, align 4, !tbaa !63
  %tobool391 = icmp ne i32 %272, 0
  br i1 %tobool391, label %if.else.425, label %if.then.392

if.then.392:                                      ; preds = %sw.bb.389
  %273 = bitcast i32* %sbx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %273) #1
  %arrayidx393 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %274 = load i32, i32* %arrayidx393, align 4, !tbaa !5
  store i32 %274, i32* %sbx, align 4, !tbaa !5
  %275 = bitcast i32* %sby to i8*
  call void @llvm.lifetime.start(i64 4, i8* %275) #1
  store i32 0, i32* %sby, align 4, !tbaa !5
  %276 = bitcast i32* %wx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %276) #1
  %arrayidx394 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %277 = load i32, i32* %arrayidx394, align 4, !tbaa !5
  store i32 %277, i32* %wx, align 4, !tbaa !5
  %278 = bitcast i32* %wy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %278) #1
  store i32 0, i32* %wy, align 4, !tbaa !5
  %279 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %seac_accent395 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %279, i32 0, i32 23
  %280 = load i32, i32* %seac_accent395, align 4, !tbaa !60
  %cmp396 = icmp slt i32 %280, 0
  br i1 %cmp396, label %if.then.398, label %if.else.422

if.then.398:                                      ; preds = %if.then.392
  %281 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %sb_set399 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %281, i32 0, i32 17
  %282 = load i32, i32* %sb_set399, align 4, !tbaa !61
  %tobool400 = icmp ne i32 %282, 0
  br i1 %tobool400, label %if.then.401, label %if.end.414

if.then.401:                                      ; preds = %if.then.398
  %283 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %lsb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %283, i32 0, i32 21
  %x402 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb, i32 0, i32 0
  %284 = load i32, i32* %x402, align 4, !tbaa !64
  %285 = load i32, i32* %sbx, align 4, !tbaa !5
  %sub403 = sub nsw i32 %284, %285
  %286 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin_offset = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %286, i32 0, i32 31
  %x404 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin_offset, i32 0, i32 0
  store i32 %sub403, i32* %x404, align 4, !tbaa !65
  %287 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %lsb405 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %287, i32 0, i32 21
  %y406 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb405, i32 0, i32 1
  %288 = load i32, i32* %y406, align 4, !tbaa !66
  %289 = load i32, i32* %sby, align 4, !tbaa !5
  %sub407 = sub nsw i32 %288, %289
  %290 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin_offset408 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %290, i32 0, i32 31
  %y409 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin_offset408, i32 0, i32 1
  store i32 %sub407, i32* %y409, align 4, !tbaa !67
  %291 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %lsb410 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %291, i32 0, i32 21
  %x411 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb410, i32 0, i32 0
  %292 = load i32, i32* %x411, align 4, !tbaa !64
  store i32 %292, i32* %sbx, align 4, !tbaa !5
  %293 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %lsb412 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %293, i32 0, i32 21
  %y413 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb412, i32 0, i32 1
  %294 = load i32, i32* %y413, align 4, !tbaa !66
  store i32 %294, i32* %sby, align 4, !tbaa !5
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.401, %if.then.398
  %295 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width_set415 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %295, i32 0, i32 18
  %296 = load i32, i32* %width_set415, align 4, !tbaa !62
  %tobool416 = icmp ne i32 %296, 0
  br i1 %tobool416, label %if.then.417, label %if.end.421

if.then.417:                                      ; preds = %if.end.414
  %297 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %297, i32 0, i32 22
  %x418 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  %298 = load i32, i32* %x418, align 4, !tbaa !68
  store i32 %298, i32* %wx, align 4, !tbaa !5
  %299 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width419 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %299, i32 0, i32 22
  %y420 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width419, i32 0, i32 1
  %300 = load i32, i32* %y420, align 4, !tbaa !69
  store i32 %300, i32* %wy, align 4, !tbaa !5
  br label %if.end.421

if.end.421:                                       ; preds = %if.then.417, %if.end.414
  br label %if.end.423

if.else.422:                                      ; preds = %if.then.392
  %301 = load i32, i32* %sbx, align 4, !tbaa !5
  %302 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %base_lsb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %302, i32 0, i32 29
  store i32 %301, i32* %base_lsb, align 4, !tbaa !70
  br label %if.end.423

if.end.423:                                       ; preds = %if.else.422, %if.end.421
  %303 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %304 = load i32, i32* %sbx, align 4, !tbaa !5
  %305 = load i32, i32* %sby, align 4, !tbaa !5
  %306 = load i32, i32* %wx, align 4, !tbaa !5
  %307 = load i32, i32* %wy, align 4, !tbaa !5
  %call424 = call i32 @t1_hinter__sbw(%struct.t1_hinter_s* %303, i32 %304, i32 %305, i32 %306, i32 %307) #4
  store i32 %call424, i32* %code, align 4, !tbaa !5
  %308 = bitcast i32* %wy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %309 = bitcast i32* %wx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast i32* %sby to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #1
  %311 = bitcast i32* %sbx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #1
  br label %if.end.437

if.else.425:                                      ; preds = %sw.bb.389
  %312 = bitcast i32* %accent_lsb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %312) #1
  %arrayidx426 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %313 = load i32, i32* %arrayidx426, align 4, !tbaa !5
  store i32 %313, i32* %accent_lsb, align 4, !tbaa !5
  %314 = bitcast i32* %overall_x_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %314) #1
  %315 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %compound_lsb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %315, i32 0, i32 25
  %x427 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %compound_lsb, i32 0, i32 0
  %316 = load i32, i32* %x427, align 4, !tbaa !71
  %317 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %adxy = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %317, i32 0, i32 28
  %x428 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adxy, i32 0, i32 0
  %318 = load i32, i32* %x428, align 4, !tbaa !72
  %add429 = add nsw i32 %316, %318
  %319 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %asb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %319, i32 0, i32 24
  %320 = load i32, i32* %asb, align 4, !tbaa !73
  %sub430 = sub nsw i32 %add429, %320
  %321 = load i32, i32* %accent_lsb, align 4, !tbaa !5
  %add431 = add nsw i32 %sub430, %321
  %322 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %base_lsb432 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %322, i32 0, i32 29
  %323 = load i32, i32* %base_lsb432, align 4, !tbaa !70
  %sub433 = sub nsw i32 %add431, %323
  store i32 %sub433, i32* %overall_x_offset, align 4, !tbaa !5
  %324 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %325 = load i32, i32* %overall_x_offset, align 4, !tbaa !5
  %326 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %adxy434 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %326, i32 0, i32 28
  %y435 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adxy434, i32 0, i32 1
  %327 = load i32, i32* %y435, align 4, !tbaa !74
  %call436 = call i32 @t1_hinter__sbw_seac(%struct.t1_hinter_s* %324, i32 %325, i32 %327) #4
  store i32 %call436, i32* %code, align 4, !tbaa !5
  %328 = bitcast i32* %overall_x_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %328) #1
  %329 = bitcast i32* %accent_lsb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %329) #1
  br label %if.end.437

if.end.437:                                       ; preds = %if.else.425, %if.end.423
  %330 = load i32, i32* %code, align 4, !tbaa !5
  %cmp438 = icmp slt i32 %330, 0
  br i1 %cmp438, label %if.then.440, label %if.end.441

if.then.440:                                      ; preds = %if.end.437
  %331 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %331, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.441:                                       ; preds = %if.end.437
  %332 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %arrayidx442 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %333 = load i32, i32* %arrayidx442, align 4, !tbaa !5
  %arrayidx443 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %334 = load i32, i32* %arrayidx443, align 4, !tbaa !5
  %call444 = call i32 @gs_type1_sbw(%struct.gs_type1_state_s* %332, i32 %333, i32 0, i32 %334, i32 0) #4
  %arrayidx445 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  store i32 0, i32* %arrayidx445, align 4, !tbaa !5
  br label %rsbw

rsbw:                                             ; preds = %if.end.554, %if.end.441, %if.end.337
  %335 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %os_count446 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %335, i32 0, i32 13
  store i32 0, i32* %os_count446, align 4, !tbaa !49
  %336 = load i8*, i8** %cip, align 8, !tbaa !1
  %337 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip447 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %337, i32 0, i32 0
  store i8* %336, i8** %ip447, align 8, !tbaa !54
  %338 = load i16, i16* %state, align 2, !tbaa !10
  %339 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate448 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %339, i32 0, i32 2
  store i16 %338, i16* %dstate448, align 2, !tbaa !56
  %340 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %341 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ipstack449 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %341, i32 0, i32 14
  %arrayidx450 = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack449, i32 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint %struct.ip_state_t* %340 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ip_state_t* %arrayidx450 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 72
  %add451 = add nsw i64 %sub.ptr.div, 1
  %conv452 = trunc i64 %add451 to i32
  %342 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count453 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %342, i32 0, i32 15
  store i32 %conv452, i32* %ips_count453, align 4, !tbaa !27
  %343 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %init_done454 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %343, i32 0, i32 16
  %344 = load i32, i32* %init_done454, align 4, !tbaa !30
  %cmp455 = icmp slt i32 %344, 0
  br i1 %cmp455, label %if.then.457, label %if.end.459

if.then.457:                                      ; preds = %rsbw
  %345 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %init_done458 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %345, i32 0, i32 16
  store i32 0, i32* %init_done458, align 4, !tbaa !30
  br label %if.end.459

if.end.459:                                       ; preds = %if.then.457, %rsbw
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

sw.bb.460:                                        ; preds = %if.end.247
  %346 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool461 = icmp ne i32 %346, 0
  br i1 %tobool461, label %cond.true.462, label %cond.false.474

cond.true.462:                                    ; preds = %sw.bb.460
  %347 = load i8*, i8** %cip, align 8, !tbaa !1
  %348 = load i8, i8* %347, align 1, !tbaa !9
  %conv463 = zext i8 %348 to i32
  %349 = load i16, i16* %state, align 2, !tbaa !10
  %conv464 = zext i16 %349 to i32
  %shr465 = ashr i32 %conv464, 8
  %xor466 = xor i32 %conv463, %shr465
  store i32 %xor466, i32* %c, align 4, !tbaa !5
  %350 = load i8*, i8** %cip, align 8, !tbaa !1
  %351 = load i8, i8* %350, align 1, !tbaa !9
  %conv467 = zext i8 %351 to i32
  %352 = load i16, i16* %state, align 2, !tbaa !10
  %conv468 = zext i16 %352 to i32
  %add469 = add nsw i32 %conv467, %conv468
  %mul470 = mul nsw i32 %add469, 52845
  %add471 = add nsw i32 %mul470, 22719
  %conv472 = trunc i32 %add471 to i16
  store i16 %conv472, i16* %state, align 2, !tbaa !10
  %conv473 = zext i16 %conv472 to i32
  br label %cond.end.476

cond.false.474:                                   ; preds = %sw.bb.460
  %353 = load i8*, i8** %cip, align 8, !tbaa !1
  %354 = load i8, i8* %353, align 1, !tbaa !9
  %conv475 = zext i8 %354 to i32
  store i32 %conv475, i32* %c, align 4, !tbaa !5
  br label %cond.end.476

cond.end.476:                                     ; preds = %cond.false.474, %cond.true.462
  %cond477 = phi i32 [ %conv473, %cond.true.462 ], [ %conv475, %cond.false.474 ]
  %355 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr478 = getelementptr inbounds i8, i8* %355, i32 1
  store i8* %incdec.ptr478, i8** %cip, align 8, !tbaa !1
  %356 = load i32, i32* %c, align 4, !tbaa !5
  switch i32 %356, label %sw.default.732 [
    i32 0, label %sw.bb.479
    i32 1, label %sw.bb.487
    i32 2, label %sw.bb.501
    i32 6, label %sw.bb.515
    i32 7, label %sw.bb.531
    i32 12, label %sw.bb.560
    i32 15, label %sw.bb.568
    i32 16, label %sw.bb.571
    i32 17, label %sw.bb.689
    i32 33, label %sw.bb.713
  ]

sw.bb.479:                                        ; preds = %cond.end.476
  %357 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %call480 = call i32 @t1_hinter__dotsection(%struct.t1_hinter_s* %357) #4
  store i32 %call480, i32* %code, align 4, !tbaa !5
  %358 = load i32, i32* %code, align 4, !tbaa !5
  %cmp481 = icmp slt i32 %358, 0
  br i1 %cmp481, label %if.then.483, label %if.end.484

if.then.483:                                      ; preds = %sw.bb.479
  %359 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %359, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.484:                                       ; preds = %sw.bb.479
  %arraydecay485 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr486 = getelementptr inbounds i32, i32* %arraydecay485, i64 -1
  store i32* %add.ptr486, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.735

sw.bb.487:                                        ; preds = %cond.end.476
  %360 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %arrayidx488 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %361 = load i32, i32* %arrayidx488, align 4, !tbaa !5
  %arrayidx489 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %362 = load i32, i32* %arrayidx489, align 4, !tbaa !5
  %arrayidx490 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 2
  %363 = load i32, i32* %arrayidx490, align 4, !tbaa !5
  %arrayidx491 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 3
  %364 = load i32, i32* %arrayidx491, align 4, !tbaa !5
  %arrayidx492 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 4
  %365 = load i32, i32* %arrayidx492, align 4, !tbaa !5
  %arrayidx493 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 5
  %366 = load i32, i32* %arrayidx493, align 4, !tbaa !5
  %call494 = call i32 @t1_hinter__vstem3(%struct.t1_hinter_s* %360, i32 %361, i32 %362, i32 %363, i32 %364, i32 %365, i32 %366) #4
  store i32 %call494, i32* %code, align 4, !tbaa !5
  %367 = load i32, i32* %code, align 4, !tbaa !5
  %cmp495 = icmp slt i32 %367, 0
  br i1 %cmp495, label %if.then.497, label %if.end.498

if.then.497:                                      ; preds = %sw.bb.487
  %368 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %368, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.498:                                       ; preds = %sw.bb.487
  %arraydecay499 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr500 = getelementptr inbounds i32, i32* %arraydecay499, i64 -1
  store i32* %add.ptr500, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.735

sw.bb.501:                                        ; preds = %cond.end.476
  %369 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %arrayidx502 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %370 = load i32, i32* %arrayidx502, align 4, !tbaa !5
  %arrayidx503 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %371 = load i32, i32* %arrayidx503, align 4, !tbaa !5
  %arrayidx504 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 2
  %372 = load i32, i32* %arrayidx504, align 4, !tbaa !5
  %arrayidx505 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 3
  %373 = load i32, i32* %arrayidx505, align 4, !tbaa !5
  %arrayidx506 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 4
  %374 = load i32, i32* %arrayidx506, align 4, !tbaa !5
  %arrayidx507 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 5
  %375 = load i32, i32* %arrayidx507, align 4, !tbaa !5
  %call508 = call i32 @t1_hinter__hstem3(%struct.t1_hinter_s* %369, i32 %370, i32 %371, i32 %372, i32 %373, i32 %374, i32 %375) #4
  store i32 %call508, i32* %code, align 4, !tbaa !5
  %376 = load i32, i32* %code, align 4, !tbaa !5
  %cmp509 = icmp slt i32 %376, 0
  br i1 %cmp509, label %if.then.511, label %if.end.512

if.then.511:                                      ; preds = %sw.bb.501
  %377 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %377, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.512:                                       ; preds = %sw.bb.501
  %arraydecay513 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr514 = getelementptr inbounds i32, i32* %arraydecay513, i64 -1
  store i32* %add.ptr514, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.735

sw.bb.515:                                        ; preds = %cond.end.476
  %378 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %arraydecay516 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr517 = getelementptr inbounds i32, i32* %arraydecay516, i64 1
  %arrayidx518 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %379 = load i32, i32* %arrayidx518, align 4, !tbaa !5
  %380 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %call519 = call i32 @gs_type1_seac(%struct.gs_type1_state_s* %378, i32* %add.ptr517, i32 %379, %struct.ip_state_t* %380) #4
  store i32 %call519, i32* %code, align 4, !tbaa !5
  %381 = load i32, i32* %code, align 4, !tbaa !5
  %cmp520 = icmp ne i32 %381, 0
  br i1 %cmp520, label %if.then.522, label %if.end.525

if.then.522:                                      ; preds = %sw.bb.515
  %arrayidx523 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 3
  %382 = load i32, i32* %arrayidx523, align 4, !tbaa !5
  %shr524 = ashr i32 %382, 8
  %383 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %shr524, i32* %383, align 4, !tbaa !5
  %384 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %384, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.525:                                       ; preds = %sw.bb.515
  %arraydecay526 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr527 = getelementptr inbounds i32, i32* %arraydecay526, i64 -1
  store i32* %add.ptr527, i32** %csp, align 8, !tbaa !1
  %385 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data528 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %385, i32 0, i32 3
  %bits529 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data528, i32 0, i32 0
  %data530 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits529, i32 0, i32 0
  %386 = load i8*, i8** %data530, align 8, !tbaa !59
  store i8* %386, i8** %cip, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.735

sw.bb.531:                                        ; preds = %cond.end.476
  %387 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %seac_flag532 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %387, i32 0, i32 19
  %388 = load i32, i32* %seac_flag532, align 4, !tbaa !63
  %tobool533 = icmp ne i32 %388, 0
  br i1 %tobool533, label %if.else.540, label %if.then.534

if.then.534:                                      ; preds = %sw.bb.531
  %389 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %arrayidx535 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %390 = load i32, i32* %arrayidx535, align 4, !tbaa !5
  %arrayidx536 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %391 = load i32, i32* %arrayidx536, align 4, !tbaa !5
  %arrayidx537 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 2
  %392 = load i32, i32* %arrayidx537, align 4, !tbaa !5
  %arrayidx538 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 3
  %393 = load i32, i32* %arrayidx538, align 4, !tbaa !5
  %call539 = call i32 @t1_hinter__sbw(%struct.t1_hinter_s* %389, i32 %390, i32 %391, i32 %392, i32 %393) #4
  store i32 %call539, i32* %code, align 4, !tbaa !5
  br label %if.end.550

if.else.540:                                      ; preds = %sw.bb.531
  %394 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %arrayidx541 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %395 = load i32, i32* %arrayidx541, align 4, !tbaa !5
  %396 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %adxy542 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %396, i32 0, i32 28
  %x543 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adxy542, i32 0, i32 0
  %397 = load i32, i32* %x543, align 4, !tbaa !72
  %add544 = add nsw i32 %395, %397
  %arrayidx545 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %398 = load i32, i32* %arrayidx545, align 4, !tbaa !5
  %399 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %adxy546 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %399, i32 0, i32 28
  %y547 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adxy546, i32 0, i32 1
  %400 = load i32, i32* %y547, align 4, !tbaa !74
  %add548 = add nsw i32 %398, %400
  %call549 = call i32 @t1_hinter__sbw_seac(%struct.t1_hinter_s* %394, i32 %add544, i32 %add548) #4
  store i32 %call549, i32* %code, align 4, !tbaa !5
  br label %if.end.550

if.end.550:                                       ; preds = %if.else.540, %if.then.534
  %401 = load i32, i32* %code, align 4, !tbaa !5
  %cmp551 = icmp slt i32 %401, 0
  br i1 %cmp551, label %if.then.553, label %if.end.554

if.then.553:                                      ; preds = %if.end.550
  %402 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %402, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.554:                                       ; preds = %if.end.550
  %403 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %arrayidx555 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %404 = load i32, i32* %arrayidx555, align 4, !tbaa !5
  %arrayidx556 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %405 = load i32, i32* %arrayidx556, align 4, !tbaa !5
  %arrayidx557 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 2
  %406 = load i32, i32* %arrayidx557, align 4, !tbaa !5
  %arrayidx558 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 3
  %407 = load i32, i32* %arrayidx558, align 4, !tbaa !5
  %call559 = call i32 @gs_type1_sbw(%struct.gs_type1_state_s* %403, i32 %404, i32 %405, i32 %406, i32 %407) #4
  br label %rsbw

sw.bb.560:                                        ; preds = %cond.end.476
  %408 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx561 = getelementptr inbounds i32, i32* %408, i64 -1
  %409 = load i32, i32* %arrayidx561, align 4, !tbaa !5
  %conv562 = sitofp i32 %409 to double
  %410 = load i32*, i32** %csp, align 8, !tbaa !1
  %411 = load i32, i32* %410, align 4, !tbaa !5
  %conv563 = sitofp i32 %411 to double
  %div = fdiv double %conv562, %conv563
  %mul564 = fmul double %div, 2.560000e+02
  %conv565 = fptosi double %mul564 to i32
  %412 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx566 = getelementptr inbounds i32, i32* %412, i64 -1
  store i32 %conv565, i32* %arrayidx566, align 4, !tbaa !5
  %413 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr567 = getelementptr inbounds i32, i32* %413, i32 -1
  store i32* %incdec.ptr567, i32** %csp, align 8, !tbaa !1
  br label %pushed

sw.bb.568:                                        ; preds = %cond.end.476
  %arraydecay569 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr570 = getelementptr inbounds i32, i32* %arraydecay569, i64 -1
  store i32* %add.ptr570, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.735

sw.bb.571:                                        ; preds = %cond.end.476
  %414 = bitcast i32* %num_results to i8*
  call void @llvm.lifetime.start(i64 4, i8* %414) #1
  %415 = load i32*, i32** %csp, align 8, !tbaa !1
  %416 = load i32, i32* %415, align 4, !tbaa !5
  %shr572 = ashr i32 %416, 8
  %417 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %shr572, i32* %417, align 4, !tbaa !5
  switch i32 %shr572, label %sw.epilog.628 [
    i32 0, label %sw.bb.573
    i32 1, label %sw.bb.586
    i32 2, label %sw.bb.594
    i32 3, label %sw.bb.606
    i32 12, label %sw.bb.614
    i32 13, label %sw.bb.614
    i32 14, label %sw.bb.617
    i32 15, label %sw.bb.624
    i32 16, label %sw.bb.625
    i32 17, label %sw.bb.626
    i32 18, label %sw.bb.627
  ]

sw.bb.573:                                        ; preds = %sw.bb.571
  %418 = bitcast i32* %fheight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %418) #1
  %419 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx574 = getelementptr inbounds i32, i32* %419, i64 -4
  %420 = load i32, i32* %arrayidx574, align 4, !tbaa !5
  store i32 %420, i32* %fheight, align 4, !tbaa !5
  %421 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ignore_pops = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %421, i32 0, i32 33
  store i32 2, i32* %ignore_pops, align 4, !tbaa !75
  %422 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx575 = getelementptr inbounds i32, i32* %422, i64 -3
  %423 = load i32, i32* %arrayidx575, align 4, !tbaa !5
  %424 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %asb_diff = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %424, i32 0, i32 27
  %425 = load i32, i32* %asb_diff, align 4, !tbaa !76
  %sub576 = sub nsw i32 %423, %425
  %426 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx577 = getelementptr inbounds i32, i32* %426, i64 -4
  store i32 %sub576, i32* %arrayidx577, align 4, !tbaa !5
  %427 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx578 = getelementptr inbounds i32, i32* %427, i64 -2
  %428 = load i32, i32* %arrayidx578, align 4, !tbaa !5
  %429 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx579 = getelementptr inbounds i32, i32* %429, i64 -3
  store i32 %428, i32* %arrayidx579, align 4, !tbaa !5
  %430 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr580 = getelementptr inbounds i32, i32* %430, i64 -3
  store i32* %add.ptr580, i32** %csp, align 8, !tbaa !1
  %431 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %432 = load i32, i32* %fheight, align 4, !tbaa !5
  %call581 = call i32 @t1_hinter__flex_end(%struct.t1_hinter_s* %431, i32 %432) #4
  store i32 %call581, i32* %code, align 4, !tbaa !5
  %433 = bitcast i32* %fheight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %433) #1
  %434 = load i32, i32* %code, align 4, !tbaa !5
  %cmp582 = icmp slt i32 %434, 0
  br i1 %cmp582, label %if.then.584, label %if.end.585

if.then.584:                                      ; preds = %sw.bb.573
  %435 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %435, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.629

if.end.585:                                       ; preds = %sw.bb.573
  %436 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %flex_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %436, i32 0, i32 32
  store i32 8, i32* %flex_count, align 4, !tbaa !77
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.629

sw.bb.586:                                        ; preds = %sw.bb.571
  %437 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %call587 = call i32 @t1_hinter__flex_beg(%struct.t1_hinter_s* %437) #4
  store i32 %call587, i32* %code, align 4, !tbaa !5
  %438 = load i32, i32* %code, align 4, !tbaa !5
  %cmp588 = icmp slt i32 %438, 0
  br i1 %cmp588, label %if.then.590, label %if.end.591

if.then.590:                                      ; preds = %sw.bb.586
  %439 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %439, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.629

if.end.591:                                       ; preds = %sw.bb.586
  %440 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %flex_count592 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %440, i32 0, i32 32
  store i32 1, i32* %flex_count592, align 4, !tbaa !77
  %441 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr593 = getelementptr inbounds i32, i32* %441, i64 -2
  store i32* %add.ptr593, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.629

sw.bb.594:                                        ; preds = %sw.bb.571
  %442 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %flex_count595 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %442, i32 0, i32 32
  %443 = load i32, i32* %flex_count595, align 4, !tbaa !77
  %cmp596 = icmp sge i32 %443, 8
  br i1 %cmp596, label %if.then.598, label %if.end.599

if.then.598:                                      ; preds = %sw.bb.594
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.629

if.end.599:                                       ; preds = %sw.bb.594
  %444 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %call600 = call i32 @t1_hinter__flex_point(%struct.t1_hinter_s* %444) #4
  store i32 %call600, i32* %code, align 4, !tbaa !5
  %445 = load i32, i32* %code, align 4, !tbaa !5
  %cmp601 = icmp slt i32 %445, 0
  br i1 %cmp601, label %if.then.603, label %if.end.604

if.then.603:                                      ; preds = %if.end.599
  %446 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %446, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.629

if.end.604:                                       ; preds = %if.end.599
  %447 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr605 = getelementptr inbounds i32, i32* %447, i64 -2
  store i32* %add.ptr605, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.629

sw.bb.606:                                        ; preds = %sw.bb.571
  %448 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ignore_pops607 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %448, i32 0, i32 33
  store i32 1, i32* %ignore_pops607, align 4, !tbaa !75
  %449 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %call608 = call i32 @t1_hinter__drop_hints(%struct.t1_hinter_s* %449) #4
  store i32 %call608, i32* %code, align 4, !tbaa !5
  %450 = load i32, i32* %code, align 4, !tbaa !5
  %cmp609 = icmp slt i32 %450, 0
  br i1 %cmp609, label %if.then.611, label %if.end.612

if.then.611:                                      ; preds = %sw.bb.606
  %451 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %451, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.629

if.end.612:                                       ; preds = %sw.bb.606
  %452 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr613 = getelementptr inbounds i32, i32* %452, i64 -2
  store i32* %add.ptr613, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.629

sw.bb.614:                                        ; preds = %sw.bb.571, %sw.bb.571
  %arraydecay615 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr616 = getelementptr inbounds i32, i32* %arraydecay615, i64 -1
  store i32* %add.ptr616, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.629

sw.bb.617:                                        ; preds = %sw.bb.571
  store i32 1, i32* %num_results, align 4, !tbaa !5
  br label %blend

blend:                                            ; preds = %sw.bb.627, %sw.bb.626, %sw.bb.625, %sw.bb.624, %sw.bb.617
  %453 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %454 = load i32*, i32** %csp, align 8, !tbaa !1
  %455 = load i32, i32* %num_results, align 4, !tbaa !5
  %call618 = call i32 @gs_type1_blend(%struct.gs_type1_state_s* %453, i32* %454, i32 %455) #4
  store i32 %call618, i32* %code, align 4, !tbaa !5
  %456 = load i32, i32* %code, align 4, !tbaa !5
  %cmp619 = icmp slt i32 %456, 0
  br i1 %cmp619, label %if.then.621, label %if.end.622

if.then.621:                                      ; preds = %blend
  %457 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %457, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.629

if.end.622:                                       ; preds = %blend
  %458 = load i32, i32* %code, align 4, !tbaa !5
  %459 = load i32*, i32** %csp, align 8, !tbaa !1
  %idx.ext = sext i32 %458 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr623 = getelementptr inbounds i32, i32* %459, i64 %idx.neg
  store i32* %add.ptr623, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.629

sw.bb.624:                                        ; preds = %sw.bb.571
  store i32 2, i32* %num_results, align 4, !tbaa !5
  br label %blend

sw.bb.625:                                        ; preds = %sw.bb.571
  store i32 3, i32* %num_results, align 4, !tbaa !5
  br label %blend

sw.bb.626:                                        ; preds = %sw.bb.571
  store i32 4, i32* %num_results, align 4, !tbaa !5
  br label %blend

sw.bb.627:                                        ; preds = %sw.bb.571
  store i32 6, i32* %num_results, align 4, !tbaa !5
  br label %blend

sw.epilog.628:                                    ; preds = %sw.bb.571
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.629

cleanup.629:                                      ; preds = %sw.epilog.628, %if.end.622, %if.then.621, %sw.bb.614, %if.end.612, %if.then.611, %if.end.604, %if.then.603, %if.then.598, %if.end.591, %if.then.590, %if.end.585, %if.then.584
  %460 = bitcast i32* %num_results to i8*
  call void @llvm.lifetime.end(i64 4, i8* %460) #1
  %cleanup.dest.630 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.630, label %cleanup.735 [
    i32 0, label %cleanup.cont.631
  ]

cleanup.cont.631:                                 ; preds = %cleanup.629
  %461 = bitcast i32* %scount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %461) #1
  %462 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay632 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast633 = ptrtoint i32* %462 to i64
  %sub.ptr.rhs.cast634 = ptrtoint i32* %arraydecay632 to i64
  %sub.ptr.sub635 = sub i64 %sub.ptr.lhs.cast633, %sub.ptr.rhs.cast634
  %sub.ptr.div636 = sdiv exact i64 %sub.ptr.sub635, 4
  %conv637 = trunc i64 %sub.ptr.div636 to i32
  store i32 %conv637, i32* %scount, align 4, !tbaa !5
  %463 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %463) #1
  %464 = load i32, i32* %scount, align 4, !tbaa !5
  %cmp638 = icmp slt i32 %464, 1
  br i1 %cmp638, label %if.then.650, label %lor.lhs.false.640

lor.lhs.false.640:                                ; preds = %cleanup.cont.631
  %465 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx641 = getelementptr inbounds i32, i32* %465, i64 -1
  %466 = load i32, i32* %arrayidx641, align 4, !tbaa !5
  %cmp642 = icmp slt i32 %466, 0
  br i1 %cmp642, label %if.then.650, label %lor.lhs.false.644

lor.lhs.false.644:                                ; preds = %lor.lhs.false.640
  %467 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx645 = getelementptr inbounds i32, i32* %467, i64 -1
  %468 = load i32, i32* %arrayidx645, align 4, !tbaa !5
  %469 = load i32, i32* %scount, align 4, !tbaa !5
  %sub646 = sub nsw i32 %469, 1
  %shl647 = shl i32 %sub646, 8
  %cmp648 = icmp sgt i32 %468, %shl647
  br i1 %cmp648, label %if.then.650, label %if.end.651

if.then.650:                                      ; preds = %lor.lhs.false.644, %lor.lhs.false.640, %cleanup.cont.631
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.687

if.end.651:                                       ; preds = %lor.lhs.false.644
  %470 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx652 = getelementptr inbounds i32, i32* %470, i64 -1
  %471 = load i32, i32* %arrayidx652, align 4, !tbaa !5
  %shr653 = ashr i32 %471, 8
  store i32 %shr653, i32* %n, align 4, !tbaa !5
  %472 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %procs654 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %472, i32 0, i32 0
  %push_values = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs654, i32 0, i32 3
  %473 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** %push_values, align 8, !tbaa !78
  %474 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %callback_data = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %474, i32 0, i32 6
  %475 = load i8*, i8** %callback_data, align 8, !tbaa !79
  %476 = load i32*, i32** %csp, align 8, !tbaa !1
  %477 = load i32, i32* %n, align 4, !tbaa !5
  %add655 = add nsw i32 %477, 1
  %idx.ext656 = sext i32 %add655 to i64
  %idx.neg657 = sub i64 0, %idx.ext656
  %add.ptr658 = getelementptr inbounds i32, i32* %476, i64 %idx.neg657
  %478 = load i32, i32* %n, align 4, !tbaa !5
  %call659 = call i32 %473(i8* %475, i32* %add.ptr658, i32 %478) #4
  store i32 %call659, i32* %code, align 4, !tbaa !5
  %479 = load i32, i32* %code, align 4, !tbaa !5
  %cmp660 = icmp slt i32 %479, 0
  br i1 %cmp660, label %if.then.662, label %if.end.663

if.then.662:                                      ; preds = %if.end.651
  %480 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %480, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.687

if.end.663:                                       ; preds = %if.end.651
  %481 = load i32, i32* %n, align 4, !tbaa !5
  %add664 = add nsw i32 %481, 1
  %482 = load i32, i32* %scount, align 4, !tbaa !5
  %sub665 = sub nsw i32 %482, %add664
  store i32 %sub665, i32* %scount, align 4, !tbaa !5
  %483 = load i8*, i8** %cip, align 8, !tbaa !1
  %484 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip666 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %484, i32 0, i32 0
  store i8* %483, i8** %ip666, align 8, !tbaa !54
  %485 = load i16, i16* %state, align 2, !tbaa !10
  %486 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate667 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %486, i32 0, i32 2
  store i16 %485, i16* %dstate667, align 2, !tbaa !56
  %487 = load i32, i32* %scount, align 4, !tbaa !5
  %488 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %os_count668 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %488, i32 0, i32 13
  store i32 %487, i32* %os_count668, align 4, !tbaa !49
  %489 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %490 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ipstack669 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %490, i32 0, i32 14
  %arrayidx670 = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack669, i32 0, i64 0
  %sub.ptr.lhs.cast671 = ptrtoint %struct.ip_state_t* %489 to i64
  %sub.ptr.rhs.cast672 = ptrtoint %struct.ip_state_t* %arrayidx670 to i64
  %sub.ptr.sub673 = sub i64 %sub.ptr.lhs.cast671, %sub.ptr.rhs.cast672
  %sub.ptr.div674 = sdiv exact i64 %sub.ptr.sub673, 72
  %add675 = add nsw i64 %sub.ptr.div674, 1
  %conv676 = trunc i64 %add675 to i32
  %491 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count677 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %491, i32 0, i32 15
  store i32 %conv676, i32* %ips_count677, align 4, !tbaa !27
  %492 = load i32, i32* %scount, align 4, !tbaa !5
  %tobool678 = icmp ne i32 %492, 0
  br i1 %tobool678, label %if.then.679, label %if.end.686

if.then.679:                                      ; preds = %if.end.663
  %493 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ostack680 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %493, i32 0, i32 12
  %arraydecay681 = getelementptr inbounds [48 x i32], [48 x i32]* %ostack680, i32 0, i32 0
  %494 = bitcast i32* %arraydecay681 to i8*
  %arraydecay682 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %495 = bitcast i32* %arraydecay682 to i8*
  %496 = load i32, i32* %scount, align 4, !tbaa !5
  %conv683 = sext i32 %496 to i64
  %mul684 = mul i64 %conv683, 4
  %call685 = call i8* @memcpy(i8* %494, i8* %495, i64 %mul684) #5
  br label %if.end.686

if.end.686:                                       ; preds = %if.then.679, %if.end.663
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.687

cleanup.687:                                      ; preds = %if.end.686, %if.then.662, %if.then.650
  %497 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %497) #1
  %498 = bitcast i32* %scount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %498) #1
  br label %cleanup.735

sw.bb.689:                                        ; preds = %cond.end.476
  %499 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ignore_pops690 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %499, i32 0, i32 33
  %500 = load i32, i32* %ignore_pops690, align 4, !tbaa !75
  %cmp691 = icmp ne i32 %500, 0
  br i1 %cmp691, label %if.then.693, label %if.end.696

if.then.693:                                      ; preds = %sw.bb.689
  %501 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ignore_pops694 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %501, i32 0, i32 33
  %502 = load i32, i32* %ignore_pops694, align 4, !tbaa !75
  %dec695 = add nsw i32 %502, -1
  store i32 %dec695, i32* %ignore_pops694, align 4, !tbaa !75
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.696:                                       ; preds = %sw.bb.689
  br label %do.body.697

do.body.697:                                      ; preds = %if.end.696
  %503 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx698 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 47
  %cmp699 = icmp uge i32* %503, %arrayidx698
  br i1 %cmp699, label %if.then.701, label %if.end.702

if.then.701:                                      ; preds = %do.body.697
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.702:                                       ; preds = %do.body.697
  br label %do.cond.703

do.cond.703:                                      ; preds = %if.end.702
  br label %do.end.704

do.end.704:                                       ; preds = %do.cond.703
  %504 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr705 = getelementptr inbounds i32, i32* %504, i32 1
  store i32* %incdec.ptr705, i32** %csp, align 8, !tbaa !1
  %505 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %procs706 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %505, i32 0, i32 0
  %pop_value = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs706, i32 0, i32 4
  %506 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %pop_value, align 8, !tbaa !80
  %507 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %callback_data707 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %507, i32 0, i32 6
  %508 = load i8*, i8** %callback_data707, align 8, !tbaa !79
  %509 = load i32*, i32** %csp, align 8, !tbaa !1
  %call708 = call i32 %506(i8* %508, i32* %509) #4
  store i32 %call708, i32* %code, align 4, !tbaa !5
  %510 = load i32, i32* %code, align 4, !tbaa !5
  %cmp709 = icmp slt i32 %510, 0
  br i1 %cmp709, label %if.then.711, label %if.end.712

if.then.711:                                      ; preds = %do.end.704
  %511 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %511, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

if.end.712:                                       ; preds = %do.end.704
  br label %pushed

sw.bb.713:                                        ; preds = %cond.end.476
  %512 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %adxy714 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %512, i32 0, i32 28
  %x715 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adxy714, i32 0, i32 0
  %513 = load i32, i32* %x715, align 4, !tbaa !72
  %514 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin_offset716 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %514, i32 0, i32 31
  %x717 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin_offset716, i32 0, i32 0
  %515 = load i32, i32* %x717, align 4, !tbaa !65
  %add718 = add nsw i32 %513, %515
  %arrayidx719 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %516 = load i32, i32* %arrayidx719, align 4, !tbaa !5
  %add720 = add nsw i32 %516, %add718
  store i32 %add720, i32* %arrayidx719, align 4, !tbaa !5
  %517 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %adxy721 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %517, i32 0, i32 28
  %y722 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adxy721, i32 0, i32 1
  %518 = load i32, i32* %y722, align 4, !tbaa !74
  %519 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin_offset723 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %519, i32 0, i32 31
  %y724 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin_offset723, i32 0, i32 1
  %520 = load i32, i32* %y724, align 4, !tbaa !67
  %add725 = add nsw i32 %518, %520
  %arrayidx726 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %521 = load i32, i32* %arrayidx726, align 4, !tbaa !5
  %add727 = add nsw i32 %521, %add725
  store i32 %add727, i32* %arrayidx726, align 4, !tbaa !5
  %522 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h, align 8, !tbaa !1
  %arrayidx728 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %523 = load i32, i32* %arrayidx728, align 4, !tbaa !5
  %arrayidx729 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %524 = load i32, i32* %arrayidx729, align 4, !tbaa !5
  call void @t1_hinter__setcurrentpoint(%struct.t1_hinter_s* %522, i32 %523, i32 %524) #4
  %arraydecay730 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr731 = getelementptr inbounds i32, i32* %arraydecay730, i64 -1
  store i32* %add.ptr731, i32** %csp, align 8, !tbaa !1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.735

sw.default.732:                                   ; preds = %cond.end.476
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

sw.bb.733:                                        ; preds = %if.end.247, %if.end.247, %if.end.247, %if.end.247, %if.end.247, %if.end.247, %if.end.247, %if.end.247, %if.end.247, %if.end.247, %if.end.247
  br label %sw.default.734

sw.default.734:                                   ; preds = %if.end.247, %sw.bb.733
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.735

cleanup.735:                                      ; preds = %sw.default.734, %sw.default.732, %sw.bb.713, %if.then.711, %if.then.701, %if.then.693, %cleanup.687, %cleanup.629, %sw.bb.568, %if.then.553, %if.end.525, %if.then.522, %if.end.512, %if.then.511, %if.end.498, %if.then.497, %if.end.484, %if.then.483, %if.end.459, %if.then.440, %if.end.371, %if.then.362, %if.then.356, %if.then.350, %if.then.343, %if.then.336, %if.end.306, %if.then.305, %if.end.289, %if.then.288, %if.end.279, %if.then.278, %sw.bb.269, %sw.bb.266, %if.end.258, %if.then.257, %sw.bb.248, %do.end.246, %if.else.240, %cleanup.237, %cleanup, %if.then.102
  %525 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %525) #1
  %cleanup.dest.736 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.736, label %cleanup.737 [
    i32 12, label %for.cond.80
    i32 6, label %call.60
    i32 5, label %cont
    i32 10, label %top
  ]

cleanup.737:                                      ; preds = %cleanup.735, %if.then.77, %if.then.58, %if.then.36, %if.then
  %526 = bitcast i32* %fty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %526) #1
  %527 = bitcast i32* %ftx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %527) #1
  %528 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %528) #1
  %529 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %529) #1
  %530 = bitcast i16* %state to i8*
  call void @llvm.lifetime.end(i64 2, i8* %530) #1
  %531 = bitcast i8** %cip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %531) #1
  %532 = bitcast %struct.ip_state_t** %ipsp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %532) #1
  %533 = bitcast i32** %csp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %533) #1
  %534 = bitcast [48 x i32]* %cstack to i8*
  call void @llvm.lifetime.end(i64 192, i8* %534) #1
  %535 = bitcast i32* %encrypted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %535) #1
  %536 = bitcast %struct.t1_hinter_s** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %536) #1
  %537 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %537) #1
  %538 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %538) #1
  %539 = load i32, i32* %retval
  ret i32 %539
}

declare void @t1_hinter__init(%struct.t1_hinter_s*, %struct.gx_path_s*) #2

declare void @gs_type1_finish_init(%struct.gs_type1_state_s*) #2

declare i32 @t1_hinter__set_mapping(%struct.t1_hinter_s*, %struct.gs_matrix_fixed_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*, i32, i32, i32, i32, i32, i32, i32) #2

declare i32 @gs_currentaligntopixels(%struct.gs_font_dir_s*) #2

declare i32 @t1_hinter__set_font_data(%struct.t1_hinter_s*, i32, %struct.gs_type1_data_s*, i32, i32) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @gs_glyph_data_free(%struct.gs_glyph_data_s*, i8*) #2

declare i32 @t1_hinter__hstem(%struct.t1_hinter_s*, i32, i32) #2

declare i32 @t1_hinter__vstem(%struct.t1_hinter_s*, i32, i32) #2

declare i32 @t1_hinter__rmoveto(%struct.t1_hinter_s*, i32, i32) #2

declare i32 @t1_hinter__rlineto(%struct.t1_hinter_s*, i32, i32) #2

declare i32 @t1_hinter__rcurveto(%struct.t1_hinter_s*, i32, i32, i32, i32, i32, i32) #2

declare i32 @t1_hinter__sbw(%struct.t1_hinter_s*, i32, i32, i32, i32) #2

declare i32 @gs_type1_sbw(%struct.gs_type1_state_s*, i32, i32, i32, i32) #2

declare i32 @t1_hinter__endglyph(%struct.t1_hinter_s*) #2

declare i32 @gx_setcurrentpoint_from_path(%struct.gs_imager_state_s*, %struct.gx_path_s*) #2

declare i32 @t1_hinter__end_subglyph(%struct.t1_hinter_s*) #2

declare i32 @gs_type1_endchar(%struct.gs_type1_state_s*) #2

declare i32 @t1_hinter__closepath(%struct.t1_hinter_s*) #2

declare i32 @t1_hinter__sbw_seac(%struct.t1_hinter_s*, i32, i32) #2

declare i32 @t1_hinter__dotsection(%struct.t1_hinter_s*) #2

declare i32 @t1_hinter__vstem3(%struct.t1_hinter_s*, i32, i32, i32, i32, i32, i32) #2

declare i32 @t1_hinter__hstem3(%struct.t1_hinter_s*, i32, i32, i32, i32, i32, i32) #2

declare i32 @gs_type1_seac(%struct.gs_type1_state_s*, i32*, i32, %struct.ip_state_t*) #2

declare i32 @t1_hinter__flex_end(%struct.t1_hinter_s*, i32) #2

declare i32 @t1_hinter__flex_beg(%struct.t1_hinter_s*) #2

declare i32 @t1_hinter__flex_point(%struct.t1_hinter_s*) #2

declare i32 @t1_hinter__drop_hints(%struct.t1_hinter_s*) #2

declare i32 @gs_type1_blend(%struct.gs_type1_state_s*, i32*, i32) #2

declare void @t1_hinter__setcurrentpoint(%struct.t1_hinter_s*, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
!12 = !{!13, !2, i64 9856}
!13 = !{!"gs_type1_state_s", !14, i64 0, !2, i64 9856, !2, i64 9864, !2, i64 9872, !6, i64 9880, !6, i64 9884, !2, i64 9888, !17, i64 9896, !18, i64 9944, !19, i64 9948, !21, i64 9972, !22, i64 9980, !3, i64 9988, !6, i64 10180, !3, i64 10184, !6, i64 10976, !6, i64 10980, !6, i64 10984, !6, i64 10988, !6, i64 10992, !6, i64 10996, !22, i64 11000, !22, i64 11008, !6, i64 11016, !6, i64 11020, !22, i64 11024, !22, i64 11032, !6, i64 11040, !22, i64 11044, !6, i64 11052, !6, i64 11056, !22, i64 11060, !6, i64 11068, !6, i64 11072, !22, i64 11076, !3, i64 11084}
!14 = !{!"t1_hinter_s", !15, i64 0, !15, i64 24, !6, i64 48, !8, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !3, i64 188, !2, i64 5472, !3, i64 5480, !2, i64 7520, !3, i64 7528, !2, i64 7648, !3, i64 7656, !2, i64 7696, !3, i64 7704, !2, i64 7744, !3, i64 7752, !3, i64 7856, !3, i64 7872, !2, i64 7928, !3, i64 7936, !2, i64 8176, !3, i64 8184, !2, i64 9624, !3, i64 9632, !3, i64 9640, !6, i64 9648, !6, i64 9652, !6, i64 9656, !6, i64 9660, !6, i64 9664, !6, i64 9668, !6, i64 9672, !6, i64 9676, !6, i64 9680, !6, i64 9684, !6, i64 9688, !6, i64 9692, !6, i64 9696, !6, i64 9700, !6, i64 9704, !6, i64 9708, !6, i64 9712, !6, i64 9716, !6, i64 9720, !6, i64 9724, !6, i64 9728, !6, i64 9732, !6, i64 9736, !16, i64 9744, !16, i64 9752, !16, i64 9760, !16, i64 9768, !16, i64 9776, !16, i64 9784, !6, i64 9792, !6, i64 9796, !6, i64 9800, !6, i64 9804, !6, i64 9808, !6, i64 9812, !6, i64 9816, !6, i64 9820, !6, i64 9824, !6, i64 9828, !6, i64 9832, !6, i64 9836, !2, i64 9840, !2, i64 9848}
!15 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!16 = !{!"double", !3, i64 0}
!17 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44}
!18 = !{!"float", !3, i64 0}
!19 = !{!"point_scale_s", !20, i64 0, !20, i64 12}
!20 = !{!"pixel_scale_s", !6, i64 0, !6, i64 4, !6, i64 8}
!21 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!22 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!23 = !{!24, !6, i64 64}
!24 = !{!"gs_type1_data_s", !25, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !8, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !18, i64 100, !18, i64 104, !26, i64 108, !18, i64 168, !6, i64 172, !26, i64 176, !26, i64 236, !6, i64 280, !26, i64 284, !6, i64 328, !26, i64 332, !26, i64 340, !26, i64 348, !26, i64 400, !26, i64 452, !3, i64 520, !6, i64 536}
!25 = !{!"gs_type1_data_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!26 = !{!"", !6, i64 0, !3, i64 4}
!27 = !{!13, !6, i64 10976}
!28 = !{!13, !6, i64 9980}
!29 = !{!13, !6, i64 9984}
!30 = !{!13, !6, i64 10980}
!31 = !{!13, !2, i64 9872}
!32 = !{!13, !2, i64 9864}
!33 = !{!34, !2, i64 64}
!34 = !{!"gs_font_type1_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !35, i64 40, !8, i64 56, !2, i64 64, !2, i64 72, !36, i64 80, !36, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !18, i64 156, !6, i64 160, !37, i64 168, !38, i64 272, !38, i64 324, !39, i64 376, !41, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !24, i64 448}
!35 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!36 = !{!"gs_matrix_s", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20}
!37 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!38 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!39 = !{!"gs_rect_s", !40, i64 0, !40, i64 16}
!40 = !{!"gs_point_s", !16, i64 0, !16, i64 8}
!41 = !{!"gs_uid_s", !8, i64 0, !2, i64 8}
!42 = !{!13, !6, i64 9956}
!43 = !{!13, !6, i64 9972}
!44 = !{!13, !6, i64 9968}
!45 = !{!13, !6, i64 9976}
!46 = !{!34, !2, i64 24}
!47 = !{!13, !6, i64 9880}
!48 = !{!34, !6, i64 32}
!49 = !{!13, !6, i64 10180}
!50 = !{i64 0, i64 8, !1, i64 8, i64 4, !5, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1}
!51 = !{!52, !2, i64 0}
!52 = !{!"gs_glyph_data_s", !53, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!53 = !{!"gs_const_bytestring_s", !2, i64 0, !6, i64 8, !2, i64 16}
!54 = !{!55, !2, i64 0}
!55 = !{!"", !2, i64 0, !2, i64 8, !11, i64 16, !52, i64 24}
!56 = !{!55, !11, i64 16}
!57 = !{!24, !6, i64 68}
!58 = !{!24, !2, i64 8}
!59 = !{!55, !2, i64 24}
!60 = !{!13, !6, i64 11016}
!61 = !{!13, !6, i64 10984}
!62 = !{!13, !6, i64 10988}
!63 = !{!13, !6, i64 10992}
!64 = !{!13, !6, i64 11000}
!65 = !{!13, !6, i64 11060}
!66 = !{!13, !6, i64 11004}
!67 = !{!13, !6, i64 11064}
!68 = !{!13, !6, i64 11008}
!69 = !{!13, !6, i64 11012}
!70 = !{!13, !6, i64 11052}
!71 = !{!13, !6, i64 11024}
!72 = !{!13, !6, i64 11044}
!73 = !{!13, !6, i64 11020}
!74 = !{!13, !6, i64 11048}
!75 = !{!13, !6, i64 11072}
!76 = !{!13, !6, i64 11040}
!77 = !{!13, !6, i64 11068}
!78 = !{!24, !2, i64 24}
!79 = !{!13, !2, i64 9888}
!80 = !{!24, !2, i64 32}
