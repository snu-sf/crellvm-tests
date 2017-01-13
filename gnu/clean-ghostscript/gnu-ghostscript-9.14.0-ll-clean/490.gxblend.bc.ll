; ModuleID = './gxblend.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
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
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pdf14_nonseparable_blending_procs_s = type { void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)* }

@art_blend_sq_diff_8 = constant [256 x i32] [i32 0, i32 256, i32 510, i32 762, i32 1012, i32 1260, i32 1506, i32 1750, i32 1992, i32 2231, i32 2469, i32 2705, i32 2939, i32 3171, i32 3401, i32 3628, i32 3854, i32 4078, i32 4300, i32 4519, i32 4737, i32 4953, i32 5166, i32 5378, i32 5588, i32 5795, i32 6001, i32 6204, i32 6406, i32 6606, i32 6803, i32 6999, i32 7192, i32 7384, i32 7573, i32 7761, i32 7946, i32 8129, i32 8311, i32 8490, i32 8668, i32 8843, i32 9016, i32 9188, i32 9357, i32 9524, i32 9690, i32 9853, i32 10014, i32 10173, i32 10331, i32 10486, i32 10639, i32 10790, i32 10939, i32 11086, i32 11232, i32 11375, i32 11516, i32 11655, i32 11792, i32 11927, i32 12060, i32 12191, i32 12320, i32 12447, i32 12572, i32 12695, i32 12816, i32 12935, i32 13052, i32 13167, i32 13280, i32 13390, i32 13499, i32 13606, i32 13711, i32 13814, i32 13914, i32 14013, i32 14110, i32 14205, i32 14297, i32 14388, i32 14477, i32 14564, i32 14648, i32 14731, i32 14811, i32 14890, i32 14967, i32 15041, i32 15114, i32 15184, i32 15253, i32 15319, i32 15384, i32 15446, i32 15507, i32 15565, i32 15622, i32 15676, i32 15729, i32 15779, i32 15827, i32 15874, i32 15918, i32 15960, i32 16001, i32 16039, i32 16075, i32 16110, i32 16142, i32 16172, i32 16200, i32 16227, i32 16251, i32 16273, i32 16293, i32 16311, i32 16327, i32 16341, i32 16354, i32 16364, i32 16372, i32 16378, i32 16382, i32 16384, i32 16384, i32 16382, i32 16378, i32 16372, i32 16364, i32 16354, i32 16341, i32 16327, i32 16311, i32 16293, i32 16273, i32 16251, i32 16227, i32 16200, i32 16172, i32 16142, i32 16110, i32 16075, i32 16039, i32 16001, i32 15960, i32 15918, i32 15874, i32 15827, i32 15779, i32 15729, i32 15676, i32 15622, i32 15565, i32 15507, i32 15446, i32 15384, i32 15319, i32 15253, i32 15184, i32 15114, i32 15041, i32 14967, i32 14890, i32 14811, i32 14731, i32 14648, i32 14564, i32 14477, i32 14388, i32 14297, i32 14205, i32 14110, i32 14013, i32 13914, i32 13814, i32 13711, i32 13606, i32 13499, i32 13390, i32 13280, i32 13167, i32 13052, i32 12935, i32 12816, i32 12695, i32 12572, i32 12447, i32 12320, i32 12191, i32 12060, i32 11927, i32 11792, i32 11655, i32 11516, i32 11375, i32 11232, i32 11086, i32 10939, i32 10790, i32 10639, i32 10486, i32 10331, i32 10173, i32 10014, i32 9853, i32 9690, i32 9524, i32 9357, i32 9188, i32 9016, i32 8843, i32 8668, i32 8490, i32 8311, i32 8129, i32 7946, i32 7761, i32 7573, i32 7384, i32 7192, i32 6999, i32 6803, i32 6606, i32 6406, i32 6204, i32 6001, i32 5795, i32 5588, i32 5378, i32 5166, i32 4953, i32 4737, i32 4519, i32 4300, i32 4078, i32 3854, i32 3628, i32 3401, i32 3171, i32 2939, i32 2705, i32 2469, i32 2231, i32 1992, i32 1750, i32 1506, i32 1260, i32 1012, i32 762, i32 510, i32 256, i32 0], align 16
@art_blend_soft_light_8 = constant [256 x i8] c"\00\03\06\09\0B\0E\10\13\15\17\1A\1C\1E !#%'(*+-./01345567899::;<<<==>>>>???????@@@@@@@@@@@@@@@@@@???????????>>>>>>>======<<<<<;;;;;::::99998888777766665554443333222111000///...---,,+++***))((('''&&%%%$$###\22\22!!!  \1F\1F\1F\1E\1E\1D\1D\1C\1C\1C\1B\1B\1A\1A\19\19\19\18\18\17\17\16\16\15\15\15\14\14\13\13\12\12\11\11\10\10\0F\0F\0F\0E\0E\0D\0D\0C\0C\0B\0B\0A\0A\09\09\08\08\07\07\06\06\05\05\04\04\03\03\02\02\01\01\00\00", align 16
@.str = private unnamed_addr constant [17 x i8] c"./base/gxblend.c\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"art_blend_pixel_8: blend mode %d not implemented\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"art_blend_pixel: blend mode %d not implemented\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @smask_luminosity_mapping(i32 %num_rows, i32 %num_cols, i32 %n_chan, i32 %row_stride, i32 %plane_stride, i8* %src, i8* %dst, i32 %isadditive, i32 %SMask_SubType) #0 {
entry:
  %num_rows.addr = alloca i32, align 4
  %num_cols.addr = alloca i32, align 4
  %n_chan.addr = alloca i32, align 4
  %row_stride.addr = alloca i32, align 4
  %plane_stride.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %isadditive.addr = alloca i32, align 4
  %SMask_SubType.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %mask_alpha_offset = alloca i32, align 4
  %mask_C_offset = alloca i32, align 4
  %mask_M_offset = alloca i32, align 4
  %mask_Y_offset = alloca i32, align 4
  %mask_K_offset = alloca i32, align 4
  %mask_R_offset = alloca i32, align 4
  %mask_G_offset = alloca i32, align 4
  %mask_B_offset = alloca i32, align 4
  %dstptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %temp = alloca float, align 4
  %temp133 = alloca float, align 4
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !1
  store i32 %num_cols, i32* %num_cols.addr, align 4, !tbaa !1
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i32 %row_stride, i32* %row_stride.addr, align 4, !tbaa !1
  store i32 %plane_stride, i32* %plane_stride.addr, align 4, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i32 %isadditive, i32* %isadditive.addr, align 4, !tbaa !1
  store i32 %SMask_SubType, i32* %SMask_SubType.addr, align 4, !tbaa !7
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %mask_alpha_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %mask_C_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %mask_M_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %mask_Y_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %mask_K_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %mask_R_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %mask_G_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %mask_B_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i8** %dstptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  store i8* %11, i8** %dstptr, align 8, !tbaa !5
  %12 = load i32, i32* %SMask_SubType.addr, align 4, !tbaa !7
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i8*, i8** %dstptr, align 8, !tbaa !5
  %14 = load i32, i32* %plane_stride.addr, align 4, !tbaa !1
  %idxprom = sext i32 %14 to i64
  %15 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i32, i32* %plane_stride.addr, align 4, !tbaa !1
  %conv = sext i32 %16 to i64
  %call = call i8* @memcpy(i8* %13, i8* %arrayidx, i64 %conv) #4
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load i32, i32* %SMask_SubType.addr, align 4, !tbaa !7
  %cmp1 = icmp eq i32 %17, 0
  br i1 %cmp1, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %18 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %18, 1
  %19 = load i32, i32* %plane_stride.addr, align 4, !tbaa !1
  %mul = mul nsw i32 %sub, %19
  store i32 %mul, i32* %mask_alpha_offset, align 4, !tbaa !1
  %20 = load i8*, i8** %dstptr, align 8, !tbaa !5
  %21 = load i32, i32* %mask_alpha_offset, align 4, !tbaa !1
  %idxprom4 = sext i32 %21 to i64
  %22 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds i8, i8* %22, i64 %idxprom4
  %23 = load i32, i32* %plane_stride.addr, align 4, !tbaa !1
  %conv6 = sext i32 %23 to i64
  %call7 = call i8* @memcpy(i8* %20, i8* %arrayidx5, i64 %conv6) #4
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %24 = load i32, i32* %isadditive.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %25 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp9 = icmp eq i32 %25, 2
  br i1 %cmp9, label %if.then.11, label %if.else.113

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.8
  %26 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp12 = icmp eq i32 %26, 2
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.11
  %27 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %sub15 = sub nsw i32 %27, 1
  %28 = load i32, i32* %plane_stride.addr, align 4, !tbaa !1
  %mul16 = mul nsw i32 %sub15, %28
  store i32 %mul16, i32* %mask_alpha_offset, align 4, !tbaa !1
  store i32 0, i32* %mask_R_offset, align 4, !tbaa !1
  store i32 0, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %if.then.14
  %29 = load i32, i32* %y, align 4, !tbaa !1
  %30 = load i32, i32* %num_rows.addr, align 4, !tbaa !1
  %cmp17 = icmp slt i32 %29, %30
  br i1 %cmp17, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4, !tbaa !1
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body
  %31 = load i32, i32* %x, align 4, !tbaa !1
  %32 = load i32, i32* %num_cols.addr, align 4, !tbaa !1
  %cmp20 = icmp slt i32 %31, %32
  br i1 %cmp20, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.19
  %33 = load i32, i32* %x, align 4, !tbaa !1
  %34 = load i32, i32* %mask_alpha_offset, align 4, !tbaa !1
  %add = add nsw i32 %33, %34
  %idxprom23 = sext i32 %add to i64
  %35 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx24 = getelementptr inbounds i8, i8* %35, i64 %idxprom23
  %36 = load i8, i8* %arrayidx24, align 1, !tbaa !7
  %conv25 = zext i8 %36 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.34

if.then.28:                                       ; preds = %for.body.22
  %37 = load i32, i32* %x, align 4, !tbaa !1
  %38 = load i32, i32* %mask_R_offset, align 4, !tbaa !1
  %add29 = add nsw i32 %37, %38
  %idxprom30 = sext i32 %add29 to i64
  %39 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx31 = getelementptr inbounds i8, i8* %39, i64 %idxprom30
  %40 = load i8, i8* %arrayidx31, align 1, !tbaa !7
  %41 = load i32, i32* %x, align 4, !tbaa !1
  %idxprom32 = sext i32 %41 to i64
  %42 = load i8*, i8** %dstptr, align 8, !tbaa !5
  %arrayidx33 = getelementptr inbounds i8, i8* %42, i64 %idxprom32
  store i8 %40, i8* %arrayidx33, align 1, !tbaa !7
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.28, %for.body.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %43 = load i32, i32* %x, align 4, !tbaa !1
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %x, align 4, !tbaa !1
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  %44 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %45 = load i8*, i8** %dstptr, align 8, !tbaa !5
  %idx.ext = sext i32 %44 to i64
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %idx.ext
  store i8* %add.ptr, i8** %dstptr, align 8, !tbaa !5
  %46 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %47 = load i32, i32* %mask_alpha_offset, align 4, !tbaa !1
  %add35 = add nsw i32 %47, %46
  store i32 %add35, i32* %mask_alpha_offset, align 4, !tbaa !1
  %48 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %49 = load i32, i32* %mask_R_offset, align 4, !tbaa !1
  %add36 = add nsw i32 %49, %48
  store i32 %add36, i32* %mask_R_offset, align 4, !tbaa !1
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end
  %50 = load i32, i32* %y, align 4, !tbaa !1
  %inc38 = add nsw i32 %50, 1
  store i32 %inc38, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  br label %if.end.112

if.else:                                          ; preds = %if.then.11
  store i32 0, i32* %mask_R_offset, align 4, !tbaa !1
  %51 = load i32, i32* %plane_stride.addr, align 4, !tbaa !1
  store i32 %51, i32* %mask_G_offset, align 4, !tbaa !1
  %52 = load i32, i32* %plane_stride.addr, align 4, !tbaa !1
  %mul40 = mul nsw i32 2, %52
  store i32 %mul40, i32* %mask_B_offset, align 4, !tbaa !1
  %53 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %sub41 = sub nsw i32 %53, 1
  %54 = load i32, i32* %plane_stride.addr, align 4, !tbaa !1
  %mul42 = mul nsw i32 %sub41, %54
  store i32 %mul42, i32* %mask_alpha_offset, align 4, !tbaa !1
  store i32 0, i32* %y, align 4, !tbaa !1
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.109, %if.else
  %55 = load i32, i32* %y, align 4, !tbaa !1
  %56 = load i32, i32* %num_rows.addr, align 4, !tbaa !1
  %cmp44 = icmp slt i32 %55, %56
  br i1 %cmp44, label %for.body.46, label %for.end.111

for.body.46:                                      ; preds = %for.cond.43
  store i32 0, i32* %x, align 4, !tbaa !1
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.100, %for.body.46
  %57 = load i32, i32* %x, align 4, !tbaa !1
  %58 = load i32, i32* %num_cols.addr, align 4, !tbaa !1
  %cmp48 = icmp slt i32 %57, %58
  br i1 %cmp48, label %for.body.50, label %for.end.102

for.body.50:                                      ; preds = %for.cond.47
  %59 = load i32, i32* %x, align 4, !tbaa !1
  %60 = load i32, i32* %mask_alpha_offset, align 4, !tbaa !1
  %add51 = add nsw i32 %59, %60
  %idxprom52 = sext i32 %add51 to i64
  %61 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx53 = getelementptr inbounds i8, i8* %61, i64 %idxprom52
  %62 = load i8, i8* %arrayidx53, align 1, !tbaa !7
  %conv54 = zext i8 %62 to i32
  %cmp55 = icmp ne i32 %conv54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.99

if.then.57:                                       ; preds = %for.body.50
  %63 = bitcast float* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = load i32, i32* %x, align 4, !tbaa !1
  %65 = load i32, i32* %mask_R_offset, align 4, !tbaa !1
  %add58 = add nsw i32 %64, %65
  %idxprom59 = sext i32 %add58 to i64
  %66 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx60 = getelementptr inbounds i8, i8* %66, i64 %idxprom59
  %67 = load i8, i8* %arrayidx60, align 1, !tbaa !7
  %conv61 = zext i8 %67 to i32
  %conv62 = sitofp i32 %conv61 to double
  %mul63 = fmul double 3.000000e-01, %conv62
  %68 = load i32, i32* %x, align 4, !tbaa !1
  %69 = load i32, i32* %mask_G_offset, align 4, !tbaa !1
  %add64 = add nsw i32 %68, %69
  %idxprom65 = sext i32 %add64 to i64
  %70 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx66 = getelementptr inbounds i8, i8* %70, i64 %idxprom65
  %71 = load i8, i8* %arrayidx66, align 1, !tbaa !7
  %conv67 = zext i8 %71 to i32
  %conv68 = sitofp i32 %conv67 to double
  %mul69 = fmul double 5.900000e-01, %conv68
  %add70 = fadd double %mul63, %mul69
  %72 = load i32, i32* %x, align 4, !tbaa !1
  %73 = load i32, i32* %mask_B_offset, align 4, !tbaa !1
  %add71 = add nsw i32 %72, %73
  %idxprom72 = sext i32 %add71 to i64
  %74 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx73 = getelementptr inbounds i8, i8* %74, i64 %idxprom72
  %75 = load i8, i8* %arrayidx73, align 1, !tbaa !7
  %conv74 = zext i8 %75 to i32
  %conv75 = sitofp i32 %conv74 to double
  %mul76 = fmul double 1.100000e-01, %conv75
  %add77 = fadd double %add70, %mul76
  %conv78 = fptrunc double %add77 to float
  store float %conv78, float* %temp, align 4, !tbaa !8
  %76 = load float, float* %temp, align 4, !tbaa !8
  %conv79 = fpext float %76 to double
  %mul80 = fmul double %conv79, 0x3F70101010101010
  %conv81 = fptrunc double %mul80 to float
  store float %conv81, float* %temp, align 4, !tbaa !8
  %77 = load float, float* %temp, align 4, !tbaa !8
  %conv82 = fpext float %77 to double
  %cmp83 = fcmp olt double 0.000000e+00, %conv82
  br i1 %cmp83, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.57
  %78 = load float, float* %temp, align 4, !tbaa !8
  %conv85 = fpext float %78 to double
  %cmp86 = fcmp olt double %conv85, 1.000000e+00
  br i1 %cmp86, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %79 = load float, float* %temp, align 4, !tbaa !8
  %conv88 = fpext float %79 to double
  %mul89 = fmul double %conv88, 2.550000e+02
  %conv90 = fptoui double %mul89 to i8
  %conv91 = zext i8 %conv90 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then.57
  %80 = load float, float* %temp, align 4, !tbaa !8
  %conv92 = fpext float %80 to double
  %cmp93 = fcmp ole double %conv92, 0.000000e+00
  %cond = select i1 %cmp93, i32 0, i32 255
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond95 = phi i32 [ %conv91, %cond.true ], [ %cond, %cond.false ]
  %conv96 = trunc i32 %cond95 to i8
  %81 = load i32, i32* %x, align 4, !tbaa !1
  %idxprom97 = sext i32 %81 to i64
  %82 = load i8*, i8** %dstptr, align 8, !tbaa !5
  %arrayidx98 = getelementptr inbounds i8, i8* %82, i64 %idxprom97
  store i8 %conv96, i8* %arrayidx98, align 1, !tbaa !7
  %83 = bitcast float* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  br label %if.end.99

if.end.99:                                        ; preds = %cond.end, %for.body.50
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.99
  %84 = load i32, i32* %x, align 4, !tbaa !1
  %inc101 = add nsw i32 %84, 1
  store i32 %inc101, i32* %x, align 4, !tbaa !1
  br label %for.cond.47

for.end.102:                                      ; preds = %for.cond.47
  %85 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %86 = load i8*, i8** %dstptr, align 8, !tbaa !5
  %idx.ext103 = sext i32 %85 to i64
  %add.ptr104 = getelementptr inbounds i8, i8* %86, i64 %idx.ext103
  store i8* %add.ptr104, i8** %dstptr, align 8, !tbaa !5
  %87 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %88 = load i32, i32* %mask_alpha_offset, align 4, !tbaa !1
  %add105 = add nsw i32 %88, %87
  store i32 %add105, i32* %mask_alpha_offset, align 4, !tbaa !1
  %89 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %90 = load i32, i32* %mask_R_offset, align 4, !tbaa !1
  %add106 = add nsw i32 %90, %89
  store i32 %add106, i32* %mask_R_offset, align 4, !tbaa !1
  %91 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %92 = load i32, i32* %mask_G_offset, align 4, !tbaa !1
  %add107 = add nsw i32 %92, %91
  store i32 %add107, i32* %mask_G_offset, align 4, !tbaa !1
  %93 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %94 = load i32, i32* %mask_B_offset, align 4, !tbaa !1
  %add108 = add nsw i32 %94, %93
  store i32 %add108, i32* %mask_B_offset, align 4, !tbaa !1
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.end.102
  %95 = load i32, i32* %y, align 4, !tbaa !1
  %inc110 = add nsw i32 %95, 1
  store i32 %inc110, i32* %y, align 4, !tbaa !1
  br label %for.cond.43

for.end.111:                                      ; preds = %for.cond.43
  br label %if.end.112

if.end.112:                                       ; preds = %for.end.111, %for.end.39
  br label %if.end.204

if.else.113:                                      ; preds = %lor.lhs.false
  %96 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %sub114 = sub nsw i32 %96, 1
  %97 = load i32, i32* %plane_stride.addr, align 4, !tbaa !1
  %mul115 = mul nsw i32 %sub114, %97
  store i32 %mul115, i32* %mask_alpha_offset, align 4, !tbaa !1
  store i32 0, i32* %mask_C_offset, align 4, !tbaa !1
  %98 = load i32, i32* %plane_stride.addr, align 4, !tbaa !1
  store i32 %98, i32* %mask_M_offset, align 4, !tbaa !1
  %99 = load i32, i32* %plane_stride.addr, align 4, !tbaa !1
  %mul116 = mul nsw i32 2, %99
  store i32 %mul116, i32* %mask_Y_offset, align 4, !tbaa !1
  %100 = load i32, i32* %plane_stride.addr, align 4, !tbaa !1
  %mul117 = mul nsw i32 3, %100
  store i32 %mul117, i32* %mask_K_offset, align 4, !tbaa !1
  store i32 0, i32* %y, align 4, !tbaa !1
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.201, %if.else.113
  %101 = load i32, i32* %y, align 4, !tbaa !1
  %102 = load i32, i32* %num_rows.addr, align 4, !tbaa !1
  %cmp119 = icmp slt i32 %101, %102
  br i1 %cmp119, label %for.body.121, label %for.end.203

for.body.121:                                     ; preds = %for.cond.118
  store i32 0, i32* %x, align 4, !tbaa !1
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.191, %for.body.121
  %103 = load i32, i32* %x, align 4, !tbaa !1
  %104 = load i32, i32* %num_cols.addr, align 4, !tbaa !1
  %cmp123 = icmp slt i32 %103, %104
  br i1 %cmp123, label %for.body.125, label %for.end.193

for.body.125:                                     ; preds = %for.cond.122
  %105 = load i32, i32* %x, align 4, !tbaa !1
  %106 = load i32, i32* %mask_alpha_offset, align 4, !tbaa !1
  %add126 = add nsw i32 %105, %106
  %idxprom127 = sext i32 %add126 to i64
  %107 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx128 = getelementptr inbounds i8, i8* %107, i64 %idxprom127
  %108 = load i8, i8* %arrayidx128, align 1, !tbaa !7
  %conv129 = zext i8 %108 to i32
  %cmp130 = icmp ne i32 %conv129, 0
  br i1 %cmp130, label %if.then.132, label %if.end.190

if.then.132:                                      ; preds = %for.body.125
  %109 = bitcast float* %temp133 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #1
  %110 = load i32, i32* %x, align 4, !tbaa !1
  %111 = load i32, i32* %mask_C_offset, align 4, !tbaa !1
  %add134 = add nsw i32 %110, %111
  %idxprom135 = sext i32 %add134 to i64
  %112 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx136 = getelementptr inbounds i8, i8* %112, i64 %idxprom135
  %113 = load i8, i8* %arrayidx136, align 1, !tbaa !7
  %conv137 = zext i8 %113 to i32
  %sub138 = sub nsw i32 255, %conv137
  %conv139 = sitofp i32 %sub138 to double
  %mul140 = fmul double 3.000000e-01, %conv139
  %114 = load i32, i32* %x, align 4, !tbaa !1
  %115 = load i32, i32* %mask_M_offset, align 4, !tbaa !1
  %add141 = add nsw i32 %114, %115
  %idxprom142 = sext i32 %add141 to i64
  %116 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx143 = getelementptr inbounds i8, i8* %116, i64 %idxprom142
  %117 = load i8, i8* %arrayidx143, align 1, !tbaa !7
  %conv144 = zext i8 %117 to i32
  %sub145 = sub nsw i32 255, %conv144
  %conv146 = sitofp i32 %sub145 to double
  %mul147 = fmul double 5.900000e-01, %conv146
  %add148 = fadd double %mul140, %mul147
  %118 = load i32, i32* %x, align 4, !tbaa !1
  %119 = load i32, i32* %mask_Y_offset, align 4, !tbaa !1
  %add149 = add nsw i32 %118, %119
  %idxprom150 = sext i32 %add149 to i64
  %120 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx151 = getelementptr inbounds i8, i8* %120, i64 %idxprom150
  %121 = load i8, i8* %arrayidx151, align 1, !tbaa !7
  %conv152 = zext i8 %121 to i32
  %sub153 = sub nsw i32 255, %conv152
  %conv154 = sitofp i32 %sub153 to double
  %mul155 = fmul double 1.100000e-01, %conv154
  %add156 = fadd double %add148, %mul155
  %122 = load i32, i32* %x, align 4, !tbaa !1
  %123 = load i32, i32* %mask_K_offset, align 4, !tbaa !1
  %add157 = add nsw i32 %122, %123
  %idxprom158 = sext i32 %add157 to i64
  %124 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx159 = getelementptr inbounds i8, i8* %124, i64 %idxprom158
  %125 = load i8, i8* %arrayidx159, align 1, !tbaa !7
  %conv160 = zext i8 %125 to i32
  %sub161 = sub nsw i32 255, %conv160
  %conv162 = sitofp i32 %sub161 to double
  %mul163 = fmul double %add156, %conv162
  %conv164 = fptrunc double %mul163 to float
  store float %conv164, float* %temp133, align 4, !tbaa !8
  %126 = load float, float* %temp133, align 4, !tbaa !8
  %conv165 = fpext float %126 to double
  %mul166 = fmul double %conv165, 0x3EF0203040506071
  %conv167 = fptrunc double %mul166 to float
  store float %conv167, float* %temp133, align 4, !tbaa !8
  %127 = load float, float* %temp133, align 4, !tbaa !8
  %conv168 = fpext float %127 to double
  %cmp169 = fcmp olt double 0.000000e+00, %conv168
  br i1 %cmp169, label %land.lhs.true.171, label %cond.false.180

land.lhs.true.171:                                ; preds = %if.then.132
  %128 = load float, float* %temp133, align 4, !tbaa !8
  %conv172 = fpext float %128 to double
  %cmp173 = fcmp olt double %conv172, 1.000000e+00
  br i1 %cmp173, label %cond.true.175, label %cond.false.180

cond.true.175:                                    ; preds = %land.lhs.true.171
  %129 = load float, float* %temp133, align 4, !tbaa !8
  %conv176 = fpext float %129 to double
  %mul177 = fmul double %conv176, 2.550000e+02
  %conv178 = fptoui double %mul177 to i8
  %conv179 = zext i8 %conv178 to i32
  br label %cond.end.185

cond.false.180:                                   ; preds = %land.lhs.true.171, %if.then.132
  %130 = load float, float* %temp133, align 4, !tbaa !8
  %conv181 = fpext float %130 to double
  %cmp182 = fcmp ole double %conv181, 0.000000e+00
  %cond184 = select i1 %cmp182, i32 0, i32 255
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.false.180, %cond.true.175
  %cond186 = phi i32 [ %conv179, %cond.true.175 ], [ %cond184, %cond.false.180 ]
  %conv187 = trunc i32 %cond186 to i8
  %131 = load i32, i32* %x, align 4, !tbaa !1
  %idxprom188 = sext i32 %131 to i64
  %132 = load i8*, i8** %dstptr, align 8, !tbaa !5
  %arrayidx189 = getelementptr inbounds i8, i8* %132, i64 %idxprom188
  store i8 %conv187, i8* %arrayidx189, align 1, !tbaa !7
  %133 = bitcast float* %temp133 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  br label %if.end.190

if.end.190:                                       ; preds = %cond.end.185, %for.body.125
  br label %for.inc.191

for.inc.191:                                      ; preds = %if.end.190
  %134 = load i32, i32* %x, align 4, !tbaa !1
  %inc192 = add nsw i32 %134, 1
  store i32 %inc192, i32* %x, align 4, !tbaa !1
  br label %for.cond.122

for.end.193:                                      ; preds = %for.cond.122
  %135 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %136 = load i8*, i8** %dstptr, align 8, !tbaa !5
  %idx.ext194 = sext i32 %135 to i64
  %add.ptr195 = getelementptr inbounds i8, i8* %136, i64 %idx.ext194
  store i8* %add.ptr195, i8** %dstptr, align 8, !tbaa !5
  %137 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %138 = load i32, i32* %mask_alpha_offset, align 4, !tbaa !1
  %add196 = add nsw i32 %138, %137
  store i32 %add196, i32* %mask_alpha_offset, align 4, !tbaa !1
  %139 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %140 = load i32, i32* %mask_C_offset, align 4, !tbaa !1
  %add197 = add nsw i32 %140, %139
  store i32 %add197, i32* %mask_C_offset, align 4, !tbaa !1
  %141 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %142 = load i32, i32* %mask_M_offset, align 4, !tbaa !1
  %add198 = add nsw i32 %142, %141
  store i32 %add198, i32* %mask_M_offset, align 4, !tbaa !1
  %143 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %144 = load i32, i32* %mask_Y_offset, align 4, !tbaa !1
  %add199 = add nsw i32 %144, %143
  store i32 %add199, i32* %mask_Y_offset, align 4, !tbaa !1
  %145 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %146 = load i32, i32* %mask_K_offset, align 4, !tbaa !1
  %add200 = add nsw i32 %146, %145
  store i32 %add200, i32* %mask_K_offset, align 4, !tbaa !1
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.end.193
  %147 = load i32, i32* %y, align 4, !tbaa !1
  %inc202 = add nsw i32 %147, 1
  store i32 %inc202, i32* %y, align 4, !tbaa !1
  br label %for.cond.118

for.end.203:                                      ; preds = %for.cond.118
  br label %if.end.204

if.end.204:                                       ; preds = %for.end.203, %if.end.112
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.204, %if.then.3, %if.then
  %148 = bitcast i8** %dstptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i32* %mask_B_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %mask_G_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32* %mask_R_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %mask_K_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i32* %mask_Y_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i32* %mask_M_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i32* %mask_C_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = bitcast i32* %mask_alpha_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @smask_blend(i8* %src, i32 %width, i32 %height, i32 %rowstride, i32 %planestride) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %rowstride.addr = alloca i32, align 4
  %planestride.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %position = alloca i32, align 4
  %comp = alloca i8, align 1
  %a = alloca i8, align 1
  %tmp = alloca i32, align 4
  %bg = alloca i8, align 1
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !1
  store i32 %rowstride, i32* %rowstride.addr, align 4, !tbaa !1
  store i32 %planestride, i32* %planestride.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %position to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  call void @llvm.lifetime.start(i64 1, i8* %comp) #1
  call void @llvm.lifetime.start(i64 1, i8* %a) #1
  %3 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  call void @llvm.lifetime.start(i64 1, i8* %bg) #1
  store i8 0, i8* %bg, align 1, !tbaa !7
  store i32 0, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %entry
  %4 = load i32, i32* %y, align 4, !tbaa !1
  %5 = load i32, i32* %height.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %y, align 4, !tbaa !1
  %7 = load i32, i32* %rowstride.addr, align 4, !tbaa !1
  %mul = mul nsw i32 %6, %7
  store i32 %mul, i32* %position, align 4, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !1
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %x, align 4, !tbaa !1
  %9 = load i32, i32* %width.addr, align 4, !tbaa !1
  %cmp3 = icmp slt i32 %8, %9
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %position, align 4, !tbaa !1
  %11 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %add = add nsw i32 %10, %11
  %idxprom = sext i32 %add to i64
  %12 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !7
  store i8 %13, i8* %a, align 1, !tbaa !7
  %14 = load i8, i8* %a, align 1, !tbaa !7
  %conv = zext i8 %14 to i32
  %add5 = add nsw i32 %conv, 1
  %and = and i32 %add5, 254
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.4
  %15 = load i8, i8* %a, align 1, !tbaa !7
  %conv6 = zext i8 %15 to i32
  %xor = xor i32 %conv6, 255
  %conv7 = trunc i32 %xor to i8
  store i8 %conv7, i8* %a, align 1, !tbaa !7
  %16 = load i32, i32* %position, align 4, !tbaa !1
  %idxprom8 = sext i32 %16 to i64
  %17 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx9 = getelementptr inbounds i8, i8* %17, i64 %idxprom8
  %18 = load i8, i8* %arrayidx9, align 1, !tbaa !7
  store i8 %18, i8* %comp, align 1, !tbaa !7
  %19 = load i8, i8* %bg, align 1, !tbaa !7
  %conv10 = zext i8 %19 to i32
  %20 = load i8, i8* %comp, align 1, !tbaa !7
  %conv11 = zext i8 %20 to i32
  %sub = sub nsw i32 %conv10, %conv11
  %21 = load i8, i8* %a, align 1, !tbaa !7
  %conv12 = zext i8 %21 to i32
  %mul13 = mul nsw i32 %sub, %conv12
  %add14 = add nsw i32 %mul13, 128
  store i32 %add14, i32* %tmp, align 4, !tbaa !1
  %22 = load i32, i32* %tmp, align 4, !tbaa !1
  %23 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %23, 8
  %add15 = add nsw i32 %22, %shr
  %shr16 = ashr i32 %add15, 8
  %24 = load i8, i8* %comp, align 1, !tbaa !7
  %conv17 = zext i8 %24 to i32
  %add18 = add nsw i32 %conv17, %shr16
  %conv19 = trunc i32 %add18 to i8
  store i8 %conv19, i8* %comp, align 1, !tbaa !7
  %25 = load i8, i8* %comp, align 1, !tbaa !7
  %26 = load i32, i32* %position, align 4, !tbaa !1
  %idxprom20 = sext i32 %26 to i64
  %27 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx21 = getelementptr inbounds i8, i8* %27, i64 %idxprom20
  store i8 %25, i8* %arrayidx21, align 1, !tbaa !7
  br label %if.end.28

