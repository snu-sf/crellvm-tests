; ModuleID = './gxdcconv.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
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
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
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
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type opaque
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
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
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
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
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gsicc_manager_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_devicen_s*, %struct.gsicc_smask_s*, i32, %struct.cmm_srcgtag_profile_s*, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gsicc_devicen_s = type { %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s*, i32 }
%struct.gsicc_devicen_entry_s = type { %struct.cmm_profile_s*, %struct.gsicc_devicen_entry_s* }
%struct.gsicc_smask_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gs_memory_s*, i32 }
%struct.cmm_srcgtag_profile_s = type { [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], %struct.cmm_profile_s*, %struct.gs_memory_s*, i32, i8*, %struct.rc_header_s }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_halftone_s = type opaque
%struct.gx_device_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }

; Function Attrs: nounwind uwtable
define signext i16 @color_rgb_to_gray(i16 signext %r, i16 signext %g, i16 signext %b, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store i16 %r, i16* %r.addr, align 2, !tbaa !1
  store i16 %g, i16* %g.addr, align 2, !tbaa !1
  store i16 %b, i16* %b.addr, align 2, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %0 = load i16, i16* %r.addr, align 2, !tbaa !1
  %conv = sext i16 %0 to i64
  %mul = mul i64 %conv, 30
  %1 = load i16, i16* %g.addr, align 2, !tbaa !1
  %conv1 = sext i16 %1 to i64
  %mul2 = mul i64 %conv1, 59
  %add = add i64 %mul, %mul2
  %2 = load i16, i16* %b.addr, align 2, !tbaa !1
  %conv3 = sext i16 %2 to i64
  %mul4 = mul i64 %conv3, 11
  %add5 = add i64 %add, %mul4
  %add6 = add i64 %add5, 50
  %div = udiv i64 %add6, 100
  %conv7 = trunc i64 %div to i16
  ret i16 %conv7
}

; Function Attrs: nounwind uwtable
define void @color_rgb_to_cmyk(i16 signext %r, i16 signext %g, i16 signext %b, %struct.gs_imager_state_s* %pis, i16* %cmyk, %struct.gs_memory_s* %mem) #0 {
entry:
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %cmyk.addr = alloca i16*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %c = alloca i16, align 2
  %m = alloca i16, align 2
  %y = alloca i16, align 2
  %k = alloca i16, align 2
  %bg = alloca i16, align 2
  %ucr = alloca i16, align 2
  %not_ucr = alloca i16, align 2
  %denom = alloca float, align 4
  %v = alloca float, align 4
  store i16 %r, i16* %r.addr, align 2, !tbaa !1
  store i16 %g, i16* %g.addr, align 2, !tbaa !1
  store i16 %b, i16* %b.addr, align 2, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  store i16* %cmyk, i16** %cmyk.addr, align 8, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %0 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16, i16* %r.addr, align 2, !tbaa !1
  %conv = sext i16 %1 to i32
  %sub = sub nsw i32 32760, %conv
  %conv1 = trunc i32 %sub to i16
  store i16 %conv1, i16* %c, align 2, !tbaa !1
  %2 = bitcast i16* %m to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #1
  %3 = load i16, i16* %g.addr, align 2, !tbaa !1
  %conv2 = sext i16 %3 to i32
  %sub3 = sub nsw i32 32760, %conv2
  %conv4 = trunc i32 %sub3 to i16
  store i16 %conv4, i16* %m, align 2, !tbaa !1
  %4 = bitcast i16* %y to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #1
  %5 = load i16, i16* %b.addr, align 2, !tbaa !1
  %conv5 = sext i16 %5 to i32
  %sub6 = sub nsw i32 32760, %conv5
  %conv7 = trunc i32 %sub6 to i16
  store i16 %conv7, i16* %y, align 2, !tbaa !1
  %6 = bitcast i16* %k to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = load i16, i16* %c, align 2, !tbaa !1
  %conv8 = sext i16 %7 to i32
  %8 = load i16, i16* %m, align 2, !tbaa !1
  %conv9 = sext i16 %8 to i32
  %cmp = icmp slt i32 %conv8, %conv9
  br i1 %cmp, label %cond.true, label %cond.false.18

cond.true:                                        ; preds = %entry
  %9 = load i16, i16* %c, align 2, !tbaa !1
  %conv11 = sext i16 %9 to i32
  %10 = load i16, i16* %y, align 2, !tbaa !1
  %conv12 = sext i16 %10 to i32
  %cmp13 = icmp slt i32 %conv11, %conv12
  br i1 %cmp13, label %cond.true.15, label %cond.false

cond.true.15:                                     ; preds = %cond.true
  %11 = load i16, i16* %c, align 2, !tbaa !1
  %conv16 = sext i16 %11 to i32
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %12 = load i16, i16* %y, align 2, !tbaa !1
  %conv17 = sext i16 %12 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.15
  %cond = phi i32 [ %conv16, %cond.true.15 ], [ %conv17, %cond.false ]
  br label %cond.end.29

cond.false.18:                                    ; preds = %entry
  %13 = load i16, i16* %m, align 2, !tbaa !1
  %conv19 = sext i16 %13 to i32
  %14 = load i16, i16* %y, align 2, !tbaa !1
  %conv20 = sext i16 %14 to i32
  %cmp21 = icmp slt i32 %conv19, %conv20
  br i1 %cmp21, label %cond.true.23, label %cond.false.25

