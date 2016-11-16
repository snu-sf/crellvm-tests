; ModuleID = './gxtype1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
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
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_type1_state_s = type { %struct.t1_hinter_s, %struct.gs_font_type1_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, i32, i32, i8*, %struct.fixed_coeff, float, %struct.point_scale_s, %struct.gs_log2_scale_point_s, %struct.gs_fixed_point_s, [48 x i32], i32, [11 x %struct.ip_state_t], i32, i32, i32, i32, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, [32 x i32] }
%struct.t1_hinter_s = type { %struct.fraction_matrix, %struct.fraction_matrix, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [110 x %struct.t1_pole_s], %struct.t1_pole_s*, [30 x %struct.t1_hint_s], %struct.t1_hint_s*, [6 x %struct.t1_zone_s], %struct.t1_zone_s*, [10 x i32], i32*, [10 x i32], i32*, [2 x [13 x i32]], [2 x i32*], [13 x i32], i32*, [30 x %struct.t1_hint_range_s], %struct.t1_hint_range_s*, [120 x %struct.t1_hint_applying_s], %struct.t1_hint_applying_s*, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gx_path_s*, %struct.gs_memory_s* }
%struct.fraction_matrix = type { i32, i32, i32, i32, i32, i32 }
%struct.t1_pole_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t1_hint_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32 }
%struct.t1_zone_s = type { i32, i32, i32, i32, i32 }
%struct.t1_hint_range_s = type { i16, i16, i32 }
%struct.t1_hint_applying_s = type { i32, i32, i32 }
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
%struct.gs_type1_data_s = type { %struct.gs_type1_data_procs_s, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i8*, %struct.gs_font_base_s*, i32, i32, i32, i64, i32, i32, i32, float, float, %struct.anon, float, i32, %struct.anon.1, %struct.anon.2, i32, %struct.anon.3, i32, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.anon.7, %struct.anon.8, [16 x i8], i32 }
%struct.gs_type1_data_procs_s = type { i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*)* }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
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
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.fixed_coeff = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.point_scale_s = type { %struct.pixel_scale_s, %struct.pixel_scale_s }
%struct.pixel_scale_s = type { i32, i32, i32 }
%struct.ip_state_t = type { i8*, i8*, i16, %struct.gs_glyph_data_s }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"gs_font_type1\00", align 1
@font_type1_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* @st_gs_font_base, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @font_type1_enum_ptrs, i32 0, i32 0) }, align 8
@st_gs_font_type1 = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 992, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gs_font_finalize, i8* bitcast (%struct.gc_struct_data_s* @font_type1_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"gs_type1_state\00", align 1
@st_gs_type1_state = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 11216, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_type1_state_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_type1_state_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@gx_extendeg_glyph_name_separator = constant [5 x i8] c"~GS~\00", align 1
@gs_type1_interp_init.no_scale = internal constant %struct.gs_log2_scale_point_s zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"The font '%s' misses the glyph '%s' . Continue skipping the glyph.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"gs_type1_piece_codes\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"gs_type1_glyph_info\00", align 1
@st_gs_font_base = external constant %struct.gs_memory_struct_type_s, align 8
@font_type1_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 504 }, %struct.gc_ptr_element_s { i16 0, i16 496 }], align 2
@st_glyph_data = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @gs_font_finalize(%struct.gs_memory_s*, i8*) #0

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @gs_type1_state_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcis = alloca %struct.gs_type1_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_type1_state_s** %pcis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_type1_state_s*
  store %struct.gs_type1_state_s* %2, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 4
  store i32 %sub, i32* %index.addr, align 4, !tbaa !5
  %5 = load i32, i32* %index.addr, align 4, !tbaa !5
  %6 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %ips_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %6, i32 0, i32 15
  %7 = load i32, i32* %ips_count, align 4, !tbaa !7
  %mul = mul nsw i32 %7, 2
  %cmp = icmp slt i32 %5, %mul
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %8 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_glyph_data, i32 0, i32 4), align 8, !tbaa !19
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load i32, i32* %index.addr, align 4, !tbaa !5
  %div = sdiv i32 %10, 2
  %idxprom = sext i32 %div to i64
  %11 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %ipstack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %11, i32 0, i32 14
  %arrayidx = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack, i32 0, i64 %idxprom
  %cs_data = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %arrayidx, i32 0, i32 3
  %12 = bitcast %struct.gs_glyph_data_s* %cs_data to i8*
  %13 = load i32, i32* %index.addr, align 4, !tbaa !5
  %rem = srem i32 %13, 2
  %14 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %8(%struct.gs_memory_s* %9, i8* %12, i32 48, i32 %rem, %struct.enum_ptr_s* %14, %struct.gs_memory_struct_type_s* @st_glyph_data, %struct.gc_state_s* %15) #4
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %16 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %17 = bitcast i8* %16 to %struct.gs_type1_state_s*
  %pfont = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %17, i32 0, i32 1
  %18 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !21
  %19 = bitcast %struct.gs_font_type1_s* %18 to i8*
  %20 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %20, i32 0, i32 0
  store i8* %19, i8** %ptr, align 8, !tbaa !22
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %21 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %22 = bitcast i8* %21 to %struct.gs_type1_state_s*
  %pis = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %22, i32 0, i32 2
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !24
  %24 = bitcast %struct.gs_imager_state_s* %23 to i8*
  %25 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %25, i32 0, i32 0
  store i8* %24, i8** %ptr2, align 8, !tbaa !22
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.3:                                          ; preds = %entry
  %26 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %27 = bitcast i8* %26 to %struct.gs_type1_state_s*
  %path = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %27, i32 0, i32 3
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !25
  %29 = bitcast %struct.gx_path_s* %28 to i8*
  %30 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %30, i32 0, i32 0
  store i8* %29, i8** %ptr4, align 8, !tbaa !22
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.5:                                          ; preds = %entry
  %31 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %32 = bitcast i8* %31 to %struct.gs_type1_state_s*
  %callback_data = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %32, i32 0, i32 6
  %33 = load i8*, i8** %callback_data, align 8, !tbaa !26
  %34 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %34, i32 0, i32 0
  store i8* %33, i8** %ptr6, align 8, !tbaa !22
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb, %if.end, %if.then
  %35 = bitcast %struct.gs_type1_state_s** %pcis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %36
}

; Function Attrs: nounwind uwtable
define internal void @gs_type1_state_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcis = alloca %struct.gs_type1_state_s*, align 8
  %i = alloca i32, align 4
  %ipsp = alloca %struct.ip_state_t*, align 8
  %diff = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_type1_state_s** %pcis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_type1_state_s*
  store %struct.gs_type1_state_s* %2, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gc_state_s* %4 to %struct.gc_procs_common_s**
  %6 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %5, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %6, i32 0, i32 0
  %7 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !27
  %8 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %9 = bitcast i8* %8 to %struct.gs_type1_state_s*
  %pfont = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %9, i32 0, i32 1
  %10 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !21
  %11 = bitcast %struct.gs_font_type1_s* %10 to i8*
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %7(i8* %11, %struct.gc_state_s* %12) #4
  %13 = bitcast i8* %call to %struct.gs_font_type1_s*
  %14 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %15 = bitcast i8* %14 to %struct.gs_type1_state_s*
  %pfont1 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %15, i32 0, i32 1
  store %struct.gs_font_type1_s* %13, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !21
  %16 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gc_state_s* %16 to %struct.gc_procs_common_s**
  %18 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %17, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %18, i32 0, i32 0
  %19 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !27
  %20 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to %struct.gs_type1_state_s*
  %pis = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %21, i32 0, i32 2
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !24
  %23 = bitcast %struct.gs_imager_state_s* %22 to i8*
  %24 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %19(i8* %23, %struct.gc_state_s* %24) #4
  %25 = bitcast i8* %call3 to %struct.gs_imager_state_s*
  %26 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %27 = bitcast i8* %26 to %struct.gs_type1_state_s*
  %pis4 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %27, i32 0, i32 2
  store %struct.gs_imager_state_s* %25, %struct.gs_imager_state_s** %pis4, align 8, !tbaa !24
  %28 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gc_state_s* %28 to %struct.gc_procs_common_s**
  %30 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %29, align 8, !tbaa !1
  %reloc_struct_ptr5 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %30, i32 0, i32 0
  %31 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr5, align 8, !tbaa !27
  %32 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %33 = bitcast i8* %32 to %struct.gs_type1_state_s*
  %path = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %33, i32 0, i32 3
  %34 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !25
  %35 = bitcast %struct.gx_path_s* %34 to i8*
  %36 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %31(i8* %35, %struct.gc_state_s* %36) #4
  %37 = bitcast i8* %call6 to %struct.gx_path_s*
  %38 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %39 = bitcast i8* %38 to %struct.gs_type1_state_s*
  %path7 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %39, i32 0, i32 3
  store %struct.gx_path_s* %37, %struct.gx_path_s** %path7, align 8, !tbaa !25
  %40 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %41 = bitcast %struct.gc_state_s* %40 to %struct.gc_procs_common_s**
  %42 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %41, align 8, !tbaa !1
  %reloc_struct_ptr8 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %42, i32 0, i32 0
  %43 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr8, align 8, !tbaa !27
  %44 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %45 = bitcast i8* %44 to %struct.gs_type1_state_s*
  %callback_data = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %45, i32 0, i32 6
  %46 = load i8*, i8** %callback_data, align 8, !tbaa !26
  %47 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call9 = call i8* %43(i8* %46, %struct.gc_state_s* %47) #4
  %48 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %49 = bitcast i8* %48 to %struct.gs_type1_state_s*
  %callback_data10 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %49, i32 0, i32 6
  store i8* %call9, i8** %callback_data10, align 8, !tbaa !26
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %51 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %ips_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %51, i32 0, i32 15
  %52 = load i32, i32* %ips_count, align 4, !tbaa !7
  %cmp = icmp slt i32 %50, %52
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = bitcast %struct.ip_state_t** %ipsp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #2
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %54 to i64
  %55 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis, align 8, !tbaa !1
  %ipstack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %55, i32 0, i32 14
  %arrayidx = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack, i32 0, i64 %idxprom
  store %struct.ip_state_t* %arrayidx, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %56 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #2
  %57 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %57, i32 0, i32 0
  %58 = load i8*, i8** %ip, align 8, !tbaa !29
  %59 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %59, i32 0, i32 3
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  %60 = load i8*, i8** %data, align 8, !tbaa !34
  %sub.ptr.lhs.cast = ptrtoint i8* %58 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %60 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %diff, align 4, !tbaa !5
  %61 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_glyph_data, i32 0, i32 5), align 8, !tbaa !35
  %62 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data11 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %62, i32 0, i32 3
  %63 = bitcast %struct.gs_glyph_data_s* %cs_data11 to i8*
  %64 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %61(i8* %63, i32 48, %struct.gs_memory_struct_type_s* @st_glyph_data, %struct.gc_state_s* %64) #4
  %65 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data12 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %65, i32 0, i32 3
  %bits13 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data12, i32 0, i32 0
  %data14 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits13, i32 0, i32 0
  %66 = load i8*, i8** %data14, align 8, !tbaa !34
  %67 = load i32, i32* %diff, align 4, !tbaa !5
  %idx.ext = sext i32 %67 to i64
  %add.ptr = getelementptr inbounds i8, i8* %66, i64 %idx.ext
  %68 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip15 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %68, i32 0, i32 0
  store i8* %add.ptr, i8** %ip15, align 8, !tbaa !29
  %69 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast %struct.ip_state_t** %ipsp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %72 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast %struct.gs_type1_state_s** %pcis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_type1_interp_init(%struct.gs_type1_state_s* %pcis, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gs_log2_scale_point_s* %pscale, %struct.gs_log2_scale_point_s* %psubpixels, i32 %no_grid_fitting, i32 %paint_type, %struct.gs_font_type1_s* %pfont) #1 {