if.else:                                          ; preds = %for.body.4
  %28 = load i8, i8* %a, align 1, !tbaa !7
  %conv22 = zext i8 %28 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.else
  %29 = load i32, i32* %position, align 4, !tbaa !1
  %idxprom26 = sext i32 %29 to i64
  %30 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx27 = getelementptr inbounds i8, i8* %30, i64 %idxprom26
  store i8 0, i8* %arrayidx27, align 1, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then.25, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %if.then
  %31 = load i32, i32* %position, align 4, !tbaa !1
  %add29 = add nsw i32 %31, 1
  store i32 %add29, i32* %position, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %32 = load i32, i32* %x, align 4, !tbaa !1
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %x, align 4, !tbaa !1
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %33 = load i32, i32* %y, align 4, !tbaa !1
  %inc31 = add nsw i32 %33, 1
  store i32 %inc31, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  call void @llvm.lifetime.end(i64 1, i8* %bg) #1
  %34 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  call void @llvm.lifetime.end(i64 1, i8* %a) #1
  call void @llvm.lifetime.end(i64 1, i8* %comp) #1
  %35 = bitcast i32* %position to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @smask_copy(i32 %num_rows, i32 %num_cols, i32 %row_stride, i8* %src, i8* %dst) #0 {
entry:
  %num_rows.addr = alloca i32, align 4
  %num_cols.addr = alloca i32, align 4
  %row_stride.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %y = alloca i32, align 4
  %dstptr = alloca i8*, align 8
  %srcptr = alloca i8*, align 8
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !1
  store i32 %num_cols, i32* %num_cols.addr, align 4, !tbaa !1
  store i32 %row_stride, i32* %row_stride.addr, align 4, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  %0 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %dstptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %srcptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  store i8* %3, i8** %dstptr, align 8, !tbaa !5
  %4 = load i8*, i8** %src.addr, align 8, !tbaa !5
  store i8* %4, i8** %srcptr, align 8, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %y, align 4, !tbaa !1
  %6 = load i32, i32* %num_rows.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %dstptr, align 8, !tbaa !5
  %8 = load i8*, i8** %srcptr, align 8, !tbaa !5
  %9 = load i32, i32* %num_cols.addr, align 4, !tbaa !1
  %conv = sext i32 %9 to i64
  %call = call i8* @memcpy(i8* %7, i8* %8, i64 %conv) #4
  %10 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %11 = load i8*, i8** %dstptr, align 8, !tbaa !5
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %dstptr, align 8, !tbaa !5
  %12 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %13 = load i8*, i8** %srcptr, align 8, !tbaa !5
  %idx.ext1 = sext i32 %12 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %13, i64 %idx.ext1
  store i8* %add.ptr2, i8** %srcptr, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %y, align 4, !tbaa !1
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = bitcast i8** %srcptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast i8** %dstptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @smask_icc(%struct.gx_device_s* %dev, i32 %num_rows, i32 %num_cols, i32 %n_chan, i32 %row_stride, i32 %plane_stride, i8* %src, i8* %dst, %struct.gsicc_link_s* %icclink) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_rows.addr = alloca i32, align 4
  %num_cols.addr = alloca i32, align 4
  %n_chan.addr = alloca i32, align 4
  %row_stride.addr = alloca i32, align 4
  %plane_stride.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %input_buff_desc = alloca %struct.gsicc_bufferdesc_s, align 4
  %output_buff_desc = alloca %struct.gsicc_bufferdesc_s, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !1
  store i32 %num_cols, i32* %num_cols.addr, align 4, !tbaa !1
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i32 %row_stride, i32* %row_stride.addr, align 4, !tbaa !1
  store i32 %plane_stride, i32* %plane_stride.addr, align 4, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gsicc_bufferdesc_s* %input_buff_desc to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #1
  %1 = bitcast %struct.gsicc_bufferdesc_s* %output_buff_desc to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #1
  %2 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %2, 1
  %conv = trunc i32 %sub to i8
  %3 = load i32, i32* %plane_stride.addr, align 4, !tbaa !1
  %4 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %5 = load i32, i32* %num_rows.addr, align 4, !tbaa !1
  %6 = load i32, i32* %num_cols.addr, align 4, !tbaa !1
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %input_buff_desc, i8 zeroext %conv, i8 zeroext 1, i32 0, i32 0, i32 1, i32 %3, i32 %4, i32 %5, i32 %6) #5
  %7 = load i32, i32* %plane_stride.addr, align 4, !tbaa !1
  %8 = load i32, i32* %row_stride.addr, align 4, !tbaa !1
  %9 = load i32, i32* %num_rows.addr, align 4, !tbaa !1
  %10 = load i32, i32* %num_cols.addr, align 4, !tbaa !1
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %output_buff_desc, i8 zeroext 1, i8 zeroext 1, i32 0, i32 0, i32 1, i32 %7, i32 %8, i32 %9, i32 %10) #5
  %11 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %11, i32 0, i32 1
  %map_buffer = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs, i32 0, i32 0
  %12 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)** %map_buffer, align 8, !tbaa !10
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %14 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8, !tbaa !5
  %15 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %16 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  call void %12(%struct.gx_device_s* %13, %struct.gsicc_link_s* %14, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %15, i8* %16) #5
  %17 = bitcast %struct.gsicc_bufferdesc_s* %output_buff_desc to i8*
  call void @llvm.lifetime.end(i64 36, i8* %17) #1
  %18 = bitcast %struct.gsicc_bufferdesc_s* %input_buff_desc to i8*
  call void @llvm.lifetime.end(i64 36, i8* %18) #1
  ret void
}

declare void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s*, i8 zeroext, i8 zeroext, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define void @art_blend_luminosity_rgb_8(i32 %n_chan, i8* %dst, i8* %backdrop, i8* %src) #0 {
entry:
  %n_chan.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %backdrop.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %rb = alloca i32, align 4
  %gb = alloca i32, align 4
  %bb = alloca i32, align 4
  %rs = alloca i32, align 4
  %gs = alloca i32, align 4
  %bs = alloca i32, align 4
  %delta_y = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %y = alloca i32, align 4
  %scale = alloca i32, align 4
  %max = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %backdrop, i8** %backdrop.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  %0 = bitcast i32* %rb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %rb, align 4, !tbaa !1
  %3 = bitcast i32* %gb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv2 = zext i8 %5 to i32
  store i32 %conv2, i32* %gb, align 4, !tbaa !1
  %6 = bitcast i32* %bb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv4 = zext i8 %8 to i32
  store i32 %conv4, i32* %bb, align 4, !tbaa !1
  %9 = bitcast i32* %rs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %11 to i32
  store i32 %conv6, i32* %rs, align 4, !tbaa !1
  %12 = bitcast i32* %gs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %14 to i32
  store i32 %conv8, i32* %gs, align 4, !tbaa !1
  %15 = bitcast i32* %bs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx9 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx9, align 1, !tbaa !7
  %conv10 = zext i8 %17 to i32
  store i32 %conv10, i32* %bs, align 4, !tbaa !1
  %18 = bitcast i32* %delta_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i32, i32* %rs, align 4, !tbaa !1
  %23 = load i32, i32* %rb, align 4, !tbaa !1
  %sub = sub nsw i32 %22, %23
  %mul = mul nsw i32 %sub, 77
  %24 = load i32, i32* %gs, align 4, !tbaa !1
  %25 = load i32, i32* %gb, align 4, !tbaa !1
  %sub11 = sub nsw i32 %24, %25
  %mul12 = mul nsw i32 %sub11, 151
  %add = add nsw i32 %mul, %mul12
  %26 = load i32, i32* %bs, align 4, !tbaa !1
  %27 = load i32, i32* %bb, align 4, !tbaa !1
  %sub13 = sub nsw i32 %26, %27
  %mul14 = mul nsw i32 %sub13, 28
  %add15 = add nsw i32 %add, %mul14
  %add16 = add nsw i32 %add15, 128
  %shr = ashr i32 %add16, 8
  store i32 %shr, i32* %delta_y, align 4, !tbaa !1
  %28 = load i32, i32* %rb, align 4, !tbaa !1
  %29 = load i32, i32* %delta_y, align 4, !tbaa !1
  %add17 = add nsw i32 %28, %29
  store i32 %add17, i32* %r, align 4, !tbaa !1
  %30 = load i32, i32* %gb, align 4, !tbaa !1
  %31 = load i32, i32* %delta_y, align 4, !tbaa !1
  %add18 = add nsw i32 %30, %31
  store i32 %add18, i32* %g, align 4, !tbaa !1
  %32 = load i32, i32* %bb, align 4, !tbaa !1
  %33 = load i32, i32* %delta_y, align 4, !tbaa !1
  %add19 = add nsw i32 %32, %33
  store i32 %add19, i32* %b, align 4, !tbaa !1
  %34 = load i32, i32* %r, align 4, !tbaa !1
  %35 = load i32, i32* %g, align 4, !tbaa !1
  %or = or i32 %34, %35
  %36 = load i32, i32* %b, align 4, !tbaa !1
  %or20 = or i32 %or, %36
  %and = and i32 %or20, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.70

if.then:                                          ; preds = %entry
  %37 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load i32, i32* %rs, align 4, !tbaa !1
  %mul21 = mul nsw i32 %39, 77
  %40 = load i32, i32* %gs, align 4, !tbaa !1
  %mul22 = mul nsw i32 %40, 151
  %add23 = add nsw i32 %mul21, %mul22
  %41 = load i32, i32* %bs, align 4, !tbaa !1
  %mul24 = mul nsw i32 %41, 28
  %add25 = add nsw i32 %add23, %mul24
  %add26 = add nsw i32 %add25, 128
  %shr27 = ashr i32 %add26, 8
  store i32 %shr27, i32* %y, align 4, !tbaa !1
  %42 = load i32, i32* %delta_y, align 4, !tbaa !1
  %cmp = icmp sgt i32 %42, 0
  br i1 %cmp, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then
  %43 = bitcast i32* %max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i32, i32* %r, align 4, !tbaa !1
  %45 = load i32, i32* %g, align 4, !tbaa !1
  %cmp30 = icmp sgt i32 %44, %45
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.29
  %46 = load i32, i32* %r, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.then.29
  %47 = load i32, i32* %g, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %46, %cond.true ], [ %47, %cond.false ]
  store i32 %cond, i32* %max, align 4, !tbaa !1
  %48 = load i32, i32* %b, align 4, !tbaa !1
  %49 = load i32, i32* %max, align 4, !tbaa !1
  %cmp32 = icmp sgt i32 %48, %49
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %cond.end
  %50 = load i32, i32* %b, align 4, !tbaa !1
  br label %cond.end.36

cond.false.35:                                    ; preds = %cond.end
  %51 = load i32, i32* %max, align 4, !tbaa !1
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.34
  %cond37 = phi i32 [ %50, %cond.true.34 ], [ %51, %cond.false.35 ]
  store i32 %cond37, i32* %max, align 4, !tbaa !1
  %52 = load i32, i32* %y, align 4, !tbaa !1
  %sub38 = sub nsw i32 255, %52
  %shl = shl i32 %sub38, 16
  %53 = load i32, i32* %max, align 4, !tbaa !1
  %54 = load i32, i32* %y, align 4, !tbaa !1
  %sub39 = sub nsw i32 %53, %54
  %div = sdiv i32 %shl, %sub39
  store i32 %div, i32* %scale, align 4, !tbaa !1
  %55 = bitcast i32* %max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  br label %if.end

if.else:                                          ; preds = %if.then
  %56 = bitcast i32* %min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load i32, i32* %r, align 4, !tbaa !1
  %58 = load i32, i32* %g, align 4, !tbaa !1
  %cmp40 = icmp slt i32 %57, %58
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %if.else
  %59 = load i32, i32* %r, align 4, !tbaa !1
  br label %cond.end.44

cond.false.43:                                    ; preds = %if.else
  %60 = load i32, i32* %g, align 4, !tbaa !1
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.42
  %cond45 = phi i32 [ %59, %cond.true.42 ], [ %60, %cond.false.43 ]
  store i32 %cond45, i32* %min, align 4, !tbaa !1
  %61 = load i32, i32* %b, align 4, !tbaa !1
  %62 = load i32, i32* %min, align 4, !tbaa !1
  %cmp46 = icmp slt i32 %61, %62
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %cond.end.44
  %63 = load i32, i32* %b, align 4, !tbaa !1
  br label %cond.end.50

cond.false.49:                                    ; preds = %cond.end.44
  %64 = load i32, i32* %min, align 4, !tbaa !1
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.48
  %cond51 = phi i32 [ %63, %cond.true.48 ], [ %64, %cond.false.49 ]
  store i32 %cond51, i32* %min, align 4, !tbaa !1
  %65 = load i32, i32* %y, align 4, !tbaa !1
  %shl52 = shl i32 %65, 16
  %66 = load i32, i32* %y, align 4, !tbaa !1
  %67 = load i32, i32* %min, align 4, !tbaa !1
  %sub53 = sub nsw i32 %66, %67
  %div54 = sdiv i32 %shl52, %sub53
  store i32 %div54, i32* %scale, align 4, !tbaa !1
  %68 = bitcast i32* %min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  br label %if.end

if.end:                                           ; preds = %cond.end.50, %cond.end.36
  %69 = load i32, i32* %y, align 4, !tbaa !1
  %70 = load i32, i32* %r, align 4, !tbaa !1
  %71 = load i32, i32* %y, align 4, !tbaa !1
  %sub55 = sub nsw i32 %70, %71
  %72 = load i32, i32* %scale, align 4, !tbaa !1
  %mul56 = mul nsw i32 %sub55, %72
  %add57 = add nsw i32 %mul56, 32768
  %shr58 = ashr i32 %add57, 16
  %add59 = add nsw i32 %69, %shr58
  store i32 %add59, i32* %r, align 4, !tbaa !1
  %73 = load i32, i32* %y, align 4, !tbaa !1
  %74 = load i32, i32* %g, align 4, !tbaa !1
  %75 = load i32, i32* %y, align 4, !tbaa !1
  %sub60 = sub nsw i32 %74, %75
  %76 = load i32, i32* %scale, align 4, !tbaa !1
  %mul61 = mul nsw i32 %sub60, %76
  %add62 = add nsw i32 %mul61, 32768
  %shr63 = ashr i32 %add62, 16
  %add64 = add nsw i32 %73, %shr63
  store i32 %add64, i32* %g, align 4, !tbaa !1
  %77 = load i32, i32* %y, align 4, !tbaa !1
  %78 = load i32, i32* %b, align 4, !tbaa !1
  %79 = load i32, i32* %y, align 4, !tbaa !1
  %sub65 = sub nsw i32 %78, %79
  %80 = load i32, i32* %scale, align 4, !tbaa !1
  %mul66 = mul nsw i32 %sub65, %80
  %add67 = add nsw i32 %mul66, 32768
  %shr68 = ashr i32 %add67, 16
  %add69 = add nsw i32 %77, %shr68
  store i32 %add69, i32* %b, align 4, !tbaa !1
  %81 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  br label %if.end.70

if.end.70:                                        ; preds = %if.end, %entry
  %83 = load i32, i32* %r, align 4, !tbaa !1
  %conv71 = trunc i32 %83 to i8
  %84 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx72 = getelementptr inbounds i8, i8* %84, i64 0
  store i8 %conv71, i8* %arrayidx72, align 1, !tbaa !7
  %85 = load i32, i32* %g, align 4, !tbaa !1
  %conv73 = trunc i32 %85 to i8
  %86 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx74 = getelementptr inbounds i8, i8* %86, i64 1
  store i8 %conv73, i8* %arrayidx74, align 1, !tbaa !7
  %87 = load i32, i32* %b, align 4, !tbaa !1
  %conv75 = trunc i32 %87 to i8
  %88 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx76 = getelementptr inbounds i8, i8* %88, i64 2
  store i8 %conv75, i8* %arrayidx76, align 1, !tbaa !7
  %89 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %delta_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %bs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %gs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %rs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %bb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %gb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %rb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @art_blend_luminosity_custom_8(i32 %n_chan, i8* %dst, i8* %backdrop, i8* %src) #0 {
entry:
  %n_chan.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %backdrop.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %delta_y = alloca i32, align 4
  %test = alloca i32, align 4
  %r = alloca [64 x i32], align 16
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %scale = alloca i32, align 4
  %max = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %backdrop, i8** %backdrop.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  %0 = bitcast i32* %delta_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %delta_y, align 4, !tbaa !1
  %1 = bitcast i32* %test to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %test, align 4, !tbaa !1
  %2 = bitcast [64 x i32]* %r to i8*
  call void @llvm.lifetime.start(i64 256, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !1
  %5 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %8 to i32
  %9 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom1 = sext i32 %9 to i64
  %10 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds i8, i8* %10, i64 %idxprom1
  %11 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %11 to i32
  %sub = sub nsw i32 %conv, %conv3
  %12 = load i32, i32* %delta_y, align 4, !tbaa !1
  %add = add nsw i32 %12, %sub
  store i32 %add, i32* %delta_y, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %delta_y, align 4, !tbaa !1
  %15 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %div = sdiv i32 %15, 2
  %add4 = add nsw i32 %14, %div
  %16 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %div5 = sdiv i32 %add4, %16
  store i32 %div5, i32* %delta_y, align 4, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.18, %for.end
  %17 = load i32, i32* %i, align 4, !tbaa !1
  %18 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp7 = icmp slt i32 %17, %18
  br i1 %cmp7, label %for.body.9, label %for.end.20

for.body.9:                                       ; preds = %for.cond.6
  %19 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom10 = sext i32 %19 to i64
  %20 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds i8, i8* %20, i64 %idxprom10
  %21 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %21 to i32
  %22 = load i32, i32* %delta_y, align 4, !tbaa !1
  %add13 = add nsw i32 %conv12, %22
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 %idxprom14
  store i32 %add13, i32* %arrayidx15, align 4, !tbaa !1
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom16 = sext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 %idxprom16
  %25 = load i32, i32* %arrayidx17, align 4, !tbaa !1
  %26 = load i32, i32* %test, align 4, !tbaa !1
  %or = or i32 %26, %25
  store i32 %or, i32* %test, align 4, !tbaa !1
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.9
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %inc19 = add nsw i32 %27, 1
  store i32 %inc19, i32* %i, align 4, !tbaa !1
  br label %for.cond.6

for.end.20:                                       ; preds = %for.cond.6
  %28 = load i32, i32* %test, align 4, !tbaa !1
  %and = and i32 %28, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.92

if.then:                                          ; preds = %for.end.20
  %29 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx21 = getelementptr inbounds i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx21, align 1, !tbaa !7
  %conv22 = zext i8 %32 to i32
  store i32 %conv22, i32* %y, align 4, !tbaa !1
  store i32 1, i32* %i, align 4, !tbaa !1
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.31, %if.then
  %33 = load i32, i32* %i, align 4, !tbaa !1
  %34 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp24 = icmp slt i32 %33, %34
  br i1 %cmp24, label %for.body.26, label %for.end.33

for.body.26:                                      ; preds = %for.cond.23
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom27 = sext i32 %35 to i64
  %36 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds i8, i8* %36, i64 %idxprom27
  %37 = load i8, i8* %arrayidx28, align 1, !tbaa !7
  %conv29 = zext i8 %37 to i32
  %38 = load i32, i32* %y, align 4, !tbaa !1
  %add30 = add nsw i32 %38, %conv29
  store i32 %add30, i32* %y, align 4, !tbaa !1
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.26
  %39 = load i32, i32* %i, align 4, !tbaa !1
  %inc32 = add nsw i32 %39, 1
  store i32 %inc32, i32* %i, align 4, !tbaa !1
  br label %for.cond.23

for.end.33:                                       ; preds = %for.cond.23
  %40 = load i32, i32* %y, align 4, !tbaa !1
  %41 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %div34 = sdiv i32 %41, 2
  %add35 = add nsw i32 %40, %div34
  %42 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %div36 = sdiv i32 %add35, %42
  store i32 %div36, i32* %y, align 4, !tbaa !1
  %43 = load i32, i32* %delta_y, align 4, !tbaa !1
  %cmp37 = icmp sgt i32 %43, 0
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %for.end.33
  %44 = bitcast i32* %max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %arrayidx40 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 0
  %45 = load i32, i32* %arrayidx40, align 4, !tbaa !1
  store i32 %45, i32* %max, align 4, !tbaa !1
  store i32 1, i32* %i, align 4, !tbaa !1
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.51, %if.then.39
  %46 = load i32, i32* %i, align 4, !tbaa !1
  %47 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp42 = icmp slt i32 %46, %47
  br i1 %cmp42, label %for.body.44, label %for.end.53

for.body.44:                                      ; preds = %for.cond.41
  %48 = load i32, i32* %max, align 4, !tbaa !1
  %49 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom45 = sext i32 %49 to i64
  %arrayidx46 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 %idxprom45
  %50 = load i32, i32* %arrayidx46, align 4, !tbaa !1
  %cmp47 = icmp sgt i32 %48, %50
  br i1 %cmp47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.44
  %51 = load i32, i32* %max, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %for.body.44
  %52 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom49 = sext i32 %52 to i64
  %arrayidx50 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 %idxprom49
  %53 = load i32, i32* %arrayidx50, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %51, %cond.true ], [ %53, %cond.false ]
  store i32 %cond, i32* %max, align 4, !tbaa !1
  br label %for.inc.51

for.inc.51:                                       ; preds = %cond.end
  %54 = load i32, i32* %i, align 4, !tbaa !1
  %inc52 = add nsw i32 %54, 1
  store i32 %inc52, i32* %i, align 4, !tbaa !1
  br label %for.cond.41

for.end.53:                                       ; preds = %for.cond.41
  %55 = load i32, i32* %y, align 4, !tbaa !1
  %sub54 = sub nsw i32 255, %55
  %shl = shl i32 %sub54, 16
  %56 = load i32, i32* %max, align 4, !tbaa !1
  %57 = load i32, i32* %y, align 4, !tbaa !1
  %sub55 = sub nsw i32 %56, %57
  %div56 = sdiv i32 %shl, %sub55
  store i32 %div56, i32* %scale, align 4, !tbaa !1
  %58 = bitcast i32* %max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  br label %if.end

if.else:                                          ; preds = %for.end.33
  %59 = bitcast i32* %min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %arrayidx57 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 0
  %60 = load i32, i32* %arrayidx57, align 4, !tbaa !1
  store i32 %60, i32* %min, align 4, !tbaa !1
  store i32 1, i32* %i, align 4, !tbaa !1
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.72, %if.else
  %61 = load i32, i32* %i, align 4, !tbaa !1
  %62 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp59 = icmp slt i32 %61, %62
  br i1 %cmp59, label %for.body.61, label %for.end.74

for.body.61:                                      ; preds = %for.cond.58
  %63 = load i32, i32* %min, align 4, !tbaa !1
  %64 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom62 = sext i32 %64 to i64
  %arrayidx63 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 %idxprom62
  %65 = load i32, i32* %arrayidx63, align 4, !tbaa !1
  %cmp64 = icmp slt i32 %63, %65
  br i1 %cmp64, label %cond.true.66, label %cond.false.67

cond.true.66:                                     ; preds = %for.body.61
  %66 = load i32, i32* %min, align 4, !tbaa !1
  br label %cond.end.70

cond.false.67:                                    ; preds = %for.body.61
  %67 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom68 = sext i32 %67 to i64
  %arrayidx69 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 %idxprom68
  %68 = load i32, i32* %arrayidx69, align 4, !tbaa !1
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.67, %cond.true.66
  %cond71 = phi i32 [ %66, %cond.true.66 ], [ %68, %cond.false.67 ]
  store i32 %cond71, i32* %min, align 4, !tbaa !1
  br label %for.inc.72

for.inc.72:                                       ; preds = %cond.end.70
  %69 = load i32, i32* %i, align 4, !tbaa !1
  %inc73 = add nsw i32 %69, 1
  store i32 %inc73, i32* %i, align 4, !tbaa !1
  br label %for.cond.58

for.end.74:                                       ; preds = %for.cond.58
  %70 = load i32, i32* %y, align 4, !tbaa !1
  %shl75 = shl i32 %70, 16
  %71 = load i32, i32* %y, align 4, !tbaa !1
  %72 = load i32, i32* %min, align 4, !tbaa !1
  %sub76 = sub nsw i32 %71, %72
  %div77 = sdiv i32 %shl75, %sub76
  store i32 %div77, i32* %scale, align 4, !tbaa !1
  %73 = bitcast i32* %min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  br label %if.end

if.end:                                           ; preds = %for.end.74, %for.end.53
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.89, %if.end
  %74 = load i32, i32* %i, align 4, !tbaa !1
  %75 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp79 = icmp slt i32 %74, %75
  br i1 %cmp79, label %for.body.81, label %for.end.91

for.body.81:                                      ; preds = %for.cond.78
  %76 = load i32, i32* %y, align 4, !tbaa !1
  %77 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom82 = sext i32 %77 to i64
  %arrayidx83 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 %idxprom82
  %78 = load i32, i32* %arrayidx83, align 4, !tbaa !1
  %79 = load i32, i32* %y, align 4, !tbaa !1
  %sub84 = sub nsw i32 %78, %79
  %80 = load i32, i32* %scale, align 4, !tbaa !1
  %mul = mul nsw i32 %sub84, %80
  %add85 = add nsw i32 %mul, 32768
  %shr = ashr i32 %add85, 16
  %add86 = add nsw i32 %76, %shr
  %81 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom87 = sext i32 %81 to i64
  %arrayidx88 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 %idxprom87
  store i32 %add86, i32* %arrayidx88, align 4, !tbaa !1
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.81
  %82 = load i32, i32* %i, align 4, !tbaa !1
  %inc90 = add nsw i32 %82, 1
  store i32 %inc90, i32* %i, align 4, !tbaa !1
  br label %for.cond.78

for.end.91:                                       ; preds = %for.cond.78
  %83 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  br label %if.end.92

if.end.92:                                        ; preds = %for.end.91, %for.end.20
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.102, %if.end.92
  %85 = load i32, i32* %i, align 4, !tbaa !1
  %86 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp94 = icmp slt i32 %85, %86
  br i1 %cmp94, label %for.body.96, label %for.end.104

for.body.96:                                      ; preds = %for.cond.93
  %87 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom97 = sext i32 %87 to i64
  %arrayidx98 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 %idxprom97
  %88 = load i32, i32* %arrayidx98, align 4, !tbaa !1
  %conv99 = trunc i32 %88 to i8
  %89 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom100 = sext i32 %89 to i64
  %90 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx101 = getelementptr inbounds i8, i8* %90, i64 %idxprom100
  store i8 %conv99, i8* %arrayidx101, align 1, !tbaa !7
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.96
  %91 = load i32, i32* %i, align 4, !tbaa !1
  %inc103 = add nsw i32 %91, 1
  store i32 %inc103, i32* %i, align 4, !tbaa !1
  br label %for.cond.93

for.end.104:                                      ; preds = %for.cond.93
  %92 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast [64 x i32]* %r to i8*
  call void @llvm.lifetime.end(i64 256, i8* %93) #1
  %94 = bitcast i32* %test to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %delta_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @art_blend_luminosity_cmyk_8(i32 %n_chan, i8* %dst, i8* %backdrop, i8* %src) #0 {
entry:
  %n_chan.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %backdrop.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %backdrop, i8** %backdrop.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %2 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %3 = load i8*, i8** %src.addr, align 8, !tbaa !5
  call void @art_blend_luminosity_rgb_8(i32 3, i8* %1, i8* %2, i8* %3) #5
  store i32 3, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !1
  %5 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %9 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom1 = sext i32 %9 to i64
  %10 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds i8, i8* %10, i64 %idxprom1
  store i8 %8, i8* %arrayidx2, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @art_blend_saturation_rgb_8(i32 %n_chan, i8* %dst, i8* %backdrop, i8* %src) #0 {
entry:
  %n_chan.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %backdrop.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %rb = alloca i32, align 4
  %gb = alloca i32, align 4
  %bb = alloca i32, align 4
  %rs = alloca i32, align 4
  %gs = alloca i32, align 4
  %bs = alloca i32, align 4
  %minb = alloca i32, align 4
  %maxb = alloca i32, align 4
  %mins = alloca i32, align 4
  %maxs = alloca i32, align 4
  %y = alloca i32, align 4
  %scale = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %scalemin = alloca i32, align 4
  %scalemax = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %backdrop, i8** %backdrop.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  %0 = bitcast i32* %rb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %rb, align 4, !tbaa !1
  %3 = bitcast i32* %gb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv2 = zext i8 %5 to i32
  store i32 %conv2, i32* %gb, align 4, !tbaa !1
  %6 = bitcast i32* %bb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv4 = zext i8 %8 to i32
  store i32 %conv4, i32* %bb, align 4, !tbaa !1
  %9 = bitcast i32* %rs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %11 to i32
  store i32 %conv6, i32* %rs, align 4, !tbaa !1
  %12 = bitcast i32* %gs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = zext i8 %14 to i32
  store i32 %conv8, i32* %gs, align 4, !tbaa !1
  %15 = bitcast i32* %bs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx9 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx9, align 1, !tbaa !7
  %conv10 = zext i8 %17 to i32
  store i32 %conv10, i32* %bs, align 4, !tbaa !1
  %18 = bitcast i32* %minb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %maxb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %mins to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %maxs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load i32, i32* %rb, align 4, !tbaa !1
  %28 = load i32, i32* %gb, align 4, !tbaa !1
  %cmp = icmp slt i32 %27, %28
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %29 = load i32, i32* %rb, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %30 = load i32, i32* %gb, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %30, %cond.false ]
  store i32 %cond, i32* %minb, align 4, !tbaa !1
  %31 = load i32, i32* %minb, align 4, !tbaa !1
  %32 = load i32, i32* %bb, align 4, !tbaa !1
  %cmp12 = icmp slt i32 %31, %32
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end
  %33 = load i32, i32* %minb, align 4, !tbaa !1
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.end
  %34 = load i32, i32* %bb, align 4, !tbaa !1
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi i32 [ %33, %cond.true.14 ], [ %34, %cond.false.15 ]
  store i32 %cond17, i32* %minb, align 4, !tbaa !1
  %35 = load i32, i32* %rb, align 4, !tbaa !1
  %36 = load i32, i32* %gb, align 4, !tbaa !1
  %cmp18 = icmp sgt i32 %35, %36
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.end.16
  %37 = load i32, i32* %rb, align 4, !tbaa !1
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.end.16
  %38 = load i32, i32* %gb, align 4, !tbaa !1
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.20
  %cond23 = phi i32 [ %37, %cond.true.20 ], [ %38, %cond.false.21 ]
  store i32 %cond23, i32* %maxb, align 4, !tbaa !1
  %39 = load i32, i32* %maxb, align 4, !tbaa !1
  %40 = load i32, i32* %bb, align 4, !tbaa !1
  %cmp24 = icmp sgt i32 %39, %40
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.end.22
  %41 = load i32, i32* %maxb, align 4, !tbaa !1
  br label %cond.end.28