cond.true.23:                                     ; preds = %cond.false.18
  %15 = load i16, i16* %m, align 2, !tbaa !1
  %conv24 = sext i16 %15 to i32
  br label %cond.end.27

cond.false.25:                                    ; preds = %cond.false.18
  %16 = load i16, i16* %y, align 2, !tbaa !1
  %conv26 = sext i16 %16 to i32
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.23
  %cond28 = phi i32 [ %conv24, %cond.true.23 ], [ %conv26, %cond.false.25 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end.27, %cond.end
  %cond30 = phi i32 [ %cond, %cond.end ], [ %cond28, %cond.end.27 ]
  %conv31 = trunc i32 %cond30 to i16
  store i16 %conv31, i16* %k, align 2, !tbaa !1
  %17 = bitcast i16* %bg to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #1
  %18 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %cmp32 = icmp eq %struct.gs_imager_state_s* %18, null
  br i1 %cmp32, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %cond.end.29
  %19 = load i16, i16* %k, align 2, !tbaa !1
  %conv35 = sext i16 %19 to i32
  br label %cond.end.53

cond.false.36:                                    ; preds = %cond.end.29
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %black_generation = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 44
  %21 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation, align 8, !tbaa !7
  %cmp37 = icmp eq %struct.gx_transfer_map_s* %21, null
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.false.36
  br label %cond.end.51

cond.false.40:                                    ; preds = %cond.false.36
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %black_generation41 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %22, i32 0, i32 44
  %23 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation41, align 8, !tbaa !7
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %23, i32 0, i32 1
  %24 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc, align 8, !tbaa !23
  %cmp42 = icmp eq float (double, %struct.gx_transfer_map_s*)* %24, @gs_identity_transfer
  br i1 %cmp42, label %cond.true.44, label %cond.false.46

cond.true.44:                                     ; preds = %cond.false.40
  %25 = load i16, i16* %k, align 2, !tbaa !1
  %conv45 = sext i16 %25 to i32
  br label %cond.end.49

cond.false.46:                                    ; preds = %cond.false.40
  %26 = load i16, i16* %k, align 2, !tbaa !1
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %black_generation47 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %27, i32 0, i32 44
  %28 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %black_generation47, align 8, !tbaa !7
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %28, i32 0, i32 4
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i64 0
  %call = call signext i16 @gx_color_frac_map(i16 signext %26, i16* %arrayidx) #3
  %conv48 = sext i16 %call to i32
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.46, %cond.true.44
  %cond50 = phi i32 [ %conv45, %cond.true.44 ], [ %conv48, %cond.false.46 ]
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.end.49, %cond.true.39
  %cond52 = phi i32 [ 0, %cond.true.39 ], [ %cond50, %cond.end.49 ]
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.end.51, %cond.true.34
  %cond54 = phi i32 [ %conv35, %cond.true.34 ], [ %cond52, %cond.end.51 ]
  %conv55 = trunc i32 %cond54 to i16
  store i16 %conv55, i16* %bg, align 2, !tbaa !1
  %29 = bitcast i16* %ucr to i8*
  call void @llvm.lifetime.start(i64 2, i8* %29) #1
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %cmp56 = icmp eq %struct.gs_imager_state_s* %30, null
  br i1 %cmp56, label %cond.true.58, label %cond.false.60

cond.true.58:                                     ; preds = %cond.end.53
  %31 = load i16, i16* %k, align 2, !tbaa !1
  %conv59 = sext i16 %31 to i32
  br label %cond.end.81

cond.false.60:                                    ; preds = %cond.end.53
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %undercolor_removal = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %32, i32 0, i32 45
  %33 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal, align 8, !tbaa !27
  %cmp61 = icmp eq %struct.gx_transfer_map_s* %33, null
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.false.60
  br label %cond.end.79

cond.false.64:                                    ; preds = %cond.false.60
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %undercolor_removal65 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %34, i32 0, i32 45
  %35 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal65, align 8, !tbaa !27
  %proc66 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %35, i32 0, i32 1
  %36 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc66, align 8, !tbaa !23
  %cmp67 = icmp eq float (double, %struct.gx_transfer_map_s*)* %36, @gs_identity_transfer
  br i1 %cmp67, label %cond.true.69, label %cond.false.71

cond.true.69:                                     ; preds = %cond.false.64
  %37 = load i16, i16* %k, align 2, !tbaa !1
  %conv70 = sext i16 %37 to i32
  br label %cond.end.77

cond.false.71:                                    ; preds = %cond.false.64
  %38 = load i16, i16* %k, align 2, !tbaa !1
  %39 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %undercolor_removal72 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %39, i32 0, i32 45
  %40 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %undercolor_removal72, align 8, !tbaa !27
  %values73 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %40, i32 0, i32 4
  %arrayidx74 = getelementptr inbounds [256 x i16], [256 x i16]* %values73, i32 0, i64 0
  %call75 = call signext i16 @gx_color_frac_map(i16 signext %38, i16* %arrayidx74) #3
  %conv76 = sext i16 %call75 to i32
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.71, %cond.true.69
  %cond78 = phi i32 [ %conv70, %cond.true.69 ], [ %conv76, %cond.false.71 ]
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.end.77, %cond.true.63
  %cond80 = phi i32 [ 0, %cond.true.63 ], [ %cond78, %cond.end.77 ]
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.end.79, %cond.true.58
  %cond82 = phi i32 [ %conv59, %cond.true.58 ], [ %cond80, %cond.end.79 ]
  %conv83 = trunc i32 %cond82 to i16
  store i16 %conv83, i16* %ucr, align 2, !tbaa !1
  %41 = load i16, i16* %ucr, align 2, !tbaa !1
  %conv84 = sext i16 %41 to i32
  %cmp85 = icmp eq i32 %conv84, 32760
  br i1 %cmp85, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.81
  %42 = load i16*, i16** %cmyk.addr, align 8, !tbaa !5
  %arrayidx87 = getelementptr inbounds i16, i16* %42, i64 2
  store i16 0, i16* %arrayidx87, align 2, !tbaa !1
  %43 = load i16*, i16** %cmyk.addr, align 8, !tbaa !5
  %arrayidx88 = getelementptr inbounds i16, i16* %43, i64 1
  store i16 0, i16* %arrayidx88, align 2, !tbaa !1
  %44 = load i16*, i16** %cmyk.addr, align 8, !tbaa !5
  %arrayidx89 = getelementptr inbounds i16, i16* %44, i64 0
  store i16 0, i16* %arrayidx89, align 2, !tbaa !1
  br label %if.end.240

if.else:                                          ; preds = %cond.end.81
  %45 = load i16, i16* %ucr, align 2, !tbaa !1
  %conv90 = sext i16 %45 to i32
  %cmp91 = icmp eq i32 %conv90, 0
  br i1 %cmp91, label %if.then.93, label %if.else.97

if.then.93:                                       ; preds = %if.else
  %46 = load i16, i16* %c, align 2, !tbaa !1
  %47 = load i16*, i16** %cmyk.addr, align 8, !tbaa !5
  %arrayidx94 = getelementptr inbounds i16, i16* %47, i64 0
  store i16 %46, i16* %arrayidx94, align 2, !tbaa !1
  %48 = load i16, i16* %m, align 2, !tbaa !1
  %49 = load i16*, i16** %cmyk.addr, align 8, !tbaa !5
  %arrayidx95 = getelementptr inbounds i16, i16* %49, i64 1
  store i16 %48, i16* %arrayidx95, align 2, !tbaa !1
  %50 = load i16, i16* %y, align 2, !tbaa !1
  %51 = load i16*, i16** %cmyk.addr, align 8, !tbaa !5
  %arrayidx96 = getelementptr inbounds i16, i16* %51, i64 2
  store i16 %50, i16* %arrayidx96, align 2, !tbaa !1
  br label %if.end.239

if.else.97:                                       ; preds = %if.else
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %call98 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %52) #3
  %tobool = icmp ne i32 %call98, 0
  br i1 %tobool, label %if.else.172, label %if.then.99