entry:
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pscale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %psubpixels.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %no_grid_fitting.addr = alloca i32, align 4
  %paint_type.addr = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %plog2_scale = alloca %struct.gs_log2_scale_point_s*, align 8
  %plog2_subpixels = alloca %struct.gs_log2_scale_point_s*, align 8
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %pscale, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %psubpixels, %struct.gs_log2_scale_point_s** %psubpixels.addr, align 8, !tbaa !1
  store i32 %no_grid_fitting, i32* %no_grid_fitting.addr, align 4, !tbaa !5
  store i32 %paint_type, i32* %paint_type.addr, align 4, !tbaa !5
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_log2_scale_point_s** %plog2_scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_log2_scale_point_s* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_log2_scale_point_s* [ %2, %cond.true ], [ @gs_type1_interp_init.no_scale, %cond.false ]
  store %struct.gs_log2_scale_point_s* %cond, %struct.gs_log2_scale_point_s** %plog2_scale, align 8, !tbaa !1
  %3 = bitcast %struct.gs_log2_scale_point_s** %plog2_subpixels to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %psubpixels.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.gs_log2_scale_point_s* %4, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  %5 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %psubpixels.addr, align 8, !tbaa !1
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  %6 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %plog2_scale, align 8, !tbaa !1
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond5 = phi %struct.gs_log2_scale_point_s* [ %5, %cond.true.2 ], [ %6, %cond.false.3 ]
  store %struct.gs_log2_scale_point_s* %cond5, %struct.gs_log2_scale_point_s** %plog2_subpixels, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %cond.end.4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %8 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont6 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %8, i32 0, i32 1
  store %struct.gs_font_type1_s* %7, %struct.gs_font_type1_s** %pfont6, align 8, !tbaa !21
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %10 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pis7 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %10, i32 0, i32 2
  store %struct.gs_imager_state_s* %9, %struct.gs_imager_state_s** %pis7, align 8, !tbaa !24
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %12 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %12, i32 0, i32 3
  store %struct.gx_path_s* %11, %struct.gx_path_s** %path, align 8, !tbaa !25
  %13 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gs_font_type1_s* %13 to i8*
  %15 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %callback_data = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %15, i32 0, i32 6
  store i8* %14, i8** %callback_data, align 8, !tbaa !26
  %16 = load i32, i32* %no_grid_fitting.addr, align 4, !tbaa !5
  %17 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %no_grid_fitting8 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %17, i32 0, i32 4
  store i32 %16, i32* %no_grid_fitting8, align 4, !tbaa !36
  %18 = load i32, i32* %paint_type.addr, align 4, !tbaa !5
  %19 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %paint_type9 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %19, i32 0, i32 5
  store i32 %18, i32* %paint_type9, align 4, !tbaa !37
  %20 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %os_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %20, i32 0, i32 13
  store i32 0, i32* %os_count, align 4, !tbaa !38
  %21 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %21, i32 0, i32 15
  store i32 1, i32* %ips_count, align 4, !tbaa !7
  %22 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ipstack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %22, i32 0, i32 14
  %arrayidx = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack, i32 0, i64 0
  %ip = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %arrayidx, i32 0, i32 0
  store i8* null, i8** %ip, align 8, !tbaa !29
  %23 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ipstack10 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %23, i32 0, i32 14
  %arrayidx11 = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack10, i32 0, i64 0
  %cs_data = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %arrayidx11, i32 0, i32 3
  call void @gs_glyph_data_from_null(%struct.gs_glyph_data_s* %cs_data) #4
  %24 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ignore_pops = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %24, i32 0, i32 33
  store i32 0, i32* %ignore_pops, align 4, !tbaa !39
  %25 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %init_done = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %25, i32 0, i32 16
  store i32 -1, i32* %init_done, align 4, !tbaa !40
  %26 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %sb_set = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %26, i32 0, i32 17
  store i32 0, i32* %sb_set, align 4, !tbaa !41
  %27 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width_set = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %27, i32 0, i32 18
  store i32 0, i32* %width_set, align 4, !tbaa !42
  %28 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %seac_flag = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %28, i32 0, i32 19
  store i32 0, i32* %seac_flag, align 4, !tbaa !43
  %29 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %num_hints = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %29, i32 0, i32 20
  store i32 0, i32* %num_hints, align 4, !tbaa !44
  %30 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %seac_accent = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %30, i32 0, i32 23
  store i32 -1, i32* %seac_accent, align 4, !tbaa !45
  %31 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %log2_subpixels = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %31, i32 0, i32 10
  %32 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %plog2_subpixels, align 8, !tbaa !1
  %33 = bitcast %struct.gs_log2_scale_point_s* %log2_subpixels to i8*
  %34 = bitcast %struct.gs_log2_scale_point_s* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 8, i32 4, i1 false), !tbaa.struct !46
  %35 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin_offset = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %35, i32 0, i32 31
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin_offset, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !47
  %36 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin_offset12 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %36, i32 0, i32 31
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin_offset12, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !48
  %37 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %plog2_scale, align 8, !tbaa !1
  %x13 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %37, i32 0, i32 0
  %38 = load i32, i32* %x13, align 4, !tbaa !49
  %39 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %scale = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %39, i32 0, i32 9
  %x14 = getelementptr inbounds %struct.point_scale_s, %struct.point_scale_s* %scale, i32 0, i32 0
  %log2_unit = getelementptr inbounds %struct.pixel_scale_s, %struct.pixel_scale_s* %x14, i32 0, i32 2
  store i32 %38, i32* %log2_unit, align 4, !tbaa !50
  %sh_prom = zext i32 %38 to i64
  %shl = shl i64 128, %sh_prom
  %conv = trunc i64 %shl to i32
  %40 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %scale15 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %40, i32 0, i32 9
  %x16 = getelementptr inbounds %struct.point_scale_s, %struct.point_scale_s* %scale15, i32 0, i32 0
  %half = getelementptr inbounds %struct.pixel_scale_s, %struct.pixel_scale_s* %x16, i32 0, i32 1
  store i32 %conv, i32* %half, align 4, !tbaa !51
  %shl17 = shl i32 %conv, 1
  %41 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %scale18 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %41, i32 0, i32 9
  %x19 = getelementptr inbounds %struct.point_scale_s, %struct.point_scale_s* %scale18, i32 0, i32 0
  %unit = getelementptr inbounds %struct.pixel_scale_s, %struct.pixel_scale_s* %x19, i32 0, i32 0
  store i32 %shl17, i32* %unit, align 4, !tbaa !52
  %42 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %plog2_scale, align 8, !tbaa !1
  %y20 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %42, i32 0, i32 1
  %43 = load i32, i32* %y20, align 4, !tbaa !53
  %44 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %scale21 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %44, i32 0, i32 9
  %y22 = getelementptr inbounds %struct.point_scale_s, %struct.point_scale_s* %scale21, i32 0, i32 1
  %log2_unit23 = getelementptr inbounds %struct.pixel_scale_s, %struct.pixel_scale_s* %y22, i32 0, i32 2
  store i32 %43, i32* %log2_unit23, align 4, !tbaa !50
  %sh_prom24 = zext i32 %43 to i64
  %shl25 = shl i64 128, %sh_prom24
  %conv26 = trunc i64 %shl25 to i32
  %45 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %scale27 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %45, i32 0, i32 9
  %y28 = getelementptr inbounds %struct.point_scale_s, %struct.point_scale_s* %scale27, i32 0, i32 1
  %half29 = getelementptr inbounds %struct.pixel_scale_s, %struct.pixel_scale_s* %y28, i32 0, i32 1
  store i32 %conv26, i32* %half29, align 4, !tbaa !51
  %shl30 = shl i32 %conv26, 1
  %46 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %scale31 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %46, i32 0, i32 9
  %y32 = getelementptr inbounds %struct.point_scale_s, %struct.point_scale_s* %scale31, i32 0, i32 1
  %unit33 = getelementptr inbounds %struct.pixel_scale_s, %struct.pixel_scale_s* %y32, i32 0, i32 0
  store i32 %shl30, i32* %unit33, align 4, !tbaa !52
  %47 = bitcast %struct.gs_log2_scale_point_s** %plog2_subpixels to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast %struct.gs_log2_scale_point_s** %plog2_scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @gs_glyph_data_from_null(%struct.gs_glyph_data_s*) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @gs_type1_set_callback_data(%struct.gs_type1_state_s* %pcis, i8* %callback_data) #1 {
entry:
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %callback_data.addr = alloca i8*, align 8
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store i8* %callback_data, i8** %callback_data.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %callback_data.addr, align 8, !tbaa !1
  %1 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %callback_data1 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %1, i32 0, i32 6
  store i8* %0, i8** %callback_data1, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_type1_set_lsb(%struct.gs_type1_state_s* %pcis, %struct.gs_point_s* %psbpt) #1 {
entry:
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %psbpt.addr = alloca %struct.gs_point_s*, align 8
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %psbpt, %struct.gs_point_s** %psbpt.addr, align 8, !tbaa !1
  %0 = load %struct.gs_point_s*, %struct.gs_point_s** %psbpt.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8, !tbaa !54
  %mul = fmul double %1, 2.560000e+02
  %conv = fptosi double %mul to i32
  %2 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %lsb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %2, i32 0, i32 21
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb, i32 0, i32 0
  store i32 %conv, i32* %x1, align 4, !tbaa !56
  %3 = load %struct.gs_point_s*, %struct.gs_point_s** %psbpt.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i32 0, i32 1
  %4 = load double, double* %y, align 8, !tbaa !57
  %mul2 = fmul double %4, 2.560000e+02
  %conv3 = fptosi double %mul2 to i32
  %5 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %lsb4 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %5, i32 0, i32 21
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb4, i32 0, i32 1
  store i32 %conv3, i32* %y5, align 4, !tbaa !58
  %6 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %sb_set = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %6, i32 0, i32 17
  store i32 1, i32* %sb_set, align 4, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_type1_set_width(%struct.gs_type1_state_s* %pcis, %struct.gs_point_s* %pwpt) #1 {
entry:
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %pwpt.addr = alloca %struct.gs_point_s*, align 8
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pwpt, %struct.gs_point_s** %pwpt.addr, align 8, !tbaa !1
  %0 = load %struct.gs_point_s*, %struct.gs_point_s** %pwpt.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8, !tbaa !54
  %mul = fmul double %1, 2.560000e+02
  %conv = fptosi double %mul to i32
  %2 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %2, i32 0, i32 22
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  store i32 %conv, i32* %x1, align 4, !tbaa !59
  %3 = load %struct.gs_point_s*, %struct.gs_point_s** %pwpt.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %3, i32 0, i32 1
  %4 = load double, double* %y, align 8, !tbaa !57
  %mul2 = fmul double %4, 2.560000e+02
  %conv3 = fptosi double %mul2 to i32
  %5 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width4 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %5, i32 0, i32 22
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width4, i32 0, i32 1
  store i32 %conv3, i32* %y5, align 4, !tbaa !60
  %6 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width_set = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %6, i32 0, i32 18
  store i32 1, i32* %width_set, align 4, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_type1_finish_init(%struct.gs_type1_state_s* %pcis) #1 {
entry:
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %max_coeff_bits = alloca i32, align 4
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %1, i32 0, i32 2
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !24
  store %struct.gs_imager_state_s* %2, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %3 = bitcast i32* %max_coeff_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 11, i32* %max_coeff_bits, align 4, !tbaa !5
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 5
  %5 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %6 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %fc = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %6, i32 0, i32 7
  %call = call i32 @gx_matrix_to_fixed_coeff(%struct.gs_matrix_s* %5, %struct.fixed_coeff* %fc, i32 11) #4
  %7 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %7, i32 0, i32 3
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !25
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 14
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %9 = load i32, i32* %x, align 4, !tbaa !61
  %10 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %10, i32 0, i32 11
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin, i32 0, i32 0
  store i32 %9, i32* %x2, align 4, !tbaa !67
  %11 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %path3 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %11, i32 0, i32 3
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %path3, align 8, !tbaa !25
  %position4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 14
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position4, i32 0, i32 1
  %13 = load i32, i32* %y, align 4, !tbaa !68
  %14 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %origin5 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %14, i32 0, i32 11
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %origin5, i32 0, i32 1
  store i32 %13, i32* %y6, align 4, !tbaa !69
  %15 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %adxy = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %15, i32 0, i32 28
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adxy, i32 0, i32 1
  store i32 0, i32* %y7, align 4, !tbaa !70
  %16 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %adxy8 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %16, i32 0, i32 28
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adxy8, i32 0, i32 0
  store i32 0, i32* %x9, align 4, !tbaa !71
  %17 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %asb_diff = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %17, i32 0, i32 27
  store i32 0, i32* %asb_diff, align 4, !tbaa !72
  %18 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %base_lsb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %18, i32 0, i32 29
  store i32 0, i32* %base_lsb, align 4, !tbaa !73
  %19 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %flex_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %19, i32 0, i32 32
  store i32 8, i32* %flex_count, align 4, !tbaa !74
  %20 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %vs_offset = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %20, i32 0, i32 34
  %y10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vs_offset, i32 0, i32 1
  store i32 0, i32* %y10, align 4, !tbaa !75
  %21 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %vs_offset11 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %21, i32 0, i32 34
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %vs_offset11, i32 0, i32 0
  store i32 0, i32* %x12, align 4, !tbaa !76
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %call13 = call double @gs_char_flatness(%struct.gs_imager_state_s* %22, double 1.000000e-03) #4
  %conv = fptrunc double %call13 to float
  %23 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %flatness = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %23, i32 0, i32 8
  store float %conv, float* %flatness, align 4, !tbaa !77
  %24 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %init_done = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %24, i32 0, i32 16
  store i32 1, i32* %init_done, align 4, !tbaa !40
  %25 = bitcast i32* %max_coeff_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  ret void
}

declare i32 @gx_matrix_to_fixed_coeff(%struct.gs_matrix_s*, %struct.fixed_coeff*, i32) #0

declare double @gs_char_flatness(%struct.gs_imager_state_s*, double) #0

; Function Attrs: nounwind uwtable
define i32 @gs_type1_sbw(%struct.gs_type1_state_s* %pcis, i32 %lsbx, i32 %lsby, i32 %wx, i32 %wy) #1 {
entry:
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %lsbx.addr = alloca i32, align 4
  %lsby.addr = alloca i32, align 4
  %wx.addr = alloca i32, align 4
  %wy.addr = alloca i32, align 4
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store i32 %lsbx, i32* %lsbx.addr, align 4, !tbaa !5
  store i32 %lsby, i32* %lsby.addr, align 4, !tbaa !5
  store i32 %wx, i32* %wx.addr, align 4, !tbaa !5
  store i32 %wy, i32* %wy.addr, align 4, !tbaa !5
  %0 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %sb_set = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %0, i32 0, i32 17
  %1 = load i32, i32* %sb_set, align 4, !tbaa !41
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %lsbx.addr, align 4, !tbaa !5
  %3 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %lsb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %3, i32 0, i32 21
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb, i32 0, i32 0
  store i32 %2, i32* %x, align 4, !tbaa !56
  %4 = load i32, i32* %lsby.addr, align 4, !tbaa !5
  %5 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %lsb1 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %5, i32 0, i32 21
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb1, i32 0, i32 1
  store i32 %4, i32* %y, align 4, !tbaa !58
  %6 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %sb_set2 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %6, i32 0, i32 17
  store i32 1, i32* %sb_set2, align 4, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width_set = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %7, i32 0, i32 18
  %8 = load i32, i32* %width_set, align 4, !tbaa !42
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.end.9, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %9 = load i32, i32* %wx.addr, align 4, !tbaa !5
  %10 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %10, i32 0, i32 22
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  store i32 %9, i32* %x5, align 4, !tbaa !59
  %11 = load i32, i32* %wy.addr, align 4, !tbaa !5
  %12 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width6 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %12, i32 0, i32 22
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width6, i32 0, i32 1
  store i32 %11, i32* %y7, align 4, !tbaa !60
  %13 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width_set8 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %13, i32 0, i32 18
  store i32 1, i32* %width_set8, align 4, !tbaa !42
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.4, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.9
  br label %do.end