cond.false.27:                                    ; preds = %cond.end.22
  %42 = load i32, i32* %bb, align 4, !tbaa !1
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.26
  %cond29 = phi i32 [ %41, %cond.true.26 ], [ %42, %cond.false.27 ]
  store i32 %cond29, i32* %maxb, align 4, !tbaa !1
  %43 = load i32, i32* %minb, align 4, !tbaa !1
  %44 = load i32, i32* %maxb, align 4, !tbaa !1
  %cmp30 = icmp eq i32 %43, %44
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.28
  %45 = load i32, i32* %gb, align 4, !tbaa !1
  %conv32 = trunc i32 %45 to i8
  %46 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx33 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 %conv32, i8* %arrayidx33, align 1, !tbaa !7
  %47 = load i32, i32* %gb, align 4, !tbaa !1
  %conv34 = trunc i32 %47 to i8
  %48 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx35 = getelementptr inbounds i8, i8* %48, i64 1
  store i8 %conv34, i8* %arrayidx35, align 1, !tbaa !7
  %49 = load i32, i32* %gb, align 4, !tbaa !1
  %conv36 = trunc i32 %49 to i8
  %50 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx37 = getelementptr inbounds i8, i8* %50, i64 2
  store i8 %conv36, i8* %arrayidx37, align 1, !tbaa !7
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.28
  %51 = load i32, i32* %rs, align 4, !tbaa !1
  %52 = load i32, i32* %gs, align 4, !tbaa !1
  %cmp38 = icmp slt i32 %51, %52
  br i1 %cmp38, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %if.end
  %53 = load i32, i32* %rs, align 4, !tbaa !1
  br label %cond.end.42

cond.false.41:                                    ; preds = %if.end
  %54 = load i32, i32* %gs, align 4, !tbaa !1
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.40
  %cond43 = phi i32 [ %53, %cond.true.40 ], [ %54, %cond.false.41 ]
  store i32 %cond43, i32* %mins, align 4, !tbaa !1
  %55 = load i32, i32* %mins, align 4, !tbaa !1
  %56 = load i32, i32* %bs, align 4, !tbaa !1
  %cmp44 = icmp slt i32 %55, %56
  br i1 %cmp44, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %cond.end.42
  %57 = load i32, i32* %mins, align 4, !tbaa !1
  br label %cond.end.48

cond.false.47:                                    ; preds = %cond.end.42
  %58 = load i32, i32* %bs, align 4, !tbaa !1
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.46
  %cond49 = phi i32 [ %57, %cond.true.46 ], [ %58, %cond.false.47 ]
  store i32 %cond49, i32* %mins, align 4, !tbaa !1
  %59 = load i32, i32* %rs, align 4, !tbaa !1
  %60 = load i32, i32* %gs, align 4, !tbaa !1
  %cmp50 = icmp sgt i32 %59, %60
  br i1 %cmp50, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %cond.end.48
  %61 = load i32, i32* %rs, align 4, !tbaa !1
  br label %cond.end.54

cond.false.53:                                    ; preds = %cond.end.48
  %62 = load i32, i32* %gs, align 4, !tbaa !1
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.52
  %cond55 = phi i32 [ %61, %cond.true.52 ], [ %62, %cond.false.53 ]
  store i32 %cond55, i32* %maxs, align 4, !tbaa !1
  %63 = load i32, i32* %maxs, align 4, !tbaa !1
  %64 = load i32, i32* %bs, align 4, !tbaa !1
  %cmp56 = icmp sgt i32 %63, %64
  br i1 %cmp56, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.end.54
  %65 = load i32, i32* %maxs, align 4, !tbaa !1
  br label %cond.end.60

cond.false.59:                                    ; preds = %cond.end.54
  %66 = load i32, i32* %bs, align 4, !tbaa !1
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.58
  %cond61 = phi i32 [ %65, %cond.true.58 ], [ %66, %cond.false.59 ]
  store i32 %cond61, i32* %maxs, align 4, !tbaa !1
  %67 = load i32, i32* %maxs, align 4, !tbaa !1
  %68 = load i32, i32* %mins, align 4, !tbaa !1
  %sub = sub nsw i32 %67, %68
  %shl = shl i32 %sub, 16
  %69 = load i32, i32* %maxb, align 4, !tbaa !1
  %70 = load i32, i32* %minb, align 4, !tbaa !1
  %sub62 = sub nsw i32 %69, %70
  %div = sdiv i32 %shl, %sub62
  store i32 %div, i32* %scale, align 4, !tbaa !1
  %71 = load i32, i32* %rb, align 4, !tbaa !1
  %mul = mul nsw i32 %71, 77
  %72 = load i32, i32* %gb, align 4, !tbaa !1
  %mul63 = mul nsw i32 %72, 151
  %add = add nsw i32 %mul, %mul63
  %73 = load i32, i32* %bb, align 4, !tbaa !1
  %mul64 = mul nsw i32 %73, 28
  %add65 = add nsw i32 %add, %mul64
  %add66 = add nsw i32 %add65, 128
  %shr = ashr i32 %add66, 8
  store i32 %shr, i32* %y, align 4, !tbaa !1
  %74 = load i32, i32* %y, align 4, !tbaa !1
  %75 = load i32, i32* %rb, align 4, !tbaa !1
  %76 = load i32, i32* %y, align 4, !tbaa !1
  %sub67 = sub nsw i32 %75, %76
  %77 = load i32, i32* %scale, align 4, !tbaa !1
  %mul68 = mul nsw i32 %sub67, %77
  %add69 = add nsw i32 %mul68, 32768
  %shr70 = ashr i32 %add69, 16
  %add71 = add nsw i32 %74, %shr70
  store i32 %add71, i32* %r, align 4, !tbaa !1
  %78 = load i32, i32* %y, align 4, !tbaa !1
  %79 = load i32, i32* %gb, align 4, !tbaa !1
  %80 = load i32, i32* %y, align 4, !tbaa !1
  %sub72 = sub nsw i32 %79, %80
  %81 = load i32, i32* %scale, align 4, !tbaa !1
  %mul73 = mul nsw i32 %sub72, %81
  %add74 = add nsw i32 %mul73, 32768
  %shr75 = ashr i32 %add74, 16
  %add76 = add nsw i32 %78, %shr75
  store i32 %add76, i32* %g, align 4, !tbaa !1
  %82 = load i32, i32* %y, align 4, !tbaa !1
  %83 = load i32, i32* %bb, align 4, !tbaa !1
  %84 = load i32, i32* %y, align 4, !tbaa !1
  %sub77 = sub nsw i32 %83, %84
  %85 = load i32, i32* %scale, align 4, !tbaa !1
  %mul78 = mul nsw i32 %sub77, %85
  %add79 = add nsw i32 %mul78, 32768
  %shr80 = ashr i32 %add79, 16
  %add81 = add nsw i32 %82, %shr80
  store i32 %add81, i32* %b, align 4, !tbaa !1
  %86 = load i32, i32* %r, align 4, !tbaa !1
  %87 = load i32, i32* %g, align 4, !tbaa !1
  %or = or i32 %86, %87
  %88 = load i32, i32* %b, align 4, !tbaa !1
  %or82 = or i32 %or, %88
  %and = and i32 %or82, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.83, label %if.end.145

if.then.83:                                       ; preds = %cond.end.60
  %89 = bitcast i32* %scalemin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  %90 = bitcast i32* %scalemax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #1
  %91 = bitcast i32* %min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  %92 = bitcast i32* %max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #1
  %93 = load i32, i32* %r, align 4, !tbaa !1
  %94 = load i32, i32* %g, align 4, !tbaa !1
  %cmp84 = icmp slt i32 %93, %94
  br i1 %cmp84, label %cond.true.86, label %cond.false.87

cond.true.86:                                     ; preds = %if.then.83
  %95 = load i32, i32* %r, align 4, !tbaa !1
  br label %cond.end.88

cond.false.87:                                    ; preds = %if.then.83
  %96 = load i32, i32* %g, align 4, !tbaa !1
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.87, %cond.true.86
  %cond89 = phi i32 [ %95, %cond.true.86 ], [ %96, %cond.false.87 ]
  store i32 %cond89, i32* %min, align 4, !tbaa !1
  %97 = load i32, i32* %min, align 4, !tbaa !1
  %98 = load i32, i32* %b, align 4, !tbaa !1
  %cmp90 = icmp slt i32 %97, %98
  br i1 %cmp90, label %cond.true.92, label %cond.false.93

cond.true.92:                                     ; preds = %cond.end.88
  %99 = load i32, i32* %min, align 4, !tbaa !1
  br label %cond.end.94

cond.false.93:                                    ; preds = %cond.end.88
  %100 = load i32, i32* %b, align 4, !tbaa !1
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.93, %cond.true.92
  %cond95 = phi i32 [ %99, %cond.true.92 ], [ %100, %cond.false.93 ]
  store i32 %cond95, i32* %min, align 4, !tbaa !1
  %101 = load i32, i32* %r, align 4, !tbaa !1
  %102 = load i32, i32* %g, align 4, !tbaa !1
  %cmp96 = icmp sgt i32 %101, %102
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %cond.end.94
  %103 = load i32, i32* %r, align 4, !tbaa !1
  br label %cond.end.100

cond.false.99:                                    ; preds = %cond.end.94
  %104 = load i32, i32* %g, align 4, !tbaa !1
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.98
  %cond101 = phi i32 [ %103, %cond.true.98 ], [ %104, %cond.false.99 ]
  store i32 %cond101, i32* %max, align 4, !tbaa !1
  %105 = load i32, i32* %max, align 4, !tbaa !1
  %106 = load i32, i32* %b, align 4, !tbaa !1
  %cmp102 = icmp sgt i32 %105, %106
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %cond.end.100
  %107 = load i32, i32* %max, align 4, !tbaa !1
  br label %cond.end.106

cond.false.105:                                   ; preds = %cond.end.100
  %108 = load i32, i32* %b, align 4, !tbaa !1
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.105, %cond.true.104
  %cond107 = phi i32 [ %107, %cond.true.104 ], [ %108, %cond.false.105 ]
  store i32 %cond107, i32* %max, align 4, !tbaa !1
  %109 = load i32, i32* %min, align 4, !tbaa !1
  %cmp108 = icmp slt i32 %109, 0
  br i1 %cmp108, label %if.then.110, label %if.else

if.then.110:                                      ; preds = %cond.end.106
  %110 = load i32, i32* %y, align 4, !tbaa !1
  %shl111 = shl i32 %110, 16
  %111 = load i32, i32* %y, align 4, !tbaa !1
  %112 = load i32, i32* %min, align 4, !tbaa !1
  %sub112 = sub nsw i32 %111, %112
  %div113 = sdiv i32 %shl111, %sub112
  store i32 %div113, i32* %scalemin, align 4, !tbaa !1
  br label %if.end.114

if.else:                                          ; preds = %cond.end.106
  store i32 65536, i32* %scalemin, align 4, !tbaa !1
  br label %if.end.114

if.end.114:                                       ; preds = %if.else, %if.then.110
  %113 = load i32, i32* %max, align 4, !tbaa !1
  %cmp115 = icmp sgt i32 %113, 255
  br i1 %cmp115, label %if.then.117, label %if.else.122

if.then.117:                                      ; preds = %if.end.114
  %114 = load i32, i32* %y, align 4, !tbaa !1
  %sub118 = sub nsw i32 255, %114
  %shl119 = shl i32 %sub118, 16
  %115 = load i32, i32* %max, align 4, !tbaa !1
  %116 = load i32, i32* %y, align 4, !tbaa !1
  %sub120 = sub nsw i32 %115, %116
  %div121 = sdiv i32 %shl119, %sub120
  store i32 %div121, i32* %scalemax, align 4, !tbaa !1
  br label %if.end.123

if.else.122:                                      ; preds = %if.end.114
  store i32 65536, i32* %scalemax, align 4, !tbaa !1
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.122, %if.then.117
  %117 = load i32, i32* %scalemin, align 4, !tbaa !1
  %118 = load i32, i32* %scalemax, align 4, !tbaa !1
  %cmp124 = icmp slt i32 %117, %118
  br i1 %cmp124, label %cond.true.126, label %cond.false.127

cond.true.126:                                    ; preds = %if.end.123
  %119 = load i32, i32* %scalemin, align 4, !tbaa !1
  br label %cond.end.128

cond.false.127:                                   ; preds = %if.end.123
  %120 = load i32, i32* %scalemax, align 4, !tbaa !1
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.127, %cond.true.126
  %cond129 = phi i32 [ %119, %cond.true.126 ], [ %120, %cond.false.127 ]
  store i32 %cond129, i32* %scale, align 4, !tbaa !1
  %121 = load i32, i32* %y, align 4, !tbaa !1
  %122 = load i32, i32* %r, align 4, !tbaa !1
  %123 = load i32, i32* %y, align 4, !tbaa !1
  %sub130 = sub nsw i32 %122, %123
  %124 = load i32, i32* %scale, align 4, !tbaa !1
  %mul131 = mul nsw i32 %sub130, %124
  %add132 = add nsw i32 %mul131, 32768
  %shr133 = ashr i32 %add132, 16
  %add134 = add nsw i32 %121, %shr133
  store i32 %add134, i32* %r, align 4, !tbaa !1
  %125 = load i32, i32* %y, align 4, !tbaa !1
  %126 = load i32, i32* %g, align 4, !tbaa !1
  %127 = load i32, i32* %y, align 4, !tbaa !1
  %sub135 = sub nsw i32 %126, %127
  %128 = load i32, i32* %scale, align 4, !tbaa !1
  %mul136 = mul nsw i32 %sub135, %128
  %add137 = add nsw i32 %mul136, 32768
  %shr138 = ashr i32 %add137, 16
  %add139 = add nsw i32 %125, %shr138
  store i32 %add139, i32* %g, align 4, !tbaa !1
  %129 = load i32, i32* %y, align 4, !tbaa !1
  %130 = load i32, i32* %b, align 4, !tbaa !1
  %131 = load i32, i32* %y, align 4, !tbaa !1
  %sub140 = sub nsw i32 %130, %131
  %132 = load i32, i32* %scale, align 4, !tbaa !1
  %mul141 = mul nsw i32 %sub140, %132
  %add142 = add nsw i32 %mul141, 32768
  %shr143 = ashr i32 %add142, 16
  %add144 = add nsw i32 %129, %shr143
  store i32 %add144, i32* %b, align 4, !tbaa !1
  %133 = bitcast i32* %max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %scalemax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %scalemin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  br label %if.end.145

if.end.145:                                       ; preds = %cond.end.128, %cond.end.60
  %137 = load i32, i32* %r, align 4, !tbaa !1
  %conv146 = trunc i32 %137 to i8
  %138 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx147 = getelementptr inbounds i8, i8* %138, i64 0
  store i8 %conv146, i8* %arrayidx147, align 1, !tbaa !7
  %139 = load i32, i32* %g, align 4, !tbaa !1
  %conv148 = trunc i32 %139 to i8
  %140 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx149 = getelementptr inbounds i8, i8* %140, i64 1
  store i8 %conv148, i8* %arrayidx149, align 1, !tbaa !7
  %141 = load i32, i32* %b, align 4, !tbaa !1
  %conv150 = trunc i32 %141 to i8
  %142 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx151 = getelementptr inbounds i8, i8* %142, i64 2
  store i8 %conv150, i8* %arrayidx151, align 1, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.145, %if.then
  %143 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i32* %maxs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %mins to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %maxb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32* %minb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %bs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i32* %gs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i32* %rs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i32* %bb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = bitcast i32* %gb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32* %rb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @art_blend_saturation_custom_8(i32 %n_chan, i8* %dst, i8* %backdrop, i8* %src) #0 {
entry:
  %n_chan.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %backdrop.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %minb = alloca i32, align 4
  %maxb = alloca i32, align 4
  %mins = alloca i32, align 4
  %maxs = alloca i32, align 4
  %y = alloca i32, align 4
  %scale = alloca i32, align 4
  %r = alloca [64 x i32], align 16
  %test = alloca i32, align 4
  %temp = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %scalemin = alloca i32, align 4
  %scalemax = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %backdrop, i8** %backdrop.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  %0 = bitcast i32* %minb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %maxb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %mins to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %maxs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast [64 x i32]* %r to i8*
  call void @llvm.lifetime.start(i64 256, i8* %6) #1
  %7 = bitcast i32* %test to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %test, align 4, !tbaa !1
  %8 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %11 to i32
  store i32 %conv, i32* %temp, align 4, !tbaa !1
  store i32 %conv, i32* %maxb, align 4, !tbaa !1
  store i32 %conv, i32* %minb, align 4, !tbaa !1
  store i32 1, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !tbaa !1
  %13 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %14 to i64
  %15 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %16 to i32
  store i32 %conv3, i32* %temp, align 4, !tbaa !1
  %17 = load i32, i32* %minb, align 4, !tbaa !1
  %18 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp4 = icmp slt i32 %17, %18
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %19 = load i32, i32* %minb, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %20 = load i32, i32* %temp, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ]
  store i32 %cond, i32* %minb, align 4, !tbaa !1
  %21 = load i32, i32* %maxb, align 4, !tbaa !1
  %22 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp6 = icmp sgt i32 %21, %22
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  %23 = load i32, i32* %maxb, align 4, !tbaa !1
  br label %cond.end.10

cond.false.9:                                     ; preds = %cond.end
  %24 = load i32, i32* %temp, align 4, !tbaa !1
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.8
  %cond11 = phi i32 [ %23, %cond.true.8 ], [ %24, %cond.false.9 ]
  store i32 %cond11, i32* %maxb, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.10
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %minb, align 4, !tbaa !1
  %27 = load i32, i32* %maxb, align 4, !tbaa !1
  %cmp12 = icmp eq i32 %26, %27
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.21, %if.then
  %28 = load i32, i32* %i, align 4, !tbaa !1
  %29 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp15 = icmp slt i32 %28, %29
  br i1 %cmp15, label %for.body.17, label %for.end.23

for.body.17:                                      ; preds = %for.cond.14
  %30 = load i32, i32* %temp, align 4, !tbaa !1
  %conv18 = trunc i32 %30 to i8
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom19 = sext i32 %31 to i64
  %32 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx20 = getelementptr inbounds i8, i8* %32, i64 %idxprom19
  store i8 %conv18, i8* %arrayidx20, align 1, !tbaa !7
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.17
  %33 = load i32, i32* %i, align 4, !tbaa !1
  %inc22 = add nsw i32 %33, 1
  store i32 %inc22, i32* %i, align 4, !tbaa !1
  br label %for.cond.14

for.end.23:                                       ; preds = %for.cond.14
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end
  %34 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx24 = getelementptr inbounds i8, i8* %34, i64 0
  %35 = load i8, i8* %arrayidx24, align 1, !tbaa !7
  %conv25 = zext i8 %35 to i32
  store i32 %conv25, i32* %maxs, align 4, !tbaa !1
  store i32 %conv25, i32* %mins, align 4, !tbaa !1
  store i32 1, i32* %i, align 4, !tbaa !1
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.45, %if.end
  %36 = load i32, i32* %i, align 4, !tbaa !1
  %37 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp27 = icmp slt i32 %36, %37
  br i1 %cmp27, label %for.body.29, label %for.end.47

for.body.29:                                      ; preds = %for.cond.26
  %38 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom30 = sext i32 %38 to i64
  %39 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx31 = getelementptr inbounds i8, i8* %39, i64 %idxprom30
  %40 = load i8, i8* %arrayidx31, align 1, !tbaa !7
  %conv32 = zext i8 %40 to i32
  store i32 %conv32, i32* %temp, align 4, !tbaa !1
  %41 = load i32, i32* %minb, align 4, !tbaa !1
  %42 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp33 = icmp slt i32 %41, %42
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %for.body.29
  %43 = load i32, i32* %minb, align 4, !tbaa !1
  br label %cond.end.37

cond.false.36:                                    ; preds = %for.body.29
  %44 = load i32, i32* %temp, align 4, !tbaa !1
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.35
  %cond38 = phi i32 [ %43, %cond.true.35 ], [ %44, %cond.false.36 ]
  store i32 %cond38, i32* %mins, align 4, !tbaa !1
  %45 = load i32, i32* %minb, align 4, !tbaa !1
  %46 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp39 = icmp sgt i32 %45, %46
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.end.37
  %47 = load i32, i32* %minb, align 4, !tbaa !1
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.end.37
  %48 = load i32, i32* %temp, align 4, !tbaa !1
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.41
  %cond44 = phi i32 [ %47, %cond.true.41 ], [ %48, %cond.false.42 ]
  store i32 %cond44, i32* %maxs, align 4, !tbaa !1
  br label %for.inc.45

for.inc.45:                                       ; preds = %cond.end.43
  %49 = load i32, i32* %i, align 4, !tbaa !1
  %inc46 = add nsw i32 %49, 1
  store i32 %inc46, i32* %i, align 4, !tbaa !1
  br label %for.cond.26

for.end.47:                                       ; preds = %for.cond.26
  %50 = load i32, i32* %maxs, align 4, !tbaa !1
  %51 = load i32, i32* %mins, align 4, !tbaa !1
  %sub = sub nsw i32 %50, %51
  %shl = shl i32 %sub, 16
  %52 = load i32, i32* %maxb, align 4, !tbaa !1
  %53 = load i32, i32* %minb, align 4, !tbaa !1
  %sub48 = sub nsw i32 %52, %53
  %div = sdiv i32 %shl, %sub48
  store i32 %div, i32* %scale, align 4, !tbaa !1
  %54 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx49 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx49, align 1, !tbaa !7
  %conv50 = zext i8 %55 to i32
  store i32 %conv50, i32* %y, align 4, !tbaa !1
  store i32 1, i32* %i, align 4, !tbaa !1
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.58, %for.end.47
  %56 = load i32, i32* %i, align 4, !tbaa !1
  %57 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp52 = icmp slt i32 %56, %57
  br i1 %cmp52, label %for.body.54, label %for.end.60

for.body.54:                                      ; preds = %for.cond.51
  %58 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom55 = sext i32 %58 to i64
  %59 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx56 = getelementptr inbounds i8, i8* %59, i64 %idxprom55
  %60 = load i8, i8* %arrayidx56, align 1, !tbaa !7
  %conv57 = zext i8 %60 to i32
  %61 = load i32, i32* %y, align 4, !tbaa !1
  %add = add nsw i32 %61, %conv57
  store i32 %add, i32* %y, align 4, !tbaa !1
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.54
  %62 = load i32, i32* %i, align 4, !tbaa !1
  %inc59 = add nsw i32 %62, 1
  store i32 %inc59, i32* %i, align 4, !tbaa !1
  br label %for.cond.51

for.end.60:                                       ; preds = %for.cond.51
  %63 = load i32, i32* %y, align 4, !tbaa !1
  %64 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %div61 = sdiv i32 %64, 2
  %add62 = add nsw i32 %63, %div61
  %65 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %div63 = sdiv i32 %add62, %65
  store i32 %div63, i32* %y, align 4, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.78, %for.end.60
  %66 = load i32, i32* %i, align 4, !tbaa !1
  %67 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp65 = icmp slt i32 %66, %67
  br i1 %cmp65, label %for.body.67, label %for.end.80

for.body.67:                                      ; preds = %for.cond.64
  %68 = load i32, i32* %y, align 4, !tbaa !1
  %69 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom68 = sext i32 %69 to i64
  %70 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx69 = getelementptr inbounds i8, i8* %70, i64 %idxprom68
  %71 = load i8, i8* %arrayidx69, align 1, !tbaa !7
  %conv70 = zext i8 %71 to i32
  %72 = load i32, i32* %y, align 4, !tbaa !1
  %sub71 = sub nsw i32 %conv70, %72
  %73 = load i32, i32* %scale, align 4, !tbaa !1
  %mul = mul nsw i32 %sub71, %73
  %add72 = add nsw i32 %mul, 32768
  %shr = ashr i32 %add72, 16
  %add73 = add nsw i32 %68, %shr
  %74 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom74 = sext i32 %74 to i64
  %arrayidx75 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 %idxprom74
  store i32 %add73, i32* %arrayidx75, align 4, !tbaa !1
  %75 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom76 = sext i32 %75 to i64
  %arrayidx77 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 %idxprom76
  %76 = load i32, i32* %arrayidx77, align 4, !tbaa !1
  %77 = load i32, i32* %test, align 4, !tbaa !1
  %or = or i32 %77, %76
  store i32 %or, i32* %test, align 4, !tbaa !1
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.67
  %78 = load i32, i32* %i, align 4, !tbaa !1
  %inc79 = add nsw i32 %78, 1
  store i32 %inc79, i32* %i, align 4, !tbaa !1
  br label %for.cond.64

for.end.80:                                       ; preds = %for.cond.64
  %79 = load i32, i32* %test, align 4, !tbaa !1
  %and = and i32 %79, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.81, label %if.end.143

if.then.81:                                       ; preds = %for.end.80
  %80 = bitcast i32* %scalemin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = bitcast i32* %scalemax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = bitcast i32* %min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  %83 = bitcast i32* %max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %arrayidx82 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 0
  %84 = load i32, i32* %arrayidx82, align 4, !tbaa !1
  store i32 %84, i32* %temp, align 4, !tbaa !1
  store i32 %84, i32* %max, align 4, !tbaa !1
  store i32 %84, i32* %min, align 4, !tbaa !1
  store i32 1, i32* %i, align 4, !tbaa !1
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.102, %if.then.81
  %85 = load i32, i32* %i, align 4, !tbaa !1
  %86 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp84 = icmp slt i32 %85, %86
  br i1 %cmp84, label %for.body.86, label %for.end.104

for.body.86:                                      ; preds = %for.cond.83
  %87 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom87 = sext i32 %87 to i64
  %88 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx88 = getelementptr inbounds i8, i8* %88, i64 %idxprom87
  %89 = load i8, i8* %arrayidx88, align 1, !tbaa !7
  %conv89 = zext i8 %89 to i32
  store i32 %conv89, i32* %temp, align 4, !tbaa !1
  %90 = load i32, i32* %min, align 4, !tbaa !1
  %91 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp90 = icmp slt i32 %90, %91
  br i1 %cmp90, label %cond.true.92, label %cond.false.93

cond.true.92:                                     ; preds = %for.body.86
  %92 = load i32, i32* %min, align 4, !tbaa !1
  br label %cond.end.94

cond.false.93:                                    ; preds = %for.body.86
  %93 = load i32, i32* %temp, align 4, !tbaa !1
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.93, %cond.true.92
  %cond95 = phi i32 [ %92, %cond.true.92 ], [ %93, %cond.false.93 ]
  store i32 %cond95, i32* %min, align 4, !tbaa !1
  %94 = load i32, i32* %max, align 4, !tbaa !1
  %95 = load i32, i32* %temp, align 4, !tbaa !1
  %cmp96 = icmp sgt i32 %94, %95
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %cond.end.94
  %96 = load i32, i32* %max, align 4, !tbaa !1
  br label %cond.end.100

cond.false.99:                                    ; preds = %cond.end.94
  %97 = load i32, i32* %temp, align 4, !tbaa !1
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.98
  %cond101 = phi i32 [ %96, %cond.true.98 ], [ %97, %cond.false.99 ]
  store i32 %cond101, i32* %max, align 4, !tbaa !1
  br label %for.inc.102

for.inc.102:                                      ; preds = %cond.end.100
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %inc103 = add nsw i32 %98, 1
  store i32 %inc103, i32* %i, align 4, !tbaa !1
  br label %for.cond.83

for.end.104:                                      ; preds = %for.cond.83
  %99 = load i32, i32* %min, align 4, !tbaa !1
  %cmp105 = icmp slt i32 %99, 0
  br i1 %cmp105, label %if.then.107, label %if.else

if.then.107:                                      ; preds = %for.end.104
  %100 = load i32, i32* %y, align 4, !tbaa !1
  %shl108 = shl i32 %100, 16
  %101 = load i32, i32* %y, align 4, !tbaa !1
  %102 = load i32, i32* %min, align 4, !tbaa !1
  %sub109 = sub nsw i32 %101, %102
  %div110 = sdiv i32 %shl108, %sub109
  store i32 %div110, i32* %scalemin, align 4, !tbaa !1
  br label %if.end.111

if.else:                                          ; preds = %for.end.104
  store i32 65536, i32* %scalemin, align 4, !tbaa !1
  br label %if.end.111

if.end.111:                                       ; preds = %if.else, %if.then.107
  %103 = load i32, i32* %max, align 4, !tbaa !1
  %cmp112 = icmp sgt i32 %103, 255
  br i1 %cmp112, label %if.then.114, label %if.else.119

if.then.114:                                      ; preds = %if.end.111
  %104 = load i32, i32* %y, align 4, !tbaa !1
  %sub115 = sub nsw i32 255, %104
  %shl116 = shl i32 %sub115, 16
  %105 = load i32, i32* %max, align 4, !tbaa !1
  %106 = load i32, i32* %y, align 4, !tbaa !1
  %sub117 = sub nsw i32 %105, %106
  %div118 = sdiv i32 %shl116, %sub117
  store i32 %div118, i32* %scalemax, align 4, !tbaa !1
  br label %if.end.120

if.else.119:                                      ; preds = %if.end.111
  store i32 65536, i32* %scalemax, align 4, !tbaa !1
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.119, %if.then.114
  %107 = load i32, i32* %scalemin, align 4, !tbaa !1
  %108 = load i32, i32* %scalemax, align 4, !tbaa !1
  %cmp121 = icmp slt i32 %107, %108
  br i1 %cmp121, label %cond.true.123, label %cond.false.124

cond.true.123:                                    ; preds = %if.end.120
  %109 = load i32, i32* %scalemin, align 4, !tbaa !1
  br label %cond.end.125

cond.false.124:                                   ; preds = %if.end.120
  %110 = load i32, i32* %scalemax, align 4, !tbaa !1
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.124, %cond.true.123
  %cond126 = phi i32 [ %109, %cond.true.123 ], [ %110, %cond.false.124 ]
  store i32 %cond126, i32* %scale, align 4, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.140, %cond.end.125
  %111 = load i32, i32* %i, align 4, !tbaa !1
  %112 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp128 = icmp slt i32 %111, %112
  br i1 %cmp128, label %for.body.130, label %for.end.142

for.body.130:                                     ; preds = %for.cond.127
  %113 = load i32, i32* %y, align 4, !tbaa !1
  %114 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom131 = sext i32 %114 to i64
  %arrayidx132 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 %idxprom131
  %115 = load i32, i32* %arrayidx132, align 4, !tbaa !1
  %116 = load i32, i32* %y, align 4, !tbaa !1
  %sub133 = sub nsw i32 %115, %116
  %117 = load i32, i32* %scale, align 4, !tbaa !1
  %mul134 = mul nsw i32 %sub133, %117
  %add135 = add nsw i32 %mul134, 32768
  %shr136 = ashr i32 %add135, 16
  %add137 = add nsw i32 %113, %shr136
  %118 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom138 = sext i32 %118 to i64
  %arrayidx139 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 %idxprom138
  store i32 %add137, i32* %arrayidx139, align 4, !tbaa !1
  br label %for.inc.140

for.inc.140:                                      ; preds = %for.body.130
  %119 = load i32, i32* %i, align 4, !tbaa !1
  %inc141 = add nsw i32 %119, 1
  store i32 %inc141, i32* %i, align 4, !tbaa !1
  br label %for.cond.127

for.end.142:                                      ; preds = %for.cond.127
  %120 = bitcast i32* %max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %scalemax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %scalemin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  br label %if.end.143

if.end.143:                                       ; preds = %for.end.142, %for.end.80
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.153, %if.end.143
  %124 = load i32, i32* %i, align 4, !tbaa !1
  %125 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp145 = icmp slt i32 %124, %125
  br i1 %cmp145, label %for.body.147, label %for.end.155

for.body.147:                                     ; preds = %for.cond.144
  %126 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom148 = sext i32 %126 to i64
  %arrayidx149 = getelementptr inbounds [64 x i32], [64 x i32]* %r, i32 0, i64 %idxprom148
  %127 = load i32, i32* %arrayidx149, align 4, !tbaa !1
  %conv150 = trunc i32 %127 to i8
  %128 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom151 = sext i32 %128 to i64
  %129 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx152 = getelementptr inbounds i8, i8* %129, i64 %idxprom151
  store i8 %conv150, i8* %arrayidx152, align 1, !tbaa !7
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.body.147
  %130 = load i32, i32* %i, align 4, !tbaa !1
  %inc154 = add nsw i32 %130, 1
  store i32 %inc154, i32* %i, align 4, !tbaa !1
  br label %for.cond.144