if.then.99:                                       ; preds = %if.else.97
  %53 = bitcast i16* %not_ucr to i8*
  call void @llvm.lifetime.start(i64 2, i8* %53) #1
  %54 = load i16, i16* %ucr, align 2, !tbaa !1
  %conv100 = sext i16 %54 to i32
  %cmp101 = icmp slt i32 %conv100, 0
  br i1 %cmp101, label %cond.true.103, label %cond.false.105

cond.true.103:                                    ; preds = %if.then.99
  %55 = load i16, i16* %ucr, align 2, !tbaa !1
  %conv104 = sext i16 %55 to i32
  %add = add nsw i32 32760, %conv104
  br label %cond.end.106

cond.false.105:                                   ; preds = %if.then.99
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.105, %cond.true.103
  %cond107 = phi i32 [ %add, %cond.true.103 ], [ 32760, %cond.false.105 ]
  %conv108 = trunc i32 %cond107 to i16
  store i16 %conv108, i16* %not_ucr, align 2, !tbaa !1
  %56 = load i16, i16* %c, align 2, !tbaa !1
  %conv109 = sext i16 %56 to i32
  %57 = load i16, i16* %ucr, align 2, !tbaa !1
  %conv110 = sext i16 %57 to i32
  %cmp111 = icmp slt i32 %conv109, %conv110
  br i1 %cmp111, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %cond.end.106
  br label %cond.end.126

cond.false.114:                                   ; preds = %cond.end.106
  %58 = load i16, i16* %c, align 2, !tbaa !1
  %conv115 = sext i16 %58 to i32
  %59 = load i16, i16* %not_ucr, align 2, !tbaa !1
  %conv116 = sext i16 %59 to i32
  %cmp117 = icmp sgt i32 %conv115, %conv116
  br i1 %cmp117, label %cond.true.119, label %cond.false.120

cond.true.119:                                    ; preds = %cond.false.114
  br label %cond.end.124

cond.false.120:                                   ; preds = %cond.false.114
  %60 = load i16, i16* %c, align 2, !tbaa !1
  %conv121 = sext i16 %60 to i32
  %61 = load i16, i16* %ucr, align 2, !tbaa !1
  %conv122 = sext i16 %61 to i32
  %sub123 = sub nsw i32 %conv121, %conv122
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.120, %cond.true.119
  %cond125 = phi i32 [ 32760, %cond.true.119 ], [ %sub123, %cond.false.120 ]
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.end.124, %cond.true.113
  %cond127 = phi i32 [ 0, %cond.true.113 ], [ %cond125, %cond.end.124 ]
  %conv128 = trunc i32 %cond127 to i16
  %62 = load i16*, i16** %cmyk.addr, align 8, !tbaa !5
  %arrayidx129 = getelementptr inbounds i16, i16* %62, i64 0
  store i16 %conv128, i16* %arrayidx129, align 2, !tbaa !1
  %63 = load i16, i16* %m, align 2, !tbaa !1
  %conv130 = sext i16 %63 to i32
  %64 = load i16, i16* %ucr, align 2, !tbaa !1
  %conv131 = sext i16 %64 to i32
  %cmp132 = icmp slt i32 %conv130, %conv131
  br i1 %cmp132, label %cond.true.134, label %cond.false.135