do.end:                                           ; preds = %do.body
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_type1_blend(%struct.gs_type1_state_s* %pcis, i32* %csp, i32 %num_results) #1 {
entry:
  %retval = alloca i32, align 4
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %csp.addr = alloca i32*, align 8
  %num_results.addr = alloca i32, align 4
  %pdata = alloca %struct.gs_type1_data_s*, align 8
  %num_values = alloca i32, align 4
  %k1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %base = alloca i32*, align 8
  %deltas = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store i32* %csp, i32** %csp.addr, align 8, !tbaa !1
  store i32 %num_results, i32* %num_results.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !21
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %2, i32 0, i32 29
  store %struct.gs_type1_data_s* %data, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %3 = bitcast i32* %num_values to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32*, i32** %csp.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 -1
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %shr = ashr i32 %5, 8
  store i32 %shr, i32* %num_values, align 4, !tbaa !5
  %6 = bitcast i32* %k1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %num_values, align 4, !tbaa !5
  %8 = load i32, i32* %num_results.addr, align 4, !tbaa !5
  %div = sdiv i32 %7, %8
  %sub = sub nsw i32 %div, 1
  store i32 %sub, i32* %k1, align 4, !tbaa !5
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32** %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i32** %deltas to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load i32, i32* %num_values, align 4, !tbaa !5
  %14 = load i32, i32* %num_results.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load i32, i32* %num_values, align 4, !tbaa !5
  %16 = load i32, i32* %num_results.addr, align 4, !tbaa !5
  %rem = srem i32 %15, %16
  %cmp1 = icmp ne i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %17 = load i32*, i32** %csp.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i32, i32* %17, i64 -1
  %18 = load i32, i32* %num_values, align 4, !tbaa !5
  %idx.ext = sext i32 %18 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr2 = getelementptr inbounds i32, i32* %add.ptr, i64 %idx.neg
  store i32* %add.ptr2, i32** %base, align 8, !tbaa !1
  %19 = load i32*, i32** %base, align 8, !tbaa !1
  %20 = load i32, i32* %num_results.addr, align 4, !tbaa !5
  %idx.ext3 = sext i32 %20 to i64
  %add.ptr4 = getelementptr inbounds i32, i32* %19, i64 %idx.ext3
  %add.ptr5 = getelementptr inbounds i32, i32* %add.ptr4, i64 -1
  store i32* %add.ptr5, i32** %deltas, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %if.end
  %21 = load i32, i32* %j, align 4, !tbaa !5
  %22 = load i32, i32* %num_results.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %21, %22
  br i1 %cmp6, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %24 = load i32, i32* %k1, align 4, !tbaa !5
  %cmp8 = icmp sle i32 %23, %24
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %25 to i64
  %26 = load i32*, i32** %deltas, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i32, i32* %26, i64 %idxprom
  %27 = load i32, i32* %arrayidx10, align 4, !tbaa !5
  %conv = sitofp i32 %27 to float
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %28 to i64
  %29 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %WeightVector = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %29, i32 0, i32 25
  %values = getelementptr inbounds %struct.anon.8, %struct.anon.8* %WeightVector, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %values, i32 0, i64 %idxprom11
  %30 = load float, float* %arrayidx12, align 4, !tbaa !78
  %mul = fmul float %conv, %30
  %conv13 = fptosi float %mul to i32
  %31 = load i32*, i32** %base, align 8, !tbaa !1
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %add = add nsw i32 %32, %conv13
  store i32 %add, i32* %31, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %34 = load i32, i32* %j, align 4, !tbaa !5
  %inc15 = add nsw i32 %34, 1
  store i32 %inc15, i32* %j, align 4, !tbaa !5
  %35 = load i32*, i32** %base, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %incdec.ptr, i32** %base, align 8, !tbaa !1
  %36 = load i32, i32* %k1, align 4, !tbaa !5
  %37 = load i32*, i32** %deltas, align 8, !tbaa !1
  %idx.ext16 = sext i32 %36 to i64
  %add.ptr17 = getelementptr inbounds i32, i32* %37, i64 %idx.ext16
  store i32* %add.ptr17, i32** %deltas, align 8, !tbaa !1
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  %38 = load i32, i32* %num_results.addr, align 4, !tbaa !5
  %39 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ignore_pops = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %39, i32 0, i32 33
  store i32 %38, i32* %ignore_pops, align 4, !tbaa !39
  %40 = load i32, i32* %num_values, align 4, !tbaa !5
  %41 = load i32, i32* %num_results.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %40, %41
  %add20 = add nsw i32 %sub19, 2
  store i32 %add20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.18, %if.then
  %42 = bitcast i32** %deltas to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = bitcast i32** %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i32* %k1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast i32* %num_values to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define i32 @gs_type1_seac(%struct.gs_type1_state_s* %pcis, i32* %cstack, i32 %asb, %struct.ip_state_t* %ipsp) #1 {
entry:
  %retval = alloca i32, align 4
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %cstack.addr = alloca i32*, align 8
  %asb.addr = alloca i32, align 4
  %ipsp.addr = alloca %struct.ip_state_t*, align 8
  %pfont = alloca %struct.gs_font_type1_s*, align 8
  %bgdata = alloca %struct.gs_glyph_data_s, align 8
  %gstr = alloca %struct.gs_const_string_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store i32* %cstack, i32** %cstack.addr, align 8, !tbaa !1
  store i32 %asb, i32* %asb.addr, align 4, !tbaa !5
  store %struct.ip_state_t* %ipsp, %struct.ip_state_t** %ipsp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont1 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !21
  store %struct.gs_font_type1_s* %2, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %3 = bitcast %struct.gs_glyph_data_s* %bgdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #2
  %4 = bitcast %struct.gs_const_string_s* %gstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32*, i32** %cstack.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 3
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %shr = ashr i32 %7, 8
  %8 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %seac_accent = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %8, i32 0, i32 23
  store i32 %shr, i32* %seac_accent, align 4, !tbaa !45
  %9 = load i32, i32* %asb.addr, align 4, !tbaa !5
  %10 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %asb2 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %10, i32 0, i32 24
  store i32 %9, i32* %asb2, align 4, !tbaa !79
  %11 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %compound_lsb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %11, i32 0, i32 25
  %12 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %lsb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %12, i32 0, i32 21
  %13 = bitcast %struct.gs_fixed_point_s* %compound_lsb to i8*
  %14 = bitcast %struct.gs_fixed_point_s* %lsb to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 4, i1 false), !tbaa.struct !46
  %15 = load i32*, i32** %cstack.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  %17 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %save_adxy = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %17, i32 0, i32 26
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %save_adxy, i32 0, i32 0
  store i32 %16, i32* %x, align 4, !tbaa !80
  %18 = load i32*, i32** %cstack.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %18, i64 1
  %19 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  %20 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %save_adxy5 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %20, i32 0, i32 26
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %save_adxy5, i32 0, i32 1
  store i32 %19, i32* %y, align 4, !tbaa !81
  %21 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %os_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %21, i32 0, i32 13
  store i32 0, i32* %os_count, align 4, !tbaa !38
  %22 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %22, i32 0, i32 29
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 0
  %seac_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 2
  %23 = load i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)** %seac_data, align 8, !tbaa !82
  %24 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %25 = load i32*, i32** %cstack.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i32, i32* %25, i64 2
  %26 = load i32, i32* %arrayidx6, align 4, !tbaa !5
  %shr7 = ashr i32 %26, 8
  %call = call i32 %23(%struct.gs_font_type1_s* %24, i32 %shr7, i64* null, %struct.gs_const_string_s* %gstr, %struct.gs_glyph_data_s* %bgdata) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %27, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %29 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp.addr, align 8, !tbaa !1
  %cs_data = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %29, i32 0, i32 3
  %30 = bitcast %struct.gs_glyph_data_s* %cs_data to i8*
  %31 = bitcast %struct.gs_glyph_data_s* %bgdata to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 48, i32 8, i1 false), !tbaa.struct !93
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast %struct.gs_const_string_s* %gstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %33) #2
  %34 = bitcast %struct.gs_glyph_data_s* %bgdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %34) #2
  %35 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define i32 @gs_type1_endchar(%struct.gs_type1_state_s* %pcis) #1 {
entry:
  %retval = alloca i32, align 4
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %pfont = alloca %struct.gs_font_type1_s*, align 8
  %agdata = alloca %struct.gs_glyph_data_s, align 8
  %achar = alloca i32, align 4
  %gstr = alloca %struct.gs_const_string_s, align 8
  %code = alloca i32, align 4
  %buf0 = alloca [48 x i8], align 16
  %buf1 = alloca [30 x i8], align 16
  %l0 = alloca i32, align 4
  %l1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %1, i32 0, i32 2
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !24
  store %struct.gs_imager_state_s* %2, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %3 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %seac_accent = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %3, i32 0, i32 23
  %4 = load i32, i32* %seac_accent, align 4, !tbaa !45
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.55

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont2 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %6, i32 0, i32 1
  %7 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont2, align 8, !tbaa !21
  store %struct.gs_font_type1_s* %7, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %8 = bitcast %struct.gs_glyph_data_s* %agdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %8) #2
  %9 = bitcast i32* %achar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %seac_accent3 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %10, i32 0, i32 23
  %11 = load i32, i32* %seac_accent3, align 4, !tbaa !45
  store i32 %11, i32* %achar, align 4, !tbaa !5
  %12 = bitcast %struct.gs_const_string_s* %gstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #2
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %14, i32 0, i32 2
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !94
  %memory4 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %agdata, i32 0, i32 3
  store %struct.gs_memory_s* %15, %struct.gs_memory_s** %memory4, align 8, !tbaa !95
  %16 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %seac_accent5 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %16, i32 0, i32 23
  store i32 -1, i32* %seac_accent5, align 4, !tbaa !45
  %17 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %asb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %17, i32 0, i32 24
  %18 = load i32, i32* %asb, align 4, !tbaa !79
  %19 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %compound_lsb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %19, i32 0, i32 25
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %compound_lsb, i32 0, i32 0
  %20 = load i32, i32* %x, align 4, !tbaa !96
  %sub = sub nsw i32 %18, %20
  %21 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %asb_diff = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %21, i32 0, i32 27
  store i32 %sub, i32* %asb_diff, align 4, !tbaa !72
  %22 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %adxy = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %22, i32 0, i32 28
  %23 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %save_adxy = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %23, i32 0, i32 26
  %24 = bitcast %struct.gs_fixed_point_s* %adxy to i8*
  %25 = bitcast %struct.gs_fixed_point_s* %save_adxy to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 4, i1 false), !tbaa.struct !46
  %26 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %os_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %26, i32 0, i32 13
  store i32 0, i32* %os_count, align 4, !tbaa !38
  %27 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %27, i32 0, i32 15
  store i32 1, i32* %ips_count, align 4, !tbaa !7
  %28 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %28, i32 0, i32 29
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 0
  %seac_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 2
  %29 = load i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)** %seac_data, align 8, !tbaa !82
  %30 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %31 = load i32, i32* %achar, align 4, !tbaa !5
  %call = call i32 %29(%struct.gs_font_type1_s* %30, i32 %31, i64* null, %struct.gs_const_string_s* %gstr, %struct.gs_glyph_data_s* %agdata) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %32, -21
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %33 = bitcast [48 x i8]* %buf0 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %33) #2
  %34 = bitcast [30 x i8]* %buf1 to i8*
  call void @llvm.lifetime.start(i64 30, i8* %34) #2
  %35 = bitcast i32* %l0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont8 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %36, i32 0, i32 1
  %37 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont8, align 8, !tbaa !21
  %font_name = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %37, i32 0, i32 22
  %size = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name, i32 0, i32 1
  %38 = load i32, i32* %size, align 4, !tbaa !97
  %conv = zext i32 %38 to i64
  %cmp9 = icmp ult i64 %conv, 47
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %39 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont11 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %39, i32 0, i32 1
  %40 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont11, align 8, !tbaa !21
  %font_name12 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %40, i32 0, i32 22
  %size13 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name12, i32 0, i32 1
  %41 = load i32, i32* %size13, align 4, !tbaa !97
  %conv14 = zext i32 %41 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv14, %cond.true ], [ 47, %cond.false ]
  %conv15 = trunc i64 %cond to i32
  store i32 %conv15, i32* %l0, align 4, !tbaa !5
  %42 = bitcast i32* %l1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  %size16 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gstr, i32 0, i32 1
  %43 = load i32, i32* %size16, align 4, !tbaa !98
  %conv17 = zext i32 %43 to i64
  %cmp18 = icmp ult i64 %conv17, 29
  br i1 %cmp18, label %cond.true.20, label %cond.false.23

cond.true.20:                                     ; preds = %cond.end
  %size21 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gstr, i32 0, i32 1
  %44 = load i32, i32* %size21, align 4, !tbaa !98
  %conv22 = zext i32 %44 to i64
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.end
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.20
  %cond25 = phi i64 [ %conv22, %cond.true.20 ], [ 29, %cond.false.23 ]
  %conv26 = trunc i64 %cond25 to i32
  store i32 %conv26, i32* %l1, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %buf0, i32 0, i32 0
  %45 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont27 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %45, i32 0, i32 1
  %46 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont27, align 8, !tbaa !21
  %font_name28 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %46, i32 0, i32 22
  %chars = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name28, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [48 x i8], [48 x i8]* %chars, i32 0, i32 0
  %47 = load i32, i32* %l0, align 4, !tbaa !5
  %conv30 = sext i32 %47 to i64
  %call31 = call i8* @memcpy(i8* %arraydecay, i8* %arraydecay29, i64 %conv30) #5
  %48 = load i32, i32* %l0, align 4, !tbaa !5
  %idxprom = sext i32 %48 to i64
  %arrayidx = getelementptr inbounds [48 x i8], [48 x i8]* %buf0, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !100
  %arraydecay32 = getelementptr inbounds [30 x i8], [30 x i8]* %buf1, i32 0, i32 0
  %data33 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gstr, i32 0, i32 0
  %49 = load i8*, i8** %data33, align 8, !tbaa !101
  %50 = load i32, i32* %l1, align 4, !tbaa !5
  %conv34 = sext i32 %50 to i64
  %call35 = call i8* @memcpy(i8* %arraydecay32, i8* %49, i64 %conv34) #5
  %51 = load i32, i32* %l1, align 4, !tbaa !5
  %idxprom36 = sext i32 %51 to i64
  %arrayidx37 = getelementptr inbounds [30 x i8], [30 x i8]* %buf1, i32 0, i64 %idxprom36
  store i8 0, i8* %arrayidx37, align 1, !tbaa !100
  %52 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %52, i32 0, i32 2
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory38, align 8, !tbaa !94
  %call39 = call i8* @gs_program_name() #4
  %call40 = call i64 @gs_revision_number() #4
  call void @emprintf_program_ident(%struct.gs_memory_s* %53, i8* %call39, i64 %call40) #4
  %54 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %memory41 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %54, i32 0, i32 2
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory41, align 8, !tbaa !94
  %arraydecay42 = getelementptr inbounds [48 x i8], [48 x i8]* %buf0, i32 0, i32 0
  %arraydecay43 = getelementptr inbounds [30 x i8], [30 x i8]* %buf1, i32 0, i32 0
  %call44 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %55, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay42, i8* %arraydecay43) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %56 = bitcast i32* %l1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast i32* %l0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast [30 x i8]* %buf1 to i8*
  call void @llvm.lifetime.end(i64 30, i8* %58) #2
  %59 = bitcast [48 x i8]* %buf0 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %59) #2
  br label %cleanup

if.end:                                           ; preds = %if.then
  %60 = load i32, i32* %code, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %60, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end
  %61 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.end
  %62 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ips_count49 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %62, i32 0, i32 15
  store i32 1, i32* %ips_count49, align 4, !tbaa !7
  %63 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %ipstack = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %63, i32 0, i32 14
  %arrayidx50 = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack, i32 0, i64 0
  %cs_data = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %arrayidx50, i32 0, i32 3
  %64 = bitcast %struct.gs_glyph_data_s* %cs_data to i8*
  %65 = bitcast %struct.gs_glyph_data_s* %agdata to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 48, i32 8, i1 false), !tbaa.struct !93
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.48, %if.then.47, %cond.end.24
  %66 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = bitcast %struct.gs_const_string_s* %gstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %67) #2
  %68 = bitcast i32* %achar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast %struct.gs_glyph_data_s* %agdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %69) #2
  %70 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  br label %cleanup.67

if.end.55:                                        ; preds = %entry
  %71 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %pfont56 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %71, i32 0, i32 1
  %72 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont56, align 8, !tbaa !21
  %PaintType = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %72, i32 0, i32 17
  %73 = load i32, i32* %PaintType, align 4, !tbaa !102
  %cmp57 = icmp eq i32 %73, 0
  br i1 %cmp57, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.end.55
  %74 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %fill_adjust = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %74, i32 0, i32 28
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust, i32 0, i32 1
  store i32 -1, i32* %y, align 4, !tbaa !103
  %75 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %fill_adjust60 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %75, i32 0, i32 28
  %x61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust60, i32 0, i32 0
  store i32 -1, i32* %x61, align 4, !tbaa !112
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %if.end.55
  %76 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %no_grid_fitting = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %76, i32 0, i32 4
  %77 = load i32, i32* %no_grid_fitting, align 4, !tbaa !36
  %tobool = icmp ne i32 %77, 0
  br i1 %tobool, label %if.end.66, label %if.then.63