for.end.155:                                      ; preds = %for.cond.144
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.155, %for.end.23
  %131 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %test to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast [64 x i32]* %r to i8*
  call void @llvm.lifetime.end(i64 256, i8* %134) #1
  %135 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %maxs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %mins to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i32* %maxb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i32* %minb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @art_blend_saturation_cmyk_8(i32 %n_chan, i8* %dst, i8* %backdrop, i8* %src) #0 {
entry:
  %n_chan.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %backdrop.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %backdrop, i8** %backdrop.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %2 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %3 = load i8*, i8** %src.addr, align 8, !tbaa !5
  call void @art_blend_saturation_rgb_8(i32 3, i8* %1, i8* %2, i8* %3) #5
  store i32 3, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !1
  %5 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %9 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom1 = sext i32 %9 to i64
  %10 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds i8, i8* %10, i64 %idxprom1
  store i8 %8, i8* %arrayidx2, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @art_blend_pixel_8(i8* %dst, i8* %backdrop, i8* %src, i32 %n_chan, i32 %blend_mode, %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %backdrop.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n_chan.addr = alloca i32, align 4
  %blend_mode.addr = alloca i32, align 4
  %pblend_procs.addr = alloca %struct.pdf14_nonseparable_blending_procs_s*, align 8
  %i = alloca i32, align 4
  %b = alloca i8, align 1
  %s = alloca i8, align 1
  %t = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp340 = alloca [4 x i8], align 1
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %backdrop, i8** %backdrop.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i32 %blend_mode, i32* %blend_mode.addr, align 4, !tbaa !7
  store %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %b) #1
  call void @llvm.lifetime.start(i64 1, i8* %s) #1
  %1 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 16, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.12
    i32 10, label %sw.bb.36
    i32 11, label %sw.bb.69
    i32 9, label %sw.bb.115
    i32 6, label %sw.bb.151
    i32 7, label %sw.bb.192
    i32 4, label %sw.bb.235
    i32 5, label %sw.bb.256
    i32 3, label %sw.bb.281
    i32 8, label %sw.bb.306
    i32 12, label %sw.bb.334
    i32 15, label %sw.bb.335
    i32 14, label %sw.bb.337
    i32 13, label %sw.bb.338
  ]

sw.bb:                                            ; preds = %entry, %entry
  %3 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %4 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %5 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %conv = sext i32 %5 to i64
  %call = call i8* @memcpy(i8* %3, i8* %4, i64 %conv) #4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.1
  %6 = load i32, i32* %i, align 4, !tbaa !1
  %7 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %8 to i64
  %9 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv3 = zext i8 %10 to i32
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom4 = sext i32 %11 to i64
  %12 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 %idxprom4
  %13 = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %conv6 = zext i8 %13 to i32
  %mul = mul i32 %conv3, %conv6
  store i32 %mul, i32* %t, align 4, !tbaa !1
  %14 = load i32, i32* %t, align 4, !tbaa !1
  %add = add i32 %14, 128
  store i32 %add, i32* %t, align 4, !tbaa !1
  %15 = load i32, i32* %t, align 4, !tbaa !1
  %shr = lshr i32 %15, 8
  %16 = load i32, i32* %t, align 4, !tbaa !1
  %add7 = add i32 %16, %shr
  store i32 %add7, i32* %t, align 4, !tbaa !1
  %17 = load i32, i32* %t, align 4, !tbaa !1
  %shr8 = lshr i32 %17, 8
  %conv9 = trunc i32 %shr8 to i8
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom10 = sext i32 %18 to i64
  %19 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds i8, i8* %19, i64 %idxprom10
  store i8 %conv9, i8* %arrayidx11, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.33, %sw.bb.12
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %22 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp14 = icmp slt i32 %21, %22
  br i1 %cmp14, label %for.body.16, label %for.end.35

for.body.16:                                      ; preds = %for.cond.13
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom17 = sext i32 %23 to i64
  %24 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx18 = getelementptr inbounds i8, i8* %24, i64 %idxprom17
  %25 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %25 to i32
  %sub = sub nsw i32 255, %conv19
  %26 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom20 = sext i32 %26 to i64
  %27 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx21 = getelementptr inbounds i8, i8* %27, i64 %idxprom20
  %28 = load i8, i8* %arrayidx21, align 1, !tbaa !7
  %conv22 = zext i8 %28 to i32
  %sub23 = sub nsw i32 255, %conv22
  %mul24 = mul i32 %sub, %sub23
  store i32 %mul24, i32* %t, align 4, !tbaa !1
  %29 = load i32, i32* %t, align 4, !tbaa !1
  %add25 = add i32 %29, 128
  store i32 %add25, i32* %t, align 4, !tbaa !1
  %30 = load i32, i32* %t, align 4, !tbaa !1
  %shr26 = lshr i32 %30, 8
  %31 = load i32, i32* %t, align 4, !tbaa !1
  %add27 = add i32 %31, %shr26
  store i32 %add27, i32* %t, align 4, !tbaa !1
  %32 = load i32, i32* %t, align 4, !tbaa !1
  %shr28 = lshr i32 %32, 8
  %sub29 = sub i32 255, %shr28
  %conv30 = trunc i32 %sub29 to i8
  %33 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom31 = sext i32 %33 to i64
  %34 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx32 = getelementptr inbounds i8, i8* %34, i64 %idxprom31
  store i8 %conv30, i8* %arrayidx32, align 1, !tbaa !7
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.16
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %inc34 = add nsw i32 %35, 1
  store i32 %inc34, i32* %i, align 4, !tbaa !1
  br label %for.cond.13

for.end.35:                                       ; preds = %for.cond.13
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.66, %sw.bb.36
  %36 = load i32, i32* %i, align 4, !tbaa !1
  %37 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp38 = icmp slt i32 %36, %37
  br i1 %cmp38, label %for.body.40, label %for.end.68

for.body.40:                                      ; preds = %for.cond.37
  %38 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom41 = sext i32 %38 to i64
  %39 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx42 = getelementptr inbounds i8, i8* %39, i64 %idxprom41
  %40 = load i8, i8* %arrayidx42, align 1, !tbaa !7
  store i8 %40, i8* %b, align 1, !tbaa !7
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom43 = sext i32 %41 to i64
  %42 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx44 = getelementptr inbounds i8, i8* %42, i64 %idxprom43
  %43 = load i8, i8* %arrayidx44, align 1, !tbaa !7
  store i8 %43, i8* %s, align 1, !tbaa !7
  %44 = load i8, i8* %b, align 1, !tbaa !7
  %conv45 = zext i8 %44 to i32
  %cmp46 = icmp slt i32 %conv45, 128
  br i1 %cmp46, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.40
  %45 = load i8, i8* %b, align 1, !tbaa !7
  %conv48 = zext i8 %45 to i32
  %mul49 = mul i32 2, %conv48
  %46 = load i8, i8* %s, align 1, !tbaa !7
  %conv50 = zext i8 %46 to i32
  %mul51 = mul i32 %mul49, %conv50
  store i32 %mul51, i32* %t, align 4, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %for.body.40
  %47 = load i8, i8* %b, align 1, !tbaa !7
  %conv52 = zext i8 %47 to i32
  %sub53 = sub nsw i32 255, %conv52
  %mul54 = mul i32 2, %sub53
  %48 = load i8, i8* %s, align 1, !tbaa !7
  %conv55 = zext i8 %48 to i32
  %sub56 = sub nsw i32 255, %conv55
  %mul57 = mul i32 %mul54, %sub56
  %sub58 = sub i32 65025, %mul57
  store i32 %sub58, i32* %t, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %49 = load i32, i32* %t, align 4, !tbaa !1
  %add59 = add i32 %49, 128
  store i32 %add59, i32* %t, align 4, !tbaa !1
  %50 = load i32, i32* %t, align 4, !tbaa !1
  %shr60 = lshr i32 %50, 8
  %51 = load i32, i32* %t, align 4, !tbaa !1
  %add61 = add i32 %51, %shr60
  store i32 %add61, i32* %t, align 4, !tbaa !1
  %52 = load i32, i32* %t, align 4, !tbaa !1
  %shr62 = lshr i32 %52, 8
  %conv63 = trunc i32 %shr62 to i8
  %53 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom64 = sext i32 %53 to i64
  %54 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx65 = getelementptr inbounds i8, i8* %54, i64 %idxprom64
  store i8 %conv63, i8* %arrayidx65, align 1, !tbaa !7
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end
  %55 = load i32, i32* %i, align 4, !tbaa !1
  %inc67 = add nsw i32 %55, 1
  store i32 %inc67, i32* %i, align 4, !tbaa !1
  br label %for.cond.37

for.end.68:                                       ; preds = %for.cond.37
  br label %sw.epilog

sw.bb.69:                                         ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.112, %sw.bb.69
  %56 = load i32, i32* %i, align 4, !tbaa !1
  %57 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp71 = icmp slt i32 %56, %57
  br i1 %cmp71, label %for.body.73, label %for.end.114

for.body.73:                                      ; preds = %for.cond.70
  %58 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom74 = sext i32 %58 to i64
  %59 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx75 = getelementptr inbounds i8, i8* %59, i64 %idxprom74
  %60 = load i8, i8* %arrayidx75, align 1, !tbaa !7
  store i8 %60, i8* %b, align 1, !tbaa !7
  %61 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom76 = sext i32 %61 to i64
  %62 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx77 = getelementptr inbounds i8, i8* %62, i64 %idxprom76
  %63 = load i8, i8* %arrayidx77, align 1, !tbaa !7
  store i8 %63, i8* %s, align 1, !tbaa !7
  %64 = load i8, i8* %s, align 1, !tbaa !7
  %conv78 = zext i8 %64 to i32
  %cmp79 = icmp slt i32 %conv78, 128
  br i1 %cmp79, label %if.then.81, label %if.else.94

if.then.81:                                       ; preds = %for.body.73
  %65 = load i8, i8* %s, align 1, !tbaa !7
  %conv82 = zext i8 %65 to i32
  %shl = shl i32 %conv82, 1
  %sub83 = sub nsw i32 255, %shl
  %66 = load i8, i8* %b, align 1, !tbaa !7
  %idxprom84 = zext i8 %66 to i64
  %arrayidx85 = getelementptr inbounds [256 x i32], [256 x i32]* @art_blend_sq_diff_8, i32 0, i64 %idxprom84
  %67 = load i32, i32* %arrayidx85, align 4, !tbaa !1
  %mul86 = mul i32 %sub83, %67
  store i32 %mul86, i32* %t, align 4, !tbaa !1
  %68 = load i32, i32* %t, align 4, !tbaa !1
  %add87 = add i32 %68, 32768
  store i32 %add87, i32* %t, align 4, !tbaa !1
  %69 = load i8, i8* %b, align 1, !tbaa !7
  %conv88 = zext i8 %69 to i32
  %70 = load i32, i32* %t, align 4, !tbaa !1
  %shr89 = lshr i32 %70, 16
  %sub90 = sub i32 %conv88, %shr89
  %conv91 = trunc i32 %sub90 to i8
  %71 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom92 = sext i32 %71 to i64
  %72 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx93 = getelementptr inbounds i8, i8* %72, i64 %idxprom92
  store i8 %conv91, i8* %arrayidx93, align 1, !tbaa !7
  br label %if.end.111

if.else.94:                                       ; preds = %for.body.73
  %73 = load i8, i8* %s, align 1, !tbaa !7
  %conv95 = zext i8 %73 to i32
  %shl96 = shl i32 %conv95, 1
  %sub97 = sub nsw i32 %shl96, 255
  %74 = load i8, i8* %b, align 1, !tbaa !7
  %idxprom98 = zext i8 %74 to i64
  %arrayidx99 = getelementptr inbounds [256 x i8], [256 x i8]* @art_blend_soft_light_8, i32 0, i64 %idxprom98
  %75 = load i8, i8* %arrayidx99, align 1, !tbaa !7
  %conv100 = zext i8 %75 to i32
  %mul101 = mul i32 %sub97, %conv100
  store i32 %mul101, i32* %t, align 4, !tbaa !1
  %76 = load i32, i32* %t, align 4, !tbaa !1
  %add102 = add i32 %76, 128
  store i32 %add102, i32* %t, align 4, !tbaa !1
  %77 = load i32, i32* %t, align 4, !tbaa !1
  %shr103 = lshr i32 %77, 8
  %78 = load i32, i32* %t, align 4, !tbaa !1
  %add104 = add i32 %78, %shr103
  store i32 %add104, i32* %t, align 4, !tbaa !1
  %79 = load i8, i8* %b, align 1, !tbaa !7
  %conv105 = zext i8 %79 to i32
  %80 = load i32, i32* %t, align 4, !tbaa !1
  %shr106 = lshr i32 %80, 8
  %add107 = add i32 %conv105, %shr106
  %conv108 = trunc i32 %add107 to i8
  %81 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom109 = sext i32 %81 to i64
  %82 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx110 = getelementptr inbounds i8, i8* %82, i64 %idxprom109
  store i8 %conv108, i8* %arrayidx110, align 1, !tbaa !7
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.94, %if.then.81
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %83 = load i32, i32* %i, align 4, !tbaa !1
  %inc113 = add nsw i32 %83, 1
  store i32 %inc113, i32* %i, align 4, !tbaa !1
  br label %for.cond.70

for.end.114:                                      ; preds = %for.cond.70
  br label %sw.epilog

sw.bb.115:                                        ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.148, %sw.bb.115
  %84 = load i32, i32* %i, align 4, !tbaa !1
  %85 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp117 = icmp slt i32 %84, %85
  br i1 %cmp117, label %for.body.119, label %for.end.150

for.body.119:                                     ; preds = %for.cond.116
  %86 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom120 = sext i32 %86 to i64
  %87 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx121 = getelementptr inbounds i8, i8* %87, i64 %idxprom120
  %88 = load i8, i8* %arrayidx121, align 1, !tbaa !7
  store i8 %88, i8* %b, align 1, !tbaa !7
  %89 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom122 = sext i32 %89 to i64
  %90 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx123 = getelementptr inbounds i8, i8* %90, i64 %idxprom122
  %91 = load i8, i8* %arrayidx123, align 1, !tbaa !7
  store i8 %91, i8* %s, align 1, !tbaa !7
  %92 = load i8, i8* %s, align 1, !tbaa !7
  %conv124 = zext i8 %92 to i32
  %cmp125 = icmp slt i32 %conv124, 128
  br i1 %cmp125, label %if.then.127, label %if.else.132

if.then.127:                                      ; preds = %for.body.119
  %93 = load i8, i8* %b, align 1, !tbaa !7
  %conv128 = zext i8 %93 to i32
  %mul129 = mul i32 2, %conv128
  %94 = load i8, i8* %s, align 1, !tbaa !7
  %conv130 = zext i8 %94 to i32
  %mul131 = mul i32 %mul129, %conv130
  store i32 %mul131, i32* %t, align 4, !tbaa !1
  br label %if.end.140

if.else.132:                                      ; preds = %for.body.119
  %95 = load i8, i8* %b, align 1, !tbaa !7
  %conv133 = zext i8 %95 to i32
  %sub134 = sub nsw i32 255, %conv133
  %mul135 = mul i32 2, %sub134
  %96 = load i8, i8* %s, align 1, !tbaa !7
  %conv136 = zext i8 %96 to i32
  %sub137 = sub nsw i32 255, %conv136
  %mul138 = mul i32 %mul135, %sub137
  %sub139 = sub i32 65025, %mul138
  store i32 %sub139, i32* %t, align 4, !tbaa !1
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.132, %if.then.127
  %97 = load i32, i32* %t, align 4, !tbaa !1
  %add141 = add i32 %97, 128
  store i32 %add141, i32* %t, align 4, !tbaa !1
  %98 = load i32, i32* %t, align 4, !tbaa !1
  %shr142 = lshr i32 %98, 8
  %99 = load i32, i32* %t, align 4, !tbaa !1
  %add143 = add i32 %99, %shr142
  store i32 %add143, i32* %t, align 4, !tbaa !1
  %100 = load i32, i32* %t, align 4, !tbaa !1
  %shr144 = lshr i32 %100, 8
  %conv145 = trunc i32 %shr144 to i8
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom146 = sext i32 %101 to i64
  %102 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx147 = getelementptr inbounds i8, i8* %102, i64 %idxprom146
  store i8 %conv145, i8* %arrayidx147, align 1, !tbaa !7
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.140
  %103 = load i32, i32* %i, align 4, !tbaa !1
  %inc149 = add nsw i32 %103, 1
  store i32 %inc149, i32* %i, align 4, !tbaa !1
  br label %for.cond.116

for.end.150:                                      ; preds = %for.cond.116
  br label %sw.epilog

sw.bb.151:                                        ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.189, %sw.bb.151
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp153 = icmp slt i32 %104, %105
  br i1 %cmp153, label %for.body.155, label %for.end.191

for.body.155:                                     ; preds = %for.cond.152
  %106 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom156 = sext i32 %106 to i64
  %107 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx157 = getelementptr inbounds i8, i8* %107, i64 %idxprom156
  %108 = load i8, i8* %arrayidx157, align 1, !tbaa !7
  store i8 %108, i8* %b, align 1, !tbaa !7
  %109 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom158 = sext i32 %109 to i64
  %110 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx159 = getelementptr inbounds i8, i8* %110, i64 %idxprom158
  %111 = load i8, i8* %arrayidx159, align 1, !tbaa !7
  %conv160 = zext i8 %111 to i32
  %sub161 = sub nsw i32 255, %conv160
  %conv162 = trunc i32 %sub161 to i8
  store i8 %conv162, i8* %s, align 1, !tbaa !7
  %112 = load i8, i8* %b, align 1, !tbaa !7
  %conv163 = zext i8 %112 to i32
  %cmp164 = icmp eq i32 %conv163, 0
  br i1 %cmp164, label %if.then.166, label %if.else.169

if.then.166:                                      ; preds = %for.body.155
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom167 = sext i32 %113 to i64
  %114 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx168 = getelementptr inbounds i8, i8* %114, i64 %idxprom167
  store i8 0, i8* %arrayidx168, align 1, !tbaa !7
  br label %if.end.188

if.else.169:                                      ; preds = %for.body.155
  %115 = load i8, i8* %b, align 1, !tbaa !7
  %conv170 = zext i8 %115 to i32
  %116 = load i8, i8* %s, align 1, !tbaa !7
  %conv171 = zext i8 %116 to i32
  %cmp172 = icmp sge i32 %conv170, %conv171
  br i1 %cmp172, label %if.then.174, label %if.else.177

if.then.174:                                      ; preds = %if.else.169
  %117 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom175 = sext i32 %117 to i64
  %118 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx176 = getelementptr inbounds i8, i8* %118, i64 %idxprom175
  store i8 -1, i8* %arrayidx176, align 1, !tbaa !7
  br label %if.end.187

if.else.177:                                      ; preds = %if.else.169
  %119 = load i8, i8* %b, align 1, !tbaa !7
  %conv178 = zext i8 %119 to i32
  %mul179 = mul nsw i32 510, %conv178
  %120 = load i8, i8* %s, align 1, !tbaa !7
  %conv180 = zext i8 %120 to i32
  %add181 = add nsw i32 %mul179, %conv180
  %121 = load i8, i8* %s, align 1, !tbaa !7
  %conv182 = zext i8 %121 to i32
  %shl183 = shl i32 %conv182, 1
  %div = sdiv i32 %add181, %shl183
  %conv184 = trunc i32 %div to i8
  %122 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom185 = sext i32 %122 to i64
  %123 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx186 = getelementptr inbounds i8, i8* %123, i64 %idxprom185
  store i8 %conv184, i8* %arrayidx186, align 1, !tbaa !7
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.177, %if.then.174
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.then.166
  br label %for.inc.189

for.inc.189:                                      ; preds = %if.end.188
  %124 = load i32, i32* %i, align 4, !tbaa !1
  %inc190 = add nsw i32 %124, 1
  store i32 %inc190, i32* %i, align 4, !tbaa !1
  br label %for.cond.152

for.end.191:                                      ; preds = %for.cond.152
  br label %sw.epilog

sw.bb.192:                                        ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.232, %sw.bb.192
  %125 = load i32, i32* %i, align 4, !tbaa !1
  %126 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp194 = icmp slt i32 %125, %126
  br i1 %cmp194, label %for.body.196, label %for.end.234

for.body.196:                                     ; preds = %for.cond.193
  %127 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom197 = sext i32 %127 to i64
  %128 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx198 = getelementptr inbounds i8, i8* %128, i64 %idxprom197
  %129 = load i8, i8* %arrayidx198, align 1, !tbaa !7
  %conv199 = zext i8 %129 to i32
  %sub200 = sub nsw i32 255, %conv199
  %conv201 = trunc i32 %sub200 to i8
  store i8 %conv201, i8* %b, align 1, !tbaa !7
  %130 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom202 = sext i32 %130 to i64
  %131 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx203 = getelementptr inbounds i8, i8* %131, i64 %idxprom202
  %132 = load i8, i8* %arrayidx203, align 1, !tbaa !7
  store i8 %132, i8* %s, align 1, !tbaa !7
  %133 = load i8, i8* %b, align 1, !tbaa !7
  %conv204 = zext i8 %133 to i32
  %cmp205 = icmp eq i32 %conv204, 0
  br i1 %cmp205, label %if.then.207, label %if.else.210

if.then.207:                                      ; preds = %for.body.196
  %134 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom208 = sext i32 %134 to i64
  %135 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx209 = getelementptr inbounds i8, i8* %135, i64 %idxprom208
  store i8 -1, i8* %arrayidx209, align 1, !tbaa !7
  br label %if.end.231

if.else.210:                                      ; preds = %for.body.196
  %136 = load i8, i8* %b, align 1, !tbaa !7
  %conv211 = zext i8 %136 to i32
  %137 = load i8, i8* %s, align 1, !tbaa !7
  %conv212 = zext i8 %137 to i32
  %cmp213 = icmp sge i32 %conv211, %conv212
  br i1 %cmp213, label %if.then.215, label %if.else.218

if.then.215:                                      ; preds = %if.else.210
  %138 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom216 = sext i32 %138 to i64
  %139 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx217 = getelementptr inbounds i8, i8* %139, i64 %idxprom216
  store i8 0, i8* %arrayidx217, align 1, !tbaa !7
  br label %if.end.230

if.else.218:                                      ; preds = %if.else.210
  %140 = load i8, i8* %b, align 1, !tbaa !7
  %conv219 = zext i8 %140 to i32
  %mul220 = mul nsw i32 510, %conv219
  %141 = load i8, i8* %s, align 1, !tbaa !7
  %conv221 = zext i8 %141 to i32
  %add222 = add nsw i32 %mul220, %conv221
  %142 = load i8, i8* %s, align 1, !tbaa !7
  %conv223 = zext i8 %142 to i32
  %shl224 = shl i32 %conv223, 1
  %div225 = sdiv i32 %add222, %shl224
  %sub226 = sub nsw i32 255, %div225
  %conv227 = trunc i32 %sub226 to i8
  %143 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom228 = sext i32 %143 to i64
  %144 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx229 = getelementptr inbounds i8, i8* %144, i64 %idxprom228
  store i8 %conv227, i8* %arrayidx229, align 1, !tbaa !7
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.218, %if.then.215
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.then.207
  br label %for.inc.232

for.inc.232:                                      ; preds = %if.end.231
  %145 = load i32, i32* %i, align 4, !tbaa !1
  %inc233 = add nsw i32 %145, 1
  store i32 %inc233, i32* %i, align 4, !tbaa !1
  br label %for.cond.193

for.end.234:                                      ; preds = %for.cond.193
  br label %sw.epilog

sw.bb.235:                                        ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.236

for.cond.236:                                     ; preds = %for.inc.253, %sw.bb.235
  %146 = load i32, i32* %i, align 4, !tbaa !1
  %147 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp237 = icmp slt i32 %146, %147
  br i1 %cmp237, label %for.body.239, label %for.end.255

for.body.239:                                     ; preds = %for.cond.236
  %148 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom240 = sext i32 %148 to i64
  %149 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx241 = getelementptr inbounds i8, i8* %149, i64 %idxprom240
  %150 = load i8, i8* %arrayidx241, align 1, !tbaa !7
  store i8 %150, i8* %b, align 1, !tbaa !7
  %151 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom242 = sext i32 %151 to i64
  %152 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx243 = getelementptr inbounds i8, i8* %152, i64 %idxprom242
  %153 = load i8, i8* %arrayidx243, align 1, !tbaa !7
  store i8 %153, i8* %s, align 1, !tbaa !7
  %154 = load i8, i8* %b, align 1, !tbaa !7
  %conv244 = zext i8 %154 to i32
  %155 = load i8, i8* %s, align 1, !tbaa !7
  %conv245 = zext i8 %155 to i32
  %cmp246 = icmp slt i32 %conv244, %conv245
  br i1 %cmp246, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.239
  %156 = load i8, i8* %b, align 1, !tbaa !7
  %conv248 = zext i8 %156 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.239
  %157 = load i8, i8* %s, align 1, !tbaa !7
  %conv249 = zext i8 %157 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv248, %cond.true ], [ %conv249, %cond.false ]
  %conv250 = trunc i32 %cond to i8
  %158 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom251 = sext i32 %158 to i64
  %159 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx252 = getelementptr inbounds i8, i8* %159, i64 %idxprom251
  store i8 %conv250, i8* %arrayidx252, align 1, !tbaa !7
  br label %for.inc.253

for.inc.253:                                      ; preds = %cond.end
  %160 = load i32, i32* %i, align 4, !tbaa !1
  %inc254 = add nsw i32 %160, 1
  store i32 %inc254, i32* %i, align 4, !tbaa !1
  br label %for.cond.236

for.end.255:                                      ; preds = %for.cond.236
  br label %sw.epilog

sw.bb.256:                                        ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.278, %sw.bb.256
  %161 = load i32, i32* %i, align 4, !tbaa !1
  %162 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp258 = icmp slt i32 %161, %162
  br i1 %cmp258, label %for.body.260, label %for.end.280

for.body.260:                                     ; preds = %for.cond.257
  %163 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom261 = sext i32 %163 to i64
  %164 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx262 = getelementptr inbounds i8, i8* %164, i64 %idxprom261
  %165 = load i8, i8* %arrayidx262, align 1, !tbaa !7
  store i8 %165, i8* %b, align 1, !tbaa !7
  %166 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom263 = sext i32 %166 to i64
  %167 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx264 = getelementptr inbounds i8, i8* %167, i64 %idxprom263
  %168 = load i8, i8* %arrayidx264, align 1, !tbaa !7
  store i8 %168, i8* %s, align 1, !tbaa !7
  %169 = load i8, i8* %b, align 1, !tbaa !7
  %conv265 = zext i8 %169 to i32
  %170 = load i8, i8* %s, align 1, !tbaa !7
  %conv266 = zext i8 %170 to i32
  %cmp267 = icmp sgt i32 %conv265, %conv266
  br i1 %cmp267, label %cond.true.269, label %cond.false.271

cond.true.269:                                    ; preds = %for.body.260
  %171 = load i8, i8* %b, align 1, !tbaa !7
  %conv270 = zext i8 %171 to i32
  br label %cond.end.273

cond.false.271:                                   ; preds = %for.body.260
  %172 = load i8, i8* %s, align 1, !tbaa !7
  %conv272 = zext i8 %172 to i32
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.false.271, %cond.true.269
  %cond274 = phi i32 [ %conv270, %cond.true.269 ], [ %conv272, %cond.false.271 ]
  %conv275 = trunc i32 %cond274 to i8
  %173 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom276 = sext i32 %173 to i64
  %174 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx277 = getelementptr inbounds i8, i8* %174, i64 %idxprom276
  store i8 %conv275, i8* %arrayidx277, align 1, !tbaa !7
  br label %for.inc.278

for.inc.278:                                      ; preds = %cond.end.273
  %175 = load i32, i32* %i, align 4, !tbaa !1
  %inc279 = add nsw i32 %175, 1
  store i32 %inc279, i32* %i, align 4, !tbaa !1
  br label %for.cond.257

for.end.280:                                      ; preds = %for.cond.257
  br label %sw.epilog

sw.bb.281:                                        ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.inc.303, %sw.bb.281
  %176 = load i32, i32* %i, align 4, !tbaa !1
  %177 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp283 = icmp slt i32 %176, %177
  br i1 %cmp283, label %for.body.285, label %for.end.305

for.body.285:                                     ; preds = %for.cond.282
  %178 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %178) #1
  %179 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom286 = sext i32 %179 to i64
  %180 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx287 = getelementptr inbounds i8, i8* %180, i64 %idxprom286
  %181 = load i8, i8* %arrayidx287, align 1, !tbaa !7
  %conv288 = zext i8 %181 to i32
  %182 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom289 = sext i32 %182 to i64
  %183 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx290 = getelementptr inbounds i8, i8* %183, i64 %idxprom289
  %184 = load i8, i8* %arrayidx290, align 1, !tbaa !7
  %conv291 = zext i8 %184 to i32
  %sub292 = sub nsw i32 %conv288, %conv291
  store i32 %sub292, i32* %tmp, align 4, !tbaa !1
  %185 = load i32, i32* %tmp, align 4, !tbaa !1
  %cmp293 = icmp slt i32 %185, 0
  br i1 %cmp293, label %cond.true.295, label %cond.false.297

cond.true.295:                                    ; preds = %for.body.285
  %186 = load i32, i32* %tmp, align 4, !tbaa !1
  %sub296 = sub nsw i32 0, %186
  br label %cond.end.298

cond.false.297:                                   ; preds = %for.body.285
  %187 = load i32, i32* %tmp, align 4, !tbaa !1
  br label %cond.end.298

cond.end.298:                                     ; preds = %cond.false.297, %cond.true.295
  %cond299 = phi i32 [ %sub296, %cond.true.295 ], [ %187, %cond.false.297 ]
  %conv300 = trunc i32 %cond299 to i8
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom301 = sext i32 %188 to i64
  %189 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx302 = getelementptr inbounds i8, i8* %189, i64 %idxprom301
  store i8 %conv300, i8* %arrayidx302, align 1, !tbaa !7
  %190 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  br label %for.inc.303

for.inc.303:                                      ; preds = %cond.end.298
  %191 = load i32, i32* %i, align 4, !tbaa !1
  %inc304 = add nsw i32 %191, 1
  store i32 %inc304, i32* %i, align 4, !tbaa !1
  br label %for.cond.282

for.end.305:                                      ; preds = %for.cond.282
  br label %sw.epilog

sw.bb.306:                                        ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.307

for.cond.307:                                     ; preds = %for.inc.331, %sw.bb.306
  %192 = load i32, i32* %i, align 4, !tbaa !1
  %193 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp308 = icmp slt i32 %192, %193
  br i1 %cmp308, label %for.body.310, label %for.end.333