cond.true.134:                                    ; preds = %cond.end.126
  br label %cond.end.147

cond.false.135:                                   ; preds = %cond.end.126
  %65 = load i16, i16* %m, align 2, !tbaa !1
  %conv136 = sext i16 %65 to i32
  %66 = load i16, i16* %not_ucr, align 2, !tbaa !1
  %conv137 = sext i16 %66 to i32
  %cmp138 = icmp sgt i32 %conv136, %conv137
  br i1 %cmp138, label %cond.true.140, label %cond.false.141

cond.true.140:                                    ; preds = %cond.false.135
  br label %cond.end.145

cond.false.141:                                   ; preds = %cond.false.135
  %67 = load i16, i16* %m, align 2, !tbaa !1
  %conv142 = sext i16 %67 to i32
  %68 = load i16, i16* %ucr, align 2, !tbaa !1
  %conv143 = sext i16 %68 to i32
  %sub144 = sub nsw i32 %conv142, %conv143
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.141, %cond.true.140
  %cond146 = phi i32 [ 32760, %cond.true.140 ], [ %sub144, %cond.false.141 ]
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.end.145, %cond.true.134
  %cond148 = phi i32 [ 0, %cond.true.134 ], [ %cond146, %cond.end.145 ]
  %conv149 = trunc i32 %cond148 to i16
  %69 = load i16*, i16** %cmyk.addr, align 8, !tbaa !5
  %arrayidx150 = getelementptr inbounds i16, i16* %69, i64 1
  store i16 %conv149, i16* %arrayidx150, align 2, !tbaa !1
  %70 = load i16, i16* %y, align 2, !tbaa !1
  %conv151 = sext i16 %70 to i32
  %71 = load i16, i16* %ucr, align 2, !tbaa !1
  %conv152 = sext i16 %71 to i32
  %cmp153 = icmp slt i32 %conv151, %conv152
  br i1 %cmp153, label %cond.true.155, label %cond.false.156

cond.true.155:                                    ; preds = %cond.end.147
  br label %cond.end.168

cond.false.156:                                   ; preds = %cond.end.147
  %72 = load i16, i16* %y, align 2, !tbaa !1
  %conv157 = sext i16 %72 to i32
  %73 = load i16, i16* %not_ucr, align 2, !tbaa !1
  %conv158 = sext i16 %73 to i32
  %cmp159 = icmp sgt i32 %conv157, %conv158
  br i1 %cmp159, label %cond.true.161, label %cond.false.162

cond.true.161:                                    ; preds = %cond.false.156
  br label %cond.end.166

cond.false.162:                                   ; preds = %cond.false.156
  %74 = load i16, i16* %y, align 2, !tbaa !1
  %conv163 = sext i16 %74 to i32
  %75 = load i16, i16* %ucr, align 2, !tbaa !1
  %conv164 = sext i16 %75 to i32
  %sub165 = sub nsw i32 %conv163, %conv164
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.162, %cond.true.161
  %cond167 = phi i32 [ 32760, %cond.true.161 ], [ %sub165, %cond.false.162 ]
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.end.166, %cond.true.155
  %cond169 = phi i32 [ 0, %cond.true.155 ], [ %cond167, %cond.end.166 ]
  %conv170 = trunc i32 %cond169 to i16
  %76 = load i16*, i16** %cmyk.addr, align 8, !tbaa !5
  %arrayidx171 = getelementptr inbounds i16, i16* %76, i64 2
  store i16 %conv170, i16* %arrayidx171, align 2, !tbaa !1
  %77 = bitcast i16* %not_ucr to i8*
  call void @llvm.lifetime.end(i64 2, i8* %77) #1
  br label %if.end

if.else.172:                                      ; preds = %if.else.97
  %78 = bitcast float* %denom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = load i16, i16* %ucr, align 2, !tbaa !1
  %conv173 = sext i16 %79 to i32
  %sub174 = sub nsw i32 32760, %conv173
  %conv175 = sitofp i32 %sub174 to float
  %div = fdiv float %conv175, 3.276000e+04
  store float %div, float* %denom, align 4, !tbaa !28
  %80 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = load i16, i16* %r.addr, align 2, !tbaa !1
  %conv176 = sext i16 %81 to i32
  %conv177 = sitofp i32 %conv176 to float
  %82 = load float, float* %denom, align 4, !tbaa !28
  %div178 = fdiv float %conv177, %82
  %sub179 = fsub float 3.276000e+04, %div178
  store float %sub179, float* %v, align 4, !tbaa !28
  %83 = load float, float* %v, align 4, !tbaa !28
  %conv180 = fpext float %83 to double
  %cmp181 = fcmp olt double %conv180, 0.000000e+00
  br i1 %cmp181, label %cond.true.183, label %cond.false.184