if.then.63:                                       ; preds = %if.end.62
  %78 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %79 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %flatness = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %79, i32 0, i32 8
  %80 = load float, float* %flatness, align 4, !tbaa !77
  %conv64 = fpext float %80 to double
  %call65 = call i32 @gs_imager_setflat(%struct.gs_imager_state_s* %78, double %conv64) #4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.63, %if.end.62
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

cleanup.67:                                       ; preds = %if.end.66, %cleanup
  %81 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = load i32, i32* %retval
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #0

declare i32 @gs_imager_setflat(%struct.gs_imager_state_s*, double) #0

; Function Attrs: nounwind uwtable
define void @type1_cis_get_metrics(%struct.gs_type1_state_s* %pcis, double* %psbw) #1 {
entry:
  %pcis.addr = alloca %struct.gs_type1_state_s*, align 8
  %psbw.addr = alloca double*, align 8
  store %struct.gs_type1_state_s* %pcis, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  store double* %psbw, double** %psbw.addr, align 8, !tbaa !1
  %0 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %lsb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %0, i32 0, i32 21
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb, i32 0, i32 0
  %1 = load i32, i32* %x, align 4, !tbaa !56
  %conv = sitofp i32 %1 to double
  %mul = fmul double %conv, 3.906250e-03
  %2 = load double*, double** %psbw.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %2, i64 0
  store double %mul, double* %arrayidx, align 8, !tbaa !113
  %3 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %lsb1 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %3, i32 0, i32 21
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb1, i32 0, i32 1
  %4 = load i32, i32* %y, align 4, !tbaa !58
  %conv2 = sitofp i32 %4 to double
  %mul3 = fmul double %conv2, 3.906250e-03
  %5 = load double*, double** %psbw.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds double, double* %5, i64 1
  store double %mul3, double* %arrayidx4, align 8, !tbaa !113
  %6 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %6, i32 0, i32 22
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width, i32 0, i32 0
  %7 = load i32, i32* %x5, align 4, !tbaa !59
  %conv6 = sitofp i32 %7 to double
  %mul7 = fmul double %conv6, 3.906250e-03
  %8 = load double*, double** %psbw.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds double, double* %8, i64 2
  store double %mul7, double* %arrayidx8, align 8, !tbaa !113
  %9 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pcis.addr, align 8, !tbaa !1
  %width9 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %9, i32 0, i32 22
  %y10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width9, i32 0, i32 1
  %10 = load i32, i32* %y10, align 4, !tbaa !60
  %conv11 = sitofp i32 %10 to double
  %mul12 = fmul double %conv11, 3.906250e-03
  %11 = load double*, double** %psbw.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds double, double* %11, i64 3
  store double %mul12, double* %arrayidx13, align 8, !tbaa !113
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_type1_piece_codes(%struct.gs_font_type1_s* %pfont, %struct.gs_glyph_data_s* %pgd, i64* %chars) #1 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %chars.addr = alloca i64*, align 8
  %pdata = alloca %struct.gs_type1_data_s*, align 8
  %encrypted = alloca i32, align 4
  %cstack = alloca [48 x i32], align 16
  %csp = alloca i32*, align 8
  %ipstack = alloca [11 x %struct.ip_state_t], align 16
  %ipsp = alloca %struct.ip_state_t*, align 8
  %cip = alloca i8*, align 8
  %end = alloca i8*, align 8
  %state = alloca i16, align 2
  %c = alloca i32, align 4
  %hhints = alloca i32, align 4
  %vhints = alloca i32, align 4
  %code = alloca i32, align 4
  %call_depth = alloca i32, align 4
  %skip = alloca i32, align 4
  %c0 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %c2 = alloca i32, align 4
  %cn = alloca i32, align 4
  %lw = alloca i64, align 8
  %i = alloca i32, align 4
  %c4 = alloca i32, align 4
  %sint = alloca i16, align 2
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i64* %chars, i64** %chars.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %1, i32 0, i32 29
  store %struct.gs_type1_data_s* %data, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %2 = bitcast i32* %encrypted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %3, i32 0, i32 4
  %4 = load i32, i32* %lenIV, align 4, !tbaa !114
  %cmp = icmp sge i32 %4, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %encrypted, align 4, !tbaa !5
  %5 = bitcast [48 x i32]* %cstack to i8*
  call void @llvm.lifetime.start(i64 192, i8* %5) #2
  %6 = bitcast i32** %csp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast [11 x %struct.ip_state_t]* %ipstack to i8*
  call void @llvm.lifetime.start(i64 792, i8* %7) #2
  %8 = bitcast %struct.ip_state_t** %ipsp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %arrayidx = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack, i32 0, i64 0
  store %struct.ip_state_t* %arrayidx, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %9 = bitcast i8** %cip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i16* %state to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #2
  %12 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %hhints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  store i32 0, i32* %hhints, align 4, !tbaa !5
  %14 = bitcast i32* %vhints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  store i32 0, i32* %vhints, align 4, !tbaa !5
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %call_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  store i32 0, i32* %call_depth, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay, i64 -1
  store i32* %add.ptr, i32** %csp, align 8, !tbaa !1
  %17 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %17, i32 0, i32 0
  %data1 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  %18 = load i8*, i8** %data1, align 8, !tbaa !115
  store i8* %18, i8** %cip, align 8, !tbaa !1
  %19 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits2 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %19, i32 0, i32 0
  %data3 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits2, i32 0, i32 0
  %20 = load i8*, i8** %data3, align 8, !tbaa !115
  %21 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits4 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %21, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits4, i32 0, i32 1
  %22 = load i32, i32* %size, align 4, !tbaa !116
  %idx.ext = zext i32 %22 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr5, i8** %end, align 8, !tbaa !1
  br label %call

call:                                             ; preds = %cleanup.426, %entry
  store i16 4330, i16* %state, align 2, !tbaa !117
  %23 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %call
  %24 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %lenIV6 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %25, i32 0, i32 4
  %26 = load i32, i32* %lenIV6, align 4, !tbaa !114
  store i32 %26, i32* %skip, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %27 = load i32, i32* %skip, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %27, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %cip, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !100
  %conv9 = zext i8 %29 to i32
  %30 = load i16, i16* %state, align 2, !tbaa !117
  %conv10 = zext i16 %30 to i32
  %add = add nsw i32 %conv9, %conv10
  %mul = mul nsw i32 %add, 52845
  %add11 = add nsw i32 %mul, 22719
  %conv12 = trunc i32 %add11 to i16
  store i16 %conv12, i16* %state, align 2, !tbaa !117
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %cip, align 8, !tbaa !1
  %32 = load i32, i32* %skip, align 4, !tbaa !5
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %skip, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  br label %if.end

if.end:                                           ; preds = %for.end, %call
  br label %top

top:                                              ; preds = %cleanup.426, %if.end
  br label %for.cond.13

for.cond.13:                                      ; preds = %cleanup.cont.428, %cleanup.426, %top
  %34 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  %35 = load i8*, i8** %cip, align 8, !tbaa !1
  %36 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp14 = icmp ugt i8* %35, %36
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.cond.13
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.17:                                        ; preds = %for.cond.13
  %37 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr18 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr18, i8** %cip, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !100
  %conv19 = zext i8 %38 to i32
  store i32 %conv19, i32* %c0, align 4, !tbaa !5
  %39 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool20 = icmp ne i32 %39, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %40 = load i32, i32* %c0, align 4, !tbaa !5
  %41 = load i16, i16* %state, align 2, !tbaa !117
  %conv21 = zext i16 %41 to i32
  %shr = ashr i32 %conv21, 8
  %xor = xor i32 %40, %shr
  store i32 %xor, i32* %c, align 4, !tbaa !5
  %42 = load i32, i32* %c0, align 4, !tbaa !5
  %43 = load i16, i16* %state, align 2, !tbaa !117
  %conv22 = zext i16 %43 to i32
  %add23 = add i32 %42, %conv22
  %mul24 = mul i32 %add23, 52845
  %add25 = add i32 %mul24, 22719
  %conv26 = trunc i32 %add25 to i16
  store i16 %conv26, i16* %state, align 2, !tbaa !117
  %conv27 = zext i16 %conv26 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  %44 = load i32, i32* %c0, align 4, !tbaa !5
  store i32 %44, i32* %c, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv27, %cond.true ], [ %44, %cond.false ]
  %45 = load i32, i32* %c, align 4, !tbaa !5
  %cmp28 = icmp sge i32 %45, 32
  br i1 %cmp28, label %if.then.30, label %if.end.165

if.then.30:                                       ; preds = %cond.end
  %46 = load i32, i32* %c, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %46, 247
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.then.30
  br label %do.body

do.body:                                          ; preds = %if.then.33
  br label %do.body.34

do.body.34:                                       ; preds = %do.body
  %47 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 47
  %cmp36 = icmp uge i32* %47, %arrayidx35
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %do.body.34
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.39:                                        ; preds = %do.body.34
  br label %do.cond

do.cond:                                          ; preds = %if.end.39
  br label %do.end

do.end:                                           ; preds = %do.cond
  %48 = load i32, i32* %c, align 4, !tbaa !5
  %conv40 = trunc i32 %48 to i8
  %conv41 = zext i8 %conv40 to i32
  %sub = sub nsw i32 %conv41, 139
  %shl = shl i32 %sub, 8
  %49 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr42 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %incdec.ptr42, i32** %csp, align 8, !tbaa !1
  store i32 %shl, i32* %incdec.ptr42, align 4, !tbaa !5
  br label %do.cond.43

do.cond.43:                                       ; preds = %do.end
  br label %do.end.44

do.end.44:                                        ; preds = %do.cond.43
  br label %if.end.164

if.else:                                          ; preds = %if.then.30
  %50 = load i32, i32* %c, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %50, 255
  br i1 %cmp45, label %if.then.47, label %if.else.111

if.then.47:                                       ; preds = %if.else
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %51 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #2
  %52 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr49 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr49, i8** %cip, align 8, !tbaa !1
  %53 = load i8, i8* %52, align 1, !tbaa !100
  %conv50 = zext i8 %53 to i32
  store i32 %conv50, i32* %c2, align 4, !tbaa !5
  %54 = bitcast i32* %cn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  br label %do.body.51

do.body.51:                                       ; preds = %do.body.48
  %55 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 47
  %cmp53 = icmp uge i32* %55, %arrayidx52
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %do.body.51
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %do.body.51
  br label %do.cond.57

do.cond.57:                                       ; preds = %if.end.56
  br label %do.end.58

do.end.58:                                        ; preds = %do.cond.57
  %56 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool59 = icmp ne i32 %56, 0
  br i1 %tobool59, label %cond.true.60, label %cond.false.64

cond.true.60:                                     ; preds = %do.end.58
  %57 = load i32, i32* %c2, align 4, !tbaa !5
  %58 = load i16, i16* %state, align 2, !tbaa !117
  %conv61 = zext i16 %58 to i32
  %shr62 = ashr i32 %conv61, 8
  %xor63 = xor i32 %57, %shr62
  br label %cond.end.65

cond.false.64:                                    ; preds = %do.end.58
  %59 = load i32, i32* %c2, align 4, !tbaa !5
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.60
  %cond66 = phi i32 [ %xor63, %cond.true.60 ], [ %59, %cond.false.64 ]
  store i32 %cond66, i32* %cn, align 4, !tbaa !5
  %60 = load i32, i32* %c, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %60, 251
  br i1 %cmp67, label %if.then.69, label %if.else.82

if.then.69:                                       ; preds = %cond.end.65
  br label %do.body.70

do.body.70:                                       ; preds = %if.then.69
  br label %do.cond.71

do.cond.71:                                       ; preds = %do.body.70
  br label %do.end.72

do.end.72:                                        ; preds = %do.cond.71
  %61 = load i32, i32* %c, align 4, !tbaa !5
  %sub73 = sub nsw i32 %61, 247
  %conv74 = trunc i32 %sub73 to i8
  %conv75 = zext i8 %conv74 to i32
  %shl76 = shl i32 %conv75, 8
  %add77 = add nsw i32 %shl76, 0
  %add78 = add nsw i32 %add77, 108
  %62 = load i32, i32* %cn, align 4, !tbaa !5
  %add79 = add nsw i32 %add78, %62
  %shl80 = shl i32 %add79, 8
  %63 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr81 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %incdec.ptr81, i32** %csp, align 8, !tbaa !1
  store i32 %shl80, i32* %incdec.ptr81, align 4, !tbaa !5
  br label %if.end.96

if.else.82:                                       ; preds = %cond.end.65
  br label %do.body.83

do.body.83:                                       ; preds = %if.else.82
  br label %do.cond.84

do.cond.84:                                       ; preds = %do.body.83
  br label %do.end.85

do.end.85:                                        ; preds = %do.cond.84
  %64 = load i32, i32* %c, align 4, !tbaa !5
  %sub86 = sub nsw i32 %64, 251
  %conv87 = trunc i32 %sub86 to i8
  %conv88 = zext i8 %conv87 to i32
  %shl89 = shl i32 %conv88, 8
  %add90 = add nsw i32 %shl89, 0
  %add91 = add nsw i32 %add90, 108
  %sub92 = sub nsw i32 0, %add91
  %65 = load i32, i32* %cn, align 4, !tbaa !5
  %sub93 = sub nsw i32 %sub92, %65
  %shl94 = shl i32 %sub93, 8
  %66 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr95 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %incdec.ptr95, i32** %csp, align 8, !tbaa !1
  store i32 %shl94, i32* %incdec.ptr95, align 4, !tbaa !5
  br label %if.end.96

if.end.96:                                        ; preds = %do.end.85, %do.end.72
  %67 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool97 = icmp ne i32 %67, 0
  br i1 %tobool97, label %cond.true.98, label %cond.false.105

cond.true.98:                                     ; preds = %if.end.96
  %68 = load i32, i32* %c2, align 4, !tbaa !5
  %69 = load i16, i16* %state, align 2, !tbaa !117
  %conv99 = zext i16 %69 to i32
  %add100 = add i32 %68, %conv99
  %mul101 = mul i32 %add100, 52845
  %add102 = add i32 %mul101, 22719
  %conv103 = trunc i32 %add102 to i16
  store i16 %conv103, i16* %state, align 2, !tbaa !117
  %conv104 = zext i16 %conv103 to i32
  br label %cond.end.106

cond.false.105:                                   ; preds = %if.end.96
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.105, %cond.true.98
  %cond107 = phi i32 [ %conv104, %cond.true.98 ], [ 0, %cond.false.105 ]
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.106, %if.then.55
  %70 = bitcast i32* %cn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.426 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond.109

do.cond.109:                                      ; preds = %cleanup.cont
  br label %do.end.110

do.end.110:                                       ; preds = %do.cond.109
  br label %if.end.163

if.else.111:                                      ; preds = %if.else
  %72 = load i32, i32* %c, align 4, !tbaa !5
  %cmp112 = icmp eq i32 %72, 255
  br i1 %cmp112, label %if.then.114, label %if.else.161

if.then.114:                                      ; preds = %if.else.111
  %73 = bitcast i64* %lw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #2
  br label %do.body.115