for.body.310:                                     ; preds = %for.cond.307
  %194 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom311 = sext i32 %194 to i64
  %195 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx312 = getelementptr inbounds i8, i8* %195, i64 %idxprom311
  %196 = load i8, i8* %arrayidx312, align 1, !tbaa !7
  store i8 %196, i8* %b, align 1, !tbaa !7
  %197 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom313 = sext i32 %197 to i64
  %198 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx314 = getelementptr inbounds i8, i8* %198, i64 %idxprom313
  %199 = load i8, i8* %arrayidx314, align 1, !tbaa !7
  store i8 %199, i8* %s, align 1, !tbaa !7
  %200 = load i8, i8* %b, align 1, !tbaa !7
  %conv315 = zext i8 %200 to i32
  %sub316 = sub nsw i32 255, %conv315
  %201 = load i8, i8* %s, align 1, !tbaa !7
  %conv317 = zext i8 %201 to i32
  %mul318 = mul i32 %sub316, %conv317
  %202 = load i8, i8* %b, align 1, !tbaa !7
  %conv319 = zext i8 %202 to i32
  %203 = load i8, i8* %s, align 1, !tbaa !7
  %conv320 = zext i8 %203 to i32
  %sub321 = sub nsw i32 255, %conv320
  %mul322 = mul i32 %conv319, %sub321
  %add323 = add i32 %mul318, %mul322
  store i32 %add323, i32* %t, align 4, !tbaa !1
  %204 = load i32, i32* %t, align 4, !tbaa !1
  %add324 = add i32 %204, 128
  store i32 %add324, i32* %t, align 4, !tbaa !1
  %205 = load i32, i32* %t, align 4, !tbaa !1
  %shr325 = lshr i32 %205, 8
  %206 = load i32, i32* %t, align 4, !tbaa !1
  %add326 = add i32 %206, %shr325
  store i32 %add326, i32* %t, align 4, !tbaa !1
  %207 = load i32, i32* %t, align 4, !tbaa !1
  %shr327 = lshr i32 %207, 8
  %conv328 = trunc i32 %shr327 to i8
  %208 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom329 = sext i32 %208 to i64
  %209 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx330 = getelementptr inbounds i8, i8* %209, i64 %idxprom329
  store i8 %conv328, i8* %arrayidx330, align 1, !tbaa !7
  br label %for.inc.331

for.inc.331:                                      ; preds = %for.body.310
  %210 = load i32, i32* %i, align 4, !tbaa !1
  %inc332 = add nsw i32 %210, 1
  store i32 %inc332, i32* %i, align 4, !tbaa !1
  br label %for.cond.307

for.end.333:                                      ; preds = %for.cond.307
  br label %sw.epilog

sw.bb.334:                                        ; preds = %entry
  %211 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  %blend_luminosity = getelementptr inbounds %struct.pdf14_nonseparable_blending_procs_s, %struct.pdf14_nonseparable_blending_procs_s* %211, i32 0, i32 0
  %212 = load void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)** %blend_luminosity, align 8, !tbaa !15
  %213 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %214 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %215 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %216 = load i8*, i8** %src.addr, align 8, !tbaa !5
  call void %212(i32 %213, i8* %214, i8* %215, i8* %216) #5
  br label %sw.epilog

sw.bb.335:                                        ; preds = %entry
  %217 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  %blend_luminosity336 = getelementptr inbounds %struct.pdf14_nonseparable_blending_procs_s, %struct.pdf14_nonseparable_blending_procs_s* %217, i32 0, i32 0
  %218 = load void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)** %blend_luminosity336, align 8, !tbaa !15
  %219 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %220 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %221 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %222 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  call void %218(i32 %219, i8* %220, i8* %221, i8* %222) #5
  br label %sw.epilog

sw.bb.337:                                        ; preds = %entry
  %223 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  %blend_saturation = getelementptr inbounds %struct.pdf14_nonseparable_blending_procs_s, %struct.pdf14_nonseparable_blending_procs_s* %223, i32 0, i32 1
  %224 = load void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)** %blend_saturation, align 8, !tbaa !17
  %225 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %226 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %227 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %228 = load i8*, i8** %src.addr, align 8, !tbaa !5
  call void %224(i32 %225, i8* %226, i8* %227, i8* %228) #5
  br label %sw.epilog

sw.bb.338:                                        ; preds = %entry
  %229 = bitcast [4 x i8]* %tmp340 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %229) #1
  %230 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  %blend_luminosity341 = getelementptr inbounds %struct.pdf14_nonseparable_blending_procs_s, %struct.pdf14_nonseparable_blending_procs_s* %230, i32 0, i32 0
  %231 = load void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)** %blend_luminosity341, align 8, !tbaa !15
  %232 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %tmp340, i32 0, i32 0
  %233 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %234 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  call void %231(i32 %232, i8* %arraydecay, i8* %233, i8* %234) #5
  %235 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  %blend_saturation342 = getelementptr inbounds %struct.pdf14_nonseparable_blending_procs_s, %struct.pdf14_nonseparable_blending_procs_s* %235, i32 0, i32 1
  %236 = load void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)** %blend_saturation342, align 8, !tbaa !17
  %237 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %238 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arraydecay343 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp340, i32 0, i32 0
  %239 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  call void %236(i32 %237, i8* %238, i8* %arraydecay343, i8* %239) #5
  %240 = bitcast [4 x i8]* %tmp340 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 732) #5
  %241 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  %call344 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 %241) #5
  %242 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %243 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %244 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %conv345 = sext i32 %244 to i64
  %call346 = call i8* @memcpy(i8* %242, i8* %243, i64 %conv345) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.338, %sw.bb.337, %sw.bb.335, %sw.bb.334, %for.end.333, %for.end.305, %for.end.280, %for.end.255, %for.end.234, %for.end.191, %for.end.150, %for.end.114, %for.end.68, %for.end.35, %for.end, %sw.bb
  %245 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  call void @llvm.lifetime.end(i64 1, i8* %s) #1
  call void @llvm.lifetime.end(i64 1, i8* %b) #1
  %246 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  ret void
}

declare void @dprintf_file_and_line(i8*, i32) #3

declare i32 @errprintf_nomem(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @art_blend_pixel(i16* %dst, i16* %backdrop, i16* %src, i32 %n_chan, i32 %blend_mode) #0 {
entry:
  %dst.addr = alloca i16*, align 8
  %backdrop.addr = alloca i16*, align 8
  %src.addr = alloca i16*, align 8
  %n_chan.addr = alloca i32, align 4
  %blend_mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca i16, align 2
  %s = alloca i16, align 2
  %t = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i16* %dst, i16** %dst.addr, align 8, !tbaa !5
  store i16* %backdrop, i16** %backdrop.addr, align 8, !tbaa !5
  store i16* %src, i16** %src.addr, align 8, !tbaa !5
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i32 %blend_mode, i32* %blend_mode.addr, align 4, !tbaa !7
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  %2 = bitcast i16* %s to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #1
  %3 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 16, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.13
    i32 10, label %sw.bb.37
    i32 9, label %sw.bb.70
    i32 6, label %sw.bb.106
    i32 7, label %sw.bb.143
    i32 4, label %sw.bb.186
    i32 5, label %sw.bb.207
    i32 3, label %sw.bb.232
    i32 8, label %sw.bb.257
  ]

sw.bb:                                            ; preds = %entry, %entry
  %5 = load i16*, i16** %dst.addr, align 8, !tbaa !5
  %6 = bitcast i16* %5 to i8*
  %7 = load i16*, i16** %src.addr, align 8, !tbaa !5
  %8 = bitcast i16* %7 to i8*
  %9 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %conv = sext i32 %9 to i64
  %mul = mul i64 %conv, 2
  %call = call i8* @memcpy(i8* %6, i8* %8, i64 %mul) #4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.1
  %10 = load i32, i32* %i, align 4, !tbaa !1
  %11 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %12 to i64
  %13 = load i16*, i16** %backdrop.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i16, i16* %13, i64 %idxprom
  %14 = load i16, i16* %arrayidx, align 2, !tbaa !18
  %conv3 = zext i16 %14 to i32
  %15 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom4 = sext i32 %15 to i64
  %16 = load i16*, i16** %src.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds i16, i16* %16, i64 %idxprom4
  %17 = load i16, i16* %arrayidx5, align 2, !tbaa !18
  %conv6 = zext i16 %17 to i32
  %mul7 = mul i32 %conv3, %conv6
  store i32 %mul7, i32* %t, align 4, !tbaa !1
  %18 = load i32, i32* %t, align 4, !tbaa !1
  %add = add i32 %18, 32768
  store i32 %add, i32* %t, align 4, !tbaa !1
  %19 = load i32, i32* %t, align 4, !tbaa !1
  %shr = lshr i32 %19, 16
  %20 = load i32, i32* %t, align 4, !tbaa !1
  %add8 = add i32 %20, %shr
  store i32 %add8, i32* %t, align 4, !tbaa !1
  %21 = load i32, i32* %t, align 4, !tbaa !1
  %shr9 = lshr i32 %21, 16
  %conv10 = trunc i32 %shr9 to i16
  %22 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom11 = sext i32 %22 to i64
  %23 = load i16*, i16** %dst.addr, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds i16, i16* %23, i64 %idxprom11
  store i16 %conv10, i16* %arrayidx12, align 2, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.34, %sw.bb.13
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %26 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp15 = icmp slt i32 %25, %26
  br i1 %cmp15, label %for.body.17, label %for.end.36

for.body.17:                                      ; preds = %for.cond.14
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom18 = sext i32 %27 to i64
  %28 = load i16*, i16** %backdrop.addr, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds i16, i16* %28, i64 %idxprom18
  %29 = load i16, i16* %arrayidx19, align 2, !tbaa !18
  %conv20 = zext i16 %29 to i32
  %sub = sub nsw i32 65535, %conv20
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom21 = sext i32 %30 to i64
  %31 = load i16*, i16** %src.addr, align 8, !tbaa !5
  %arrayidx22 = getelementptr inbounds i16, i16* %31, i64 %idxprom21
  %32 = load i16, i16* %arrayidx22, align 2, !tbaa !18
  %conv23 = zext i16 %32 to i32
  %sub24 = sub nsw i32 65535, %conv23
  %mul25 = mul i32 %sub, %sub24
  store i32 %mul25, i32* %t, align 4, !tbaa !1
  %33 = load i32, i32* %t, align 4, !tbaa !1
  %add26 = add i32 %33, 32768
  store i32 %add26, i32* %t, align 4, !tbaa !1
  %34 = load i32, i32* %t, align 4, !tbaa !1
  %shr27 = lshr i32 %34, 16
  %35 = load i32, i32* %t, align 4, !tbaa !1
  %add28 = add i32 %35, %shr27
  store i32 %add28, i32* %t, align 4, !tbaa !1
  %36 = load i32, i32* %t, align 4, !tbaa !1
  %shr29 = lshr i32 %36, 16
  %sub30 = sub i32 65535, %shr29
  %conv31 = trunc i32 %sub30 to i16
  %37 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom32 = sext i32 %37 to i64
  %38 = load i16*, i16** %dst.addr, align 8, !tbaa !5
  %arrayidx33 = getelementptr inbounds i16, i16* %38, i64 %idxprom32
  store i16 %conv31, i16* %arrayidx33, align 2, !tbaa !18
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.17
  %39 = load i32, i32* %i, align 4, !tbaa !1
  %inc35 = add nsw i32 %39, 1
  store i32 %inc35, i32* %i, align 4, !tbaa !1
  br label %for.cond.14

for.end.36:                                       ; preds = %for.cond.14
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.67, %sw.bb.37
  %40 = load i32, i32* %i, align 4, !tbaa !1
  %41 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp39 = icmp slt i32 %40, %41
  br i1 %cmp39, label %for.body.41, label %for.end.69

for.body.41:                                      ; preds = %for.cond.38
  %42 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom42 = sext i32 %42 to i64
  %43 = load i16*, i16** %backdrop.addr, align 8, !tbaa !5
  %arrayidx43 = getelementptr inbounds i16, i16* %43, i64 %idxprom42
  %44 = load i16, i16* %arrayidx43, align 2, !tbaa !18
  store i16 %44, i16* %b, align 2, !tbaa !18
  %45 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom44 = sext i32 %45 to i64
  %46 = load i16*, i16** %src.addr, align 8, !tbaa !5
  %arrayidx45 = getelementptr inbounds i16, i16* %46, i64 %idxprom44
  %47 = load i16, i16* %arrayidx45, align 2, !tbaa !18
  store i16 %47, i16* %s, align 2, !tbaa !18
  %48 = load i16, i16* %b, align 2, !tbaa !18
  %conv46 = zext i16 %48 to i32
  %cmp47 = icmp slt i32 %conv46, 32768
  br i1 %cmp47, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.41
  %49 = load i16, i16* %b, align 2, !tbaa !18
  %conv49 = zext i16 %49 to i32
  %mul50 = mul i32 2, %conv49
  %50 = load i16, i16* %s, align 2, !tbaa !18
  %conv51 = zext i16 %50 to i32
  %mul52 = mul i32 %mul50, %conv51
  store i32 %mul52, i32* %t, align 4, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %for.body.41
  %51 = load i16, i16* %b, align 2, !tbaa !18
  %conv53 = zext i16 %51 to i32
  %sub54 = sub nsw i32 65535, %conv53
  %mul55 = mul i32 2, %sub54
  %52 = load i16, i16* %s, align 2, !tbaa !18
  %conv56 = zext i16 %52 to i32
  %sub57 = sub nsw i32 65535, %conv56
  %mul58 = mul i32 %mul55, %sub57
  %sub59 = sub i32 -131071, %mul58
  store i32 %sub59, i32* %t, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %53 = load i32, i32* %t, align 4, !tbaa !1
  %add60 = add i32 %53, 32768
  store i32 %add60, i32* %t, align 4, !tbaa !1
  %54 = load i32, i32* %t, align 4, !tbaa !1
  %shr61 = lshr i32 %54, 16
  %55 = load i32, i32* %t, align 4, !tbaa !1
  %add62 = add i32 %55, %shr61
  store i32 %add62, i32* %t, align 4, !tbaa !1
  %56 = load i32, i32* %t, align 4, !tbaa !1
  %shr63 = lshr i32 %56, 16
  %conv64 = trunc i32 %shr63 to i16
  %57 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom65 = sext i32 %57 to i64
  %58 = load i16*, i16** %dst.addr, align 8, !tbaa !5
  %arrayidx66 = getelementptr inbounds i16, i16* %58, i64 %idxprom65
  store i16 %conv64, i16* %arrayidx66, align 2, !tbaa !18
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end
  %59 = load i32, i32* %i, align 4, !tbaa !1
  %inc68 = add nsw i32 %59, 1
  store i32 %inc68, i32* %i, align 4, !tbaa !1
  br label %for.cond.38

for.end.69:                                       ; preds = %for.cond.38
  br label %sw.epilog

sw.bb.70:                                         ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.103, %sw.bb.70
  %60 = load i32, i32* %i, align 4, !tbaa !1
  %61 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp72 = icmp slt i32 %60, %61
  br i1 %cmp72, label %for.body.74, label %for.end.105

for.body.74:                                      ; preds = %for.cond.71
  %62 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom75 = sext i32 %62 to i64
  %63 = load i16*, i16** %backdrop.addr, align 8, !tbaa !5
  %arrayidx76 = getelementptr inbounds i16, i16* %63, i64 %idxprom75
  %64 = load i16, i16* %arrayidx76, align 2, !tbaa !18
  store i16 %64, i16* %b, align 2, !tbaa !18
  %65 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom77 = sext i32 %65 to i64
  %66 = load i16*, i16** %src.addr, align 8, !tbaa !5
  %arrayidx78 = getelementptr inbounds i16, i16* %66, i64 %idxprom77
  %67 = load i16, i16* %arrayidx78, align 2, !tbaa !18
  store i16 %67, i16* %s, align 2, !tbaa !18
  %68 = load i16, i16* %s, align 2, !tbaa !18
  %conv79 = zext i16 %68 to i32
  %cmp80 = icmp slt i32 %conv79, 32768
  br i1 %cmp80, label %if.then.82, label %if.else.87

if.then.82:                                       ; preds = %for.body.74
  %69 = load i16, i16* %b, align 2, !tbaa !18
  %conv83 = zext i16 %69 to i32
  %mul84 = mul i32 2, %conv83
  %70 = load i16, i16* %s, align 2, !tbaa !18
  %conv85 = zext i16 %70 to i32
  %mul86 = mul i32 %mul84, %conv85
  store i32 %mul86, i32* %t, align 4, !tbaa !1
  br label %if.end.95

if.else.87:                                       ; preds = %for.body.74
  %71 = load i16, i16* %b, align 2, !tbaa !18
  %conv88 = zext i16 %71 to i32
  %sub89 = sub nsw i32 65535, %conv88
  %mul90 = mul i32 2, %sub89
  %72 = load i16, i16* %s, align 2, !tbaa !18
  %conv91 = zext i16 %72 to i32
  %sub92 = sub nsw i32 65535, %conv91
  %mul93 = mul i32 %mul90, %sub92
  %sub94 = sub i32 -131071, %mul93
  store i32 %sub94, i32* %t, align 4, !tbaa !1
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.87, %if.then.82
  %73 = load i32, i32* %t, align 4, !tbaa !1
  %add96 = add i32 %73, 32768
  store i32 %add96, i32* %t, align 4, !tbaa !1
  %74 = load i32, i32* %t, align 4, !tbaa !1
  %shr97 = lshr i32 %74, 16
  %75 = load i32, i32* %t, align 4, !tbaa !1
  %add98 = add i32 %75, %shr97
  store i32 %add98, i32* %t, align 4, !tbaa !1
  %76 = load i32, i32* %t, align 4, !tbaa !1
  %shr99 = lshr i32 %76, 16
  %conv100 = trunc i32 %shr99 to i16
  %77 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom101 = sext i32 %77 to i64
  %78 = load i16*, i16** %dst.addr, align 8, !tbaa !5
  %arrayidx102 = getelementptr inbounds i16, i16* %78, i64 %idxprom101
  store i16 %conv100, i16* %arrayidx102, align 2, !tbaa !18
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.95
  %79 = load i32, i32* %i, align 4, !tbaa !1
  %inc104 = add nsw i32 %79, 1
  store i32 %inc104, i32* %i, align 4, !tbaa !1
  br label %for.cond.71

for.end.105:                                      ; preds = %for.cond.71
  br label %sw.epilog

sw.bb.106:                                        ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.140, %sw.bb.106
  %80 = load i32, i32* %i, align 4, !tbaa !1
  %81 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp108 = icmp slt i32 %80, %81
  br i1 %cmp108, label %for.body.110, label %for.end.142

for.body.110:                                     ; preds = %for.cond.107
  %82 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom111 = sext i32 %82 to i64
  %83 = load i16*, i16** %backdrop.addr, align 8, !tbaa !5
  %arrayidx112 = getelementptr inbounds i16, i16* %83, i64 %idxprom111
  %84 = load i16, i16* %arrayidx112, align 2, !tbaa !18
  store i16 %84, i16* %b, align 2, !tbaa !18
  %85 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom113 = sext i32 %85 to i64
  %86 = load i16*, i16** %src.addr, align 8, !tbaa !5
  %arrayidx114 = getelementptr inbounds i16, i16* %86, i64 %idxprom113
  %87 = load i16, i16* %arrayidx114, align 2, !tbaa !18
  store i16 %87, i16* %s, align 2, !tbaa !18
  %88 = load i16, i16* %b, align 2, !tbaa !18
  %conv115 = zext i16 %88 to i32
  %cmp116 = icmp eq i32 %conv115, 0
  br i1 %cmp116, label %if.then.118, label %if.else.121

if.then.118:                                      ; preds = %for.body.110
  %89 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom119 = sext i32 %89 to i64
  %90 = load i16*, i16** %dst.addr, align 8, !tbaa !5
  %arrayidx120 = getelementptr inbounds i16, i16* %90, i64 %idxprom119
  store i16 0, i16* %arrayidx120, align 2, !tbaa !18
  br label %if.end.139

if.else.121:                                      ; preds = %for.body.110
  %91 = load i16, i16* %s, align 2, !tbaa !18
  %conv122 = zext i16 %91 to i32
  %92 = load i16, i16* %b, align 2, !tbaa !18
  %conv123 = zext i16 %92 to i32
  %cmp124 = icmp sge i32 %conv122, %conv123
  br i1 %cmp124, label %if.then.126, label %if.else.129

if.then.126:                                      ; preds = %if.else.121
  %93 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom127 = sext i32 %93 to i64
  %94 = load i16*, i16** %dst.addr, align 8, !tbaa !5
  %arrayidx128 = getelementptr inbounds i16, i16* %94, i64 %idxprom127
  store i16 -1, i16* %arrayidx128, align 2, !tbaa !18
  br label %if.end.138

if.else.129:                                      ; preds = %if.else.121
  %95 = load i16, i16* %s, align 2, !tbaa !18
  %conv130 = zext i16 %95 to i32
  %mul131 = mul nsw i32 131070, %conv130
  %96 = load i16, i16* %b, align 2, !tbaa !18
  %conv132 = zext i16 %96 to i32
  %add133 = add nsw i32 %mul131, %conv132
  %97 = load i16, i16* %b, align 2, !tbaa !18
  %conv134 = zext i16 %97 to i32
  %shl = shl i32 %conv134, 1
  %div = sdiv i32 %add133, %shl
  %conv135 = trunc i32 %div to i16
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom136 = sext i32 %98 to i64
  %99 = load i16*, i16** %dst.addr, align 8, !tbaa !5
  %arrayidx137 = getelementptr inbounds i16, i16* %99, i64 %idxprom136
  store i16 %conv135, i16* %arrayidx137, align 2, !tbaa !18
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.129, %if.then.126
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.118
  br label %for.inc.140

for.inc.140:                                      ; preds = %if.end.139
  %100 = load i32, i32* %i, align 4, !tbaa !1
  %inc141 = add nsw i32 %100, 1
  store i32 %inc141, i32* %i, align 4, !tbaa !1
  br label %for.cond.107

for.end.142:                                      ; preds = %for.cond.107
  br label %sw.epilog

sw.bb.143:                                        ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.183, %sw.bb.143
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp145 = icmp slt i32 %101, %102
  br i1 %cmp145, label %for.body.147, label %for.end.185

for.body.147:                                     ; preds = %for.cond.144
  %103 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom148 = sext i32 %103 to i64
  %104 = load i16*, i16** %backdrop.addr, align 8, !tbaa !5
  %arrayidx149 = getelementptr inbounds i16, i16* %104, i64 %idxprom148
  %105 = load i16, i16* %arrayidx149, align 2, !tbaa !18
  %conv150 = zext i16 %105 to i32
  %sub151 = sub nsw i32 65535, %conv150
  %conv152 = trunc i32 %sub151 to i16
  store i16 %conv152, i16* %b, align 2, !tbaa !18
  %106 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom153 = sext i32 %106 to i64
  %107 = load i16*, i16** %src.addr, align 8, !tbaa !5
  %arrayidx154 = getelementptr inbounds i16, i16* %107, i64 %idxprom153
  %108 = load i16, i16* %arrayidx154, align 2, !tbaa !18
  store i16 %108, i16* %s, align 2, !tbaa !18
  %109 = load i16, i16* %b, align 2, !tbaa !18
  %conv155 = zext i16 %109 to i32
  %cmp156 = icmp eq i32 %conv155, 0
  br i1 %cmp156, label %if.then.158, label %if.else.161

if.then.158:                                      ; preds = %for.body.147
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom159 = sext i32 %110 to i64
  %111 = load i16*, i16** %dst.addr, align 8, !tbaa !5
  %arrayidx160 = getelementptr inbounds i16, i16* %111, i64 %idxprom159
  store i16 -1, i16* %arrayidx160, align 2, !tbaa !18
  br label %if.end.182

if.else.161:                                      ; preds = %for.body.147
  %112 = load i16, i16* %b, align 2, !tbaa !18
  %conv162 = zext i16 %112 to i32
  %113 = load i16, i16* %s, align 2, !tbaa !18
  %conv163 = zext i16 %113 to i32
  %cmp164 = icmp sge i32 %conv162, %conv163
  br i1 %cmp164, label %if.then.166, label %if.else.169

if.then.166:                                      ; preds = %if.else.161
  %114 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom167 = sext i32 %114 to i64
  %115 = load i16*, i16** %dst.addr, align 8, !tbaa !5
  %arrayidx168 = getelementptr inbounds i16, i16* %115, i64 %idxprom167
  store i16 0, i16* %arrayidx168, align 2, !tbaa !18
  br label %if.end.181

if.else.169:                                      ; preds = %if.else.161
  %116 = load i16, i16* %b, align 2, !tbaa !18
  %conv170 = zext i16 %116 to i32
  %mul171 = mul nsw i32 131070, %conv170
  %117 = load i16, i16* %s, align 2, !tbaa !18
  %conv172 = zext i16 %117 to i32
  %add173 = add nsw i32 %mul171, %conv172
  %118 = load i16, i16* %s, align 2, !tbaa !18
  %conv174 = zext i16 %118 to i32
  %shl175 = shl i32 %conv174, 1
  %div176 = sdiv i32 %add173, %shl175
  %sub177 = sub nsw i32 65535, %div176
  %conv178 = trunc i32 %sub177 to i16
  %119 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom179 = sext i32 %119 to i64
  %120 = load i16*, i16** %dst.addr, align 8, !tbaa !5
  %arrayidx180 = getelementptr inbounds i16, i16* %120, i64 %idxprom179
  store i16 %conv178, i16* %arrayidx180, align 2, !tbaa !18
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.169, %if.then.166
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.158
  br label %for.inc.183

for.inc.183:                                      ; preds = %if.end.182
  %121 = load i32, i32* %i, align 4, !tbaa !1
  %inc184 = add nsw i32 %121, 1
  store i32 %inc184, i32* %i, align 4, !tbaa !1
  br label %for.cond.144

for.end.185:                                      ; preds = %for.cond.144
  br label %sw.epilog

sw.bb.186:                                        ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.204, %sw.bb.186
  %122 = load i32, i32* %i, align 4, !tbaa !1
  %123 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp188 = icmp slt i32 %122, %123
  br i1 %cmp188, label %for.body.190, label %for.end.206

for.body.190:                                     ; preds = %for.cond.187
  %124 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom191 = sext i32 %124 to i64
  %125 = load i16*, i16** %backdrop.addr, align 8, !tbaa !5
  %arrayidx192 = getelementptr inbounds i16, i16* %125, i64 %idxprom191
  %126 = load i16, i16* %arrayidx192, align 2, !tbaa !18
  store i16 %126, i16* %b, align 2, !tbaa !18
  %127 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom193 = sext i32 %127 to i64
  %128 = load i16*, i16** %src.addr, align 8, !tbaa !5
  %arrayidx194 = getelementptr inbounds i16, i16* %128, i64 %idxprom193
  %129 = load i16, i16* %arrayidx194, align 2, !tbaa !18
  store i16 %129, i16* %s, align 2, !tbaa !18
  %130 = load i16, i16* %b, align 2, !tbaa !18
  %conv195 = zext i16 %130 to i32
  %131 = load i16, i16* %s, align 2, !tbaa !18
  %conv196 = zext i16 %131 to i32
  %cmp197 = icmp slt i32 %conv195, %conv196
  br i1 %cmp197, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.190
  %132 = load i16, i16* %b, align 2, !tbaa !18
  %conv199 = zext i16 %132 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.190
  %133 = load i16, i16* %s, align 2, !tbaa !18
  %conv200 = zext i16 %133 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv199, %cond.true ], [ %conv200, %cond.false ]
  %conv201 = trunc i32 %cond to i16
  %134 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom202 = sext i32 %134 to i64
  %135 = load i16*, i16** %dst.addr, align 8, !tbaa !5
  %arrayidx203 = getelementptr inbounds i16, i16* %135, i64 %idxprom202
  store i16 %conv201, i16* %arrayidx203, align 2, !tbaa !18
  br label %for.inc.204

for.inc.204:                                      ; preds = %cond.end
  %136 = load i32, i32* %i, align 4, !tbaa !1
  %inc205 = add nsw i32 %136, 1
  store i32 %inc205, i32* %i, align 4, !tbaa !1
  br label %for.cond.187

for.end.206:                                      ; preds = %for.cond.187
  br label %sw.epilog

sw.bb.207:                                        ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.229, %sw.bb.207
  %137 = load i32, i32* %i, align 4, !tbaa !1
  %138 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp209 = icmp slt i32 %137, %138
  br i1 %cmp209, label %for.body.211, label %for.end.231

for.body.211:                                     ; preds = %for.cond.208
  %139 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom212 = sext i32 %139 to i64
  %140 = load i16*, i16** %backdrop.addr, align 8, !tbaa !5
  %arrayidx213 = getelementptr inbounds i16, i16* %140, i64 %idxprom212
  %141 = load i16, i16* %arrayidx213, align 2, !tbaa !18
  store i16 %141, i16* %b, align 2, !tbaa !18
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom214 = sext i32 %142 to i64
  %143 = load i16*, i16** %src.addr, align 8, !tbaa !5
  %arrayidx215 = getelementptr inbounds i16, i16* %143, i64 %idxprom214
  %144 = load i16, i16* %arrayidx215, align 2, !tbaa !18
  store i16 %144, i16* %s, align 2, !tbaa !18
  %145 = load i16, i16* %b, align 2, !tbaa !18
  %conv216 = zext i16 %145 to i32
  %146 = load i16, i16* %s, align 2, !tbaa !18
  %conv217 = zext i16 %146 to i32
  %cmp218 = icmp sgt i32 %conv216, %conv217
  br i1 %cmp218, label %cond.true.220, label %cond.false.222

cond.true.220:                                    ; preds = %for.body.211
  %147 = load i16, i16* %b, align 2, !tbaa !18
  %conv221 = zext i16 %147 to i32
  br label %cond.end.224

cond.false.222:                                   ; preds = %for.body.211
  %148 = load i16, i16* %s, align 2, !tbaa !18
  %conv223 = zext i16 %148 to i32
  br label %cond.end.224

cond.end.224:                                     ; preds = %cond.false.222, %cond.true.220
  %cond225 = phi i32 [ %conv221, %cond.true.220 ], [ %conv223, %cond.false.222 ]
  %conv226 = trunc i32 %cond225 to i16
  %149 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom227 = sext i32 %149 to i64
  %150 = load i16*, i16** %dst.addr, align 8, !tbaa !5
  %arrayidx228 = getelementptr inbounds i16, i16* %150, i64 %idxprom227
  store i16 %conv226, i16* %arrayidx228, align 2, !tbaa !18
  br label %for.inc.229

for.inc.229:                                      ; preds = %cond.end.224
  %151 = load i32, i32* %i, align 4, !tbaa !1
  %inc230 = add nsw i32 %151, 1
  store i32 %inc230, i32* %i, align 4, !tbaa !1
  br label %for.cond.208

for.end.231:                                      ; preds = %for.cond.208
  br label %sw.epilog

sw.bb.232:                                        ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.254, %sw.bb.232
  %152 = load i32, i32* %i, align 4, !tbaa !1
  %153 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp234 = icmp slt i32 %152, %153
  br i1 %cmp234, label %for.body.236, label %for.end.256

for.body.236:                                     ; preds = %for.cond.233
  %154 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %154) #1
  %155 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom237 = sext i32 %155 to i64
  %156 = load i16*, i16** %backdrop.addr, align 8, !tbaa !5
  %arrayidx238 = getelementptr inbounds i16, i16* %156, i64 %idxprom237
  %157 = load i16, i16* %arrayidx238, align 2, !tbaa !18
  %conv239 = zext i16 %157 to i32
  %158 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom240 = sext i32 %158 to i64
  %159 = load i16*, i16** %src.addr, align 8, !tbaa !5
  %arrayidx241 = getelementptr inbounds i16, i16* %159, i64 %idxprom240
  %160 = load i16, i16* %arrayidx241, align 2, !tbaa !18
  %conv242 = zext i16 %160 to i32
  %sub243 = sub nsw i32 %conv239, %conv242
  store i32 %sub243, i32* %tmp, align 4, !tbaa !1
  %161 = load i32, i32* %tmp, align 4, !tbaa !1
  %cmp244 = icmp slt i32 %161, 0
  br i1 %cmp244, label %cond.true.246, label %cond.false.248

cond.true.246:                                    ; preds = %for.body.236
  %162 = load i32, i32* %tmp, align 4, !tbaa !1
  %sub247 = sub nsw i32 0, %162
  br label %cond.end.249

cond.false.248:                                   ; preds = %for.body.236
  %163 = load i32, i32* %tmp, align 4, !tbaa !1
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.248, %cond.true.246
  %cond250 = phi i32 [ %sub247, %cond.true.246 ], [ %163, %cond.false.248 ]
  %conv251 = trunc i32 %cond250 to i16
  %164 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom252 = sext i32 %164 to i64
  %165 = load i16*, i16** %dst.addr, align 8, !tbaa !5
  %arrayidx253 = getelementptr inbounds i16, i16* %165, i64 %idxprom252
  store i16 %conv251, i16* %arrayidx253, align 2, !tbaa !18
  %166 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  br label %for.inc.254