cond.true.183:                                    ; preds = %if.else.172
  br label %cond.end.193

cond.false.184:                                   ; preds = %if.else.172
  %84 = load float, float* %v, align 4, !tbaa !28
  %cmp185 = fcmp oge float %84, 3.276000e+04
  br i1 %cmp185, label %cond.true.187, label %cond.false.188

cond.true.187:                                    ; preds = %cond.false.184
  br label %cond.end.191

cond.false.188:                                   ; preds = %cond.false.184
  %85 = load float, float* %v, align 4, !tbaa !28
  %conv189 = fptosi float %85 to i16
  %conv190 = sext i16 %conv189 to i32
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.188, %cond.true.187
  %cond192 = phi i32 [ 32760, %cond.true.187 ], [ %conv190, %cond.false.188 ]
  br label %cond.end.193

cond.end.193:                                     ; preds = %cond.end.191, %cond.true.183
  %cond194 = phi i32 [ 0, %cond.true.183 ], [ %cond192, %cond.end.191 ]
  %conv195 = trunc i32 %cond194 to i16
  %86 = load i16*, i16** %cmyk.addr, align 8, !tbaa !5
  %arrayidx196 = getelementptr inbounds i16, i16* %86, i64 0
  store i16 %conv195, i16* %arrayidx196, align 2, !tbaa !1
  %87 = load i16, i16* %g.addr, align 2, !tbaa !1
  %conv197 = sext i16 %87 to i32
  %conv198 = sitofp i32 %conv197 to float
  %88 = load float, float* %denom, align 4, !tbaa !28
  %div199 = fdiv float %conv198, %88
  %sub200 = fsub float 3.276000e+04, %div199
  store float %sub200, float* %v, align 4, !tbaa !28
  %89 = load float, float* %v, align 4, !tbaa !28
  %conv201 = fpext float %89 to double
  %cmp202 = fcmp olt double %conv201, 0.000000e+00
  br i1 %cmp202, label %cond.true.204, label %cond.false.205

cond.true.204:                                    ; preds = %cond.end.193
  br label %cond.end.214

cond.false.205:                                   ; preds = %cond.end.193
  %90 = load float, float* %v, align 4, !tbaa !28
  %cmp206 = fcmp oge float %90, 3.276000e+04
  br i1 %cmp206, label %cond.true.208, label %cond.false.209

cond.true.208:                                    ; preds = %cond.false.205
  br label %cond.end.212

cond.false.209:                                   ; preds = %cond.false.205
  %91 = load float, float* %v, align 4, !tbaa !28
  %conv210 = fptosi float %91 to i16
  %conv211 = sext i16 %conv210 to i32
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.209, %cond.true.208
  %cond213 = phi i32 [ 32760, %cond.true.208 ], [ %conv211, %cond.false.209 ]
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.end.212, %cond.true.204
  %cond215 = phi i32 [ 0, %cond.true.204 ], [ %cond213, %cond.end.212 ]
  %conv216 = trunc i32 %cond215 to i16
  %92 = load i16*, i16** %cmyk.addr, align 8, !tbaa !5
  %arrayidx217 = getelementptr inbounds i16, i16* %92, i64 1
  store i16 %conv216, i16* %arrayidx217, align 2, !tbaa !1
  %93 = load i16, i16* %b.addr, align 2, !tbaa !1
  %conv218 = sext i16 %93 to i32
  %conv219 = sitofp i32 %conv218 to float
  %94 = load float, float* %denom, align 4, !tbaa !28
  %div220 = fdiv float %conv219, %94
  %sub221 = fsub float 3.276000e+04, %div220
  store float %sub221, float* %v, align 4, !tbaa !28
  %95 = load float, float* %v, align 4, !tbaa !28
  %conv222 = fpext float %95 to double
  %cmp223 = fcmp olt double %conv222, 0.000000e+00
  br i1 %cmp223, label %cond.true.225, label %cond.false.226

cond.true.225:                                    ; preds = %cond.end.214
  br label %cond.end.235

cond.false.226:                                   ; preds = %cond.end.214
  %96 = load float, float* %v, align 4, !tbaa !28
  %cmp227 = fcmp oge float %96, 3.276000e+04
  br i1 %cmp227, label %cond.true.229, label %cond.false.230

cond.true.229:                                    ; preds = %cond.false.226
  br label %cond.end.233

cond.false.230:                                   ; preds = %cond.false.226
  %97 = load float, float* %v, align 4, !tbaa !28
  %conv231 = fptosi float %97 to i16
  %conv232 = sext i16 %conv231 to i32
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.230, %cond.true.229
  %cond234 = phi i32 [ 32760, %cond.true.229 ], [ %conv232, %cond.false.230 ]
  br label %cond.end.235

cond.end.235:                                     ; preds = %cond.end.233, %cond.true.225
  %cond236 = phi i32 [ 0, %cond.true.225 ], [ %cond234, %cond.end.233 ]
  %conv237 = trunc i32 %cond236 to i16
  %98 = load i16*, i16** %cmyk.addr, align 8, !tbaa !5
  %arrayidx238 = getelementptr inbounds i16, i16* %98, i64 2
  store i16 %conv237, i16* %arrayidx238, align 2, !tbaa !1
  %99 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast float* %denom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  br label %if.end

if.end:                                           ; preds = %cond.end.235, %cond.end.168
  br label %if.end.239