do.body.115:                                      ; preds = %if.then.114
  %74 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #2
  %75 = bitcast i32* %c4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #2
  store i64 0, i64* %lw, align 8, !tbaa !118
  store i32 4, i32* %i, align 4, !tbaa !5
  br label %for.cond.116

for.cond.116:                                     ; preds = %cond.end.136, %do.body.115
  %76 = load i32, i32* %i, align 4, !tbaa !5
  %dec117 = add nsw i32 %76, -1
  store i32 %dec117, i32* %i, align 4, !tbaa !5
  %cmp118 = icmp sge i32 %dec117, 0
  br i1 %cmp118, label %for.body.120, label %for.end.142

for.body.120:                                     ; preds = %for.cond.116
  %77 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool121 = icmp ne i32 %77, 0
  br i1 %tobool121, label %cond.true.122, label %cond.false.134

cond.true.122:                                    ; preds = %for.body.120
  %78 = load i8*, i8** %cip, align 8, !tbaa !1
  %79 = load i8, i8* %78, align 1, !tbaa !100
  %conv123 = zext i8 %79 to i32
  %80 = load i16, i16* %state, align 2, !tbaa !117
  %conv124 = zext i16 %80 to i32
  %shr125 = ashr i32 %conv124, 8
  %xor126 = xor i32 %conv123, %shr125
  store i32 %xor126, i32* %c4, align 4, !tbaa !5
  %81 = load i8*, i8** %cip, align 8, !tbaa !1
  %82 = load i8, i8* %81, align 1, !tbaa !100
  %conv127 = zext i8 %82 to i32
  %83 = load i16, i16* %state, align 2, !tbaa !117
  %conv128 = zext i16 %83 to i32
  %add129 = add nsw i32 %conv127, %conv128
  %mul130 = mul nsw i32 %add129, 52845
  %add131 = add nsw i32 %mul130, 22719
  %conv132 = trunc i32 %add131 to i16
  store i16 %conv132, i16* %state, align 2, !tbaa !117
  %conv133 = zext i16 %conv132 to i32
  br label %cond.end.136

cond.false.134:                                   ; preds = %for.body.120
  %84 = load i8*, i8** %cip, align 8, !tbaa !1
  %85 = load i8, i8* %84, align 1, !tbaa !100
  %conv135 = zext i8 %85 to i32
  store i32 %conv135, i32* %c4, align 4, !tbaa !5
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.134, %cond.true.122
  %cond137 = phi i32 [ %conv133, %cond.true.122 ], [ %conv135, %cond.false.134 ]
  %86 = load i64, i64* %lw, align 8, !tbaa !118
  %shl138 = shl i64 %86, 8
  %87 = load i32, i32* %c4, align 4, !tbaa !5
  %conv139 = zext i32 %87 to i64
  %add140 = add nsw i64 %shl138, %conv139
  store i64 %add140, i64* %lw, align 8, !tbaa !118
  %88 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr141 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr141, i8** %cip, align 8, !tbaa !1
  br label %for.cond.116

for.end.142:                                      ; preds = %for.cond.116
  %89 = load i64, i64* %lw, align 8, !tbaa !118
  %xor143 = xor i64 %89, 2147483648
  %sub144 = sub nsw i64 %xor143, 2147483648
  store i64 %sub144, i64* %lw, align 8, !tbaa !118
  %90 = bitcast i32* %c4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  br label %do.cond.145

do.cond.145:                                      ; preds = %for.end.142
  br label %do.end.146

do.end.146:                                       ; preds = %do.cond.145
  br label %do.body.147

do.body.147:                                      ; preds = %do.end.146
  %92 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 47
  %cmp149 = icmp uge i32* %92, %arrayidx148
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %do.body.147
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.158

if.end.152:                                       ; preds = %do.body.147
  br label %do.cond.153

do.cond.153:                                      ; preds = %if.end.152
  br label %do.end.154

do.end.154:                                       ; preds = %do.cond.153
  %93 = load i64, i64* %lw, align 8, !tbaa !118
  %conv155 = trunc i64 %93 to i32
  %shl156 = shl i32 %conv155, 8
  %94 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr157 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %incdec.ptr157, i32** %csp, align 8, !tbaa !1
  store i32 %shl156, i32* %incdec.ptr157, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.158

cleanup.158:                                      ; preds = %do.end.154, %if.then.151
  %95 = bitcast i64* %lw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  %cleanup.dest.159 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.159, label %cleanup.426 [
    i32 0, label %cleanup.cont.160
  ]

cleanup.cont.160:                                 ; preds = %cleanup.158
  br label %if.end.162

if.else.161:                                      ; preds = %if.else.111
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.162:                                       ; preds = %cleanup.cont.160
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %do.end.110
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %do.end.44
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.165:                                       ; preds = %cond.end
  %96 = load i32, i32* %c, align 4, !tbaa !5
  switch i32 %96, label %sw.default [
    i32 28, label %sw.bb
    i32 18, label %sw.bb.190
    i32 23, label %sw.bb.198
    i32 20, label %sw.bb.211
    i32 19, label %sw.bb.229
    i32 29, label %sw.bb.252
    i32 10, label %sw.bb.285
    i32 11, label %sw.bb.327
    i32 1, label %sw.bb.344
    i32 3, label %sw.bb.357
    i32 13, label %sw.bb.370
    i32 14, label %sw.bb.373
    i32 12, label %sw.bb.388
  ]

sw.default:                                       ; preds = %if.end.165
  %arraydecay166 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr167 = getelementptr inbounds i32, i32* %arraydecay166, i64 -1
  store i32* %add.ptr167, i32** %csp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb:                                            ; preds = %if.end.165
  %97 = bitcast i16* %sint to i8*
  call void @llvm.lifetime.start(i64 2, i8* %97) #2
  %98 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr168 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr168, i8** %cip, align 8, !tbaa !1
  %99 = load i8, i8* %98, align 1, !tbaa !100
  %conv169 = zext i8 %99 to i16
  store i16 %conv169, i16* %sint, align 2, !tbaa !117
  %100 = load i16, i16* %sint, align 2, !tbaa !117
  %conv170 = sext i16 %100 to i32
  %shl171 = shl i32 %conv170, 8
  %101 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr172 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr172, i8** %cip, align 8, !tbaa !1
  %102 = load i8, i8* %101, align 1, !tbaa !100
  %conv173 = zext i8 %102 to i32
  %add174 = add nsw i32 %shl171, %conv173
  %conv175 = trunc i32 %add174 to i16
  store i16 %conv175, i16* %sint, align 2, !tbaa !117
  br label %do.body.176

do.body.176:                                      ; preds = %sw.bb
  %103 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 47
  %cmp178 = icmp uge i32* %103, %arrayidx177
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %do.body.176
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.187

if.end.181:                                       ; preds = %do.body.176
  br label %do.cond.182

do.cond.182:                                      ; preds = %if.end.181
  br label %do.end.183

do.end.183:                                       ; preds = %do.cond.182
  %104 = load i16, i16* %sint, align 2, !tbaa !117
  %conv184 = sext i16 %104 to i32
  %shl185 = shl i32 %conv184, 8
  %105 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr186 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %incdec.ptr186, i32** %csp, align 8, !tbaa !1
  store i32 %shl185, i32* %incdec.ptr186, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.187

cleanup.187:                                      ; preds = %do.end.183, %if.then.180
  %106 = bitcast i16* %sint to i8*
  call void @llvm.lifetime.end(i64 2, i8* %106) #2
  %cleanup.dest.188 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.188, label %cleanup.426 [
    i32 0, label %cleanup.cont.189
  ]

cleanup.cont.189:                                 ; preds = %cleanup.187
  br label %sw.epilog

sw.bb.190:                                        ; preds = %if.end.165
  %107 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay191 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i32* %107 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %arraydecay191 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %add192 = add nsw i64 %sub.ptr.div, 1
  %div = sdiv i64 %add192, 2
  %108 = load i32, i32* %hhints, align 4, !tbaa !5
  %conv193 = sext i32 %108 to i64
  %add194 = add nsw i64 %conv193, %div
  %conv195 = trunc i64 %add194 to i32
  store i32 %conv195, i32* %hhints, align 4, !tbaa !5
  %arraydecay196 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr197 = getelementptr inbounds i32, i32* %arraydecay196, i64 -1
  store i32* %add.ptr197, i32** %csp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb.198:                                        ; preds = %if.end.165
  %109 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay199 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast200 = ptrtoint i32* %109 to i64
  %sub.ptr.rhs.cast201 = ptrtoint i32* %arraydecay199 to i64
  %sub.ptr.sub202 = sub i64 %sub.ptr.lhs.cast200, %sub.ptr.rhs.cast201
  %sub.ptr.div203 = sdiv exact i64 %sub.ptr.sub202, 4
  %add204 = add nsw i64 %sub.ptr.div203, 1
  %div205 = sdiv i64 %add204, 2
  %110 = load i32, i32* %vhints, align 4, !tbaa !5
  %conv206 = sext i32 %110 to i64
  %add207 = add nsw i64 %conv206, %div205
  %conv208 = trunc i64 %add207 to i32
  store i32 %conv208, i32* %vhints, align 4, !tbaa !5
  %arraydecay209 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr210 = getelementptr inbounds i32, i32* %arraydecay209, i64 -1
  store i32* %add.ptr210, i32** %csp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb.211:                                        ; preds = %if.end.165
  %111 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay212 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast213 = ptrtoint i32* %111 to i64
  %sub.ptr.rhs.cast214 = ptrtoint i32* %arraydecay212 to i64
  %sub.ptr.sub215 = sub i64 %sub.ptr.lhs.cast213, %sub.ptr.rhs.cast214
  %sub.ptr.div216 = sdiv exact i64 %sub.ptr.sub215, 4
  %add217 = add nsw i64 %sub.ptr.div216, 1
  %div218 = sdiv i64 %add217, 2
  %112 = load i32, i32* %vhints, align 4, !tbaa !5
  %conv219 = sext i32 %112 to i64
  %add220 = add nsw i64 %conv219, %div218
  %conv221 = trunc i64 %add220 to i32
  store i32 %conv221, i32* %vhints, align 4, !tbaa !5
  %113 = load i32, i32* %vhints, align 4, !tbaa !5
  %114 = load i32, i32* %hhints, align 4, !tbaa !5
  %add222 = add nsw i32 %113, %114
  %add223 = add nsw i32 %add222, 7
  %div224 = sdiv i32 %add223, 8
  %115 = load i8*, i8** %cip, align 8, !tbaa !1
  %idx.ext225 = sext i32 %div224 to i64
  %add.ptr226 = getelementptr inbounds i8, i8* %115, i64 %idx.ext225
  store i8* %add.ptr226, i8** %cip, align 8, !tbaa !1
  %arraydecay227 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr228 = getelementptr inbounds i32, i32* %arraydecay227, i64 -1
  store i32* %add.ptr228, i32** %csp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb.229:                                        ; preds = %if.end.165
  %116 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay230 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %cmp231 = icmp ugt i32* %116, %arraydecay230
  br i1 %cmp231, label %if.then.233, label %if.end.244

if.then.233:                                      ; preds = %sw.bb.229
  %117 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay234 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast235 = ptrtoint i32* %117 to i64
  %sub.ptr.rhs.cast236 = ptrtoint i32* %arraydecay234 to i64
  %sub.ptr.sub237 = sub i64 %sub.ptr.lhs.cast235, %sub.ptr.rhs.cast236
  %sub.ptr.div238 = sdiv exact i64 %sub.ptr.sub237, 4
  %add239 = add nsw i64 %sub.ptr.div238, 1
  %div240 = sdiv i64 %add239, 2
  %118 = load i32, i32* %vhints, align 4, !tbaa !5
  %conv241 = sext i32 %118 to i64
  %add242 = add nsw i64 %conv241, %div240
  %conv243 = trunc i64 %add242 to i32
  store i32 %conv243, i32* %vhints, align 4, !tbaa !5
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.233, %sw.bb.229
  %119 = load i32, i32* %vhints, align 4, !tbaa !5
  %120 = load i32, i32* %hhints, align 4, !tbaa !5
  %add245 = add nsw i32 %119, %120
  %add246 = add nsw i32 %add245, 7
  %div247 = sdiv i32 %add246, 8
  %121 = load i8*, i8** %cip, align 8, !tbaa !1
  %idx.ext248 = sext i32 %div247 to i64
  %add.ptr249 = getelementptr inbounds i8, i8* %121, i64 %idx.ext248
  store i8* %add.ptr249, i8** %cip, align 8, !tbaa !1
  %arraydecay250 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr251 = getelementptr inbounds i32, i32* %arraydecay250, i64 -1
  store i32* %add.ptr251, i32** %csp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb.252:                                        ; preds = %if.end.165
  %122 = load i32, i32* %call_depth, align 4, !tbaa !5
  %inc = add nsw i32 %122, 1
  store i32 %inc, i32* %call_depth, align 4, !tbaa !5
  %123 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx253 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %cmp254 = icmp ult i32* %123, %arrayidx253
  br i1 %cmp254, label %if.then.256, label %if.else.257

if.then.256:                                      ; preds = %sw.bb.252
  %124 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %gsubrNumberBias = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %124, i32 0, i32 6
  %125 = load i32, i32* %gsubrNumberBias, align 4, !tbaa !119
  store i32 %125, i32* %c, align 4, !tbaa !5
  br label %if.end.260

if.else.257:                                      ; preds = %sw.bb.252
  %126 = load i32*, i32** %csp, align 8, !tbaa !1
  %127 = load i32, i32* %126, align 4, !tbaa !5
  %shr258 = ashr i32 %127, 8
  %128 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %subroutineNumberBias = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %128, i32 0, i32 5
  %129 = load i32, i32* %subroutineNumberBias, align 4, !tbaa !120
  %add259 = add i32 %shr258, %129
  store i32 %add259, i32* %c, align 4, !tbaa !5
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.257, %if.then.256
  %130 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %130, i32 0, i32 0
  %subr_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 1
  %131 = load i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)** %subr_data, align 8, !tbaa !121
  %132 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %133 = load i32, i32* %c, align 4, !tbaa !5
  %134 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %arrayidx261 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %134, i64 1
  %cs_data = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %arrayidx261, i32 0, i32 3
  %call262 = call i32 %131(%struct.gs_font_type1_s* %132, i32 %133, i32 1, %struct.gs_glyph_data_s* %cs_data) #4
  store i32 %call262, i32* %code, align 4, !tbaa !5
  %135 = load i32, i32* %code, align 4, !tbaa !5
  %cmp263 = icmp slt i32 %135, 0
  br i1 %cmp263, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %if.end.260
  %136 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %136, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.266:                                       ; preds = %if.end.260
  %137 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx267 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %cmp268 = icmp uge i32* %137, %arrayidx267
  br i1 %cmp268, label %if.then.270, label %if.end.272