for.inc.254:                                      ; preds = %cond.end.249
  %167 = load i32, i32* %i, align 4, !tbaa !1
  %inc255 = add nsw i32 %167, 1
  store i32 %inc255, i32* %i, align 4, !tbaa !1
  br label %for.cond.233

for.end.256:                                      ; preds = %for.cond.233
  br label %sw.epilog

sw.bb.257:                                        ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.258

for.cond.258:                                     ; preds = %for.inc.282, %sw.bb.257
  %168 = load i32, i32* %i, align 4, !tbaa !1
  %169 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp259 = icmp slt i32 %168, %169
  br i1 %cmp259, label %for.body.261, label %for.end.284

for.body.261:                                     ; preds = %for.cond.258
  %170 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom262 = sext i32 %170 to i64
  %171 = load i16*, i16** %backdrop.addr, align 8, !tbaa !5
  %arrayidx263 = getelementptr inbounds i16, i16* %171, i64 %idxprom262
  %172 = load i16, i16* %arrayidx263, align 2, !tbaa !18
  store i16 %172, i16* %b, align 2, !tbaa !18
  %173 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom264 = sext i32 %173 to i64
  %174 = load i16*, i16** %src.addr, align 8, !tbaa !5
  %arrayidx265 = getelementptr inbounds i16, i16* %174, i64 %idxprom264
  %175 = load i16, i16* %arrayidx265, align 2, !tbaa !18
  store i16 %175, i16* %s, align 2, !tbaa !18
  %176 = load i16, i16* %b, align 2, !tbaa !18
  %conv266 = zext i16 %176 to i32
  %sub267 = sub nsw i32 65535, %conv266
  %177 = load i16, i16* %s, align 2, !tbaa !18
  %conv268 = zext i16 %177 to i32
  %mul269 = mul i32 %sub267, %conv268
  %178 = load i16, i16* %b, align 2, !tbaa !18
  %conv270 = zext i16 %178 to i32
  %179 = load i16, i16* %s, align 2, !tbaa !18
  %conv271 = zext i16 %179 to i32
  %sub272 = sub nsw i32 65535, %conv271
  %mul273 = mul i32 %conv270, %sub272
  %add274 = add i32 %mul269, %mul273
  store i32 %add274, i32* %t, align 4, !tbaa !1
  %180 = load i32, i32* %t, align 4, !tbaa !1
  %add275 = add i32 %180, 32768
  store i32 %add275, i32* %t, align 4, !tbaa !1
  %181 = load i32, i32* %t, align 4, !tbaa !1
  %shr276 = lshr i32 %181, 16
  %182 = load i32, i32* %t, align 4, !tbaa !1
  %add277 = add i32 %182, %shr276
  store i32 %add277, i32* %t, align 4, !tbaa !1
  %183 = load i32, i32* %t, align 4, !tbaa !1
  %shr278 = lshr i32 %183, 16
  %conv279 = trunc i32 %shr278 to i16
  %184 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom280 = sext i32 %184 to i64
  %185 = load i16*, i16** %dst.addr, align 8, !tbaa !5
  %arrayidx281 = getelementptr inbounds i16, i16* %185, i64 %idxprom280
  store i16 %conv279, i16* %arrayidx281, align 2, !tbaa !18
  br label %for.inc.282

for.inc.282:                                      ; preds = %for.body.261
  %186 = load i32, i32* %i, align 4, !tbaa !1
  %inc283 = add nsw i32 %186, 1
  store i32 %inc283, i32* %i, align 4, !tbaa !1
  br label %for.cond.258

for.end.284:                                      ; preds = %for.cond.258
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @dprintf_file_and_line(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 859) #5
  %187 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  %call285 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0), i32 %187) #5
  %188 = load i16*, i16** %dst.addr, align 8, !tbaa !5
  %189 = bitcast i16* %188 to i8*
  %190 = load i16*, i16** %src.addr, align 8, !tbaa !5
  %191 = bitcast i16* %190 to i8*
  %192 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %conv286 = sext i32 %192 to i64
  %call287 = call i8* @memcpy(i8* %189, i8* %191, i64 %conv286) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.284, %for.end.256, %for.end.231, %for.end.206, %for.end.185, %for.end.142, %for.end.105, %for.end.69, %for.end.36, %for.end, %sw.bb
  %193 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i16* %s to i8*
  call void @llvm.lifetime.end(i64 2, i8* %194) #1
  %195 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %195) #1
  %196 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i8 @art_pdf_union_8(i8 zeroext %alpha1, i8 zeroext %alpha2) #0 {
entry:
  %alpha1.addr = alloca i8, align 1
  %alpha2.addr = alloca i8, align 1
  %tmp = alloca i32, align 4
  store i8 %alpha1, i8* %alpha1.addr, align 1, !tbaa !7
  store i8 %alpha2, i8* %alpha2.addr, align 1, !tbaa !7
  %0 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8, i8* %alpha1.addr, align 1, !tbaa !7
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 255, %conv
  %2 = load i8, i8* %alpha2.addr, align 1, !tbaa !7
  %conv1 = zext i8 %2 to i32
  %sub2 = sub nsw i32 255, %conv1
  %mul = mul nsw i32 %sub, %sub2
  %add = add nsw i32 %mul, 128
  store i32 %add, i32* %tmp, align 4, !tbaa !1
  %3 = load i32, i32* %tmp, align 4, !tbaa !1
  %4 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %4, 8
  %add3 = add nsw i32 %3, %shr
  %shr4 = ashr i32 %add3, 8
  %sub5 = sub nsw i32 255, %shr4
  %conv6 = trunc i32 %sub5 to i8
  %5 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret i8 %conv6
}

; Function Attrs: nounwind uwtable
define zeroext i8 @art_pdf_union_mul_8(i8 zeroext %alpha1, i8 zeroext %alpha2, i8 zeroext %alpha_mask) #0 {
entry:
  %retval = alloca i8, align 1
  %alpha1.addr = alloca i8, align 1
  %alpha2.addr = alloca i8, align 1
  %alpha_mask.addr = alloca i8, align 1
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8 %alpha1, i8* %alpha1.addr, align 1, !tbaa !7
  store i8 %alpha2, i8* %alpha2.addr, align 1, !tbaa !7
  store i8 %alpha_mask, i8* %alpha_mask.addr, align 1, !tbaa !7
  %0 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8, i8* %alpha_mask.addr, align 1, !tbaa !7
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %alpha1.addr, align 1, !tbaa !7
  %conv2 = zext i8 %2 to i32
  %sub = sub nsw i32 255, %conv2
  %3 = load i8, i8* %alpha2.addr, align 1, !tbaa !7
  %conv3 = zext i8 %3 to i32
  %sub4 = sub nsw i32 255, %conv3
  %mul = mul nsw i32 %sub, %sub4
  %add = add nsw i32 %mul, 128
  store i32 %add, i32* %tmp, align 4, !tbaa !1
  %4 = load i32, i32* %tmp, align 4, !tbaa !1
  %5 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %5, 8
  %add5 = add nsw i32 %4, %shr
  %shr6 = ashr i32 %add5, 8
  %sub7 = sub nsw i32 255, %shr6
  %conv8 = trunc i32 %sub7 to i8
  store i8 %conv8, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %6 = load i8, i8* %alpha2.addr, align 1, !tbaa !7
  %conv9 = zext i8 %6 to i32
  %7 = load i8, i8* %alpha_mask.addr, align 1, !tbaa !7
  %conv10 = zext i8 %7 to i32
  %mul11 = mul nsw i32 %conv9, %conv10
  %add12 = add nsw i32 %mul11, 128
  store i32 %add12, i32* %tmp, align 4, !tbaa !1
  %8 = load i32, i32* %tmp, align 4, !tbaa !1
  %9 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr13 = ashr i32 %9, 8
  %add14 = add nsw i32 %8, %shr13
  %shr15 = ashr i32 %add14, 8
  store i32 %shr15, i32* %tmp, align 4, !tbaa !1
  %10 = load i8, i8* %alpha1.addr, align 1, !tbaa !7
  %conv16 = zext i8 %10 to i32
  %sub17 = sub nsw i32 255, %conv16
  %11 = load i32, i32* %tmp, align 4, !tbaa !1
  %sub18 = sub nsw i32 255, %11
  %mul19 = mul nsw i32 %sub17, %sub18
  %add20 = add nsw i32 %mul19, 128
  store i32 %add20, i32* %tmp, align 4, !tbaa !1
  %12 = load i32, i32* %tmp, align 4, !tbaa !1
  %13 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr21 = ashr i32 %13, 8
  %add22 = add nsw i32 %12, %shr21
  %shr23 = ashr i32 %add22, 8
  %sub24 = sub nsw i32 255, %shr23
  %conv25 = trunc i32 %sub24 to i8
  store i8 %conv25, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %14 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = load i8, i8* %retval
  ret i8 %15
}

; Function Attrs: nounwind uwtable
define void @art_pdf_composite_pixel_alpha_8(i8* %dst, i8* %src, i32 %n_chan, i32 %blend_mode, %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n_chan.addr = alloca i32, align 4
  %blend_mode.addr = alloca i32, align 4
  %pblend_procs.addr = alloca %struct.pdf14_nonseparable_blending_procs_s*, align 8
  %a_b = alloca i8, align 1
  %a_s = alloca i8, align 1
  %a_r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %src_scale = alloca i32, align 4
  %c_b = alloca i32, align 4
  %c_s = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %blend = alloca [64 x i8], align 16
  %c_bl = alloca i32, align 4
  %c_mix = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i32 %blend_mode, i32* %blend_mode.addr, align 4, !tbaa !7
  store %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %a_b) #1
  call void @llvm.lifetime.start(i64 1, i8* %a_s) #1
  %0 = bitcast i32* %a_r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %src_scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %c_b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %c_s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !7
  store i8 %8, i8* %a_s, align 1, !tbaa !7
  %9 = load i8, i8* %a_s, align 1, !tbaa !7
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom6 = sext i32 %10 to i64
  %11 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 %idxprom6
  %12 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  store i8 %12, i8* %a_b, align 1, !tbaa !7
  %13 = load i8, i8* %a_b, align 1, !tbaa !7
  %conv8 = zext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %14 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %15 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %16 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %add = add nsw i32 %16, 1
  %conv12 = sext i32 %add to i64
  %call = call i8* @memcpy(i8* %14, i8* %15, i64 %conv12) #4
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %17 = load i8, i8* %a_b, align 1, !tbaa !7
  %conv14 = zext i8 %17 to i32
  %sub = sub nsw i32 255, %conv14
  %18 = load i8, i8* %a_s, align 1, !tbaa !7
  %conv15 = zext i8 %18 to i32
  %sub16 = sub nsw i32 255, %conv15
  %mul = mul nsw i32 %sub, %sub16
  %add17 = add nsw i32 %mul, 128
  store i32 %add17, i32* %tmp, align 4, !tbaa !1
  %19 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %19, 8
  %20 = load i32, i32* %tmp, align 4, !tbaa !1
  %add18 = add nsw i32 %shr, %20
  %shr19 = ashr i32 %add18, 8
  %sub20 = sub nsw i32 255, %shr19
  store i32 %sub20, i32* %a_r, align 4, !tbaa !1
  %21 = load i8, i8* %a_s, align 1, !tbaa !7
  %conv21 = zext i8 %21 to i32
  %shl = shl i32 %conv21, 16
  %22 = load i32, i32* %a_r, align 4, !tbaa !1
  %shr22 = lshr i32 %22, 1
  %add23 = add i32 %shl, %shr22
  %23 = load i32, i32* %a_r, align 4, !tbaa !1
  %div = udiv i32 %add23, %23
  store i32 %div, i32* %src_scale, align 4, !tbaa !1
  %24 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  %cmp24 = icmp eq i32 %24, 0
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.13
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.26
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %26 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp27 = icmp slt i32 %25, %26
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom29 = sext i32 %27 to i64
  %28 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx30 = getelementptr inbounds i8, i8* %28, i64 %idxprom29
  %29 = load i8, i8* %arrayidx30, align 1, !tbaa !7
  %conv31 = zext i8 %29 to i32
  store i32 %conv31, i32* %c_s, align 4, !tbaa !1
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom32 = sext i32 %30 to i64
  %31 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx33 = getelementptr inbounds i8, i8* %31, i64 %idxprom32
  %32 = load i8, i8* %arrayidx33, align 1, !tbaa !7
  %conv34 = zext i8 %32 to i32
  store i32 %conv34, i32* %c_b, align 4, !tbaa !1
  %33 = load i32, i32* %c_b, align 4, !tbaa !1
  %shl35 = shl i32 %33, 16
  %34 = load i32, i32* %src_scale, align 4, !tbaa !1
  %35 = load i32, i32* %c_s, align 4, !tbaa !1
  %36 = load i32, i32* %c_b, align 4, !tbaa !1
  %sub36 = sub nsw i32 %35, %36
  %mul37 = mul nsw i32 %34, %sub36
  %add38 = add nsw i32 %shl35, %mul37
  %add39 = add nsw i32 %add38, 32768
  store i32 %add39, i32* %tmp, align 4, !tbaa !1
  %37 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr40 = ashr i32 %37, 16
  %conv41 = trunc i32 %shr40 to i8
  %38 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom42 = sext i32 %38 to i64
  %39 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx43 = getelementptr inbounds i8, i8* %39, i64 %idxprom42
  store i8 %conv41, i8* %arrayidx43, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.80

if.else:                                          ; preds = %if.end.13
  %41 = bitcast [64 x i8]* %blend to i8*
  call void @llvm.lifetime.start(i64 64, i8* %41) #1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %blend, i32 0, i32 0
  %42 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %43 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %44 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %45 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  %46 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  call void @art_blend_pixel_8(i8* %arraydecay, i8* %42, i8* %43, i32 %44, i32 %45, %struct.pdf14_nonseparable_blending_procs_s* %46) #5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.77, %if.else
  %47 = load i32, i32* %i, align 4, !tbaa !1
  %48 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp46 = icmp slt i32 %47, %48
  br i1 %cmp46, label %for.body.48, label %for.end.79

for.body.48:                                      ; preds = %for.cond.45
  %49 = bitcast i32* %c_bl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = bitcast i32* %c_mix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom51 = sext i32 %51 to i64
  %52 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx52 = getelementptr inbounds i8, i8* %52, i64 %idxprom51
  %53 = load i8, i8* %arrayidx52, align 1, !tbaa !7
  %conv53 = zext i8 %53 to i32
  store i32 %conv53, i32* %c_s, align 4, !tbaa !1
  %54 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom54 = sext i32 %54 to i64
  %55 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx55 = getelementptr inbounds i8, i8* %55, i64 %idxprom54
  %56 = load i8, i8* %arrayidx55, align 1, !tbaa !7
  %conv56 = zext i8 %56 to i32
  store i32 %conv56, i32* %c_b, align 4, !tbaa !1
  %57 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom57 = sext i32 %57 to i64
  %arrayidx58 = getelementptr inbounds [64 x i8], [64 x i8]* %blend, i32 0, i64 %idxprom57
  %58 = load i8, i8* %arrayidx58, align 1, !tbaa !7
  %conv59 = zext i8 %58 to i32
  store i32 %conv59, i32* %c_bl, align 4, !tbaa !1
  %59 = load i8, i8* %a_b, align 1, !tbaa !7
  %conv60 = zext i8 %59 to i32
  %60 = load i32, i32* %c_bl, align 4, !tbaa !1
  %61 = load i32, i32* %c_s, align 4, !tbaa !1
  %sub61 = sub nsw i32 %60, %61
  %mul62 = mul nsw i32 %conv60, %sub61
  %add63 = add nsw i32 %mul62, 128
  store i32 %add63, i32* %tmp, align 4, !tbaa !1
  %62 = load i32, i32* %c_s, align 4, !tbaa !1
  %63 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr64 = ashr i32 %63, 8
  %64 = load i32, i32* %tmp, align 4, !tbaa !1
  %add65 = add nsw i32 %shr64, %64
  %shr66 = ashr i32 %add65, 8
  %add67 = add nsw i32 %62, %shr66
  store i32 %add67, i32* %c_mix, align 4, !tbaa !1
  %65 = load i32, i32* %c_b, align 4, !tbaa !1
  %shl68 = shl i32 %65, 16
  %66 = load i32, i32* %src_scale, align 4, !tbaa !1
  %67 = load i32, i32* %c_mix, align 4, !tbaa !1
  %68 = load i32, i32* %c_b, align 4, !tbaa !1
  %sub69 = sub nsw i32 %67, %68
  %mul70 = mul nsw i32 %66, %sub69
  %add71 = add nsw i32 %shl68, %mul70
  %add72 = add nsw i32 %add71, 32768
  store i32 %add72, i32* %tmp, align 4, !tbaa !1
  %69 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr73 = ashr i32 %69, 16
  %conv74 = trunc i32 %shr73 to i8
  %70 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom75 = sext i32 %70 to i64
  %71 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx76 = getelementptr inbounds i8, i8* %71, i64 %idxprom75
  store i8 %conv74, i8* %arrayidx76, align 1, !tbaa !7
  %72 = bitcast i32* %c_mix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %c_bl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.48
  %74 = load i32, i32* %i, align 4, !tbaa !1
  %inc78 = add nsw i32 %74, 1
  store i32 %inc78, i32* %i, align 4, !tbaa !1
  br label %for.cond.45

for.end.79:                                       ; preds = %for.cond.45
  %75 = bitcast [64 x i8]* %blend to i8*
  call void @llvm.lifetime.end(i64 64, i8* %75) #1
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.79, %for.end
  %76 = load i32, i32* %a_r, align 4, !tbaa !1
  %conv81 = trunc i32 %76 to i8
  %77 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom82 = sext i32 %77 to i64
  %78 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx83 = getelementptr inbounds i8, i8* %78, i64 %idxprom82
  store i8 %conv81, i8* %arrayidx83, align 1, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.80, %if.then.11, %if.then
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %c_s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %c_b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %src_scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %a_r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  call void @llvm.lifetime.end(i64 1, i8* %a_s) #1
  call void @llvm.lifetime.end(i64 1, i8* %a_b) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @art_pdf_composite_pixel_alpha_8_fast(i8* %dst, i8* %src, i32 %n_chan, i32 %blend_mode, %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs, i32 %stride) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n_chan.addr = alloca i32, align 4
  %blend_mode.addr = alloca i32, align 4
  %pblend_procs.addr = alloca %struct.pdf14_nonseparable_blending_procs_s*, align 8
  %stride.addr = alloca i32, align 4
  %a_b = alloca i8, align 1
  %a_s = alloca i8, align 1
  %a_r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %src_scale = alloca i32, align 4
  %c_b = alloca i32, align 4
  %c_s = alloca i32, align 4
  %i = alloca i32, align 4
  %blend = alloca [64 x i8], align 16
  %dst_tmp = alloca [64 x i8], align 16
  %c_bl = alloca i32, align 4
  %c_mix = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i32 %blend_mode, i32* %blend_mode.addr, align 4, !tbaa !7
  store %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  store i32 %stride, i32* %stride.addr, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %a_b) #1
  call void @llvm.lifetime.start(i64 1, i8* %a_s) #1
  %0 = bitcast i32* %a_r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %src_scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %c_b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %c_s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !7
  store i8 %8, i8* %a_s, align 1, !tbaa !7
  %9 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %10 = load i32, i32* %stride.addr, align 4, !tbaa !1
  %mul = mul nsw i32 %9, %10
  %idxprom5 = sext i32 %mul to i64
  %11 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 %idxprom5
  %12 = load i8, i8* %arrayidx6, align 1, !tbaa !7
  store i8 %12, i8* %a_b, align 1, !tbaa !7
  %13 = load i8, i8* %a_b, align 1, !tbaa !7
  %conv = zext i8 %13 to i32
  %sub = sub nsw i32 255, %conv
  %14 = load i8, i8* %a_s, align 1, !tbaa !7
  %conv7 = zext i8 %14 to i32
  %sub8 = sub nsw i32 255, %conv7
  %mul9 = mul nsw i32 %sub, %sub8
  %add = add nsw i32 %mul9, 128
  store i32 %add, i32* %tmp, align 4, !tbaa !1
  %15 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %15, 8
  %16 = load i32, i32* %tmp, align 4, !tbaa !1
  %add10 = add nsw i32 %shr, %16
  %shr11 = ashr i32 %add10, 8
  %sub12 = sub nsw i32 255, %shr11
  store i32 %sub12, i32* %a_r, align 4, !tbaa !1
  %17 = load i8, i8* %a_s, align 1, !tbaa !7
  %conv13 = zext i8 %17 to i32
  %shl = shl i32 %conv13, 16
  %18 = load i32, i32* %a_r, align 4, !tbaa !1
  %shr14 = lshr i32 %18, 1
  %add15 = add i32 %shl, %shr14
  %19 = load i32, i32* %a_r, align 4, !tbaa !1
  %div = udiv i32 %add15, %19
  store i32 %div, i32* %src_scale, align 4, !tbaa !1
  %20 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %22 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp17 = icmp slt i32 %21, %22
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom19 = sext i32 %23 to i64
  %24 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx20 = getelementptr inbounds i8, i8* %24, i64 %idxprom19
  %25 = load i8, i8* %arrayidx20, align 1, !tbaa !7
  %conv21 = zext i8 %25 to i32
  store i32 %conv21, i32* %c_s, align 4, !tbaa !1
  %26 = load i32, i32* %i, align 4, !tbaa !1
  %27 = load i32, i32* %stride.addr, align 4, !tbaa !1
  %mul22 = mul nsw i32 %26, %27
  %idxprom23 = sext i32 %mul22 to i64
  %28 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx24 = getelementptr inbounds i8, i8* %28, i64 %idxprom23
  %29 = load i8, i8* %arrayidx24, align 1, !tbaa !7
  %conv25 = zext i8 %29 to i32
  store i32 %conv25, i32* %c_b, align 4, !tbaa !1
  %30 = load i32, i32* %c_b, align 4, !tbaa !1
  %shl26 = shl i32 %30, 16
  %31 = load i32, i32* %src_scale, align 4, !tbaa !1
  %32 = load i32, i32* %c_s, align 4, !tbaa !1
  %33 = load i32, i32* %c_b, align 4, !tbaa !1
  %sub27 = sub nsw i32 %32, %33
  %mul28 = mul nsw i32 %31, %sub27
  %add29 = add nsw i32 %shl26, %mul28
  %add30 = add nsw i32 %add29, 32768
  store i32 %add30, i32* %tmp, align 4, !tbaa !1
  %34 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr31 = ashr i32 %34, 16
  %conv32 = trunc i32 %shr31 to i8
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %36 = load i32, i32* %stride.addr, align 4, !tbaa !1
  %mul33 = mul nsw i32 %35, %36
  %idxprom34 = sext i32 %mul33 to i64
  %37 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx35 = getelementptr inbounds i8, i8* %37, i64 %idxprom34
  store i8 %conv32, i8* %arrayidx35, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %39 = bitcast [64 x i8]* %blend to i8*
  call void @llvm.lifetime.start(i64 64, i8* %39) #1
  %40 = bitcast [64 x i8]* %dst_tmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %40) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.47, %if.else
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %42 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp39 = icmp slt i32 %41, %42
  br i1 %cmp39, label %for.body.41, label %for.end.49

for.body.41:                                      ; preds = %for.cond.38
  %43 = load i32, i32* %i, align 4, !tbaa !1
  %44 = load i32, i32* %stride.addr, align 4, !tbaa !1
  %mul42 = mul nsw i32 %43, %44
  %idxprom43 = sext i32 %mul42 to i64
  %45 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx44 = getelementptr inbounds i8, i8* %45, i64 %idxprom43
  %46 = load i8, i8* %arrayidx44, align 1, !tbaa !7
  %47 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom45 = sext i32 %47 to i64
  %arrayidx46 = getelementptr inbounds [64 x i8], [64 x i8]* %dst_tmp, i32 0, i64 %idxprom45
  store i8 %46, i8* %arrayidx46, align 1, !tbaa !7
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.41
  %48 = load i32, i32* %i, align 4, !tbaa !1
  %inc48 = add nsw i32 %48, 1
  store i32 %inc48, i32* %i, align 4, !tbaa !1
  br label %for.cond.38

for.end.49:                                       ; preds = %for.cond.38
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %blend, i32 0, i32 0
  %arraydecay50 = getelementptr inbounds [64 x i8], [64 x i8]* %dst_tmp, i32 0, i32 0
  %49 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %50 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %51 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  %52 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  call void @art_blend_pixel_8(i8* %arraydecay, i8* %arraydecay50, i8* %49, i32 %50, i32 %51, %struct.pdf14_nonseparable_blending_procs_s* %52) #5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.84, %for.end.49
  %53 = load i32, i32* %i, align 4, !tbaa !1
  %54 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp52 = icmp slt i32 %53, %54
  br i1 %cmp52, label %for.body.54, label %for.end.86

for.body.54:                                      ; preds = %for.cond.51
  %55 = bitcast i32* %c_bl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = bitcast i32* %c_mix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom57 = sext i32 %57 to i64
  %58 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx58 = getelementptr inbounds i8, i8* %58, i64 %idxprom57
  %59 = load i8, i8* %arrayidx58, align 1, !tbaa !7
  %conv59 = zext i8 %59 to i32
  store i32 %conv59, i32* %c_s, align 4, !tbaa !1
  %60 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom60 = sext i32 %60 to i64
  %arrayidx61 = getelementptr inbounds [64 x i8], [64 x i8]* %dst_tmp, i32 0, i64 %idxprom60
  %61 = load i8, i8* %arrayidx61, align 1, !tbaa !7
  %conv62 = zext i8 %61 to i32
  store i32 %conv62, i32* %c_b, align 4, !tbaa !1
  %62 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom63 = sext i32 %62 to i64
  %arrayidx64 = getelementptr inbounds [64 x i8], [64 x i8]* %blend, i32 0, i64 %idxprom63
  %63 = load i8, i8* %arrayidx64, align 1, !tbaa !7
  %conv65 = zext i8 %63 to i32
  store i32 %conv65, i32* %c_bl, align 4, !tbaa !1
  %64 = load i8, i8* %a_b, align 1, !tbaa !7
  %conv66 = zext i8 %64 to i32
  %65 = load i32, i32* %c_bl, align 4, !tbaa !1
  %66 = load i32, i32* %c_s, align 4, !tbaa !1
  %sub67 = sub nsw i32 %65, %66
  %mul68 = mul nsw i32 %conv66, %sub67
  %add69 = add nsw i32 %mul68, 128
  store i32 %add69, i32* %tmp, align 4, !tbaa !1
  %67 = load i32, i32* %c_s, align 4, !tbaa !1
  %68 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr70 = ashr i32 %68, 8
  %69 = load i32, i32* %tmp, align 4, !tbaa !1
  %add71 = add nsw i32 %shr70, %69
  %shr72 = ashr i32 %add71, 8
  %add73 = add nsw i32 %67, %shr72
  store i32 %add73, i32* %c_mix, align 4, !tbaa !1
  %70 = load i32, i32* %c_b, align 4, !tbaa !1
  %shl74 = shl i32 %70, 16
  %71 = load i32, i32* %src_scale, align 4, !tbaa !1
  %72 = load i32, i32* %c_mix, align 4, !tbaa !1
  %73 = load i32, i32* %c_b, align 4, !tbaa !1
  %sub75 = sub nsw i32 %72, %73
  %mul76 = mul nsw i32 %71, %sub75
  %add77 = add nsw i32 %shl74, %mul76
  %add78 = add nsw i32 %add77, 32768
  store i32 %add78, i32* %tmp, align 4, !tbaa !1
  %74 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr79 = ashr i32 %74, 16
  %conv80 = trunc i32 %shr79 to i8
  %75 = load i32, i32* %i, align 4, !tbaa !1
  %76 = load i32, i32* %stride.addr, align 4, !tbaa !1
  %mul81 = mul nsw i32 %75, %76
  %idxprom82 = sext i32 %mul81 to i64
  %77 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx83 = getelementptr inbounds i8, i8* %77, i64 %idxprom82
  store i8 %conv80, i8* %arrayidx83, align 1, !tbaa !7
  %78 = bitcast i32* %c_mix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %c_bl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.54
  %80 = load i32, i32* %i, align 4, !tbaa !1
  %inc85 = add nsw i32 %80, 1
  store i32 %inc85, i32* %i, align 4, !tbaa !1
  br label %for.cond.51

for.end.86:                                       ; preds = %for.cond.51
  %81 = bitcast [64 x i8]* %dst_tmp to i8*
  call void @llvm.lifetime.end(i64 64, i8* %81) #1
  %82 = bitcast [64 x i8]* %blend to i8*
  call void @llvm.lifetime.end(i64 64, i8* %82) #1
  br label %if.end

if.end:                                           ; preds = %for.end.86, %for.end
  %83 = load i32, i32* %a_r, align 4, !tbaa !1
  %conv87 = trunc i32 %83 to i8
  %84 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %85 = load i32, i32* %stride.addr, align 4, !tbaa !1
  %mul88 = mul nsw i32 %84, %85
  %idxprom89 = sext i32 %mul88 to i64
  %86 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx90 = getelementptr inbounds i8, i8* %86, i64 %idxprom89
  store i8 %conv87, i8* %arrayidx90, align 1, !tbaa !7
  %87 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %c_s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %c_b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %src_scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %a_r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  call void @llvm.lifetime.end(i64 1, i8* %a_s) #1
  call void @llvm.lifetime.end(i64 1, i8* %a_b) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @art_pdf_composite_pixel_alpha_8_fast_mono(i8* %dst, i8* %src, i32 %blend_mode, %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs, i32 %stride) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %blend_mode.addr = alloca i32, align 4
  %pblend_procs.addr = alloca %struct.pdf14_nonseparable_blending_procs_s*, align 8
  %stride.addr = alloca i32, align 4
  %a_b = alloca i8, align 1
  %a_s = alloca i8, align 1
  %a_r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %src_scale = alloca i32, align 4
  %c_b = alloca i32, align 4
  %c_s = alloca i32, align 4
  %blend = alloca [64 x i8], align 16
  %c_bl = alloca i32, align 4
  %c_mix = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i32 %blend_mode, i32* %blend_mode.addr, align 4, !tbaa !7
  store %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  store i32 %stride, i32* %stride.addr, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %a_b) #1
  call void @llvm.lifetime.start(i64 1, i8* %a_s) #1
  %0 = bitcast i32* %a_r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %src_scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %c_b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %c_s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !7
  store i8 %6, i8* %a_s, align 1, !tbaa !7
  %7 = load i32, i32* %stride.addr, align 4, !tbaa !1
  %idxprom = sext i32 %7 to i64
  %8 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx4, align 1, !tbaa !7
  store i8 %9, i8* %a_b, align 1, !tbaa !7
  %10 = load i8, i8* %a_b, align 1, !tbaa !7
  %conv = zext i8 %10 to i32
  %sub = sub nsw i32 255, %conv
  %11 = load i8, i8* %a_s, align 1, !tbaa !7
  %conv5 = zext i8 %11 to i32
  %sub6 = sub nsw i32 255, %conv5
  %mul = mul nsw i32 %sub, %sub6
  %add = add nsw i32 %mul, 128
  store i32 %add, i32* %tmp, align 4, !tbaa !1
  %12 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %12, 8
  %13 = load i32, i32* %tmp, align 4, !tbaa !1
  %add7 = add nsw i32 %shr, %13
  %shr8 = ashr i32 %add7, 8
  %sub9 = sub nsw i32 255, %shr8
  store i32 %sub9, i32* %a_r, align 4, !tbaa !1
  %14 = load i8, i8* %a_s, align 1, !tbaa !7
  %conv10 = zext i8 %14 to i32
  %shl = shl i32 %conv10, 16
  %15 = load i32, i32* %a_r, align 4, !tbaa !1
  %shr11 = lshr i32 %15, 1
  %add12 = add i32 %shl, %shr11
  %16 = load i32, i32* %a_r, align 4, !tbaa !1
  %div = udiv i32 %add12, %16
  store i32 %div, i32* %src_scale, align 4, !tbaa !1
  %17 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx14 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx14, align 1, !tbaa !7
  %conv15 = zext i8 %19 to i32
  store i32 %conv15, i32* %c_s, align 4, !tbaa !1
  %20 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx16 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx16, align 1, !tbaa !7
  %conv17 = zext i8 %21 to i32
  store i32 %conv17, i32* %c_b, align 4, !tbaa !1
  %22 = load i32, i32* %c_b, align 4, !tbaa !1
  %shl18 = shl i32 %22, 16
  %23 = load i32, i32* %src_scale, align 4, !tbaa !1
  %24 = load i32, i32* %c_s, align 4, !tbaa !1
  %25 = load i32, i32* %c_b, align 4, !tbaa !1
  %sub19 = sub nsw i32 %24, %25
  %mul20 = mul nsw i32 %23, %sub19
  %add21 = add nsw i32 %shl18, %mul20
  %add22 = add nsw i32 %add21, 32768
  store i32 %add22, i32* %tmp, align 4, !tbaa !1
  %26 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr23 = ashr i32 %26, 16
  %conv24 = trunc i32 %shr23 to i8
  %27 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx25 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 %conv24, i8* %arrayidx25, align 1, !tbaa !7
  br label %if.end