if.end.239:                                       ; preds = %if.end, %if.then.93
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.then
  %101 = load i16, i16* %bg, align 2, !tbaa !1
  %102 = load i16*, i16** %cmyk.addr, align 8, !tbaa !5
  %arrayidx241 = getelementptr inbounds i16, i16* %102, i64 3
  store i16 %101, i16* %arrayidx241, align 2, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end.240
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %103 = bitcast i16* %ucr to i8*
  call void @llvm.lifetime.end(i64 2, i8* %103) #1
  %104 = bitcast i16* %bg to i8*
  call void @llvm.lifetime.end(i64 2, i8* %104) #1
  %105 = bitcast i16* %k to i8*
  call void @llvm.lifetime.end(i64 2, i8* %105) #1
  %106 = bitcast i16* %y to i8*
  call void @llvm.lifetime.end(i64 2, i8* %106) #1
  %107 = bitcast i16* %m to i8*
  call void @llvm.lifetime.end(i64 2, i8* %107) #1
  %108 = bitcast i16* %c to i8*
  call void @llvm.lifetime.end(i64 2, i8* %108) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare float @gs_identity_transfer(double, %struct.gx_transfer_map_s*) #2

declare signext i16 @gx_color_frac_map(i16 signext, i16*) #2

declare i32 @gs_currentcpsimode(%struct.gs_memory_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define signext i16 @color_cmyk_to_gray(i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %not_gray = alloca i16, align 2
  store i16 %c, i16* %c.addr, align 2, !tbaa !1
  store i16 %m, i16* %m.addr, align 2, !tbaa !1
  store i16 %y, i16* %y.addr, align 2, !tbaa !1
  store i16 %k, i16* %k.addr, align 2, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %0 = bitcast i16* %not_gray to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16, i16* %c.addr, align 2, !tbaa !1
  %2 = load i16, i16* %m.addr, align 2, !tbaa !1
  %3 = load i16, i16* %y.addr, align 2, !tbaa !1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %call = call signext i16 @color_rgb_to_gray(i16 signext %1, i16 signext %2, i16 signext %3, %struct.gs_imager_state_s* %4) #3
  store i16 %call, i16* %not_gray, align 2, !tbaa !1
  %5 = load i16, i16* %not_gray, align 2, !tbaa !1
  %conv = sext i16 %5 to i32
  %6 = load i16, i16* %k.addr, align 2, !tbaa !1
  %conv1 = sext i16 %6 to i32
  %sub = sub nsw i32 32760, %conv1
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i16, i16* %not_gray, align 2, !tbaa !1
  %conv3 = sext i16 %7 to i32
  %8 = load i16, i16* %k.addr, align 2, !tbaa !1
  %conv4 = sext i16 %8 to i32
  %add = add nsw i32 %conv3, %conv4
  %sub5 = sub nsw i32 32760, %add
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub5, %cond.false ]
  %conv6 = trunc i32 %cond to i16
  %9 = bitcast i16* %not_gray to i8*
  call void @llvm.lifetime.end(i64 2, i8* %9) #1
  ret i16 %conv6
}

; Function Attrs: nounwind uwtable
define void @color_cmyk_to_rgb(i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, %struct.gs_imager_state_s* %pis, i16* %rgb, %struct.gs_memory_s* %mem) #0 {
entry:
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %rgb.addr = alloca i16*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %not_k = alloca i16, align 2
  %not_k52 = alloca i64, align 8
  %prod = alloca i64, align 8
  store i16 %c, i16* %c.addr, align 2, !tbaa !1
  store i16 %m, i16* %m.addr, align 2, !tbaa !1
  store i16 %y, i16* %y.addr, align 2, !tbaa !1
  store i16 %k, i16* %k.addr, align 2, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  store i16* %rgb, i16** %rgb.addr, align 8, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %0 = load i16, i16* %k.addr, align 2, !tbaa !1
  %conv = sext i16 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 32760, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i16, i16* %c.addr, align 2, !tbaa !1
  %conv1 = sext i16 %1 to i32
  %sub = sub nsw i32 32760, %conv1
  %conv2 = trunc i32 %sub to i16
  %2 = load i16*, i16** %rgb.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 0
  store i16 %conv2, i16* %arrayidx, align 2, !tbaa !1
  %3 = load i16, i16* %m.addr, align 2, !tbaa !1
  %conv3 = sext i16 %3 to i32
  %sub4 = sub nsw i32 32760, %conv3
  %conv5 = trunc i32 %sub4 to i16
  %4 = load i16*, i16** %rgb.addr, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds i16, i16* %4, i64 1
  store i16 %conv5, i16* %arrayidx6, align 2, !tbaa !1
  %5 = load i16, i16* %y.addr, align 2, !tbaa !1
  %conv7 = sext i16 %5 to i32
  %sub8 = sub nsw i32 32760, %conv7
  %conv9 = trunc i32 %sub8 to i16
  %6 = load i16*, i16** %rgb.addr, align 8, !tbaa !5
  %arrayidx10 = getelementptr inbounds i16, i16* %6, i64 2
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !1
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %7 = load i16*, i16** %rgb.addr, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds i16, i16* %7, i64 2
  store i16 0, i16* %arrayidx12, align 2, !tbaa !1
  %8 = load i16*, i16** %rgb.addr, align 8, !tbaa !5
  %arrayidx13 = getelementptr inbounds i16, i16* %8, i64 1
  store i16 0, i16* %arrayidx13, align 2, !tbaa !1
  %9 = load i16*, i16** %rgb.addr, align 8, !tbaa !5
  %arrayidx14 = getelementptr inbounds i16, i16* %9, i64 0
  store i16 0, i16* %arrayidx14, align 2, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %call = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %10) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.default
  %11 = bitcast i16* %not_k to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #1
  %12 = load i16, i16* %k.addr, align 2, !tbaa !1
  %conv15 = sext i16 %12 to i32
  %sub16 = sub nsw i32 32760, %conv15
  %conv17 = trunc i32 %sub16 to i16
  store i16 %conv17, i16* %not_k, align 2, !tbaa !1
  %13 = load i16, i16* %c.addr, align 2, !tbaa !1
  %conv18 = sext i16 %13 to i32
  %14 = load i16, i16* %not_k, align 2, !tbaa !1
  %conv19 = sext i16 %14 to i32
  %cmp = icmp sgt i32 %conv18, %conv19
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %15 = load i16, i16* %not_k, align 2, !tbaa !1
  %conv21 = sext i16 %15 to i32
  %16 = load i16, i16* %c.addr, align 2, !tbaa !1
  %conv22 = sext i16 %16 to i32
  %sub23 = sub nsw i32 %conv21, %conv22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub23, %cond.false ]
  %conv24 = trunc i32 %cond to i16
  %17 = load i16*, i16** %rgb.addr, align 8, !tbaa !5
  %arrayidx25 = getelementptr inbounds i16, i16* %17, i64 0
  store i16 %conv24, i16* %arrayidx25, align 2, !tbaa !1
  %18 = load i16, i16* %m.addr, align 2, !tbaa !1
  %conv26 = sext i16 %18 to i32
  %19 = load i16, i16* %not_k, align 2, !tbaa !1
  %conv27 = sext i16 %19 to i32
  %cmp28 = icmp sgt i32 %conv26, %conv27
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.end
  br label %cond.end.35