if.then.270:                                      ; preds = %if.end.266
  %138 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr271 = getelementptr inbounds i32, i32* %138, i32 -1
  store i32* %incdec.ptr271, i32** %csp, align 8, !tbaa !1
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.270, %if.end.266
  %139 = load i8*, i8** %cip, align 8, !tbaa !1
  %140 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %140, i32 0, i32 0
  store i8* %139, i8** %ip, align 8, !tbaa !29
  %141 = load i16, i16* %state, align 2, !tbaa !117
  %142 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %142, i32 0, i32 2
  store i16 %141, i16* %dstate, align 2, !tbaa !122
  %143 = load i8*, i8** %end, align 8, !tbaa !1
  %144 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip_end = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %144, i32 0, i32 1
  store i8* %143, i8** %ip_end, align 8, !tbaa !123
  %145 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %incdec.ptr273 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %145, i32 1
  store %struct.ip_state_t* %incdec.ptr273, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %146 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data274 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %146, i32 0, i32 3
  %bits275 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data274, i32 0, i32 0
  %data276 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits275, i32 0, i32 0
  %147 = load i8*, i8** %data276, align 8, !tbaa !34
  store i8* %147, i8** %cip, align 8, !tbaa !1
  %148 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data277 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %148, i32 0, i32 3
  %bits278 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data277, i32 0, i32 0
  %data279 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits278, i32 0, i32 0
  %149 = load i8*, i8** %data279, align 8, !tbaa !34
  %150 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data280 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %150, i32 0, i32 3
  %bits281 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data280, i32 0, i32 0
  %size282 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits281, i32 0, i32 1
  %151 = load i32, i32* %size282, align 4, !tbaa !124
  %idx.ext283 = zext i32 %151 to i64
  %add.ptr284 = getelementptr inbounds i8, i8* %149, i64 %idx.ext283
  store i8* %add.ptr284, i8** %end, align 8, !tbaa !1
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb.285:                                        ; preds = %if.end.165
  %152 = load i32, i32* %call_depth, align 4, !tbaa !5
  %inc286 = add nsw i32 %152, 1
  store i32 %inc286, i32* %call_depth, align 4, !tbaa !5
  %153 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx287 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %cmp288 = icmp ult i32* %153, %arrayidx287
  br i1 %cmp288, label %if.then.290, label %if.else.292

if.then.290:                                      ; preds = %sw.bb.285
  %154 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %subroutineNumberBias291 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %154, i32 0, i32 5
  %155 = load i32, i32* %subroutineNumberBias291, align 4, !tbaa !120
  store i32 %155, i32* %c, align 4, !tbaa !5
  br label %if.end.296

if.else.292:                                      ; preds = %sw.bb.285
  %156 = load i32*, i32** %csp, align 8, !tbaa !1
  %157 = load i32, i32* %156, align 4, !tbaa !5
  %shr293 = ashr i32 %157, 8
  %158 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %subroutineNumberBias294 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %158, i32 0, i32 5
  %159 = load i32, i32* %subroutineNumberBias294, align 4, !tbaa !120
  %add295 = add i32 %shr293, %159
  store i32 %add295, i32* %c, align 4, !tbaa !5
  br label %if.end.296

if.end.296:                                       ; preds = %if.else.292, %if.then.290
  %160 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %procs297 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %160, i32 0, i32 0
  %subr_data298 = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs297, i32 0, i32 1
  %161 = load i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)** %subr_data298, align 8, !tbaa !121
  %162 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %163 = load i32, i32* %c, align 4, !tbaa !5
  %164 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %arrayidx299 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %164, i64 1
  %cs_data300 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %arrayidx299, i32 0, i32 3
  %call301 = call i32 %161(%struct.gs_font_type1_s* %162, i32 %163, i32 0, %struct.gs_glyph_data_s* %cs_data300) #4
  store i32 %call301, i32* %code, align 4, !tbaa !5
  %165 = load i32, i32* %code, align 4, !tbaa !5
  %cmp302 = icmp slt i32 %165, 0
  br i1 %cmp302, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %if.end.296
  %166 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %166, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.305:                                       ; preds = %if.end.296
  %167 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx306 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 0
  %cmp307 = icmp uge i32* %167, %arrayidx306
  br i1 %cmp307, label %if.then.309, label %if.end.311

if.then.309:                                      ; preds = %if.end.305
  %168 = load i32*, i32** %csp, align 8, !tbaa !1
  %incdec.ptr310 = getelementptr inbounds i32, i32* %168, i32 -1
  store i32* %incdec.ptr310, i32** %csp, align 8, !tbaa !1
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.309, %if.end.305
  %169 = load i8*, i8** %cip, align 8, !tbaa !1
  %170 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip312 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %170, i32 0, i32 0
  store i8* %169, i8** %ip312, align 8, !tbaa !29
  %171 = load i16, i16* %state, align 2, !tbaa !117
  %172 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate313 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %172, i32 0, i32 2
  store i16 %171, i16* %dstate313, align 2, !tbaa !122
  %173 = load i8*, i8** %end, align 8, !tbaa !1
  %174 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip_end314 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %174, i32 0, i32 1
  store i8* %173, i8** %ip_end314, align 8, !tbaa !123
  %175 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %incdec.ptr315 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %175, i32 1
  store %struct.ip_state_t* %incdec.ptr315, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %176 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data316 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %176, i32 0, i32 3
  %bits317 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data316, i32 0, i32 0
  %data318 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits317, i32 0, i32 0
  %177 = load i8*, i8** %data318, align 8, !tbaa !34
  store i8* %177, i8** %cip, align 8, !tbaa !1
  %178 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data319 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %178, i32 0, i32 3
  %bits320 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data319, i32 0, i32 0
  %data321 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits320, i32 0, i32 0
  %179 = load i8*, i8** %data321, align 8, !tbaa !34
  %180 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data322 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %180, i32 0, i32 3
  %bits323 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %cs_data322, i32 0, i32 0
  %size324 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits323, i32 0, i32 1
  %181 = load i32, i32* %size324, align 4, !tbaa !124
  %idx.ext325 = zext i32 %181 to i64
  %add.ptr326 = getelementptr inbounds i8, i8* %179, i64 %idx.ext325
  store i8* %add.ptr326, i8** %end, align 8, !tbaa !1
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb.327:                                        ; preds = %if.end.165
  %182 = load i32, i32* %call_depth, align 4, !tbaa !5
  %cmp328 = icmp eq i32 %182, 0
  br i1 %cmp328, label %if.then.330, label %if.else.331

if.then.330:                                      ; preds = %sw.bb.327
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

if.else.331:                                      ; preds = %sw.bb.327
  %183 = load i32, i32* %call_depth, align 4, !tbaa !5
  %dec332 = add nsw i32 %183, -1
  store i32 %dec332, i32* %call_depth, align 4, !tbaa !5
  br label %if.end.333

if.end.333:                                       ; preds = %if.else.331
  %184 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %cs_data334 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %184, i32 0, i32 3
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %cs_data334, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #4
  %185 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %incdec.ptr335 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %185, i32 -1
  store %struct.ip_state_t* %incdec.ptr335, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %186 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %arraydecay336 = getelementptr inbounds [11 x %struct.ip_state_t], [11 x %struct.ip_state_t]* %ipstack, i32 0, i32 0
  %cmp337 = icmp ult %struct.ip_state_t* %186, %arraydecay336
  br i1 %cmp337, label %if.then.339, label %if.end.340

if.then.339:                                      ; preds = %if.end.333
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.340:                                       ; preds = %if.end.333
  %187 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip341 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %187, i32 0, i32 0
  %188 = load i8*, i8** %ip341, align 8, !tbaa !29
  store i8* %188, i8** %cip, align 8, !tbaa !1
  %189 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %dstate342 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %189, i32 0, i32 2
  %190 = load i16, i16* %dstate342, align 2, !tbaa !122
  store i16 %190, i16* %state, align 2, !tbaa !117
  %191 = load %struct.ip_state_t*, %struct.ip_state_t** %ipsp, align 8, !tbaa !1
  %ip_end343 = getelementptr inbounds %struct.ip_state_t, %struct.ip_state_t* %191, i32 0, i32 1
  %192 = load i8*, i8** %ip_end343, align 8, !tbaa !123
  store i8* %192, i8** %end, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb.344:                                        ; preds = %if.end.165
  %193 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay345 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast346 = ptrtoint i32* %193 to i64
  %sub.ptr.rhs.cast347 = ptrtoint i32* %arraydecay345 to i64
  %sub.ptr.sub348 = sub i64 %sub.ptr.lhs.cast346, %sub.ptr.rhs.cast347
  %sub.ptr.div349 = sdiv exact i64 %sub.ptr.sub348, 4
  %add350 = add nsw i64 %sub.ptr.div349, 1
  %div351 = sdiv i64 %add350, 2
  %194 = load i32, i32* %hhints, align 4, !tbaa !5
  %conv352 = sext i32 %194 to i64
  %add353 = add nsw i64 %conv352, %div351
  %conv354 = trunc i64 %add353 to i32
  store i32 %conv354, i32* %hhints, align 4, !tbaa !5
  %arraydecay355 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr356 = getelementptr inbounds i32, i32* %arraydecay355, i64 -1
  store i32* %add.ptr356, i32** %csp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb.357:                                        ; preds = %if.end.165
  %195 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay358 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %sub.ptr.lhs.cast359 = ptrtoint i32* %195 to i64
  %sub.ptr.rhs.cast360 = ptrtoint i32* %arraydecay358 to i64
  %sub.ptr.sub361 = sub i64 %sub.ptr.lhs.cast359, %sub.ptr.rhs.cast360
  %sub.ptr.div362 = sdiv exact i64 %sub.ptr.sub361, 4
  %add363 = add nsw i64 %sub.ptr.div362, 1
  %div364 = sdiv i64 %add363, 2
  %196 = load i32, i32* %vhints, align 4, !tbaa !5
  %conv365 = sext i32 %196 to i64
  %add366 = add nsw i64 %conv365, %div364
  %conv367 = trunc i64 %add366 to i32
  store i32 %conv367, i32* %vhints, align 4, !tbaa !5
  %arraydecay368 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr369 = getelementptr inbounds i32, i32* %arraydecay368, i64 -1
  store i32* %add.ptr369, i32** %csp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb.370:                                        ; preds = %if.end.165
  %arraydecay371 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr372 = getelementptr inbounds i32, i32* %arraydecay371, i64 -1
  store i32* %add.ptr372, i32** %csp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb.373:                                        ; preds = %if.end.165
  %197 = load i32*, i32** %csp, align 8, !tbaa !1
  %arraydecay374 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr375 = getelementptr inbounds i32, i32* %arraydecay374, i64 3
  %cmp376 = icmp ult i32* %197, %add.ptr375
  br i1 %cmp376, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %sw.bb.373
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.379:                                       ; preds = %sw.bb.373
  br label %do_seac

do_seac:                                          ; preds = %sw.bb.412, %if.end.379
  %198 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx380 = getelementptr inbounds i32, i32* %198, i64 -1
  %199 = load i32, i32* %arrayidx380, align 4, !tbaa !5
  %shr381 = ashr i32 %199, 8
  %conv382 = sext i32 %shr381 to i64
  %200 = load i64*, i64** %chars.addr, align 8, !tbaa !1
  %arrayidx383 = getelementptr inbounds i64, i64* %200, i64 0
  store i64 %conv382, i64* %arrayidx383, align 8, !tbaa !118
  %201 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx384 = getelementptr inbounds i32, i32* %201, i64 0
  %202 = load i32, i32* %arrayidx384, align 4, !tbaa !5
  %shr385 = ashr i32 %202, 8
  %conv386 = sext i32 %shr385 to i64
  %203 = load i64*, i64** %chars.addr, align 8, !tbaa !1
  %arrayidx387 = getelementptr inbounds i64, i64* %203, i64 1
  store i64 %conv386, i64* %arrayidx387, align 8, !tbaa !118
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb.388:                                        ; preds = %if.end.165
  %204 = load i32, i32* %encrypted, align 4, !tbaa !5
  %tobool389 = icmp ne i32 %204, 0
  br i1 %tobool389, label %cond.true.390, label %cond.false.402

cond.true.390:                                    ; preds = %sw.bb.388
  %205 = load i8*, i8** %cip, align 8, !tbaa !1
  %206 = load i8, i8* %205, align 1, !tbaa !100
  %conv391 = zext i8 %206 to i32
  %207 = load i16, i16* %state, align 2, !tbaa !117
  %conv392 = zext i16 %207 to i32
  %shr393 = ashr i32 %conv392, 8
  %xor394 = xor i32 %conv391, %shr393
  store i32 %xor394, i32* %c, align 4, !tbaa !5
  %208 = load i8*, i8** %cip, align 8, !tbaa !1
  %209 = load i8, i8* %208, align 1, !tbaa !100
  %conv395 = zext i8 %209 to i32
  %210 = load i16, i16* %state, align 2, !tbaa !117
  %conv396 = zext i16 %210 to i32
  %add397 = add nsw i32 %conv395, %conv396
  %mul398 = mul nsw i32 %add397, 52845
  %add399 = add nsw i32 %mul398, 22719
  %conv400 = trunc i32 %add399 to i16
  store i16 %conv400, i16* %state, align 2, !tbaa !117
  %conv401 = zext i16 %conv400 to i32
  br label %cond.end.404

cond.false.402:                                   ; preds = %sw.bb.388
  %211 = load i8*, i8** %cip, align 8, !tbaa !1
  %212 = load i8, i8* %211, align 1, !tbaa !100
  %conv403 = zext i8 %212 to i32
  store i32 %conv403, i32* %c, align 4, !tbaa !5
  br label %cond.end.404

cond.end.404:                                     ; preds = %cond.false.402, %cond.true.390
  %cond405 = phi i32 [ %conv401, %cond.true.390 ], [ %conv403, %cond.false.402 ]
  %213 = load i8*, i8** %cip, align 8, !tbaa !1
  %incdec.ptr406 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %incdec.ptr406, i8** %cip, align 8, !tbaa !1
  %214 = load i32, i32* %c, align 4, !tbaa !5
  switch i32 %214, label %sw.default.407 [
    i32 1, label %sw.bb.408
    i32 2, label %sw.bb.408
    i32 7, label %sw.bb.408
    i32 17, label %sw.bb.411
    i32 6, label %sw.bb.412
    i32 16, label %sw.bb.413
  ]

sw.default.407:                                   ; preds = %cond.end.404
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb.408:                                        ; preds = %cond.end.404, %cond.end.404, %cond.end.404
  %arraydecay409 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr410 = getelementptr inbounds i32, i32* %arraydecay409, i64 -1
  store i32* %add.ptr410, i32** %csp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb.411:                                        ; preds = %cond.end.404
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb.412:                                        ; preds = %cond.end.404
  br label %do_seac

sw.bb.413:                                        ; preds = %cond.end.404
  %215 = load i32*, i32** %csp, align 8, !tbaa !1
  %216 = load i32, i32* %215, align 4, !tbaa !5
  %shr414 = ashr i32 %216, 8
  switch i32 %shr414, label %sw.default.415 [
    i32 3, label %sw.bb.416
    i32 12, label %sw.bb.423
    i32 13, label %sw.bb.423
    i32 14, label %sw.bb.423
    i32 15, label %sw.bb.423
    i32 16, label %sw.bb.423
    i32 17, label %sw.bb.423
    i32 18, label %sw.bb.423
  ]