if.else:                                          ; preds = %entry
  %28 = bitcast [64 x i8]* %blend to i8*
  call void @llvm.lifetime.start(i64 64, i8* %28) #1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %blend, i32 0, i32 0
  %29 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %30 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %31 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  %32 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  call void @art_blend_pixel_8(i8* %arraydecay, i8* %29, i8* %30, i32 1, i32 %31, %struct.pdf14_nonseparable_blending_procs_s* %32) #5
  %33 = bitcast i32* %c_bl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast i32* %c_mix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx29 = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx29, align 1, !tbaa !7
  %conv30 = zext i8 %36 to i32
  store i32 %conv30, i32* %c_s, align 4, !tbaa !1
  %37 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx31 = getelementptr inbounds i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx31, align 1, !tbaa !7
  %conv32 = zext i8 %38 to i32
  store i32 %conv32, i32* %c_b, align 4, !tbaa !1
  %arrayidx33 = getelementptr inbounds [64 x i8], [64 x i8]* %blend, i32 0, i64 0
  %39 = load i8, i8* %arrayidx33, align 1, !tbaa !7
  %conv34 = zext i8 %39 to i32
  store i32 %conv34, i32* %c_bl, align 4, !tbaa !1
  %40 = load i8, i8* %a_b, align 1, !tbaa !7
  %conv35 = zext i8 %40 to i32
  %41 = load i32, i32* %c_bl, align 4, !tbaa !1
  %42 = load i32, i32* %c_s, align 4, !tbaa !1
  %sub36 = sub nsw i32 %41, %42
  %mul37 = mul nsw i32 %conv35, %sub36
  %add38 = add nsw i32 %mul37, 128
  store i32 %add38, i32* %tmp, align 4, !tbaa !1
  %43 = load i32, i32* %c_s, align 4, !tbaa !1
  %44 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr39 = ashr i32 %44, 8
  %45 = load i32, i32* %tmp, align 4, !tbaa !1
  %add40 = add nsw i32 %shr39, %45
  %shr41 = ashr i32 %add40, 8
  %add42 = add nsw i32 %43, %shr41
  store i32 %add42, i32* %c_mix, align 4, !tbaa !1
  %46 = load i32, i32* %c_b, align 4, !tbaa !1
  %shl43 = shl i32 %46, 16
  %47 = load i32, i32* %src_scale, align 4, !tbaa !1
  %48 = load i32, i32* %c_mix, align 4, !tbaa !1
  %49 = load i32, i32* %c_b, align 4, !tbaa !1
  %sub44 = sub nsw i32 %48, %49
  %mul45 = mul nsw i32 %47, %sub44
  %add46 = add nsw i32 %shl43, %mul45
  %add47 = add nsw i32 %add46, 32768
  store i32 %add47, i32* %tmp, align 4, !tbaa !1
  %50 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr48 = ashr i32 %50, 16
  %conv49 = trunc i32 %shr48 to i8
  %51 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx50 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 %conv49, i8* %arrayidx50, align 1, !tbaa !7
  %52 = bitcast i32* %c_mix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %c_bl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast [64 x i8]* %blend to i8*
  call void @llvm.lifetime.end(i64 64, i8* %54) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %55 = load i32, i32* %a_r, align 4, !tbaa !1
  %conv51 = trunc i32 %55 to i8
  %56 = load i32, i32* %stride.addr, align 4, !tbaa !1
  %idxprom52 = sext i32 %56 to i64
  %57 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx53 = getelementptr inbounds i8, i8* %57, i64 %idxprom52
  store i8 %conv51, i8* %arrayidx53, align 1, !tbaa !7
  %58 = bitcast i32* %c_s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %c_b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %src_scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %a_r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  call void @llvm.lifetime.end(i64 1, i8* %a_s) #1
  call void @llvm.lifetime.end(i64 1, i8* %a_b) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @art_pdf_uncomposite_group_8(i8* %dst, i8* %backdrop, i8* %src, i8 zeroext %src_alpha_g, i32 %n_chan) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %backdrop.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %src_alpha_g.addr = alloca i8, align 1
  %n_chan.addr = alloca i32, align 4
  %backdrop_alpha = alloca i8, align 1
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %scale = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %si = alloca i32, align 4
  %di = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %backdrop, i8** %backdrop.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i8 %src_alpha_g, i8* %src_alpha_g.addr, align 1, !tbaa !7
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %backdrop_alpha) #1
  %0 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  store i8 %2, i8* %backdrop_alpha, align 1, !tbaa !7
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i8, i8* %src_alpha_g.addr, align 1, !tbaa !7
  %7 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom2 = sext i32 %7 to i64
  %8 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 %idxprom2
  store i8 %6, i8* %arrayidx3, align 1, !tbaa !7
  %9 = load i8, i8* %src_alpha_g.addr, align 1, !tbaa !7
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i8, i8* %backdrop_alpha, align 1, !tbaa !7
  %conv5 = zext i8 %10 to i32
  %mul = mul nsw i32 %conv5, 255
  %mul6 = mul nsw i32 %mul, 2
  %11 = load i8, i8* %src_alpha_g.addr, align 1, !tbaa !7
  %conv7 = zext i8 %11 to i32
  %add = add nsw i32 %mul6, %conv7
  %12 = load i8, i8* %src_alpha_g.addr, align 1, !tbaa !7
  %conv8 = zext i8 %12 to i32
  %shl = shl i32 %conv8, 1
  %div = sdiv i32 %add, %shl
  %13 = load i8, i8* %backdrop_alpha, align 1, !tbaa !7
  %conv9 = zext i8 %13 to i32
  %sub = sub nsw i32 %div, %conv9
  store i32 %sub, i32* %scale, align 4, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !1
  %15 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp10 = icmp slt i32 %14, %15
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = bitcast i32* %si to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %di to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom14 = sext i32 %18 to i64
  %19 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx15 = getelementptr inbounds i8, i8* %19, i64 %idxprom14
  %20 = load i8, i8* %arrayidx15, align 1, !tbaa !7
  %conv16 = zext i8 %20 to i32
  store i32 %conv16, i32* %si, align 4, !tbaa !1
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom17 = sext i32 %21 to i64
  %22 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx18 = getelementptr inbounds i8, i8* %22, i64 %idxprom17
  %23 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  %conv19 = zext i8 %23 to i32
  store i32 %conv19, i32* %di, align 4, !tbaa !1
  %24 = load i32, i32* %si, align 4, !tbaa !1
  %25 = load i32, i32* %di, align 4, !tbaa !1
  %sub20 = sub nsw i32 %24, %25
  %26 = load i32, i32* %scale, align 4, !tbaa !1
  %mul21 = mul nsw i32 %sub20, %26
  %add22 = add nsw i32 %mul21, 128
  store i32 %add22, i32* %tmp, align 4, !tbaa !1
  %27 = load i32, i32* %si, align 4, !tbaa !1
  %28 = load i32, i32* %tmp, align 4, !tbaa !1
  %29 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %29, 8
  %add23 = add nsw i32 %28, %shr
  %shr24 = ashr i32 %add23, 8
  %add25 = add nsw i32 %27, %shr24
  store i32 %add25, i32* %tmp, align 4, !tbaa !1
  %30 = load i32, i32* %tmp, align 4, !tbaa !1
  %cmp26 = icmp slt i32 %30, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body
  store i32 0, i32* %tmp, align 4, !tbaa !1
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %for.body
  %31 = load i32, i32* %tmp, align 4, !tbaa !1
  %cmp30 = icmp sgt i32 %31, 255
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  store i32 255, i32* %tmp, align 4, !tbaa !1
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.29
  %32 = load i32, i32* %tmp, align 4, !tbaa !1
  %conv34 = trunc i32 %32 to i8
  %33 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom35 = sext i32 %33 to i64
  %34 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx36 = getelementptr inbounds i8, i8* %34, i64 %idxprom35
  store i8 %conv34, i8* %arrayidx36, align 1, !tbaa !7
  %35 = bitcast i32* %di to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %si to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %37 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %38 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  call void @llvm.lifetime.end(i64 1, i8* %backdrop_alpha) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @art_pdf_recomposite_group_8(i8* %dst, i8* %dst_alpha_g, i8* %src, i8 zeroext %src_alpha_g, i32 %n_chan, i8 zeroext %alpha, i32 %blend_mode, %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %dst_alpha_g.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %src_alpha_g.addr = alloca i8, align 1
  %n_chan.addr = alloca i32, align 4
  %alpha.addr = alloca i8, align 1
  %blend_mode.addr = alloca i32, align 4
  %pblend_procs.addr = alloca %struct.pdf14_nonseparable_blending_procs_s*, align 8
  %dst_alpha = alloca i8, align 1
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %scale = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ca = alloca [65 x i8], align 16
  %si = alloca i32, align 4
  %di = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %dst_alpha_g, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i8 %src_alpha_g, i8* %src_alpha_g.addr, align 1, !tbaa !7
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i8 %alpha, i8* %alpha.addr, align 1, !tbaa !7
  store i32 %blend_mode, i32* %blend_mode.addr, align 4, !tbaa !7
  store %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %dst_alpha) #1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8, i8* %src_alpha_g.addr, align 1, !tbaa !7
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8, i8* %alpha.addr, align 1, !tbaa !7
  %conv5 = zext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv5, 255
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true
  %6 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %7 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %8 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %add = add nsw i32 %8, 1
  %conv9 = sext i32 %add to i64
  %call = call i8* @memcpy(i8* %6, i8* %7, i64 %conv9) #4
  %9 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  %cmp10 = icmp ne i8* %9, null
  br i1 %cmp10, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %if.then.8
  %10 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  %11 = load i8, i8* %10, align 1, !tbaa !7
  %conv13 = zext i8 %11 to i32
  %sub = sub nsw i32 255, %conv13
  %12 = load i8, i8* %src_alpha_g.addr, align 1, !tbaa !7
  %conv14 = zext i8 %12 to i32
  %sub15 = sub nsw i32 255, %conv14
  %mul = mul nsw i32 %sub, %sub15
  %add16 = add nsw i32 %mul, 128
  store i32 %add16, i32* %tmp, align 4, !tbaa !1
  %13 = load i32, i32* %tmp, align 4, !tbaa !1
  %14 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %14, 8
  %add17 = add nsw i32 %13, %shr
  %shr18 = ashr i32 %add17, 8
  %sub19 = sub nsw i32 255, %shr18
  %conv20 = trunc i32 %sub19 to i8
  %15 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  store i8 %conv20, i8* %15, align 1, !tbaa !7
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.12, %if.then.8
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %if.end
  %16 = bitcast [65 x i8]* %ca to i8*
  call void @llvm.lifetime.start(i64 65, i8* %16) #1
  %17 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom = sext i32 %17 to i64
  %18 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !7
  store i8 %19, i8* %dst_alpha, align 1, !tbaa !7
  %20 = load i8, i8* %src_alpha_g.addr, align 1, !tbaa !7
  %conv23 = zext i8 %20 to i32
  %cmp24 = icmp eq i32 %conv23, 255
  br i1 %cmp24, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %21 = load i8, i8* %dst_alpha, align 1, !tbaa !7
  %conv26 = zext i8 %21 to i32
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %if.then.29, label %if.else.33

if.then.29:                                       ; preds = %lor.lhs.false, %if.else
  %arraydecay = getelementptr inbounds [65 x i8], [65 x i8]* %ca, i32 0, i32 0
  %22 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %23 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %add30 = add nsw i32 %23, 3
  %conv31 = sext i32 %add30 to i64
  %call32 = call i8* @memcpy(i8* %arraydecay, i8* %22, i64 %conv31) #4
  br label %if.end.70

if.else.33:                                       ; preds = %lor.lhs.false
  %24 = load i8, i8* %dst_alpha, align 1, !tbaa !7
  %conv34 = zext i8 %24 to i32
  %mul35 = mul nsw i32 %conv34, 255
  %mul36 = mul nsw i32 %mul35, 2
  %25 = load i8, i8* %src_alpha_g.addr, align 1, !tbaa !7
  %conv37 = zext i8 %25 to i32
  %add38 = add nsw i32 %mul36, %conv37
  %26 = load i8, i8* %src_alpha_g.addr, align 1, !tbaa !7
  %conv39 = zext i8 %26 to i32
  %shl = shl i32 %conv39, 1
  %div = sdiv i32 %add38, %shl
  %27 = load i8, i8* %dst_alpha, align 1, !tbaa !7
  %conv40 = zext i8 %27 to i32
  %sub41 = sub nsw i32 %div, %conv40
  store i32 %sub41, i32* %scale, align 4, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.33
  %28 = load i32, i32* %i, align 4, !tbaa !1
  %29 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp42 = icmp slt i32 %28, %29
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = bitcast i32* %si to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %di to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom46 = sext i32 %32 to i64
  %33 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx47 = getelementptr inbounds i8, i8* %33, i64 %idxprom46
  %34 = load i8, i8* %arrayidx47, align 1, !tbaa !7
  %conv48 = zext i8 %34 to i32
  store i32 %conv48, i32* %si, align 4, !tbaa !1
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom49 = sext i32 %35 to i64
  %36 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx50 = getelementptr inbounds i8, i8* %36, i64 %idxprom49
  %37 = load i8, i8* %arrayidx50, align 1, !tbaa !7
  %conv51 = zext i8 %37 to i32
  store i32 %conv51, i32* %di, align 4, !tbaa !1
  %38 = load i32, i32* %si, align 4, !tbaa !1
  %39 = load i32, i32* %di, align 4, !tbaa !1
  %sub52 = sub nsw i32 %38, %39
  %40 = load i32, i32* %scale, align 4, !tbaa !1
  %mul53 = mul nsw i32 %sub52, %40
  %add54 = add nsw i32 %mul53, 128
  store i32 %add54, i32* %tmp, align 4, !tbaa !1
  %41 = load i32, i32* %si, align 4, !tbaa !1
  %42 = load i32, i32* %tmp, align 4, !tbaa !1
  %43 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr55 = ashr i32 %43, 8
  %add56 = add nsw i32 %42, %shr55
  %shr57 = ashr i32 %add56, 8
  %add58 = add nsw i32 %41, %shr57
  store i32 %add58, i32* %tmp, align 4, !tbaa !1
  %44 = load i32, i32* %tmp, align 4, !tbaa !1
  %cmp59 = icmp slt i32 %44, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %for.body
  store i32 0, i32* %tmp, align 4, !tbaa !1
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %for.body
  %45 = load i32, i32* %tmp, align 4, !tbaa !1
  %cmp63 = icmp sgt i32 %45, 255
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.62
  store i32 255, i32* %tmp, align 4, !tbaa !1
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.62
  %46 = load i32, i32* %tmp, align 4, !tbaa !1
  %conv67 = trunc i32 %46 to i8
  %47 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom68 = sext i32 %47 to i64
  %arrayidx69 = getelementptr inbounds [65 x i8], [65 x i8]* %ca, i32 0, i64 %idxprom68
  store i8 %conv67, i8* %arrayidx69, align 1, !tbaa !7
  %48 = bitcast i32* %di to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %si to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %50 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.70

if.end.70:                                        ; preds = %for.end, %if.then.29
  %51 = load i8, i8* %src_alpha_g.addr, align 1, !tbaa !7
  %conv71 = zext i8 %51 to i32
  %52 = load i8, i8* %alpha.addr, align 1, !tbaa !7
  %conv72 = zext i8 %52 to i32
  %mul73 = mul nsw i32 %conv71, %conv72
  %add74 = add nsw i32 %mul73, 128
  store i32 %add74, i32* %tmp, align 4, !tbaa !1
  %53 = load i32, i32* %tmp, align 4, !tbaa !1
  %54 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr75 = ashr i32 %54, 8
  %add76 = add nsw i32 %53, %shr75
  %shr77 = ashr i32 %add76, 8
  store i32 %shr77, i32* %tmp, align 4, !tbaa !1
  %55 = load i32, i32* %tmp, align 4, !tbaa !1
  %conv78 = trunc i32 %55 to i8
  %56 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom79 = sext i32 %56 to i64
  %arrayidx80 = getelementptr inbounds [65 x i8], [65 x i8]* %ca, i32 0, i64 %idxprom79
  store i8 %conv78, i8* %arrayidx80, align 1, !tbaa !7
  %57 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  %cmp81 = icmp ne i8* %57, null
  br i1 %cmp81, label %if.then.83, label %if.end.94

if.then.83:                                       ; preds = %if.end.70
  %58 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  %59 = load i8, i8* %58, align 1, !tbaa !7
  %conv84 = zext i8 %59 to i32
  %sub85 = sub nsw i32 255, %conv84
  %60 = load i32, i32* %tmp, align 4, !tbaa !1
  %sub86 = sub nsw i32 255, %60
  %mul87 = mul nsw i32 %sub85, %sub86
  %add88 = add nsw i32 %mul87, 128
  store i32 %add88, i32* %tmp, align 4, !tbaa !1
  %61 = load i32, i32* %tmp, align 4, !tbaa !1
  %62 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr89 = ashr i32 %62, 8
  %add90 = add nsw i32 %61, %shr89
  %shr91 = ashr i32 %add90, 8
  %sub92 = sub nsw i32 255, %shr91
  %conv93 = trunc i32 %sub92 to i8
  %63 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  store i8 %conv93, i8* %63, align 1, !tbaa !7
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.83, %if.end.70
  %64 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arraydecay95 = getelementptr inbounds [65 x i8], [65 x i8]* %ca, i32 0, i32 0
  %65 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %66 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  %67 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  call void @art_pdf_composite_pixel_alpha_8(i8* %64, i8* %arraydecay95, i32 %65, i32 %66, %struct.pdf14_nonseparable_blending_procs_s* %67) #5
  %68 = bitcast [65 x i8]* %ca to i8*
  call void @llvm.lifetime.end(i64 65, i8* %68) #1
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.94
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.96, %if.end.21, %if.then
  %69 = bitcast i32* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  call void @llvm.lifetime.end(i64 1, i8* %dst_alpha) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @art_pdf_composite_knockout_group_8(i8* %backdrop, i8 zeroext %tos_shape, i8* %dst, i8* %dst_alpha_g, i8* %src, i32 %n_chan, i8 zeroext %alpha, i32 %blend_mode, %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs) #0 {
entry:
  %backdrop.addr = alloca i8*, align 8
  %tos_shape.addr = alloca i8, align 1
  %dst.addr = alloca i8*, align 8
  %dst_alpha_g.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n_chan.addr = alloca i32, align 4
  %alpha.addr = alloca i8, align 1
  %blend_mode.addr = alloca i32, align 4
  %pblend_procs.addr = alloca %struct.pdf14_nonseparable_blending_procs_s*, align 8
  %src_alpha = alloca i8, align 1
  %src_tmp = alloca [65 x i8], align 16
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %backdrop, i8** %backdrop.addr, align 8, !tbaa !5
  store i8 %tos_shape, i8* %tos_shape.addr, align 1, !tbaa !7
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %dst_alpha_g, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i8 %alpha, i8* %alpha.addr, align 1, !tbaa !7
  store i32 %blend_mode, i32* %blend_mode.addr, align 4, !tbaa !7
  store %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %src_alpha) #1
  %0 = bitcast [65 x i8]* %src_tmp to i8*
  call void @llvm.lifetime.start(i64 65, i8* %0) #1
  %1 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8, i8* %alpha.addr, align 1, !tbaa !7
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %4 = load i8, i8* %tos_shape.addr, align 1, !tbaa !7
  %5 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %6 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %7 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %8 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  %9 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  call void @art_pdf_knockout_composite_pixel_alpha_8(i8* %3, i8 zeroext %4, i8* %5, i8* %6, i32 %7, i32 %8, %struct.pdf14_nonseparable_blending_procs_s* %9) #5
  %10 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  %cmp2 = icmp ne i8* %10, null
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %11 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  %12 = load i8, i8* %11, align 1, !tbaa !7
  %conv5 = zext i8 %12 to i32
  %sub = sub nsw i32 255, %conv5
  %13 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom = sext i32 %13 to i64
  %14 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv6 = zext i8 %15 to i32
  %sub7 = sub nsw i32 255, %conv6
  %mul = mul nsw i32 %sub, %sub7
  %add = add nsw i32 %mul, 128
  store i32 %add, i32* %tmp, align 4, !tbaa !1
  %16 = load i32, i32* %tmp, align 4, !tbaa !1
  %17 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %17, 8
  %add8 = add nsw i32 %16, %shr
  %shr9 = ashr i32 %add8, 8
  %sub10 = sub nsw i32 255, %shr9
  %conv11 = trunc i32 %sub10 to i8
  %18 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  store i8 %conv11, i8* %18, align 1, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.54

if.else:                                          ; preds = %entry
  %19 = load i8, i8* %tos_shape.addr, align 1, !tbaa !7
  %conv12 = zext i8 %19 to i32
  %cmp13 = icmp ne i32 %conv12, 255
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.else
  %20 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom17 = sext i32 %20 to i64
  %21 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx18 = getelementptr inbounds i8, i8* %21, i64 %idxprom17
  %22 = load i8, i8* %arrayidx18, align 1, !tbaa !7
  store i8 %22, i8* %src_alpha, align 1, !tbaa !7
  %23 = load i8, i8* %src_alpha, align 1, !tbaa !7
  %conv19 = zext i8 %23 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.16
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.16
  %arraydecay = getelementptr inbounds [65 x i8], [65 x i8]* %src_tmp, i32 0, i32 0
  %24 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %25 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %add24 = add nsw i32 %25, 3
  %conv25 = sext i32 %add24 to i64
  %call = call i8* @memcpy(i8* %arraydecay, i8* %24, i64 %conv25) #4
  %26 = load i8, i8* %src_alpha, align 1, !tbaa !7
  %conv26 = zext i8 %26 to i32
  %27 = load i8, i8* %alpha.addr, align 1, !tbaa !7
  %conv27 = zext i8 %27 to i32
  %mul28 = mul nsw i32 %conv26, %conv27
  %add29 = add nsw i32 %mul28, 128
  store i32 %add29, i32* %tmp, align 4, !tbaa !1
  %28 = load i32, i32* %tmp, align 4, !tbaa !1
  %29 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr30 = ashr i32 %29, 8
  %add31 = add nsw i32 %28, %shr30
  %shr32 = ashr i32 %add31, 8
  %conv33 = trunc i32 %shr32 to i8
  %30 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [65 x i8], [65 x i8]* %src_tmp, i32 0, i64 %idxprom34
  store i8 %conv33, i8* %arrayidx35, align 1, !tbaa !7
  %31 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %32 = load i8, i8* %tos_shape.addr, align 1, !tbaa !7
  %33 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arraydecay36 = getelementptr inbounds [65 x i8], [65 x i8]* %src_tmp, i32 0, i32 0
  %34 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %35 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  %36 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  call void @art_pdf_knockout_composite_pixel_alpha_8(i8* %31, i8 zeroext %32, i8* %33, i8* %arraydecay36, i32 %34, i32 %35, %struct.pdf14_nonseparable_blending_procs_s* %36) #5
  %37 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  %cmp37 = icmp ne i8* %37, null
  br i1 %cmp37, label %if.then.39, label %if.end.53

if.then.39:                                       ; preds = %if.end.23
  %38 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  %39 = load i8, i8* %38, align 1, !tbaa !7
  %conv40 = zext i8 %39 to i32
  %sub41 = sub nsw i32 255, %conv40
  %40 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom42 = sext i32 %40 to i64
  %arrayidx43 = getelementptr inbounds [65 x i8], [65 x i8]* %src_tmp, i32 0, i64 %idxprom42
  %41 = load i8, i8* %arrayidx43, align 1, !tbaa !7
  %conv44 = zext i8 %41 to i32
  %sub45 = sub nsw i32 255, %conv44
  %mul46 = mul nsw i32 %sub41, %sub45
  %add47 = add nsw i32 %mul46, 128
  store i32 %add47, i32* %tmp, align 4, !tbaa !1
  %42 = load i32, i32* %tmp, align 4, !tbaa !1
  %43 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr48 = ashr i32 %43, 8
  %add49 = add nsw i32 %42, %shr48
  %shr50 = ashr i32 %add49, 8
  %sub51 = sub nsw i32 255, %shr50
  %conv52 = trunc i32 %sub51 to i8
  %44 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  store i8 %conv52, i8* %44, align 1, !tbaa !7
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.39, %if.end.23
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %if.then.22, %if.then.15
  %45 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast [65 x i8]* %src_tmp to i8*
  call void @llvm.lifetime.end(i64 65, i8* %46) #1
  call void @llvm.lifetime.end(i64 1, i8* %src_alpha) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @art_pdf_knockout_composite_pixel_alpha_8(i8* %backdrop, i8 zeroext %tos_shape, i8* %dst, i8* %src, i32 %n_chan, i32 %blend_mode, %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs) #0 {
entry:
  %backdrop.addr = alloca i8*, align 8
  %tos_shape.addr = alloca i8, align 1
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n_chan.addr = alloca i32, align 4
  %blend_mode.addr = alloca i32, align 4
  %pblend_procs.addr = alloca %struct.pdf14_nonseparable_blending_procs_s*, align 8
  %a_b = alloca i8, align 1
  %a_s = alloca i8, align 1
  %a_r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %src_scale = alloca i32, align 4
  %c_b = alloca i32, align 4
  %c_s = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %blend = alloca [64 x i8], align 16
  %c_bl = alloca i32, align 4
  %c_mix = alloca i32, align 4
  store i8* %backdrop, i8** %backdrop.addr, align 8, !tbaa !5
  store i8 %tos_shape, i8* %tos_shape.addr, align 1, !tbaa !7
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i32 %blend_mode, i32* %blend_mode.addr, align 4, !tbaa !7
  store %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %a_b) #1
  call void @llvm.lifetime.start(i64 1, i8* %a_s) #1
  %0 = bitcast i32* %a_r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %src_scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %c_b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %c_s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !7
  store i8 %8, i8* %a_s, align 1, !tbaa !7
  %9 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom5 = sext i32 %9 to i64
  %10 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  %11 = load i8, i8* %arrayidx6, align 1, !tbaa !7
  store i8 %11, i8* %a_b, align 1, !tbaa !7
  %12 = load i8, i8* %a_s, align 1, !tbaa !7
  %conv = zext i8 %12 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %13 = load i8, i8* %tos_shape.addr, align 1, !tbaa !7
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %14 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %15 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %16 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %add = add nsw i32 %16, 1
  %conv9 = sext i32 %add to i64
  %call = call i8* @memcpy(i8* %14, i8* %15, i64 %conv9) #4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %entry
  %17 = load i8, i8* %a_b, align 1, !tbaa !7
  %conv11 = zext i8 %17 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.end.10
  %18 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %19 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %20 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %add15 = add nsw i32 %20, 1
  %conv16 = sext i32 %add15 to i64
  %call17 = call i8* @memcpy(i8* %18, i8* %19, i64 %conv16) #4
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.10
  %21 = load i8, i8* %a_b, align 1, !tbaa !7
  %conv19 = zext i8 %21 to i32
  %sub = sub nsw i32 255, %conv19
  %22 = load i8, i8* %a_s, align 1, !tbaa !7
  %conv20 = zext i8 %22 to i32
  %sub21 = sub nsw i32 255, %conv20
  %mul = mul nsw i32 %sub, %sub21
  %add22 = add nsw i32 %mul, 128
  store i32 %add22, i32* %tmp, align 4, !tbaa !1
  %23 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %23, 8
  %24 = load i32, i32* %tmp, align 4, !tbaa !1
  %add23 = add nsw i32 %shr, %24
  %shr24 = ashr i32 %add23, 8
  %sub25 = sub nsw i32 255, %shr24
  store i32 %sub25, i32* %a_r, align 4, !tbaa !1
  %25 = load i8, i8* %a_s, align 1, !tbaa !7
  %conv26 = zext i8 %25 to i32
  %shl = shl i32 %conv26, 16
  %26 = load i32, i32* %a_r, align 4, !tbaa !1
  %shr27 = lshr i32 %26, 1
  %add28 = add i32 %shl, %shr27
  %27 = load i32, i32* %a_r, align 4, !tbaa !1
  %div = udiv i32 %add28, %27
  store i32 %div, i32* %src_scale, align 4, !tbaa !1
  %28 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  %cmp29 = icmp eq i32 %28, 0
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.18
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.31
  %29 = load i32, i32* %i, align 4, !tbaa !1
  %30 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp32 = icmp slt i32 %29, %30
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom34 = sext i32 %31 to i64
  %32 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx35 = getelementptr inbounds i8, i8* %32, i64 %idxprom34
  %33 = load i8, i8* %arrayidx35, align 1, !tbaa !7
  %conv36 = zext i8 %33 to i32
  store i32 %conv36, i32* %c_s, align 4, !tbaa !1
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom37 = sext i32 %34 to i64
  %35 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %arrayidx38 = getelementptr inbounds i8, i8* %35, i64 %idxprom37
  %36 = load i8, i8* %arrayidx38, align 1, !tbaa !7
  %conv39 = zext i8 %36 to i32
  store i32 %conv39, i32* %c_b, align 4, !tbaa !1
  %37 = load i32, i32* %c_b, align 4, !tbaa !1
  %shl40 = shl i32 %37, 16
  %38 = load i32, i32* %src_scale, align 4, !tbaa !1
  %39 = load i32, i32* %c_s, align 4, !tbaa !1
  %40 = load i32, i32* %c_b, align 4, !tbaa !1
  %sub41 = sub nsw i32 %39, %40
  %mul42 = mul nsw i32 %38, %sub41
  %add43 = add nsw i32 %shl40, %mul42
  %add44 = add nsw i32 %add43, 32768
  store i32 %add44, i32* %tmp, align 4, !tbaa !1
  %41 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr45 = ashr i32 %41, 16
  %conv46 = trunc i32 %shr45 to i8
  %42 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom47 = sext i32 %42 to i64
  %43 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx48 = getelementptr inbounds i8, i8* %43, i64 %idxprom47
  store i8 %conv46, i8* %arrayidx48, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.85

if.else:                                          ; preds = %if.end.18
  %45 = bitcast [64 x i8]* %blend to i8*
  call void @llvm.lifetime.start(i64 64, i8* %45) #1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %blend, i32 0, i32 0
  %46 = load i8*, i8** %backdrop.addr, align 8, !tbaa !5
  %47 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %48 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %49 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  %50 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  call void @art_blend_pixel_8(i8* %arraydecay, i8* %46, i8* %47, i32 %48, i32 %49, %struct.pdf14_nonseparable_blending_procs_s* %50) #5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.82, %if.else
  %51 = load i32, i32* %i, align 4, !tbaa !1
  %52 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp51 = icmp slt i32 %51, %52
  br i1 %cmp51, label %for.body.53, label %for.end.84