cond.false.31:                                    ; preds = %cond.end
  %20 = load i16, i16* %not_k, align 2, !tbaa !1
  %conv32 = sext i16 %20 to i32
  %21 = load i16, i16* %m.addr, align 2, !tbaa !1
  %conv33 = sext i16 %21 to i32
  %sub34 = sub nsw i32 %conv32, %conv33
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.31, %cond.true.30
  %cond36 = phi i32 [ 0, %cond.true.30 ], [ %sub34, %cond.false.31 ]
  %conv37 = trunc i32 %cond36 to i16
  %22 = load i16*, i16** %rgb.addr, align 8, !tbaa !5
  %arrayidx38 = getelementptr inbounds i16, i16* %22, i64 1
  store i16 %conv37, i16* %arrayidx38, align 2, !tbaa !1
  %23 = load i16, i16* %y.addr, align 2, !tbaa !1
  %conv39 = sext i16 %23 to i32
  %24 = load i16, i16* %not_k, align 2, !tbaa !1
  %conv40 = sext i16 %24 to i32
  %cmp41 = icmp sgt i32 %conv39, %conv40
  br i1 %cmp41, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.end.35
  br label %cond.end.48

cond.false.44:                                    ; preds = %cond.end.35
  %25 = load i16, i16* %not_k, align 2, !tbaa !1
  %conv45 = sext i16 %25 to i32
  %26 = load i16, i16* %y.addr, align 2, !tbaa !1
  %conv46 = sext i16 %26 to i32
  %sub47 = sub nsw i32 %conv45, %conv46
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.44, %cond.true.43
  %cond49 = phi i32 [ 0, %cond.true.43 ], [ %sub47, %cond.false.44 ]
  %conv50 = trunc i32 %cond49 to i16
  %27 = load i16*, i16** %rgb.addr, align 8, !tbaa !5
  %arrayidx51 = getelementptr inbounds i16, i16* %27, i64 2
  store i16 %conv50, i16* %arrayidx51, align 2, !tbaa !1
  %28 = bitcast i16* %not_k to i8*
  call void @llvm.lifetime.end(i64 2, i8* %28) #1
  br label %if.end