sw.default.415:                                   ; preds = %sw.bb.413
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb.416:                                        ; preds = %sw.bb.413
  %217 = load i32*, i32** %csp, align 8, !tbaa !1
  %arrayidx417 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i64 1
  %cmp418 = icmp uge i32* %217, %arrayidx417
  br i1 %cmp418, label %if.then.420, label %if.end.422

if.then.420:                                      ; preds = %sw.bb.416
  %218 = load i32*, i32** %csp, align 8, !tbaa !1
  %add.ptr421 = getelementptr inbounds i32, i32* %218, i64 -2
  store i32* %add.ptr421, i32** %csp, align 8, !tbaa !1
  br label %if.end.422

if.end.422:                                       ; preds = %if.then.420, %sw.bb.416
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.bb.423:                                        ; preds = %sw.bb.413, %sw.bb.413, %sw.bb.413, %sw.bb.413, %sw.bb.413, %sw.bb.413, %sw.bb.413
  %arraydecay424 = getelementptr inbounds [48 x i32], [48 x i32]* %cstack, i32 0, i32 0
  %add.ptr425 = getelementptr inbounds i32, i32* %arraydecay424, i64 -1
  store i32* %add.ptr425, i32** %csp, align 8, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.426

sw.epilog:                                        ; preds = %cleanup.cont.189
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.426

cleanup.426:                                      ; preds = %sw.default.415, %sw.default.407, %if.then.378, %if.then.16, %sw.epilog, %sw.bb.423, %if.end.422, %sw.bb.411, %sw.bb.408, %do_seac, %sw.bb.370, %sw.bb.357, %sw.bb.344, %if.end.340, %if.then.339, %if.then.330, %if.end.311, %if.then.304, %if.end.272, %if.then.265, %if.end.244, %sw.bb.211, %sw.bb.198, %sw.bb.190, %cleanup.187, %sw.default, %if.end.164, %if.else.161, %cleanup.158, %cleanup, %if.then.38
  %219 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #2
  %cleanup.dest.427 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.427, label %cleanup.429 [
    i32 0, label %cleanup.cont.428
    i32 8, label %for.cond.13
    i32 6, label %top
    i32 2, label %call
    i32 9, label %out
  ]

cleanup.cont.428:                                 ; preds = %cleanup.426
  br label %for.cond.13

out:                                              ; preds = %cleanup.426
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.429

cleanup.429:                                      ; preds = %out, %cleanup.426
  %220 = bitcast i32* %call_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #2
  %221 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #2
  %222 = bitcast i32* %vhints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #2
  %223 = bitcast i32* %hhints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #2
  %224 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #2
  %225 = bitcast i16* %state to i8*
  call void @llvm.lifetime.end(i64 2, i8* %225) #2
  %226 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #2
  %227 = bitcast i8** %cip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #2
  %228 = bitcast %struct.ip_state_t** %ipsp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #2
  %229 = bitcast [11 x %struct.ip_state_t]* %ipstack to i8*
  call void @llvm.lifetime.end(i64 792, i8* %229) #2
  %230 = bitcast i32** %csp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #2
  %231 = bitcast [48 x i32]* %cstack to i8*
  call void @llvm.lifetime.end(i64 192, i8* %231) #2
  %232 = bitcast i32* %encrypted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #2
  %233 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #2
  %234 = load i32, i32* %retval
  ret i32 %234
}

declare void @gs_glyph_data_free(%struct.gs_glyph_data_s*, i8*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_type1_glyph_info(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_matrix_s* %pmat, i32 %members, %struct.gs_glyph_info_s* %info) #1 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_glyph_info_s*, align 8
  %pfont = alloca %struct.gs_font_type1_s*, align 8
  %pdata = alloca %struct.gs_type1_data_s*, align 8
  %wmode = alloca i32, align 4
  %piece_members = alloca i32, align 4
  %width_members = alloca i32, align 4
  %default_members = alloca i32, align 4
  %code = alloca i32, align 4
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %cleanup.dest.slot = alloca i32
  %path = alloca %struct.gx_path_s, align 8
  %gis = alloca %struct.gs_imager_state_s, align 8
  %cis = alloca %struct.gs_type1_state_s, align 8
  %value = alloca i32, align 4
  %imat = alloca %struct.gs_matrix_s, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !118
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !5
  store %struct.gs_glyph_info_s* %info, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %2, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %3 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %4, i32 0, i32 29
  store %struct.gs_type1_data_s* %data, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %5 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %members.addr, align 4, !tbaa !5
  %and = and i32 %6, 2
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %wmode, align 4, !tbaa !5
  %7 = bitcast i32* %piece_members to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %members.addr, align 4, !tbaa !5
  %and1 = and i32 %8, 24
  store i32 %and1, i32* %piece_members, align 4, !tbaa !5
  %9 = bitcast i32* %width_members to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %members.addr, align 4, !tbaa !5
  %11 = load i32, i32* %wmode, align 4, !tbaa !5
  %shl = shl i32 1, %11
  %12 = load i32, i32* %wmode, align 4, !tbaa !5
  %shl2 = shl i32 64, %12
  %or = or i32 %shl, %shl2
  %and3 = and i32 %10, %or
  store i32 %and3, i32* %width_members, align 4, !tbaa !5
  %13 = bitcast i32* %default_members to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32, i32* %members.addr, align 4, !tbaa !5
  %15 = load i32, i32* %piece_members, align 4, !tbaa !5
  %or4 = or i32 %15, 3
  %or5 = or i32 %or4, 64
  %or6 = or i32 %or5, 128
  %or7 = or i32 %or6, 32
  %neg = xor i32 %or7, -1
  %and8 = and i32 %14, %neg
  store i32 %and8, i32* %default_members, align 4, !tbaa !5
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %17 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %17) #2
  %18 = load i32, i32* %default_members, align 4, !tbaa !5
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %20 = load i64, i64* %glyph.addr, align 8, !tbaa !118
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %22 = load i32, i32* %default_members, align 4, !tbaa !5
  %23 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %call = call i32 @gs_default_glyph_info(%struct.gs_font_s* %19, i64 %20, %struct.gs_matrix_s* %21, i32 %22, %struct.gs_glyph_info_s* %23) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %24, 0
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

if.end:                                           ; preds = %if.then
  br label %if.end.13

if.else:                                          ; preds = %entry
  %26 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %members12 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %26, i32 0, i32 0
  store i32 0, i32* %members12, align 4, !tbaa !125
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end
  %27 = load i32, i32* %default_members, align 4, !tbaa !5
  %28 = load i32, i32* %members.addr, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %27, %28
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  %29 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

if.end.17:                                        ; preds = %if.end.13
  %30 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %30, i32 0, i32 2
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !94
  %memory18 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %31, %struct.gs_memory_s** %memory18, align 8, !tbaa !95
  %32 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %32, i32 0, i32 0
  %glyph_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 0
  %33 = load i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)** %glyph_data, align 8, !tbaa !127
  %34 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %35 = load i64, i64* %glyph.addr, align 8, !tbaa !118
  %call19 = call i32 %33(%struct.gs_font_type1_s* %34, i64 %35, %struct.gs_glyph_data_s* %gdata) #4
  store i32 %call19, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.17
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

if.end.23:                                        ; preds = %if.end.17
  %37 = load i32, i32* %piece_members, align 4, !tbaa !5
  %tobool24 = icmp ne i32 %37, 0
  br i1 %tobool24, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %if.end.23
  %38 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %39 = load i32, i32* %members.addr, align 4, !tbaa !5
  %40 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %call26 = call i32 @gs_type1_glyph_pieces(%struct.gs_font_type1_s* %38, %struct.gs_glyph_data_s* %gdata, i32 %39, %struct.gs_glyph_info_s* %40) #4
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %41, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.25
  %42 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

if.end.30:                                        ; preds = %if.then.25
  %43 = load i32, i32* %piece_members, align 4, !tbaa !5
  %44 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %members31 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %44, i32 0, i32 0
  %45 = load i32, i32* %members31, align 4, !tbaa !125
  %or32 = or i32 %45, %43
  store i32 %or32, i32* %members31, align 4, !tbaa !125
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.30, %if.end.23
  %46 = load i32, i32* %width_members, align 4, !tbaa !5
  %tobool34 = icmp ne i32 %46, 0
  br i1 %tobool34, label %if.then.35, label %if.end.89

if.then.35:                                       ; preds = %if.end.33
  %47 = bitcast %struct.gx_path_s* %path to i8*
  call void @llvm.lifetime.start(i64 128, i8* %47) #2
  %48 = bitcast %struct.gs_imager_state_s* %gis to i8*
  call void @llvm.lifetime.start(i64 1616, i8* %48) #2
  %49 = bitcast %struct.gs_type1_state_s* %cis to i8*
  call void @llvm.lifetime.start(i64 11216, i8* %49) #2
  %50 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  %51 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tobool36 = icmp ne %struct.gs_matrix_s* %51, null
  br i1 %tobool36, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.then.35
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %gis, i32 0, i32 5
  %52 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call38 = call i32 @gs_matrix_fixed_from_matrix(%struct.gs_matrix_fixed_s* %ctm, %struct.gs_matrix_s* %52) #4
  br label %if.end.42

if.else.39:                                       ; preds = %if.then.35
  %53 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %53) #2
  call void @gs_make_identity(%struct.gs_matrix_s* %imat) #4
  %ctm40 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %gis, i32 0, i32 5
  %call41 = call i32 @gs_matrix_fixed_from_matrix(%struct.gs_matrix_fixed_s* %ctm40, %struct.gs_matrix_s* %imat) #4
  %54 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %54) #2
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.37
  %flatness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %gis, i32 0, i32 27
  store float 0.000000e+00, float* %flatness, align 4, !tbaa !128
  %55 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %call43 = call i32 @gs_type1_interp_init(%struct.gs_type1_state_s* %cis, %struct.gs_imager_state_s* %gis, %struct.gx_path_s* null, %struct.gs_log2_scale_point_s* null, %struct.gs_log2_scale_point_s* null, i32 1, i32 0, %struct.gs_font_type1_s* %55) #4
  store i32 %call43, i32* %code, align 4, !tbaa !5
  %56 = load i32, i32* %code, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %56, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.42
  %57 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %if.end.42
  %no_grid_fitting = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 4
  store i32 1, i32* %no_grid_fitting, align 4, !tbaa !36
  call void @gx_path_init_bbox_accumulator(%struct.gx_path_s* %path) #4
  %path48 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 3
  store %struct.gx_path_s* %path, %struct.gx_path_s** %path48, align 8, !tbaa !25
  %58 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %interpret = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %58, i32 0, i32 1
  %59 = load i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)** %interpret, align 8, !tbaa !129
  %call49 = call i32 %59(%struct.gs_type1_state_s* %cis, %struct.gs_glyph_data_s* %gdata, i32* %value) #4
  store i32 %call49, i32* %code, align 4, !tbaa !5
  %60 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %60, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.56
    i32 1, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %if.end.47
  %61 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom = sext i32 %61 to i64
  %62 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %62, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !54
  %63 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom50 = sext i32 %63 to i64
  %64 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width51 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %64, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width51, i32 0, i64 %idxprom50
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx52, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !57
  %65 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %65, i32 0, i32 2
  %x53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v, i32 0, i32 0
  store double 0.000000e+00, double* %x53, align 8, !tbaa !130
  %66 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v54 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %66, i32 0, i32 2
  %y55 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v54, i32 0, i32 1
  store double 0.000000e+00, double* %y55, align 8, !tbaa !131
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.47
  %67 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.56:                                         ; preds = %if.end.47
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.57:                                         ; preds = %if.end.47
  %width58 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 22
  %x59 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width58, i32 0, i32 0
  %68 = load i32, i32* %x59, align 4, !tbaa !59
  %conv60 = sitofp i32 %68 to double
  %mul = fmul double %conv60, 3.906250e-03
  %69 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom61 = sext i32 %69 to i64
  %70 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width62 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %70, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width62, i32 0, i64 %idxprom61
  %x64 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx63, i32 0, i32 0
  store double %mul, double* %x64, align 8, !tbaa !54
  %width65 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 22
  %y66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %width65, i32 0, i32 1
  %71 = load i32, i32* %y66, align 4, !tbaa !60
  %conv67 = sitofp i32 %71 to double
  %mul68 = fmul double %conv67, 3.906250e-03
  %72 = load i32, i32* %wmode, align 4, !tbaa !5
  %idxprom69 = sext i32 %72 to i64
  %73 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %width70 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %73, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %width70, i32 0, i64 %idxprom69
  %y72 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx71, i32 0, i32 1
  store double %mul68, double* %y72, align 8, !tbaa !57
  %lsb = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %x73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb, i32 0, i32 0
  %74 = load i32, i32* %x73, align 4, !tbaa !56
  %conv74 = sitofp i32 %74 to double
  %mul75 = fmul double %conv74, 3.906250e-03
  %75 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v76 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %75, i32 0, i32 2
  %x77 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v76, i32 0, i32 0
  store double %mul75, double* %x77, align 8, !tbaa !130
  %lsb78 = getelementptr inbounds %struct.gs_type1_state_s, %struct.gs_type1_state_s* %cis, i32 0, i32 21
  %y79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %lsb78, i32 0, i32 1
  %76 = load i32, i32* %y79, align 4, !tbaa !58
  %conv80 = sitofp i32 %76 to double
  %mul81 = fmul double %conv80, 3.906250e-03
  %77 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %v82 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %77, i32 0, i32 2
  %y83 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %v82, i32 0, i32 1
  store double %mul81, double* %y83, align 8, !tbaa !131
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.57, %sw.bb
  %78 = load i32, i32* %width_members, align 4, !tbaa !5
  %79 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %members84 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %79, i32 0, i32 0
  %80 = load i32, i32* %members84, align 4, !tbaa !125
  %or85 = or i32 %80, %78
  store i32 %or85, i32* %members84, align 4, !tbaa !125
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.56, %sw.default, %if.then.46
  %81 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast %struct.gs_type1_state_s* %cis to i8*
  call void @llvm.lifetime.end(i64 11216, i8* %82) #2
  %83 = bitcast %struct.gs_imager_state_s* %gis to i8*
  call void @llvm.lifetime.end(i64 1616, i8* %83) #2
  %84 = bitcast %struct.gx_path_s* %path to i8*
  call void @llvm.lifetime.end(i64 128, i8* %84) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.90 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.89

if.end.89:                                        ; preds = %cleanup.cont, %if.end.33
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #4
  %85 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

cleanup.90:                                       ; preds = %if.end.89, %cleanup, %if.then.29, %if.then.22, %if.then.16, %if.then.11
  %86 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %86) #2
  %87 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %default_members to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast i32* %width_members to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast i32* %piece_members to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  %92 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %93 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = load i32, i32* %retval
  ret i32 %94
}