for.body.53:                                      ; preds = %for.cond.50
  %53 = bitcast i32* %c_bl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = bitcast i32* %c_mix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom56 = sext i32 %55 to i64
  %56 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx57 = getelementptr inbounds i8, i8* %56, i64 %idxprom56
  %57 = load i8, i8* %arrayidx57, align 1, !tbaa !7
  %conv58 = zext i8 %57 to i32
  store i32 %conv58, i32* %c_s, align 4, !tbaa !1
  %58 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom59 = sext i32 %58 to i64
  %59 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx60 = getelementptr inbounds i8, i8* %59, i64 %idxprom59
  %60 = load i8, i8* %arrayidx60, align 1, !tbaa !7
  %conv61 = zext i8 %60 to i32
  store i32 %conv61, i32* %c_b, align 4, !tbaa !1
  %61 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom62 = sext i32 %61 to i64
  %arrayidx63 = getelementptr inbounds [64 x i8], [64 x i8]* %blend, i32 0, i64 %idxprom62
  %62 = load i8, i8* %arrayidx63, align 1, !tbaa !7
  %conv64 = zext i8 %62 to i32
  store i32 %conv64, i32* %c_bl, align 4, !tbaa !1
  %63 = load i8, i8* %a_b, align 1, !tbaa !7
  %conv65 = zext i8 %63 to i32
  %64 = load i32, i32* %c_bl, align 4, !tbaa !1
  %65 = load i32, i32* %c_s, align 4, !tbaa !1
  %sub66 = sub nsw i32 %64, %65
  %mul67 = mul nsw i32 %conv65, %sub66
  %add68 = add nsw i32 %mul67, 128
  store i32 %add68, i32* %tmp, align 4, !tbaa !1
  %66 = load i32, i32* %c_s, align 4, !tbaa !1
  %67 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr69 = ashr i32 %67, 8
  %68 = load i32, i32* %tmp, align 4, !tbaa !1
  %add70 = add nsw i32 %shr69, %68
  %shr71 = ashr i32 %add70, 8
  %add72 = add nsw i32 %66, %shr71
  store i32 %add72, i32* %c_mix, align 4, !tbaa !1
  %69 = load i32, i32* %c_b, align 4, !tbaa !1
  %shl73 = shl i32 %69, 16
  %70 = load i32, i32* %src_scale, align 4, !tbaa !1
  %71 = load i32, i32* %c_mix, align 4, !tbaa !1
  %72 = load i32, i32* %c_b, align 4, !tbaa !1
  %sub74 = sub nsw i32 %71, %72
  %mul75 = mul nsw i32 %70, %sub74
  %add76 = add nsw i32 %shl73, %mul75
  %add77 = add nsw i32 %add76, 32768
  store i32 %add77, i32* %tmp, align 4, !tbaa !1
  %73 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr78 = ashr i32 %73, 16
  %conv79 = trunc i32 %shr78 to i8
  %74 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom80 = sext i32 %74 to i64
  %75 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx81 = getelementptr inbounds i8, i8* %75, i64 %idxprom80
  store i8 %conv79, i8* %arrayidx81, align 1, !tbaa !7
  %76 = bitcast i32* %c_mix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %c_bl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.53
  %78 = load i32, i32* %i, align 4, !tbaa !1
  %inc83 = add nsw i32 %78, 1
  store i32 %inc83, i32* %i, align 4, !tbaa !1
  br label %for.cond.50

for.end.84:                                       ; preds = %for.cond.50
  %79 = bitcast [64 x i8]* %blend to i8*
  call void @llvm.lifetime.end(i64 64, i8* %79) #1
  br label %if.end.85

if.end.85:                                        ; preds = %for.end.84, %for.end
  %80 = load i32, i32* %a_r, align 4, !tbaa !1
  %conv86 = trunc i32 %80 to i8
  %81 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom87 = sext i32 %81 to i64
  %82 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx88 = getelementptr inbounds i8, i8* %82, i64 %idxprom87
  store i8 %conv86, i8* %arrayidx88, align 1, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.85, %if.then.14, %if.end
  %83 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %c_s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %c_b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %src_scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %a_r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  call void @llvm.lifetime.end(i64 1, i8* %a_s) #1
  call void @llvm.lifetime.end(i64 1, i8* %a_b) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @art_pdf_composite_group_8(i8* %dst, i8* %dst_alpha_g, i8* %src, i32 %n_chan, i8 zeroext %alpha, i32 %blend_mode, %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %dst_alpha_g.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n_chan.addr = alloca i32, align 4
  %alpha.addr = alloca i8, align 1
  %blend_mode.addr = alloca i32, align 4
  %pblend_procs.addr = alloca %struct.pdf14_nonseparable_blending_procs_s*, align 8
  %src_alpha = alloca i8, align 1
  %src_tmp = alloca [65 x i8], align 16
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %dst_alpha_g, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i8 %alpha, i8* %alpha.addr, align 1, !tbaa !7
  store i32 %blend_mode, i32* %blend_mode.addr, align 4, !tbaa !7
  store %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %src_alpha) #1
  %0 = bitcast [65 x i8]* %src_tmp to i8*
  call void @llvm.lifetime.start(i64 65, i8* %0) #1
  %1 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8, i8* %alpha.addr, align 1, !tbaa !7
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %4 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %5 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %6 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  %7 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  call void @art_pdf_composite_pixel_alpha_8(i8* %3, i8* %4, i32 %5, i32 %6, %struct.pdf14_nonseparable_blending_procs_s* %7) #5
  %8 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  %cmp2 = icmp ne i8* %8, null
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  %10 = load i8, i8* %9, align 1, !tbaa !7
  %conv5 = zext i8 %10 to i32
  %sub = sub nsw i32 255, %conv5
  %11 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom = sext i32 %11 to i64
  %12 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv6 = zext i8 %13 to i32
  %sub7 = sub nsw i32 255, %conv6
  %mul = mul nsw i32 %sub, %sub7
  %add = add nsw i32 %mul, 128
  store i32 %add, i32* %tmp, align 4, !tbaa !1
  %14 = load i32, i32* %tmp, align 4, !tbaa !1
  %15 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %15, 8
  %add8 = add nsw i32 %14, %shr
  %shr9 = ashr i32 %add8, 8
  %sub10 = sub nsw i32 255, %shr9
  %conv11 = trunc i32 %sub10 to i8
  %16 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  store i8 %conv11, i8* %16, align 1, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.49

if.else:                                          ; preds = %entry
  %17 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom12 = sext i32 %17 to i64
  %18 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx13 = getelementptr inbounds i8, i8* %18, i64 %idxprom12
  %19 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  store i8 %19, i8* %src_alpha, align 1, !tbaa !7
  %20 = load i8, i8* %src_alpha, align 1, !tbaa !7
  %conv14 = zext i8 %20 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.else
  %arraydecay = getelementptr inbounds [65 x i8], [65 x i8]* %src_tmp, i32 0, i32 0
  %21 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %22 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %add19 = add nsw i32 %22, 3
  %conv20 = sext i32 %add19 to i64
  %call = call i8* @memcpy(i8* %arraydecay, i8* %21, i64 %conv20) #4
  %23 = load i8, i8* %src_alpha, align 1, !tbaa !7
  %conv21 = zext i8 %23 to i32
  %24 = load i8, i8* %alpha.addr, align 1, !tbaa !7
  %conv22 = zext i8 %24 to i32
  %mul23 = mul nsw i32 %conv21, %conv22
  %add24 = add nsw i32 %mul23, 128
  store i32 %add24, i32* %tmp, align 4, !tbaa !1
  %25 = load i32, i32* %tmp, align 4, !tbaa !1
  %26 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr25 = ashr i32 %26, 8
  %add26 = add nsw i32 %25, %shr25
  %shr27 = ashr i32 %add26, 8
  %conv28 = trunc i32 %shr27 to i8
  %27 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom29 = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds [65 x i8], [65 x i8]* %src_tmp, i32 0, i64 %idxprom29
  store i8 %conv28, i8* %arrayidx30, align 1, !tbaa !7
  %28 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arraydecay31 = getelementptr inbounds [65 x i8], [65 x i8]* %src_tmp, i32 0, i32 0
  %29 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %30 = load i32, i32* %blend_mode.addr, align 4, !tbaa !7
  %31 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !5
  call void @art_pdf_composite_pixel_alpha_8(i8* %28, i8* %arraydecay31, i32 %29, i32 %30, %struct.pdf14_nonseparable_blending_procs_s* %31) #5
  %32 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  %cmp32 = icmp ne i8* %32, null
  br i1 %cmp32, label %if.then.34, label %if.end.48

if.then.34:                                       ; preds = %if.end.18
  %33 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  %34 = load i8, i8* %33, align 1, !tbaa !7
  %conv35 = zext i8 %34 to i32
  %sub36 = sub nsw i32 255, %conv35
  %35 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom37 = sext i32 %35 to i64
  %arrayidx38 = getelementptr inbounds [65 x i8], [65 x i8]* %src_tmp, i32 0, i64 %idxprom37
  %36 = load i8, i8* %arrayidx38, align 1, !tbaa !7
  %conv39 = zext i8 %36 to i32
  %sub40 = sub nsw i32 255, %conv39
  %mul41 = mul nsw i32 %sub36, %sub40
  %add42 = add nsw i32 %mul41, 128
  store i32 %add42, i32* %tmp, align 4, !tbaa !1
  %37 = load i32, i32* %tmp, align 4, !tbaa !1
  %38 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr43 = ashr i32 %38, 8
  %add44 = add nsw i32 %37, %shr43
  %shr45 = ashr i32 %add44, 8
  %sub46 = sub nsw i32 255, %shr45
  %conv47 = trunc i32 %sub46 to i8
  %39 = load i8*, i8** %dst_alpha_g.addr, align 8, !tbaa !5
  store i8 %conv47, i8* %39, align 1, !tbaa !7
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.34, %if.end.18
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.49, %if.then.17
  %40 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast [65 x i8]* %src_tmp to i8*
  call void @llvm.lifetime.end(i64 65, i8* %41) #1
  call void @llvm.lifetime.end(i64 1, i8* %src_alpha) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @art_pdf_knockoutisolated_group_8(i8* %dst, i8* %src, i32 %n_chan) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n_chan.addr = alloca i32, align 4
  %src_alpha = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %src_alpha) #1
  %0 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  store i8 %2, i8* %src_alpha, align 1, !tbaa !7
  %3 = load i8, i8* %src_alpha, align 1, !tbaa !7
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %5 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %6 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %add = add nsw i32 %6, 1
  %conv2 = sext i32 %add to i64
  %call = call i8* @memcpy(i8* %4, i8* %5, i64 %conv2) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %src_alpha) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @art_pdf_composite_knockout_simple_8(i8* %dst, i8* %dst_shape, i8* %dst_tag, i8* %src, i8 zeroext %tag, i32 %n_chan, i8 zeroext %opacity) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %dst_shape.addr = alloca i8*, align 8
  %dst_tag.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %tag.addr = alloca i8, align 1
  %n_chan.addr = alloca i32, align 4
  %opacity.addr = alloca i8, align 1
  %src_shape = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dst_alpha = alloca i32, align 4
  %result_alpha = alloca i8, align 1
  %tmp = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %dst_shape, i8** %dst_shape.addr, align 8, !tbaa !5
  store i8* %dst_tag, i8** %dst_tag.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i8 %tag, i8* %tag.addr, align 1, !tbaa !7
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i8 %opacity, i8* %opacity.addr, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %src_shape) #1
  %0 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  store i8 %2, i8* %src_shape, align 1, !tbaa !7
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8, i8* %src_shape, align 1, !tbaa !7
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %5 = load i8, i8* %src_shape, align 1, !tbaa !7
  %conv2 = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 255
  br i1 %cmp3, label %if.then.5, label %if.else.12

if.then.5:                                        ; preds = %if.else
  %6 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %7 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %8 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %add = add nsw i32 %8, 3
  %conv6 = sext i32 %add to i64
  %call = call i8* @memcpy(i8* %6, i8* %7, i64 %conv6) #4
  %9 = load i8, i8* %opacity.addr, align 1, !tbaa !7
  %10 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom7 = sext i32 %10 to i64
  %11 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 %idxprom7
  store i8 %9, i8* %arrayidx8, align 1, !tbaa !7
  %12 = load i8*, i8** %dst_shape.addr, align 8, !tbaa !5
  %cmp9 = icmp ne i8* %12, null
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.5
  %13 = load i8*, i8** %dst_shape.addr, align 8, !tbaa !5
  store i8 -1, i8* %13, align 1, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then.5
  br label %if.end.69

if.else.12:                                       ; preds = %if.else
  %14 = bitcast i32* %dst_alpha to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom13 = sext i32 %15 to i64
  %16 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx14 = getelementptr inbounds i8, i8* %16, i64 %idxprom13
  %17 = load i8, i8* %arrayidx14, align 1, !tbaa !7
  %conv15 = zext i8 %17 to i32
  store i32 %conv15, i32* %dst_alpha, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %result_alpha) #1
  %18 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i8, i8* %opacity.addr, align 1, !tbaa !7
  %conv16 = zext i8 %19 to i32
  %20 = load i32, i32* %dst_alpha, align 4, !tbaa !1
  %sub = sub nsw i32 %conv16, %20
  %21 = load i8, i8* %src_shape, align 1, !tbaa !7
  %conv17 = zext i8 %21 to i32
  %mul = mul nsw i32 %sub, %conv17
  %add18 = add nsw i32 %mul, 128
  store i32 %add18, i32* %tmp, align 4, !tbaa !1
  %22 = load i32, i32* %dst_alpha, align 4, !tbaa !1
  %23 = load i32, i32* %tmp, align 4, !tbaa !1
  %24 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %24, 8
  %add19 = add nsw i32 %23, %shr
  %shr20 = ashr i32 %add19, 8
  %add21 = add nsw i32 %22, %shr20
  %conv22 = trunc i32 %add21 to i8
  store i8 %conv22, i8* %result_alpha, align 1, !tbaa !7
  %25 = load i8, i8* %result_alpha, align 1, !tbaa !7
  %conv23 = zext i8 %25 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.51

if.then.26:                                       ; preds = %if.else.12
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.26
  %26 = load i32, i32* %i, align 4, !tbaa !1
  %27 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp27 = icmp slt i32 %26, %27
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom29 = sext i32 %28 to i64
  %29 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx30 = getelementptr inbounds i8, i8* %29, i64 %idxprom29
  %30 = load i8, i8* %arrayidx30, align 1, !tbaa !7
  %conv31 = zext i8 %30 to i32
  %31 = load i32, i32* %dst_alpha, align 4, !tbaa !1
  %mul32 = mul nsw i32 %conv31, %31
  %32 = load i8, i8* %src_shape, align 1, !tbaa !7
  %conv33 = zext i8 %32 to i32
  %sub34 = sub nsw i32 255, %conv33
  %mul35 = mul nsw i32 %mul32, %sub34
  %33 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom36 = sext i32 %33 to i64
  %34 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx37 = getelementptr inbounds i8, i8* %34, i64 %idxprom36
  %35 = load i8, i8* %arrayidx37, align 1, !tbaa !7
  %conv38 = zext i8 %35 to i32
  %36 = load i8, i8* %opacity.addr, align 1, !tbaa !7
  %conv39 = zext i8 %36 to i32
  %mul40 = mul nsw i32 %conv38, %conv39
  %37 = load i8, i8* %src_shape, align 1, !tbaa !7
  %conv41 = zext i8 %37 to i32
  %mul42 = mul nsw i32 %mul40, %conv41
  %add43 = add nsw i32 %mul35, %mul42
  %38 = load i8, i8* %result_alpha, align 1, !tbaa !7
  %conv44 = zext i8 %38 to i32
  %shl = shl i32 %conv44, 7
  %add45 = add nsw i32 %add43, %shl
  store i32 %add45, i32* %tmp, align 4, !tbaa !1
  %39 = load i32, i32* %tmp, align 4, !tbaa !1
  %40 = load i8, i8* %result_alpha, align 1, !tbaa !7
  %conv46 = zext i8 %40 to i32
  %mul47 = mul nsw i32 %conv46, 255
  %div = sdiv i32 %39, %mul47
  %conv48 = trunc i32 %div to i8
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom49 = sext i32 %41 to i64
  %42 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx50 = getelementptr inbounds i8, i8* %42, i64 %idxprom49
  store i8 %conv48, i8* %arrayidx50, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.51

if.end.51:                                        ; preds = %for.end, %if.else.12
  %44 = load i8, i8* %result_alpha, align 1, !tbaa !7
  %45 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom52 = sext i32 %45 to i64
  %46 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx53 = getelementptr inbounds i8, i8* %46, i64 %idxprom52
  store i8 %44, i8* %arrayidx53, align 1, !tbaa !7
  %47 = load i8*, i8** %dst_shape.addr, align 8, !tbaa !5
  %cmp54 = icmp ne i8* %47, null
  br i1 %cmp54, label %if.then.56, label %if.end.68

if.then.56:                                       ; preds = %if.end.51
  %48 = load i8*, i8** %dst_shape.addr, align 8, !tbaa !5
  %49 = load i8, i8* %48, align 1, !tbaa !7
  %conv57 = zext i8 %49 to i32
  %sub58 = sub nsw i32 255, %conv57
  %50 = load i8, i8* %src_shape, align 1, !tbaa !7
  %conv59 = zext i8 %50 to i32
  %sub60 = sub nsw i32 255, %conv59
  %mul61 = mul nsw i32 %sub58, %sub60
  %add62 = add nsw i32 %mul61, 128
  store i32 %add62, i32* %tmp, align 4, !tbaa !1
  %51 = load i32, i32* %tmp, align 4, !tbaa !1
  %52 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr63 = ashr i32 %52, 8
  %add64 = add nsw i32 %51, %shr63
  %shr65 = ashr i32 %add64, 8
  %sub66 = sub nsw i32 255, %shr65
  %conv67 = trunc i32 %sub66 to i8
  %53 = load i8*, i8** %dst_shape.addr, align 8, !tbaa !5
  store i8 %conv67, i8* %53, align 1, !tbaa !7
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.56, %if.end.51
  %54 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  call void @llvm.lifetime.end(i64 1, i8* %result_alpha) #1
  %55 = bitcast i32* %dst_alpha to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.70, %if.then
  %56 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  call void @llvm.lifetime.end(i64 1, i8* %src_shape) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @art_pdf_composite_knockout_isolated_8(i8* %dst, i8* %dst_shape, i8* %dst_tag, i8* %src, i32 %n_chan, i8 zeroext %shape, i8 zeroext %tag, i8 zeroext %alpha_mask, i8 zeroext %shape_mask, i32 %has_mask) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %dst_shape.addr = alloca i8*, align 8
  %dst_tag.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n_chan.addr = alloca i32, align 4
  %shape.addr = alloca i8, align 1
  %tag.addr = alloca i8, align 1
  %alpha_mask.addr = alloca i8, align 1
  %shape_mask.addr = alloca i8, align 1
  %has_mask.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %src_shape = alloca i8, align 1
  %src_alpha = alloca i8, align 1
  %dst_alpha = alloca i32, align 4
  %result_alpha = alloca i8, align 1
  %tmp37 = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !5
  store i8* %dst_shape, i8** %dst_shape.addr, align 8, !tbaa !5
  store i8* %dst_tag, i8** %dst_tag.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i8 %shape, i8* %shape.addr, align 1, !tbaa !7
  store i8 %tag, i8* %tag.addr, align 1, !tbaa !7
  store i8 %alpha_mask, i8* %alpha_mask.addr, align 1, !tbaa !7
  store i8 %shape_mask, i8* %shape_mask.addr, align 1, !tbaa !7
  store i32 %has_mask, i32* %has_mask.addr, align 4, !tbaa !1
  %0 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8, i8* %shape.addr, align 1, !tbaa !7
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %has_mask.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load i8, i8* %alpha_mask.addr, align 1, !tbaa !7
  %5 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  store i8 %4, i8* %arrayidx, align 1, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %7 = load i8, i8* %shape.addr, align 1, !tbaa !7
  %conv4 = zext i8 %7 to i32
  %8 = load i8, i8* %shape_mask.addr, align 1, !tbaa !7
  %conv5 = zext i8 %8 to i32
  %and = and i32 %conv4, %conv5
  %cmp6 = icmp eq i32 %and, 255
  br i1 %cmp6, label %if.then.8, label %if.else.28

if.then.8:                                        ; preds = %if.else
  %9 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %10 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %11 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %add = add nsw i32 %11, 3
  %conv9 = sext i32 %add to i64
  %call = call i8* @memcpy(i8* %9, i8* %10, i64 %conv9) #4
  %12 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom10 = sext i32 %12 to i64
  %13 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 %idxprom10
  %14 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %conv12 = zext i8 %14 to i32
  %15 = load i8, i8* %alpha_mask.addr, align 1, !tbaa !7
  %conv13 = zext i8 %15 to i32
  %mul = mul nsw i32 %conv12, %conv13
  %add14 = add nsw i32 %mul, 128
  store i32 %add14, i32* %tmp, align 4, !tbaa !1
  %16 = load i32, i32* %tmp, align 4, !tbaa !1
  %17 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %17, 8
  %add15 = add nsw i32 %16, %shr
  %shr16 = ashr i32 %add15, 8
  %conv17 = trunc i32 %shr16 to i8
  %18 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom18 = sext i32 %18 to i64
  %19 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 %idxprom18
  store i8 %conv17, i8* %arrayidx19, align 1, !tbaa !7
  %20 = load i8*, i8** %dst_shape.addr, align 8, !tbaa !5
  %cmp20 = icmp ne i8* %20, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.8
  %21 = load i8*, i8** %dst_shape.addr, align 8, !tbaa !5
  store i8 -1, i8* %21, align 1, !tbaa !7
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.8
  %22 = load i8*, i8** %dst_tag.addr, align 8, !tbaa !5
  %cmp24 = icmp ne i8* %22, null
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  %23 = load i8, i8* %tag.addr, align 1, !tbaa !7
  %24 = load i8*, i8** %dst_tag.addr, align 8, !tbaa !5
  store i8 %23, i8* %24, align 1, !tbaa !7
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.23
  br label %if.end.119

if.else.28:                                       ; preds = %if.else
  call void @llvm.lifetime.start(i64 1, i8* %src_shape) #1
  call void @llvm.lifetime.start(i64 1, i8* %src_alpha) #1
  %25 = bitcast i32* %dst_alpha to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom32 = sext i32 %26 to i64
  %27 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx33 = getelementptr inbounds i8, i8* %27, i64 %idxprom32
  %28 = load i8, i8* %arrayidx33, align 1, !tbaa !7
  %conv34 = zext i8 %28 to i32
  store i32 %conv34, i32* %dst_alpha, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %result_alpha) #1
  %29 = bitcast i32* %tmp37 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i8, i8* %shape.addr, align 1, !tbaa !7
  %conv38 = zext i8 %30 to i32
  %31 = load i8, i8* %shape_mask.addr, align 1, !tbaa !7
  %conv39 = zext i8 %31 to i32
  %mul40 = mul nsw i32 %conv38, %conv39
  %add41 = add nsw i32 %mul40, 128
  store i32 %add41, i32* %tmp37, align 4, !tbaa !1
  %32 = load i32, i32* %tmp37, align 4, !tbaa !1
  %33 = load i32, i32* %tmp37, align 4, !tbaa !1
  %shr42 = ashr i32 %33, 8
  %add43 = add nsw i32 %32, %shr42
  %shr44 = ashr i32 %add43, 8
  %conv45 = trunc i32 %shr44 to i8
  store i8 %conv45, i8* %src_shape, align 1, !tbaa !7
  %34 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom46 = sext i32 %34 to i64
  %35 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx47 = getelementptr inbounds i8, i8* %35, i64 %idxprom46
  %36 = load i8, i8* %arrayidx47, align 1, !tbaa !7
  %conv48 = zext i8 %36 to i32
  %37 = load i8, i8* %alpha_mask.addr, align 1, !tbaa !7
  %conv49 = zext i8 %37 to i32
  %mul50 = mul nsw i32 %conv48, %conv49
  %add51 = add nsw i32 %mul50, 128
  store i32 %add51, i32* %tmp37, align 4, !tbaa !1
  %38 = load i32, i32* %tmp37, align 4, !tbaa !1
  %39 = load i32, i32* %tmp37, align 4, !tbaa !1
  %shr52 = ashr i32 %39, 8
  %add53 = add nsw i32 %38, %shr52
  %shr54 = ashr i32 %add53, 8
  %conv55 = trunc i32 %shr54 to i8
  store i8 %conv55, i8* %src_alpha, align 1, !tbaa !7
  %40 = load i8, i8* %src_alpha, align 1, !tbaa !7
  %conv56 = zext i8 %40 to i32
  %41 = load i32, i32* %dst_alpha, align 4, !tbaa !1
  %sub = sub nsw i32 %conv56, %41
  %42 = load i8, i8* %src_shape, align 1, !tbaa !7
  %conv57 = zext i8 %42 to i32
  %mul58 = mul nsw i32 %sub, %conv57
  %add59 = add nsw i32 %mul58, 128
  store i32 %add59, i32* %tmp37, align 4, !tbaa !1
  %43 = load i32, i32* %dst_alpha, align 4, !tbaa !1
  %44 = load i32, i32* %tmp37, align 4, !tbaa !1
  %45 = load i32, i32* %tmp37, align 4, !tbaa !1
  %shr60 = ashr i32 %45, 8
  %add61 = add nsw i32 %44, %shr60
  %shr62 = ashr i32 %add61, 8
  %add63 = add nsw i32 %43, %shr62
  %conv64 = trunc i32 %add63 to i8
  store i8 %conv64, i8* %result_alpha, align 1, !tbaa !7
  %46 = load i8, i8* %result_alpha, align 1, !tbaa !7
  %conv65 = zext i8 %46 to i32
  %cmp66 = icmp ne i32 %conv65, 0
  br i1 %cmp66, label %if.then.68, label %if.end.93

if.then.68:                                       ; preds = %if.else.28
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.68
  %47 = load i32, i32* %i, align 4, !tbaa !1
  %48 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp69 = icmp slt i32 %47, %48
  br i1 %cmp69, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom71 = sext i32 %49 to i64
  %50 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx72 = getelementptr inbounds i8, i8* %50, i64 %idxprom71
  %51 = load i8, i8* %arrayidx72, align 1, !tbaa !7
  %conv73 = zext i8 %51 to i32
  %52 = load i32, i32* %dst_alpha, align 4, !tbaa !1
  %mul74 = mul nsw i32 %conv73, %52
  %53 = load i8, i8* %src_shape, align 1, !tbaa !7
  %conv75 = zext i8 %53 to i32
  %sub76 = sub nsw i32 255, %conv75
  %mul77 = mul nsw i32 %mul74, %sub76
  %54 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom78 = sext i32 %54 to i64
  %55 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx79 = getelementptr inbounds i8, i8* %55, i64 %idxprom78
  %56 = load i8, i8* %arrayidx79, align 1, !tbaa !7
  %conv80 = zext i8 %56 to i32
  %57 = load i8, i8* %src_alpha, align 1, !tbaa !7
  %conv81 = zext i8 %57 to i32
  %mul82 = mul nsw i32 %conv80, %conv81
  %58 = load i8, i8* %src_shape, align 1, !tbaa !7
  %conv83 = zext i8 %58 to i32
  %mul84 = mul nsw i32 %mul82, %conv83
  %add85 = add nsw i32 %mul77, %mul84
  %59 = load i8, i8* %result_alpha, align 1, !tbaa !7
  %conv86 = zext i8 %59 to i32
  %shl = shl i32 %conv86, 7
  %add87 = add nsw i32 %add85, %shl
  store i32 %add87, i32* %tmp37, align 4, !tbaa !1
  %60 = load i32, i32* %tmp37, align 4, !tbaa !1
  %61 = load i8, i8* %result_alpha, align 1, !tbaa !7
  %conv88 = zext i8 %61 to i32
  %mul89 = mul nsw i32 %conv88, 255
  %div = sdiv i32 %60, %mul89
  %conv90 = trunc i32 %div to i8
  %62 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom91 = sext i32 %62 to i64
  %63 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx92 = getelementptr inbounds i8, i8* %63, i64 %idxprom91
  store i8 %conv90, i8* %arrayidx92, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.93

if.end.93:                                        ; preds = %for.end, %if.else.28
  %65 = load i8, i8* %result_alpha, align 1, !tbaa !7
  %66 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom94 = sext i32 %66 to i64
  %67 = load i8*, i8** %dst.addr, align 8, !tbaa !5
  %arrayidx95 = getelementptr inbounds i8, i8* %67, i64 %idxprom94
  store i8 %65, i8* %arrayidx95, align 1, !tbaa !7
  %68 = load i8*, i8** %dst_shape.addr, align 8, !tbaa !5
  %cmp96 = icmp ne i8* %68, null
  br i1 %cmp96, label %if.then.98, label %if.end.110

if.then.98:                                       ; preds = %if.end.93
  %69 = load i8*, i8** %dst_shape.addr, align 8, !tbaa !5
  %70 = load i8, i8* %69, align 1, !tbaa !7
  %conv99 = zext i8 %70 to i32
  %sub100 = sub nsw i32 255, %conv99
  %71 = load i8, i8* %src_shape, align 1, !tbaa !7
  %conv101 = zext i8 %71 to i32
  %sub102 = sub nsw i32 255, %conv101
  %mul103 = mul nsw i32 %sub100, %sub102
  %add104 = add nsw i32 %mul103, 128
  store i32 %add104, i32* %tmp37, align 4, !tbaa !1
  %72 = load i32, i32* %tmp37, align 4, !tbaa !1
  %73 = load i32, i32* %tmp37, align 4, !tbaa !1
  %shr105 = ashr i32 %73, 8
  %add106 = add nsw i32 %72, %shr105
  %shr107 = ashr i32 %add106, 8
  %sub108 = sub nsw i32 255, %shr107
  %conv109 = trunc i32 %sub108 to i8
  %74 = load i8*, i8** %dst_shape.addr, align 8, !tbaa !5
  store i8 %conv109, i8* %74, align 1, !tbaa !7
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.98, %if.end.93
  %75 = load i8*, i8** %dst_tag.addr, align 8, !tbaa !5
  %cmp111 = icmp ne i8* %75, null
  br i1 %cmp111, label %if.then.113, label %if.end.118

if.then.113:                                      ; preds = %if.end.110
  %76 = load i8*, i8** %dst_tag.addr, align 8, !tbaa !5
  %77 = load i8, i8* %76, align 1, !tbaa !7
  %conv114 = zext i8 %77 to i32
  %78 = load i8, i8* %tag.addr, align 1, !tbaa !7
  %conv115 = zext i8 %78 to i32
  %or = or i32 %conv114, %conv115
  %and116 = and i32 %or, -9
  %conv117 = trunc i32 %and116 to i8
  %79 = load i8*, i8** %dst_tag.addr, align 8, !tbaa !5
  store i8 %conv117, i8* %79, align 1, !tbaa !7
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.113, %if.end.110
  %80 = bitcast i32* %tmp37 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  call void @llvm.lifetime.end(i64 1, i8* %result_alpha) #1
  %81 = bitcast i32* %dst_alpha to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  call void @llvm.lifetime.end(i64 1, i8* %src_alpha) #1
  call void @llvm.lifetime.end(i64 1, i8* %src_shape) #1
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.27
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.120, %if.end
  %82 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !3, i64 0}
!10 = !{!11, !6, i64 8}
!11 = !{!"gsicc_link_s", !6, i64 0, !12, i64 8, !13, i64 40, !6, i64 72, !2, i64 80, !6, i64 88, !6, i64 96, !2, i64 104, !2, i64 108, !2, i64 112, !2, i64 116, !2, i64 120, !2, i64 124, !12, i64 128, !3, i64 160, !2, i64 164, !2, i64 168}
!12 = !{!"gscms_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!13 = !{!"gsicc_hashlink_s", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!14 = !{!"long", !3, i64 0}
!15 = !{!16, !6, i64 0}
!16 = !{!"", !6, i64 0, !6, i64 8}
!17 = !{!16, !6, i64 8}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !3, i64 0}