if.else:                                          ; preds = %sw.default
  %29 = bitcast i64* %not_k52 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load i16, i16* %k.addr, align 2, !tbaa !1
  %conv53 = sext i16 %30 to i32
  %sub54 = sub nsw i32 32760, %conv53
  %conv55 = sext i32 %sub54 to i64
  store i64 %conv55, i64* %not_k52, align 8, !tbaa !29
  %31 = bitcast i64* %prod to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load i16, i16* %c.addr, align 2, !tbaa !1
  %conv56 = sext i16 %32 to i32
  %sub57 = sub nsw i32 32760, %conv56
  %conv58 = sext i32 %sub57 to i64
  %33 = load i64, i64* %not_k52, align 8, !tbaa !29
  %mul = mul i64 %conv58, %33
  store i64 %mul, i64* %prod, align 8, !tbaa !29
  %34 = load i64, i64* %prod, align 8, !tbaa !29
  %shr = lshr i64 %34, 3
  %35 = load i64, i64* %prod, align 8, !tbaa !29
  %shr59 = lshr i64 %35, 15
  %add = add i64 %shr, %shr59
  %add60 = add i64 %add, 1
  %shr61 = lshr i64 %add60, 12
  %conv62 = trunc i64 %shr61 to i16
  %36 = load i16*, i16** %rgb.addr, align 8, !tbaa !5
  %arrayidx63 = getelementptr inbounds i16, i16* %36, i64 0
  store i16 %conv62, i16* %arrayidx63, align 2, !tbaa !1
  %37 = load i16, i16* %m.addr, align 2, !tbaa !1
  %conv64 = sext i16 %37 to i32
  %sub65 = sub nsw i32 32760, %conv64
  %conv66 = sext i32 %sub65 to i64
  %38 = load i64, i64* %not_k52, align 8, !tbaa !29
  %mul67 = mul i64 %conv66, %38
  store i64 %mul67, i64* %prod, align 8, !tbaa !29
  %39 = load i64, i64* %prod, align 8, !tbaa !29
  %shr68 = lshr i64 %39, 3
  %40 = load i64, i64* %prod, align 8, !tbaa !29
  %shr69 = lshr i64 %40, 15
  %add70 = add i64 %shr68, %shr69
  %add71 = add i64 %add70, 1
  %shr72 = lshr i64 %add71, 12
  %conv73 = trunc i64 %shr72 to i16
  %41 = load i16*, i16** %rgb.addr, align 8, !tbaa !5
  %arrayidx74 = getelementptr inbounds i16, i16* %41, i64 1
  store i16 %conv73, i16* %arrayidx74, align 2, !tbaa !1
  %42 = load i16, i16* %y.addr, align 2, !tbaa !1
  %conv75 = sext i16 %42 to i32
  %sub76 = sub nsw i32 32760, %conv75
  %conv77 = sext i32 %sub76 to i64
  %43 = load i64, i64* %not_k52, align 8, !tbaa !29
  %mul78 = mul i64 %conv77, %43
  store i64 %mul78, i64* %prod, align 8, !tbaa !29
  %44 = load i64, i64* %prod, align 8, !tbaa !29
  %shr79 = lshr i64 %44, 3
  %45 = load i64, i64* %prod, align 8, !tbaa !29
  %shr80 = lshr i64 %45, 15
  %add81 = add i64 %shr79, %shr80
  %add82 = add i64 %add81, 1
  %shr83 = lshr i64 %add82, 12
  %conv84 = trunc i64 %shr83 to i16
  %46 = load i16*, i16** %rgb.addr, align 8, !tbaa !5
  %arrayidx85 = getelementptr inbounds i16, i16* %46, i64 2
  store i16 %conv84, i16* %arrayidx85, align 2, !tbaa !1
  %47 = bitcast i64* %prod to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i64* %not_k52 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.48
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.11, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"short", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !6, i64 416}
!8 = !{!"gs_imager_state_s", !9, i64 0, !6, i64 8, !6, i64 16, !10, i64 24, !9, i64 128, !14, i64 132, !9, i64 168, !15, i64 176, !15, i64 192, !9, i64 208, !9, i64 212, !2, i64 216, !3, i64 220, !17, i64 224, !17, i64 228, !18, i64 232, !19, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !6, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !11, i64 296, !20, i64 300, !9, i64 308, !9, i64 312, !9, i64 316, !11, i64 320, !9, i64 324, !9, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !3, i64 376, !6, i64 392, !6, i64 400, !9, i64 408, !6, i64 416, !6, i64 424, !21, i64 432, !3, i64 496, !6, i64 1008, !6, i64 1016, !22, i64 1024, !6, i64 1304, !6, i64 1312, !6, i64 1320, !6, i64 1328, !22, i64 1336}
!9 = !{!"int", !3, i64 0}
!10 = !{!"gx_line_params_s", !11, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !9, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !9, i64 36, !12, i64 40, !13, i64 64}
!11 = !{!"float", !3, i64 0}
!12 = !{!"gs_matrix_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!13 = !{!"gx_dash_params_s", !6, i64 0, !9, i64 8, !11, i64 12, !9, i64 16, !11, i64 20, !9, i64 24, !9, i64 28, !11, i64 32}
!14 = !{!"gs_matrix_fixed_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!15 = !{!"gs_point_s", !16, i64 0, !16, i64 8}
!16 = !{!"double", !3, i64 0}
!17 = !{!"gs_transparency_source_s", !11, i64 0}
!18 = !{!"gs_xstate_trans_flags", !9, i64 0, !9, i64 4}
!19 = !{!"long", !3, i64 0}
!20 = !{!"gs_fixed_point_s", !9, i64 0, !9, i64 4}
!21 = !{!"gx_transfer_s", !9, i64 0, !6, i64 8, !9, i64 16, !6, i64 24, !9, i64 32, !6, i64 40, !9, i64 48, !6, i64 56}
!22 = !{!"gs_devicen_color_map_s", !9, i64 0, !3, i64 4, !9, i64 8, !9, i64 12, !19, i64 16, !3, i64 24}
!23 = !{!24, !6, i64 24}
!24 = !{!"gx_transfer_map_s", !25, i64 0, !6, i64 24, !26, i64 32, !19, i64 48, !3, i64 56}
!25 = !{!"rc_header_s", !19, i64 0, !6, i64 8, !6, i64 16}
!26 = !{!"gs_mapping_closure_s", !6, i64 0, !6, i64 8}
!27 = !{!8, !6, i64 424}
!28 = !{!11, !11, i64 0}
!29 = !{!19, !19, i64 0}