declare i32 @gs_default_glyph_info(%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gs_type1_glyph_pieces(%struct.gs_font_type1_s* %pfont, %struct.gs_glyph_data_s* %pgd, i32 %members, %struct.gs_glyph_info_s* %info) #1 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_glyph_info_s*, align 8
  %chars = alloca [2 x i64], align 16
  %glyphs = alloca [2 x i64], align 16
  %code = alloca i32, align 4
  %pdata = alloca %struct.gs_type1_data_s*, align 8
  %pieces = alloca i64*, align 8
  %gstr = alloca %struct.gs_const_string_s, align 8
  %acode = alloca i32, align 4
  %bcode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !5
  store %struct.gs_glyph_info_s* %info, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast [2 x i64]* %chars to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast [2 x i64]* %glyphs to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %4 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %chars, i32 0, i32 0
  %call = call i32 @gs_type1_piece_codes(%struct.gs_font_type1_s* %3, %struct.gs_glyph_data_s* %4, i64* %arraydecay) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %6, i32 0, i32 29
  store %struct.gs_type1_data_s* %data, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %7 = bitcast i64** %pieces to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i32, i32* %members.addr, align 4, !tbaa !5
  %and = and i32 %8, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %pieces1 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %9, i32 0, i32 5
  %10 = load i64*, i64** %pieces1, align 8, !tbaa !132
  br label %cond.end

cond.false:                                       ; preds = %entry
  %arraydecay2 = getelementptr inbounds [2 x i64], [2 x i64]* %glyphs, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ %10, %cond.true ], [ %arraydecay2, %cond.false ]
  store i64* %cond, i64** %pieces, align 8, !tbaa !1
  %11 = bitcast %struct.gs_const_string_s* %gstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #2
  %12 = bitcast i32* %acode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %bcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %num_pieces = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %14, i32 0, i32 4
  store i32 0, i32* %num_pieces, align 4, !tbaa !133
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sle i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %17 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %17, i32 0, i32 0
  %seac_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 2
  %18 = load i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)** %seac_data, align 8, !tbaa !134
  %19 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %chars, i32 0, i64 0
  %20 = load i64, i64* %arrayidx, align 8, !tbaa !118
  %conv = trunc i64 %20 to i32
  %21 = load i64*, i64** %pieces, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %21, i64 0
  %call4 = call i32 %18(%struct.gs_font_type1_s* %19, i32 %conv, i64* %arrayidx3, %struct.gs_const_string_s* %gstr, %struct.gs_glyph_data_s* null) #4
  store i32 %call4, i32* %bcode, align 4, !tbaa !5
  %22 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %22, i32 0, i32 0
  %seac_data6 = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs5, i32 0, i32 2
  %23 = load i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)** %seac_data6, align 8, !tbaa !134
  %24 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds [2 x i64], [2 x i64]* %chars, i32 0, i64 1
  %25 = load i64, i64* %arrayidx7, align 8, !tbaa !118
  %conv8 = trunc i64 %25 to i32
  %26 = load i64*, i64** %pieces, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i64, i64* %26, i64 1
  %call10 = call i32 %23(%struct.gs_font_type1_s* %24, i32 %conv8, i64* %arrayidx9, %struct.gs_const_string_s* %gstr, %struct.gs_glyph_data_s* null) #4
  store i32 %call10, i32* %acode, align 4, !tbaa !5
  %27 = load i32, i32* %bcode, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %27, 0
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %if.end
  %28 = load i32, i32* %bcode, align 4, !tbaa !5
  br label %cond.end.15

cond.false.14:                                    ; preds = %if.end
  %29 = load i32, i32* %acode, align 4, !tbaa !5
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i32 [ %28, %cond.true.13 ], [ %29, %cond.false.14 ]
  store i32 %cond16, i32* %code, align 4, !tbaa !5
  %30 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %num_pieces17 = getelementptr inbounds %struct.gs_glyph_info_s, %struct.gs_glyph_info_s* %30, i32 0, i32 4
  store i32 2, i32* %num_pieces17, align 4, !tbaa !133
  %31 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.15, %if.then
  %32 = bitcast i32* %bcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %acode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast %struct.gs_const_string_s* %gstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %34) #2
  %35 = bitcast i64** %pieces to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast [2 x i64]* %glyphs to i8*
  call void @llvm.lifetime.end(i64 16, i8* %38) #2
  %39 = bitcast [2 x i64]* %chars to i8*
  call void @llvm.lifetime.end(i64 16, i8* %39) #2
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i32 @gs_matrix_fixed_from_matrix(%struct.gs_matrix_fixed_s*, %struct.gs_matrix_s*) #0

declare void @gs_make_identity(%struct.gs_matrix_s*) #0

declare void @gx_path_init_bbox_accumulator(%struct.gx_path_s*) #0

; Function Attrs: nounwind uwtable
define %struct.gs_font_base_s* @gs_font_parent(%struct.gs_font_base_s* %pbfont) #1 {
entry:
  %retval = alloca %struct.gs_font_base_s*, align 8
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %pfont1 = alloca %struct.gs_font_type1_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %0, i32 0, i32 11
  %1 = load i32, i32* %FontType, align 4, !tbaa !135
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontType1 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %2, i32 0, i32 11
  %3 = load i32, i32* %FontType1, align 4, !tbaa !135
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then, label %if.end.7

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_base_s* %5 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %6, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %7 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %7, i32 0, i32 29
  %parent = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 3
  %8 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %parent, align 8, !tbaa !137
  %cmp3 = icmp ne %struct.gs_font_base_s* %8, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont1, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %9, i32 0, i32 29
  %parent6 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data5, i32 0, i32 3
  %10 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %parent6, align 8, !tbaa !137
  store %struct.gs_font_base_s* %10, %struct.gs_font_base_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %11 = bitcast %struct.gs_font_type1_s** %pfont1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7

if.end.7:                                         ; preds = %cleanup.cont, %lor.lhs.false
  %12 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %12, %struct.gs_font_base_s** %retval
  br label %return

return:                                           ; preds = %if.end.7, %cleanup
  %13 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %retval
  ret %struct.gs_font_base_s* %13

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 10976}
!8 = !{!"gs_type1_state_s", !9, i64 0, !2, i64 9856, !2, i64 9864, !2, i64 9872, !6, i64 9880, !6, i64 9884, !2, i64 9888, !13, i64 9896, !14, i64 9944, !15, i64 9948, !17, i64 9972, !18, i64 9980, !3, i64 9988, !6, i64 10180, !3, i64 10184, !6, i64 10976, !6, i64 10980, !6, i64 10984, !6, i64 10988, !6, i64 10992, !6, i64 10996, !18, i64 11000, !18, i64 11008, !6, i64 11016, !6, i64 11020, !18, i64 11024, !18, i64 11032, !6, i64 11040, !18, i64 11044, !6, i64 11052, !6, i64 11056, !18, i64 11060, !6, i64 11068, !6, i64 11072, !18, i64 11076, !3, i64 11084}
!9 = !{!"t1_hinter_s", !10, i64 0, !10, i64 24, !6, i64 48, !11, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !3, i64 188, !2, i64 5472, !3, i64 5480, !2, i64 7520, !3, i64 7528, !2, i64 7648, !3, i64 7656, !2, i64 7696, !3, i64 7704, !2, i64 7744, !3, i64 7752, !3, i64 7856, !3, i64 7872, !2, i64 7928, !3, i64 7936, !2, i64 8176, !3, i64 8184, !2, i64 9624, !3, i64 9632, !3, i64 9640, !6, i64 9648, !6, i64 9652, !6, i64 9656, !6, i64 9660, !6, i64 9664, !6, i64 9668, !6, i64 9672, !6, i64 9676, !6, i64 9680, !6, i64 9684, !6, i64 9688, !6, i64 9692, !6, i64 9696, !6, i64 9700, !6, i64 9704, !6, i64 9708, !6, i64 9712, !6, i64 9716, !6, i64 9720, !6, i64 9724, !6, i64 9728, !6, i64 9732, !6, i64 9736, !12, i64 9744, !12, i64 9752, !12, i64 9760, !12, i64 9768, !12, i64 9776, !12, i64 9784, !6, i64 9792, !6, i64 9796, !6, i64 9800, !6, i64 9804, !6, i64 9808, !6, i64 9812, !6, i64 9816, !6, i64 9820, !6, i64 9824, !6, i64 9828, !6, i64 9832, !6, i64 9836, !2, i64 9840, !2, i64 9848}
!10 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!11 = !{!"long", !3, i64 0}
!12 = !{!"double", !3, i64 0}
!13 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44}
!14 = !{!"float", !3, i64 0}
!15 = !{!"point_scale_s", !16, i64 0, !16, i64 12}
!16 = !{!"pixel_scale_s", !6, i64 0, !6, i64 4, !6, i64 8}
!17 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!18 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!19 = !{!20, !2, i64 32}
!20 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!21 = !{!8, !2, i64 9856}
!22 = !{!23, !2, i64 0}
!23 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!24 = !{!8, !2, i64 9864}
!25 = !{!8, !2, i64 9872}
!26 = !{!8, !2, i64 9888}
!27 = !{!28, !2, i64 0}
!28 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!29 = !{!30, !2, i64 0}
!30 = !{!"", !2, i64 0, !2, i64 8, !31, i64 16, !32, i64 24}
!31 = !{!"short", !3, i64 0}
!32 = !{!"gs_glyph_data_s", !33, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!33 = !{!"gs_const_bytestring_s", !2, i64 0, !6, i64 8, !2, i64 16}
!34 = !{!30, !2, i64 24}
!35 = !{!20, !2, i64 40}
!36 = !{!8, !6, i64 9880}
!37 = !{!8, !6, i64 9884}
!38 = !{!8, !6, i64 10180}
!39 = !{!8, !6, i64 11072}
!40 = !{!8, !6, i64 10980}
!41 = !{!8, !6, i64 10984}
!42 = !{!8, !6, i64 10988}
!43 = !{!8, !6, i64 10992}
!44 = !{!8, !6, i64 10996}
!45 = !{!8, !6, i64 11016}
!46 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!47 = !{!8, !6, i64 11064}
!48 = !{!8, !6, i64 11060}
!49 = !{!17, !6, i64 0}
!50 = !{!16, !6, i64 8}
!51 = !{!16, !6, i64 4}
!52 = !{!16, !6, i64 0}
!53 = !{!17, !6, i64 4}
!54 = !{!55, !12, i64 0}
!55 = !{!"gs_point_s", !12, i64 0, !12, i64 8}
!56 = !{!8, !6, i64 11000}
!57 = !{!55, !12, i64 8}
!58 = !{!8, !6, i64 11004}
!59 = !{!8, !6, i64 11008}
!60 = !{!8, !6, i64 11012}
!61 = !{!62, !6, i64 112}
!62 = !{!"gx_path_s", !63, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !66, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !6, i64 104, !6, i64 108, !18, i64 112, !2, i64 120}
!63 = !{!"gx_path_segments_s", !64, i64 0, !65, i64 24}
!64 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!65 = !{!"psc_", !2, i64 0, !2, i64 8}
!66 = !{!"gs_fixed_rect_s", !18, i64 0, !18, i64 8}
!67 = !{!8, !6, i64 9980}
!68 = !{!62, !6, i64 116}
!69 = !{!8, !6, i64 9984}
!70 = !{!8, !6, i64 11048}
!71 = !{!8, !6, i64 11044}
!72 = !{!8, !6, i64 11040}
!73 = !{!8, !6, i64 11052}
!74 = !{!8, !6, i64 11068}
!75 = !{!8, !6, i64 11080}
!76 = !{!8, !6, i64 11076}
!77 = !{!8, !14, i64 9944}
!78 = !{!14, !14, i64 0}
!79 = !{!8, !6, i64 11020}
!80 = !{!8, !6, i64 11032}
!81 = !{!8, !6, i64 11036}
!82 = !{!83, !2, i64 464}
!83 = !{!"gs_font_type1_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !84, i64 40, !11, i64 56, !2, i64 64, !2, i64 72, !85, i64 80, !85, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !14, i64 156, !6, i64 160, !86, i64 168, !87, i64 272, !87, i64 324, !88, i64 376, !89, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !90, i64 448}
!84 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!85 = !{!"gs_matrix_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20}
!86 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!87 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!88 = !{!"gs_rect_s", !55, i64 0, !55, i64 16}
!89 = !{!"gs_uid_s", !11, i64 0, !2, i64 8}
!90 = !{!"gs_type1_data_s", !91, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !11, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !14, i64 100, !14, i64 104, !92, i64 108, !14, i64 168, !6, i64 172, !92, i64 176, !92, i64 236, !6, i64 280, !92, i64 284, !6, i64 328, !92, i64 332, !92, i64 340, !92, i64 348, !92, i64 400, !92, i64 452, !3, i64 520, !6, i64 536}
!91 = !{!"gs_type1_data_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!92 = !{!"", !6, i64 0, !3, i64 4}
!93 = !{i64 0, i64 8, !1, i64 8, i64 4, !5, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1}
!94 = !{!83, !2, i64 16}
!95 = !{!32, !2, i64 40}
!96 = !{!8, !6, i64 11024}
!97 = !{!83, !6, i64 372}
!98 = !{!99, !6, i64 8}
!99 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!100 = !{!3, !3, i64 0}
!101 = !{!99, !2, i64 0}
!102 = !{!83, !6, i64 152}
!103 = !{!104, !6, i64 304}
!104 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !105, i64 24, !6, i64 128, !107, i64 132, !6, i64 168, !55, i64 176, !55, i64 192, !6, i64 208, !6, i64 212, !31, i64 216, !3, i64 220, !108, i64 224, !108, i64 228, !109, i64 232, !11, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !14, i64 296, !18, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !14, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !110, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !111, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !111, i64 1336}
!105 = !{!"gx_line_params_s", !14, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !6, i64 36, !85, i64 40, !106, i64 64}
!106 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !14, i64 12, !6, i64 16, !14, i64 20, !6, i64 24, !6, i64 28, !14, i64 32}
!107 = !{!"gs_matrix_fixed_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!108 = !{!"gs_transparency_source_s", !14, i64 0}
!109 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!110 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!111 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !11, i64 16, !3, i64 24}
!112 = !{!104, !6, i64 300}
!113 = !{!12, !12, i64 0}
!114 = !{!90, !6, i64 64}
!115 = !{!32, !2, i64 0}
!116 = !{!32, !6, i64 8}
!117 = !{!31, !31, i64 0}
!118 = !{!11, !11, i64 0}
!119 = !{!90, !6, i64 72}
!120 = !{!90, !6, i64 68}
!121 = !{!90, !2, i64 8}
!122 = !{!30, !31, i64 16}
!123 = !{!30, !2, i64 8}
!124 = !{!30, !6, i64 32}
!125 = !{!126, !6, i64 0}
!126 = !{!"gs_glyph_info_s", !6, i64 0, !3, i64 8, !55, i64 40, !88, i64 56, !6, i64 88, !2, i64 96}
!127 = !{!90, !2, i64 0}
!128 = !{!104, !14, i64 296}
!129 = !{!90, !2, i64 40}
!130 = !{!126, !12, i64 40}
!131 = !{!126, !12, i64 48}
!132 = !{!126, !2, i64 96}
!133 = !{!126, !6, i64 88}
!134 = !{!90, !2, i64 16}
!135 = !{!136, !3, i64 128}
!136 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !84, i64 40, !11, i64 56, !2, i64 64, !2, i64 72, !85, i64 80, !85, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !14, i64 156, !6, i64 160, !86, i64 168, !87, i64 272, !87, i64 324, !88, i64 376, !89, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!137 = !{!83, !2, i64 504}
