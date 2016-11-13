; ModuleID = './gspath1.bc'
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
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type opaque
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
%struct.gs_param_list_s = type opaque
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
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
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.arc_curve_params_s = type { %struct.gx_path_s*, %struct.gs_imager_state_s*, %struct.gs_point_s, double, i32, i32, %struct.gs_point_s, %struct.gs_point_s, %struct.gs_point_s, %struct.gs_sincos_s, double, i32, i32, i32 }
%struct.gs_sincos_s = type { double, double, i32 }
%struct.gs_path_enum_s = type { %struct.gs_memory_s*, %struct.gs_matrix_s, %struct.segment_s*, %struct.gx_path_s*, %struct.gx_path_s*, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"gs_dashpath\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"gs_flattenpath\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gs_reversepath\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"gs_path_enum_init\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"gs_path_enum_cleanup\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gx_setcurrentpoint_from_path(%struct.gs_imager_state_s* %pis, %struct.gx_path_s* %path) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %path.addr = alloca %struct.gx_path_s*, align 8
  %pt = alloca %struct.gs_point_s, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %path, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 14
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !5
  %conv = sitofp i32 %2 to double
  %mul = fmul double %conv, 3.906250e-03
  %x1 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  store double %mul, double* %x1, align 8, !tbaa !14
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %position2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 14
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position2, i32 0, i32 1
  %4 = load i32, i32* %y, align 4, !tbaa !17
  %conv3 = sitofp i32 %4 to double
  %mul4 = fmul double %conv3, 3.906250e-03
  %y5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  store double %mul4, double* %y5, align 8, !tbaa !18
  %x6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %5 = load double, double* %x6, align 8, !tbaa !14
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %6, i32 0, i32 7
  %x7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  store double %5, double* %x7, align 8, !tbaa !19
  %y8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %7 = load double, double* %y8, align 8, !tbaa !18
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %current_point9 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %8, i32 0, i32 7
  %y10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point9, i32 0, i32 1
  store double %7, double* %y10, align 8, !tbaa !31
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 6
  store i32 1, i32* %current_point_valid, align 4, !tbaa !32
  %10 = bitcast %struct.gs_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %10) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_arc(%struct.gs_state_s* %pgs, double %xc, double %yc, double %r, double %ang1, double %ang2) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %xc.addr = alloca double, align 8
  %yc.addr = alloca double, align 8
  %r.addr = alloca double, align 8
  %ang1.addr = alloca double, align 8
  %ang2.addr = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %xc, double* %xc.addr, align 8, !tbaa !33
  store double %yc, double* %yc.addr, align 8, !tbaa !33
  store double %r, double* %r.addr, align 8, !tbaa !33
  store double %ang1, double* %ang1.addr, align 8, !tbaa !33
  store double %ang2, double* %ang2.addr, align 8, !tbaa !33
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = load double, double* %xc.addr, align 8, !tbaa !33
  %2 = load double, double* %yc.addr, align 8, !tbaa !33
  %3 = load double, double* %r.addr, align 8, !tbaa !33
  %4 = load double, double* %ang1.addr, align 8, !tbaa !33
  %5 = load double, double* %ang2.addr, align 8, !tbaa !33
  %call = call i32 @gs_arc_add_inline(%struct.gs_state_s* %0, i32 0, double %1, double %2, double %3, double %4, double %5, i32 1) #6
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @gs_arc_add_inline(%struct.gs_state_s* %pgs, i32 %cw, double %xc, double %yc, double %rad, double %a1, double %a2, i32 %add) #2 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %cw.addr = alloca i32, align 4
  %xc.addr = alloca double, align 8
  %yc.addr = alloca double, align 8
  %rad.addr = alloca double, align 8
  %a1.addr = alloca double, align 8
  %a2.addr = alloca double, align 8
  %add.addr = alloca i32, align 4
  %p3 = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %cw, i32* %cw.addr, align 4, !tbaa !34
  store double %xc, double* %xc.addr, align 8, !tbaa !33
  store double %yc, double* %yc.addr, align 8, !tbaa !33
  store double %rad, double* %rad.addr, align 8, !tbaa !33
  store double %a1, double* %a1.addr, align 8, !tbaa !33
  store double %a2, double* %a2.addr, align 8, !tbaa !33
  store i32 %add, i32* %add.addr, align 4, !tbaa !34
  %0 = bitcast %struct.gs_point_s* %p3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 61
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !35
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_state_s* %4 to %struct.gs_imager_state_s*
  %6 = load i32, i32* %cw.addr, align 4, !tbaa !34
  %7 = load double, double* %xc.addr, align 8, !tbaa !33
  %8 = load double, double* %yc.addr, align 8, !tbaa !33
  %9 = load double, double* %rad.addr, align 8, !tbaa !33
  %10 = load double, double* %a1.addr, align 8, !tbaa !33
  %11 = load double, double* %a2.addr, align 8, !tbaa !33
  %12 = load i32, i32* %add.addr, align 4, !tbaa !34
  %call = call i32 @gs_imager_arc_add(%struct.gx_path_s* %3, %struct.gs_imager_state_s* %5, i32 %6, double %7, double %8, double %9, double %10, double %11, i32 %12, %struct.gs_point_s* %p3) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %13 = load i32, i32* %code, align 4, !tbaa !34
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 6
  store i32 1, i32* %current_point_valid, align 4, !tbaa !38
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p3, i32 0, i32 0
  %16 = load double, double* %x, align 8, !tbaa !14
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p3, i32 0, i32 1
  %17 = load double, double* %y, align 8, !tbaa !18
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 5
  %19 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 7
  %call1 = call i32 @gs_point_transform(double %16, double %17, %struct.gs_matrix_s* %19, %struct.gs_point_s* %current_point) #6
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.gs_point_s* %p3 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @gs_arcn(%struct.gs_state_s* %pgs, double %xc, double %yc, double %r, double %ang1, double %ang2) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %xc.addr = alloca double, align 8
  %yc.addr = alloca double, align 8
  %r.addr = alloca double, align 8
  %ang1.addr = alloca double, align 8
  %ang2.addr = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %xc, double* %xc.addr, align 8, !tbaa !33
  store double %yc, double* %yc.addr, align 8, !tbaa !33
  store double %r, double* %r.addr, align 8, !tbaa !33
  store double %ang1, double* %ang1.addr, align 8, !tbaa !33
  store double %ang2, double* %ang2.addr, align 8, !tbaa !33
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = load double, double* %xc.addr, align 8, !tbaa !33
  %2 = load double, double* %yc.addr, align 8, !tbaa !33
  %3 = load double, double* %r.addr, align 8, !tbaa !33
  %4 = load double, double* %ang1.addr, align 8, !tbaa !33
  %5 = load double, double* %ang2.addr, align 8, !tbaa !33
  %call = call i32 @gs_arc_add_inline(%struct.gs_state_s* %0, i32 1, double %1, double %2, double %3, double %4, double %5, i32 1) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_arc_add(%struct.gs_state_s* %pgs, i32 %clockwise, double %axc, double %ayc, double %arad, double %aang1, double %aang2, i32 %add_line) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %clockwise.addr = alloca i32, align 4
  %axc.addr = alloca double, align 8
  %ayc.addr = alloca double, align 8
  %arad.addr = alloca double, align 8
  %aang1.addr = alloca double, align 8
  %aang2.addr = alloca double, align 8
  %add_line.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %clockwise, i32* %clockwise.addr, align 4, !tbaa !34
  store double %axc, double* %axc.addr, align 8, !tbaa !33
  store double %ayc, double* %ayc.addr, align 8, !tbaa !33
  store double %arad, double* %arad.addr, align 8, !tbaa !33
  store double %aang1, double* %aang1.addr, align 8, !tbaa !33
  store double %aang2, double* %aang2.addr, align 8, !tbaa !33
  store i32 %add_line, i32* %add_line.addr, align 4, !tbaa !34
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = load i32, i32* %clockwise.addr, align 4, !tbaa !34
  %2 = load double, double* %axc.addr, align 8, !tbaa !33
  %3 = load double, double* %ayc.addr, align 8, !tbaa !33
  %4 = load double, double* %arad.addr, align 8, !tbaa !33
  %5 = load double, double* %aang1.addr, align 8, !tbaa !33
  %6 = load double, double* %aang2.addr, align 8, !tbaa !33
  %7 = load i32, i32* %add_line.addr, align 4, !tbaa !34
  %call = call i32 @gs_arc_add_inline(%struct.gs_state_s* %0, i32 %1, double %2, double %3, double %4, double %5, double %6, i32 %7) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_arcto(%struct.gs_state_s* %pgs, double %ax1, double %ay1, double %ax2, double %ay2, double %arad, float* %retxy) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ax1.addr = alloca double, align 8
  %ay1.addr = alloca double, align 8
  %ax2.addr = alloca double, align 8
  %ay2.addr = alloca double, align 8
  %arad.addr = alloca double, align 8
  %retxy.addr = alloca float*, align 8
  %xt0 = alloca double, align 8
  %yt0 = alloca double, align 8
  %xt2 = alloca double, align 8
  %yt2 = alloca double, align 8
  %up0 = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dx0 = alloca double, align 8
  %dy0 = alloca double, align 8
  %dx2 = alloca double, align 8
  %dy2 = alloca double, align 8
  %sql0 = alloca double, align 8
  %sql2 = alloca double, align 8
  %num = alloca double, align 8
  %denom = alloca double, align 8
  %dist = alloca double, align 8
  %l0 = alloca double, align 8
  %l2 = alloca double, align 8
  %arc = alloca %struct.arc_curve_params_s, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %ax1, double* %ax1.addr, align 8, !tbaa !33
  store double %ay1, double* %ay1.addr, align 8, !tbaa !33
  store double %ax2, double* %ax2.addr, align 8, !tbaa !33
  store double %ay2, double* %ay2.addr, align 8, !tbaa !33
  store double %arad, double* %arad.addr, align 8, !tbaa !33
  store float* %retxy, float** %retxy.addr, align 8, !tbaa !1
  %0 = bitcast double* %xt0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %yt0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %xt2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %yt2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_point_s* %up0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_currentpoint(%struct.gs_state_s* %6, %struct.gs_point_s* %up0) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %7 = load i32, i32* %code, align 4, !tbaa !34
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.end:                                           ; preds = %entry
  %9 = bitcast double* %dx0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast double* %dy0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast double* %dx2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast double* %dy2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast double* %sql0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast double* %sql2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %up0, i32 0, i32 0
  %15 = load double, double* %x, align 8, !tbaa !14
  %16 = load double, double* %ax1.addr, align 8, !tbaa !33
  %sub = fsub double %15, %16
  store double %sub, double* %dx0, align 8, !tbaa !33
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %up0, i32 0, i32 1
  %17 = load double, double* %y, align 8, !tbaa !18
  %18 = load double, double* %ay1.addr, align 8, !tbaa !33
  %sub1 = fsub double %17, %18
  store double %sub1, double* %dy0, align 8, !tbaa !33
  %19 = load double, double* %ax2.addr, align 8, !tbaa !33
  %20 = load double, double* %ax1.addr, align 8, !tbaa !33
  %sub2 = fsub double %19, %20
  store double %sub2, double* %dx2, align 8, !tbaa !33
  %21 = load double, double* %ay2.addr, align 8, !tbaa !33
  %22 = load double, double* %ay1.addr, align 8, !tbaa !33
  %sub3 = fsub double %21, %22
  store double %sub3, double* %dy2, align 8, !tbaa !33
  %23 = load double, double* %dx0, align 8, !tbaa !33
  %24 = load double, double* %dx0, align 8, !tbaa !33
  %mul = fmul double %23, %24
  %25 = load double, double* %dy0, align 8, !tbaa !33
  %26 = load double, double* %dy0, align 8, !tbaa !33
  %mul4 = fmul double %25, %26
  %add = fadd double %mul, %mul4
  store double %add, double* %sql0, align 8, !tbaa !33
  %27 = load double, double* %dx2, align 8, !tbaa !33
  %28 = load double, double* %dx2, align 8, !tbaa !33
  %mul5 = fmul double %27, %28
  %29 = load double, double* %dy2, align 8, !tbaa !33
  %30 = load double, double* %dy2, align 8, !tbaa !33
  %mul6 = fmul double %29, %30
  %add7 = fadd double %mul5, %mul6
  store double %add7, double* %sql2, align 8, !tbaa !33
  %31 = load double, double* %sql0, align 8, !tbaa !33
  %cmp8 = fcmp oeq double %31, 0.000000e+00
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %32 = load double, double* %sql2, align 8, !tbaa !33
  %cmp9 = fcmp oeq double %32, 0.000000e+00
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %lor.lhs.false
  %33 = load double, double* %dx0, align 8, !tbaa !33
  %34 = load double, double* %dy2, align 8, !tbaa !33
  %mul12 = fmul double %33, %34
  %35 = load double, double* %dy0, align 8, !tbaa !33
  %36 = load double, double* %dx2, align 8, !tbaa !33
  %mul13 = fmul double %35, %36
  %cmp14 = fcmp oeq double %mul12, %mul13
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.11
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %38 = load double, double* %ax1.addr, align 8, !tbaa !33
  %39 = load double, double* %ay1.addr, align 8, !tbaa !33
  %call16 = call i32 @gs_lineto(%struct.gs_state_s* %37, double %38, double %39) #6
  store i32 %call16, i32* %code, align 4, !tbaa !34
  %40 = load double, double* %ax1.addr, align 8, !tbaa !33
  store double %40, double* %xt2, align 8, !tbaa !33
  store double %40, double* %xt0, align 8, !tbaa !33
  %41 = load double, double* %ay1.addr, align 8, !tbaa !33
  store double %41, double* %yt2, align 8, !tbaa !33
  store double %41, double* %yt0, align 8, !tbaa !33
  br label %if.end.60

if.else:                                          ; preds = %if.end.11
  %42 = bitcast double* %num to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = load double, double* %dy0, align 8, !tbaa !33
  %44 = load double, double* %dx2, align 8, !tbaa !33
  %mul17 = fmul double %43, %44
  %45 = load double, double* %dy2, align 8, !tbaa !33
  %46 = load double, double* %dx0, align 8, !tbaa !33
  %mul18 = fmul double %45, %46
  %sub19 = fsub double %mul17, %mul18
  store double %sub19, double* %num, align 8, !tbaa !33
  %47 = bitcast double* %denom to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = load double, double* %sql0, align 8, !tbaa !33
  %49 = load double, double* %sql2, align 8, !tbaa !33
  %mul20 = fmul double %48, %49
  %call21 = call double @sqrt(double %mul20) #7
  %50 = load double, double* %dx0, align 8, !tbaa !33
  %51 = load double, double* %dx2, align 8, !tbaa !33
  %mul22 = fmul double %50, %51
  %52 = load double, double* %dy0, align 8, !tbaa !33
  %53 = load double, double* %dy2, align 8, !tbaa !33
  %mul23 = fmul double %52, %53
  %add24 = fadd double %mul22, %mul23
  %sub25 = fsub double %call21, %add24
  store double %sub25, double* %denom, align 8, !tbaa !33
  %54 = bitcast double* %dist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = load double, double* %arad.addr, align 8, !tbaa !33
  %56 = load double, double* %num, align 8, !tbaa !33
  %mul26 = fmul double %55, %56
  %57 = load double, double* %denom, align 8, !tbaa !33
  %div = fdiv double %mul26, %57
  %call27 = call double @fabs(double %div) #8
  store double %call27, double* %dist, align 8, !tbaa !33
  %58 = bitcast double* %l0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  %59 = load double, double* %dist, align 8, !tbaa !33
  %60 = load double, double* %sql0, align 8, !tbaa !33
  %call28 = call double @sqrt(double %60) #7
  %div29 = fdiv double %59, %call28
  store double %div29, double* %l0, align 8, !tbaa !33
  %61 = bitcast double* %l2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  %62 = load double, double* %dist, align 8, !tbaa !33
  %63 = load double, double* %sql2, align 8, !tbaa !33
  %call30 = call double @sqrt(double %63) #7
  %div31 = fdiv double %62, %call30
  store double %div31, double* %l2, align 8, !tbaa !33
  %64 = bitcast %struct.arc_curve_params_s* %arc to i8*
  call void @llvm.lifetime.start(i64 144, i8* %64) #1
  %65 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %65, i32 0, i32 61
  %66 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !35
  %ppath = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 0
  store %struct.gx_path_s* %66, %struct.gx_path_s** %ppath, align 8, !tbaa !39
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %68 = bitcast %struct.gs_state_s* %67 to %struct.gs_imager_state_s*
  %pis = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 1
  store %struct.gs_imager_state_s* %68, %struct.gs_imager_state_s** %pis, align 8, !tbaa !42
  %69 = load double, double* %arad.addr, align 8, !tbaa !33
  %radius = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 3
  store double %69, double* %radius, align 8, !tbaa !43
  %action = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 4
  store i32 2, i32* %action, align 4, !tbaa !44
  %notes = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 5
  store i32 0, i32* %notes, align 4, !tbaa !45
  %70 = load double, double* %arad.addr, align 8, !tbaa !33
  %cmp32 = fcmp olt double %70, 0.000000e+00
  br i1 %cmp32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.else
  %71 = load double, double* %l0, align 8, !tbaa !33
  %sub34 = fsub double -0.000000e+00, %71
  store double %sub34, double* %l0, align 8, !tbaa !33
  %72 = load double, double* %l2, align 8, !tbaa !33
  %sub35 = fsub double -0.000000e+00, %72
  store double %sub35, double* %l2, align 8, !tbaa !33
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.else
  %73 = load double, double* %ax1.addr, align 8, !tbaa !33
  %74 = load double, double* %dx0, align 8, !tbaa !33
  %75 = load double, double* %l0, align 8, !tbaa !33
  %mul37 = fmul double %74, %75
  %add38 = fadd double %73, %mul37
  store double %add38, double* %xt0, align 8, !tbaa !33
  %p0 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 6
  %x39 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  store double %add38, double* %x39, align 8, !tbaa !46
  %76 = load double, double* %ay1.addr, align 8, !tbaa !33
  %77 = load double, double* %dy0, align 8, !tbaa !33
  %78 = load double, double* %l0, align 8, !tbaa !33
  %mul40 = fmul double %77, %78
  %add41 = fadd double %76, %mul40
  store double %add41, double* %yt0, align 8, !tbaa !33
  %p042 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 6
  %y43 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p042, i32 0, i32 1
  store double %add41, double* %y43, align 8, !tbaa !47
  %79 = load double, double* %ax1.addr, align 8, !tbaa !33
  %80 = load double, double* %dx2, align 8, !tbaa !33
  %81 = load double, double* %l2, align 8, !tbaa !33
  %mul44 = fmul double %80, %81
  %add45 = fadd double %79, %mul44
  store double %add45, double* %xt2, align 8, !tbaa !33
  %p3 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 7
  %x46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p3, i32 0, i32 0
  store double %add45, double* %x46, align 8, !tbaa !48
  %82 = load double, double* %ay1.addr, align 8, !tbaa !33
  %83 = load double, double* %dy2, align 8, !tbaa !33
  %84 = load double, double* %l2, align 8, !tbaa !33
  %mul47 = fmul double %83, %84
  %add48 = fadd double %82, %mul47
  store double %add48, double* %yt2, align 8, !tbaa !33
  %p349 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 7
  %y50 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p349, i32 0, i32 1
  store double %add48, double* %y50, align 8, !tbaa !49
  %85 = load double, double* %ax1.addr, align 8, !tbaa !33
  %pt = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 8
  %x51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  store double %85, double* %x51, align 8, !tbaa !50
  %86 = load double, double* %ay1.addr, align 8, !tbaa !33
  %pt52 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 8
  %y53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt52, i32 0, i32 1
  store double %86, double* %y53, align 8, !tbaa !51
  %call54 = call i32 @arc_add(%struct.arc_curve_params_s* %arc, i32 0) #6
  store i32 %call54, i32* %code, align 4, !tbaa !34
  %87 = load i32, i32* %code, align 4, !tbaa !34
  %cmp55 = icmp eq i32 %87, 0
  br i1 %cmp55, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %if.end.36
  %88 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %89 = bitcast %struct.gs_state_s* %88 to %struct.gs_imager_state_s*
  %90 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path57 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %90, i32 0, i32 61
  %91 = load %struct.gx_path_s*, %struct.gx_path_s** %path57, align 8, !tbaa !35
  %call58 = call i32 @gx_setcurrentpoint_from_path(%struct.gs_imager_state_s* %89, %struct.gx_path_s* %91) #6
  store i32 %call58, i32* %code, align 4, !tbaa !34
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %if.end.36
  %92 = bitcast %struct.arc_curve_params_s* %arc to i8*
  call void @llvm.lifetime.end(i64 144, i8* %92) #1
  %93 = bitcast double* %l2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast double* %l0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast double* %dist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast double* %denom to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast double* %num to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.15
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.60, %if.then.10
  %98 = bitcast double* %sql2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast double* %sql0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast double* %dy2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast double* %dx2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast double* %dy0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast double* %dx0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.75 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %104 = load float*, float** %retxy.addr, align 8, !tbaa !1
  %cmp66 = icmp ne float* %104, null
  br i1 %cmp66, label %if.then.67, label %if.end.74

if.then.67:                                       ; preds = %cleanup.cont
  %105 = load double, double* %xt0, align 8, !tbaa !33
  %conv = fptrunc double %105 to float
  %106 = load float*, float** %retxy.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %106, i64 0
  store float %conv, float* %arrayidx, align 4, !tbaa !52
  %107 = load double, double* %yt0, align 8, !tbaa !33
  %conv68 = fptrunc double %107 to float
  %108 = load float*, float** %retxy.addr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds float, float* %108, i64 1
  store float %conv68, float* %arrayidx69, align 4, !tbaa !52
  %109 = load double, double* %xt2, align 8, !tbaa !33
  %conv70 = fptrunc double %109 to float
  %110 = load float*, float** %retxy.addr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds float, float* %110, i64 2
  store float %conv70, float* %arrayidx71, align 4, !tbaa !52
  %111 = load double, double* %yt2, align 8, !tbaa !33
  %conv72 = fptrunc double %111 to float
  %112 = load float*, float** %retxy.addr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds float, float* %112, i64 3
  store float %conv72, float* %arrayidx73, align 4, !tbaa !52
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.67, %cleanup.cont
  %113 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %113, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

cleanup.75:                                       ; preds = %if.end.74, %cleanup, %if.then
  %114 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast %struct.gs_point_s* %up0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %115) #1
  %116 = bitcast double* %yt2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast double* %xt2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast double* %yt0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast double* %xt0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = load i32, i32* %retval
  ret i32 %120
}

declare i32 @gs_currentpoint(%struct.gs_state_s*, %struct.gs_point_s*) #3

declare i32 @gs_lineto(%struct.gs_state_s*, double, double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind uwtable
define internal i32 @arc_add(%struct.arc_curve_params_s* %arc, i32 %is_quadrant) #0 {
entry:
  %retval = alloca i32, align 4
  %arc.addr = alloca %struct.arc_curve_params_s*, align 8
  %is_quadrant.addr = alloca i32, align 4
  %path = alloca %struct.gx_path_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %xt = alloca double, align 8
  %yt = alloca double, align 8
  %fraction = alloca double, align 8
  %p06 = alloca %struct.gs_fixed_point_s, align 4
  %p2 = alloca %struct.gs_fixed_point_s, align 4
  %p3 = alloca %struct.gs_fixed_point_s, align 4
  %pt7 = alloca %struct.gs_fixed_point_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %delta = alloca i32, align 4
  %r = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %dist = alloca double, align 8
  %r2 = alloca double, align 8
  store %struct.arc_curve_params_s* %arc, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  store i32 %is_quadrant, i32* %is_quadrant.addr, align 4, !tbaa !34
  %0 = bitcast %struct.gx_path_s** %path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %ppath = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %1, i32 0, i32 0
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !39
  store %struct.gx_path_s* %2, %struct.gx_path_s** %path, align 8, !tbaa !1
  %3 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %pis1 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %4, i32 0, i32 1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis1, align 8, !tbaa !42
  store %struct.gs_imager_state_s* %5, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %6 = bitcast double* %x0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p0 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %7, i32 0, i32 6
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %8 = load double, double* %x, align 8, !tbaa !46
  store double %8, double* %x0, align 8, !tbaa !33
  %9 = bitcast double* %y0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p02 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %10, i32 0, i32 6
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p02, i32 0, i32 1
  %11 = load double, double* %y, align 8, !tbaa !47
  store double %11, double* %y0, align 8, !tbaa !33
  %12 = bitcast double* %xt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %13, i32 0, i32 8
  %x3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %14 = load double, double* %x3, align 8, !tbaa !50
  store double %14, double* %xt, align 8, !tbaa !33
  %15 = bitcast double* %yt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %pt4 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %16, i32 0, i32 8
  %y5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt4, i32 0, i32 1
  %17 = load double, double* %y5, align 8, !tbaa !51
  store double %17, double* %yt, align 8, !tbaa !33
  %18 = bitcast double* %fraction to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast %struct.gs_fixed_point_s* %p06 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast %struct.gs_fixed_point_s* %p2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast %struct.gs_fixed_point_s* %p3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast %struct.gs_fixed_point_s* %pt7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %action = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %24, i32 0, i32 4
  %25 = load i32, i32* %action, align 4, !tbaa !44
  %cmp = icmp ne i32 %25, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %26, i32 0, i32 5
  %27 = load double, double* %x0, align 8, !tbaa !33
  %28 = load double, double* %y0, align 8, !tbaa !33
  %call = call i32 @gs_point_transform2fixed_rounding(%struct.gs_matrix_fixed_s* %ctm, double %27, double %28, %struct.gs_fixed_point_s* %p06) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm9 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %29, i32 0, i32 5
  %30 = load double, double* %xt, align 8, !tbaa !33
  %31 = load double, double* %yt, align 8, !tbaa !33
  %call10 = call i32 @gs_point_transform2fixed_rounding(%struct.gs_matrix_fixed_s* %ctm9, double %30, double %31, %struct.gs_fixed_point_s* %pt7) #6
  store i32 %call10, i32* %code, align 4, !tbaa !34
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm13 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %32, i32 0, i32 5
  %33 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p314 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %33, i32 0, i32 7
  %x15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p314, i32 0, i32 0
  %34 = load double, double* %x15, align 8, !tbaa !48
  %35 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p316 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %35, i32 0, i32 7
  %y17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p316, i32 0, i32 1
  %36 = load double, double* %y17, align 8, !tbaa !49
  %call18 = call i32 @gs_point_transform2fixed_rounding(%struct.gs_matrix_fixed_s* %ctm13, double %34, double %36, %struct.gs_fixed_point_s* %p3) #6
  store i32 %call18, i32* %code, align 4, !tbaa !34
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.12, %lor.lhs.false, %land.lhs.true
  %37 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.12
  %38 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %38, i32 0, i32 8
  %39 = load i8, i8* %state_flags, align 1, !tbaa !53
  %conv = zext i8 %39 to i32
  %and = and i32 %conv, 1
  %cmp20 = icmp ne i32 %and, 0
  br i1 %cmp20, label %if.end.30, label %if.then.22

if.then.22:                                       ; preds = %if.end
  %40 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p023 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %40, i32 0, i32 6
  %x24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p023, i32 0, i32 0
  %41 = load double, double* %x24, align 8, !tbaa !46
  %42 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p025 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %42, i32 0, i32 6
  %y26 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p025, i32 0, i32 1
  %43 = load double, double* %y26, align 8, !tbaa !47
  %44 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %pis27 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %44, i32 0, i32 1
  %45 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis27, align 8, !tbaa !42
  %ctm28 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %45, i32 0, i32 5
  %46 = bitcast %struct.gs_matrix_fixed_s* %ctm28 to %struct.gs_matrix_s*
  %47 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %subpath_start = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %47, i32 0, i32 8
  %call29 = call i32 @gs_point_transform(double %41, double %43, %struct.gs_matrix_s* %46, %struct.gs_point_s* %subpath_start) #6
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.22, %if.end
  %48 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %action31 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %48, i32 0, i32 4
  %49 = load i32, i32* %action31, align 4, !tbaa !44
  %cmp32 = icmp eq i32 %49, 0
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.30
  %50 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %50, i32 0, i32 14
  %x34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %51 = load i32, i32* %x34, align 4, !tbaa !5
  %x35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 0
  store i32 %51, i32* %x35, align 4, !tbaa !54
  %52 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !1
  %position36 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %52, i32 0, i32 14
  %y37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position36, i32 0, i32 1
  %53 = load i32, i32* %y37, align 4, !tbaa !17
  %y38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 1
  store i32 %53, i32* %y38, align 4, !tbaa !55
  br label %cond.end.56

cond.false:                                       ; preds = %if.end.30
  %54 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %action39 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %54, i32 0, i32 4
  %55 = load i32, i32* %action39, align 4, !tbaa !44
  %cmp40 = icmp eq i32 %55, 2
  br i1 %cmp40, label %land.lhs.true.42, label %cond.false.52

land.lhs.true.42:                                 ; preds = %cond.false
  %56 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !1
  %state_flags43 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %56, i32 0, i32 8
  %57 = load i8, i8* %state_flags43, align 1, !tbaa !53
  %conv44 = zext i8 %57 to i32
  %and45 = and i32 %conv44, 1
  %cmp46 = icmp ne i32 %and45, 0
  br i1 %cmp46, label %cond.true.48, label %cond.false.52

cond.true.48:                                     ; preds = %land.lhs.true.42
  %58 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !1
  %x49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 0
  %59 = load i32, i32* %x49, align 4, !tbaa !54
  %y50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 1
  %60 = load i32, i32* %y50, align 4, !tbaa !55
  %call51 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %58, i32 %59, i32 %60, i32 0) #6
  br label %cond.end

cond.false.52:                                    ; preds = %land.lhs.true.42, %cond.false
  %61 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !1
  %x53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 0
  %62 = load i32, i32* %x53, align 4, !tbaa !54
  %y54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 1
  %63 = load i32, i32* %y54, align 4, !tbaa !55
  %call55 = call i32 @gx_path_add_point(%struct.gx_path_s* %61, i32 %62, i32 %63) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false.52, %cond.true.48
  %cond = phi i32 [ %call51, %cond.true.48 ], [ %call55, %cond.false.52 ]
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end, %cond.true
  %cond57 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond57, i32* %code, align 4, !tbaa !34
  %64 = load i32, i32* %code, align 4, !tbaa !34
  %cmp58 = icmp slt i32 %64, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %cond.end.56
  %65 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.61:                                        ; preds = %cond.end.56
  %66 = load i32, i32* %is_quadrant.addr, align 4, !tbaa !34
  %tobool = icmp ne i32 %66, 0
  br i1 %tobool, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %if.end.61
  store double 0x3FE1AC5111534A21, double* %fraction, align 8, !tbaa !33
  %67 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %fast_quadrant = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %67, i32 0, i32 11
  %68 = load i32, i32* %fast_quadrant, align 4, !tbaa !56
  %cmp63 = icmp sgt i32 %68, 0
  br i1 %cmp63, label %if.then.65, label %if.end.146

if.then.65:                                       ; preds = %if.then.62
  %69 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %quadrant_delta = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %70, i32 0, i32 13
  %71 = load i32, i32* %quadrant_delta, align 4, !tbaa !57
  store i32 %71, i32* %delta, align 4, !tbaa !34
  %x66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt7, i32 0, i32 0
  %72 = load i32, i32* %x66, align 4, !tbaa !54
  %x67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 0
  %73 = load i32, i32* %x67, align 4, !tbaa !54
  %cmp68 = icmp ne i32 %72, %73
  br i1 %cmp68, label %if.then.70, label %if.end.82

if.then.70:                                       ; preds = %if.then.65
  %x71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt7, i32 0, i32 0
  %74 = load i32, i32* %x71, align 4, !tbaa !54
  %x72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 0
  %75 = load i32, i32* %x72, align 4, !tbaa !54
  %cmp73 = icmp sgt i32 %74, %75
  br i1 %cmp73, label %cond.true.75, label %cond.false.77

cond.true.75:                                     ; preds = %if.then.70
  %x76 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 0
  %76 = load i32, i32* %x76, align 4, !tbaa !54
  %77 = load i32, i32* %delta, align 4, !tbaa !34
  %add = add nsw i32 %76, %77
  br label %cond.end.79

cond.false.77:                                    ; preds = %if.then.70
  %x78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 0
  %78 = load i32, i32* %x78, align 4, !tbaa !54
  %79 = load i32, i32* %delta, align 4, !tbaa !34
  %sub = sub nsw i32 %78, %79
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.77, %cond.true.75
  %cond80 = phi i32 [ %add, %cond.true.75 ], [ %sub, %cond.false.77 ]
  %x81 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 0
  store i32 %cond80, i32* %x81, align 4, !tbaa !54
  br label %if.end.82

if.end.82:                                        ; preds = %cond.end.79, %if.then.65
  %y83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt7, i32 0, i32 1
  %80 = load i32, i32* %y83, align 4, !tbaa !55
  %y84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 1
  %81 = load i32, i32* %y84, align 4, !tbaa !55
  %cmp85 = icmp ne i32 %80, %81
  br i1 %cmp85, label %if.then.87, label %if.end.101

if.then.87:                                       ; preds = %if.end.82
  %y88 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt7, i32 0, i32 1
  %82 = load i32, i32* %y88, align 4, !tbaa !55
  %y89 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 1
  %83 = load i32, i32* %y89, align 4, !tbaa !55
  %cmp90 = icmp sgt i32 %82, %83
  br i1 %cmp90, label %cond.true.92, label %cond.false.95

cond.true.92:                                     ; preds = %if.then.87
  %y93 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 1
  %84 = load i32, i32* %y93, align 4, !tbaa !55
  %85 = load i32, i32* %delta, align 4, !tbaa !34
  %add94 = add nsw i32 %84, %85
  br label %cond.end.98

cond.false.95:                                    ; preds = %if.then.87
  %y96 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 1
  %86 = load i32, i32* %y96, align 4, !tbaa !55
  %87 = load i32, i32* %delta, align 4, !tbaa !34
  %sub97 = sub nsw i32 %86, %87
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.95, %cond.true.92
  %cond99 = phi i32 [ %add94, %cond.true.92 ], [ %sub97, %cond.false.95 ]
  %y100 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 1
  store i32 %cond99, i32* %y100, align 4, !tbaa !55
  br label %if.end.101

if.end.101:                                       ; preds = %cond.end.98, %if.end.82
  %x102 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt7, i32 0, i32 0
  %88 = load i32, i32* %x102, align 4, !tbaa !54
  %x103 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  %89 = load i32, i32* %x103, align 4, !tbaa !54
  %cmp104 = icmp eq i32 %88, %89
  br i1 %cmp104, label %cond.true.106, label %cond.false.108

cond.true.106:                                    ; preds = %if.end.101
  %x107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  %90 = load i32, i32* %x107, align 4, !tbaa !54
  br label %cond.end.121

cond.false.108:                                   ; preds = %if.end.101
  %x109 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt7, i32 0, i32 0
  %91 = load i32, i32* %x109, align 4, !tbaa !54
  %x110 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  %92 = load i32, i32* %x110, align 4, !tbaa !54
  %cmp111 = icmp sgt i32 %91, %92
  br i1 %cmp111, label %cond.true.113, label %cond.false.116

cond.true.113:                                    ; preds = %cond.false.108
  %x114 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  %93 = load i32, i32* %x114, align 4, !tbaa !54
  %94 = load i32, i32* %delta, align 4, !tbaa !34
  %add115 = add nsw i32 %93, %94
  br label %cond.end.119

cond.false.116:                                   ; preds = %cond.false.108
  %x117 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  %95 = load i32, i32* %x117, align 4, !tbaa !54
  %96 = load i32, i32* %delta, align 4, !tbaa !34
  %sub118 = sub nsw i32 %95, %96
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.116, %cond.true.113
  %cond120 = phi i32 [ %add115, %cond.true.113 ], [ %sub118, %cond.false.116 ]
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.end.119, %cond.true.106
  %cond122 = phi i32 [ %90, %cond.true.106 ], [ %cond120, %cond.end.119 ]
  %x123 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  store i32 %cond122, i32* %x123, align 4, !tbaa !54
  %y124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt7, i32 0, i32 1
  %97 = load i32, i32* %y124, align 4, !tbaa !55
  %y125 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 1
  %98 = load i32, i32* %y125, align 4, !tbaa !55
  %cmp126 = icmp eq i32 %97, %98
  br i1 %cmp126, label %cond.true.128, label %cond.false.130

cond.true.128:                                    ; preds = %cond.end.121
  %y129 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 1
  %99 = load i32, i32* %y129, align 4, !tbaa !55
  br label %cond.end.143

cond.false.130:                                   ; preds = %cond.end.121
  %y131 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt7, i32 0, i32 1
  %100 = load i32, i32* %y131, align 4, !tbaa !55
  %y132 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 1
  %101 = load i32, i32* %y132, align 4, !tbaa !55
  %cmp133 = icmp sgt i32 %100, %101
  br i1 %cmp133, label %cond.true.135, label %cond.false.138

cond.true.135:                                    ; preds = %cond.false.130
  %y136 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 1
  %102 = load i32, i32* %y136, align 4, !tbaa !55
  %103 = load i32, i32* %delta, align 4, !tbaa !34
  %add137 = add nsw i32 %102, %103
  br label %cond.end.141

cond.false.138:                                   ; preds = %cond.false.130
  %y139 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 1
  %104 = load i32, i32* %y139, align 4, !tbaa !55
  %105 = load i32, i32* %delta, align 4, !tbaa !34
  %sub140 = sub nsw i32 %104, %105
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.138, %cond.true.135
  %cond142 = phi i32 [ %add137, %cond.true.135 ], [ %sub140, %cond.false.138 ]
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.end.141, %cond.true.128
  %cond144 = phi i32 [ %99, %cond.true.128 ], [ %cond142, %cond.end.141 ]
  %y145 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  store i32 %cond144, i32* %y145, align 4, !tbaa !55
  store i32 2, i32* %cleanup.dest.slot
  %106 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup [
    i32 2, label %add.197
  ]

if.end.146:                                       ; preds = %if.then.62
  br label %if.end.162

if.else:                                          ; preds = %if.end.61
  %107 = bitcast double* %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  %108 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %radius = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %108, i32 0, i32 3
  %109 = load double, double* %radius, align 8, !tbaa !43
  store double %109, double* %r, align 8, !tbaa !33
  %110 = bitcast double* %dx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  %111 = load double, double* %xt, align 8, !tbaa !33
  %112 = load double, double* %x0, align 8, !tbaa !33
  %sub147 = fsub double %111, %112
  store double %sub147, double* %dx, align 8, !tbaa !33
  %113 = bitcast double* %dy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %113) #1
  %114 = load double, double* %yt, align 8, !tbaa !33
  %115 = load double, double* %y0, align 8, !tbaa !33
  %sub148 = fsub double %114, %115
  store double %sub148, double* %dy, align 8, !tbaa !33
  %116 = bitcast double* %dist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %116) #1
  %117 = load double, double* %dx, align 8, !tbaa !33
  %118 = load double, double* %dx, align 8, !tbaa !33
  %mul = fmul double %117, %118
  %119 = load double, double* %dy, align 8, !tbaa !33
  %120 = load double, double* %dy, align 8, !tbaa !33
  %mul149 = fmul double %119, %120
  %add150 = fadd double %mul, %mul149
  store double %add150, double* %dist, align 8, !tbaa !33
  %121 = bitcast double* %r2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %121) #1
  %122 = load double, double* %r, align 8, !tbaa !33
  %123 = load double, double* %r, align 8, !tbaa !33
  %mul151 = fmul double %122, %123
  store double %mul151, double* %r2, align 8, !tbaa !33
  %124 = load double, double* %dist, align 8, !tbaa !33
  %125 = load double, double* %r2, align 8, !tbaa !33
  %mul152 = fmul double %125, 1.000000e+08
  %cmp153 = fcmp oge double %124, %mul152
  br i1 %cmp153, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %if.else
  store double 0.000000e+00, double* %fraction, align 8, !tbaa !33
  br label %if.end.161

if.else.156:                                      ; preds = %if.else
  %126 = load double, double* %dist, align 8, !tbaa !33
  %127 = load double, double* %r2, align 8, !tbaa !33
  %div = fdiv double %126, %127
  %add157 = fadd double 1.000000e+00, %div
  %call158 = call double @sqrt(double %add157) #7
  %add159 = fadd double 1.000000e+00, %call158
  %div160 = fdiv double 0x3FF5555555555555, %add159
  store double %div160, double* %fraction, align 8, !tbaa !33
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.156, %if.then.155
  %128 = bitcast double* %r2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast double* %dist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast double* %dy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast double* %dx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast double* %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.end.146
  %x163 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt7, i32 0, i32 0
  %133 = load i32, i32* %x163, align 4, !tbaa !54
  %x164 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 0
  %134 = load i32, i32* %x164, align 4, !tbaa !54
  %sub165 = sub nsw i32 %133, %134
  %conv166 = sitofp i32 %sub165 to double
  %135 = load double, double* %fraction, align 8, !tbaa !33
  %mul167 = fmul double %conv166, %135
  %conv168 = fptosi double %mul167 to i32
  %x169 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 0
  %136 = load i32, i32* %x169, align 4, !tbaa !54
  %add170 = add nsw i32 %136, %conv168
  store i32 %add170, i32* %x169, align 4, !tbaa !54
  %y171 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt7, i32 0, i32 1
  %137 = load i32, i32* %y171, align 4, !tbaa !55
  %y172 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 1
  %138 = load i32, i32* %y172, align 4, !tbaa !55
  %sub173 = sub nsw i32 %137, %138
  %conv174 = sitofp i32 %sub173 to double
  %139 = load double, double* %fraction, align 8, !tbaa !33
  %mul175 = fmul double %conv174, %139
  %conv176 = fptosi double %mul175 to i32
  %y177 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 1
  %140 = load i32, i32* %y177, align 4, !tbaa !55
  %add178 = add nsw i32 %140, %conv176
  store i32 %add178, i32* %y177, align 4, !tbaa !55
  %x179 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  %141 = load i32, i32* %x179, align 4, !tbaa !54
  %x180 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt7, i32 0, i32 0
  %142 = load i32, i32* %x180, align 4, !tbaa !54
  %x181 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  %143 = load i32, i32* %x181, align 4, !tbaa !54
  %sub182 = sub nsw i32 %142, %143
  %conv183 = sitofp i32 %sub182 to double
  %144 = load double, double* %fraction, align 8, !tbaa !33
  %mul184 = fmul double %conv183, %144
  %conv185 = fptosi double %mul184 to i32
  %add186 = add nsw i32 %141, %conv185
  %x187 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  store i32 %add186, i32* %x187, align 4, !tbaa !54
  %y188 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 1
  %145 = load i32, i32* %y188, align 4, !tbaa !55
  %y189 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt7, i32 0, i32 1
  %146 = load i32, i32* %y189, align 4, !tbaa !55
  %y190 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 1
  %147 = load i32, i32* %y190, align 4, !tbaa !55
  %sub191 = sub nsw i32 %146, %147
  %conv192 = sitofp i32 %sub191 to double
  %148 = load double, double* %fraction, align 8, !tbaa !33
  %mul193 = fmul double %conv192, %148
  %conv194 = fptosi double %mul193 to i32
  %add195 = add nsw i32 %145, %conv194
  %y196 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  store i32 %add195, i32* %y196, align 4, !tbaa !55
  br label %add.197

add.197:                                          ; preds = %if.end.162, %cond.end.143
  br label %do.body

do.body:                                          ; preds = %add.197
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %149 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !1
  %x198 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 0
  %150 = load i32, i32* %x198, align 4, !tbaa !54
  %y199 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p06, i32 0, i32 1
  %151 = load i32, i32* %y199, align 4, !tbaa !55
  %x200 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %152 = load i32, i32* %x200, align 4, !tbaa !54
  %y201 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %153 = load i32, i32* %y201, align 4, !tbaa !55
  %x202 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 0
  %154 = load i32, i32* %x202, align 4, !tbaa !54
  %y203 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 1
  %155 = load i32, i32* %y203, align 4, !tbaa !55
  %156 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %notes = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %156, i32 0, i32 5
  %157 = load i32, i32* %notes, align 4, !tbaa !45
  %or = or i32 %157, 2
  %call204 = call i32 @gx_path_add_curve_notes(%struct.gx_path_s* %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %or) #6
  store i32 %call204, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cond.end.143, %if.then.60, %if.then
  %158 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast %struct.gs_fixed_point_s* %pt7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast %struct.gs_fixed_point_s* %p3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast %struct.gs_fixed_point_s* %p2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast %struct.gs_fixed_point_s* %p06 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast double* %fraction to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast double* %yt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast double* %xt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast double* %y0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %167 = bitcast double* %x0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast %struct.gx_path_s** %path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = load i32, i32* %retval
  ret i32 %170
}

; Function Attrs: nounwind uwtable
define void @make_quadrant_arc(%struct.gs_point_s* %p, %struct.gs_point_s* %c, %struct.gs_point_s* %p0, %struct.gs_point_s* %p1, double %r) #0 {
entry:
  %p.addr = alloca %struct.gs_point_s*, align 8
  %c.addr = alloca %struct.gs_point_s*, align 8
  %p0.addr = alloca %struct.gs_point_s*, align 8
  %p1.addr = alloca %struct.gs_point_s*, align 8
  %r.addr = alloca double, align 8
  store %struct.gs_point_s* %p, %struct.gs_point_s** %p.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %c, %struct.gs_point_s** %c.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %p0, %struct.gs_point_s** %p0.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %p1, %struct.gs_point_s** %p1.addr, align 8, !tbaa !1
  store double %r, double* %r.addr, align 8, !tbaa !33
  %0 = load %struct.gs_point_s*, %struct.gs_point_s** %c.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8, !tbaa !14
  %2 = load %struct.gs_point_s*, %struct.gs_point_s** %p0.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8, !tbaa !14
  %4 = load double, double* %r.addr, align 8, !tbaa !33
  %mul = fmul double %3, %4
  %add = fadd double %1, %mul
  %5 = load %struct.gs_point_s*, %struct.gs_point_s** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0
  %x2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  store double %add, double* %x2, align 8, !tbaa !14
  %6 = load %struct.gs_point_s*, %struct.gs_point_s** %c.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i32 0, i32 1
  %7 = load double, double* %y, align 8, !tbaa !18
  %8 = load %struct.gs_point_s*, %struct.gs_point_s** %p0.addr, align 8, !tbaa !1
  %y3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %8, i32 0, i32 1
  %9 = load double, double* %y3, align 8, !tbaa !18
  %10 = load double, double* %r.addr, align 8, !tbaa !33
  %mul4 = fmul double %9, %10
  %add5 = fadd double %7, %mul4
  %11 = load %struct.gs_point_s*, %struct.gs_point_s** %p.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %11, i64 0
  %y7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx6, i32 0, i32 1
  store double %add5, double* %y7, align 8, !tbaa !18
  %12 = load %struct.gs_point_s*, %struct.gs_point_s** %c.addr, align 8, !tbaa !1
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %12, i32 0, i32 0
  %13 = load double, double* %x8, align 8, !tbaa !14
  %14 = load %struct.gs_point_s*, %struct.gs_point_s** %p0.addr, align 8, !tbaa !1
  %x9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %14, i32 0, i32 0
  %15 = load double, double* %x9, align 8, !tbaa !14
  %16 = load double, double* %r.addr, align 8, !tbaa !33
  %mul10 = fmul double %15, %16
  %add11 = fadd double %13, %mul10
  %17 = load %struct.gs_point_s*, %struct.gs_point_s** %p1.addr, align 8, !tbaa !1
  %x12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %17, i32 0, i32 0
  %18 = load double, double* %x12, align 8, !tbaa !14
  %19 = load double, double* %r.addr, align 8, !tbaa !33
  %mul13 = fmul double %18, %19
  %mul14 = fmul double %mul13, 0x3FE1AC5111534A21
  %add15 = fadd double %add11, %mul14
  %20 = load %struct.gs_point_s*, %struct.gs_point_s** %p.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %20, i64 1
  %x17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx16, i32 0, i32 0
  store double %add15, double* %x17, align 8, !tbaa !14
  %21 = load %struct.gs_point_s*, %struct.gs_point_s** %c.addr, align 8, !tbaa !1
  %y18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %21, i32 0, i32 1
  %22 = load double, double* %y18, align 8, !tbaa !18
  %23 = load %struct.gs_point_s*, %struct.gs_point_s** %p0.addr, align 8, !tbaa !1
  %y19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %23, i32 0, i32 1
  %24 = load double, double* %y19, align 8, !tbaa !18
  %25 = load double, double* %r.addr, align 8, !tbaa !33
  %mul20 = fmul double %24, %25
  %add21 = fadd double %22, %mul20
  %26 = load %struct.gs_point_s*, %struct.gs_point_s** %p1.addr, align 8, !tbaa !1
  %y22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %26, i32 0, i32 1
  %27 = load double, double* %y22, align 8, !tbaa !18
  %28 = load double, double* %r.addr, align 8, !tbaa !33
  %mul23 = fmul double %27, %28
  %mul24 = fmul double %mul23, 0x3FE1AC5111534A21
  %add25 = fadd double %add21, %mul24
  %29 = load %struct.gs_point_s*, %struct.gs_point_s** %p.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %29, i64 1
  %y27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx26, i32 0, i32 1
  store double %add25, double* %y27, align 8, !tbaa !18
  %30 = load %struct.gs_point_s*, %struct.gs_point_s** %c.addr, align 8, !tbaa !1
  %x28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %30, i32 0, i32 0
  %31 = load double, double* %x28, align 8, !tbaa !14
  %32 = load %struct.gs_point_s*, %struct.gs_point_s** %p0.addr, align 8, !tbaa !1
  %x29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %32, i32 0, i32 0
  %33 = load double, double* %x29, align 8, !tbaa !14
  %34 = load double, double* %r.addr, align 8, !tbaa !33
  %mul30 = fmul double %33, %34
  %mul31 = fmul double %mul30, 0x3FE1AC5111534A21
  %add32 = fadd double %31, %mul31
  %35 = load %struct.gs_point_s*, %struct.gs_point_s** %p1.addr, align 8, !tbaa !1
  %x33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %35, i32 0, i32 0
  %36 = load double, double* %x33, align 8, !tbaa !14
  %37 = load double, double* %r.addr, align 8, !tbaa !33
  %mul34 = fmul double %36, %37
  %add35 = fadd double %add32, %mul34
  %38 = load %struct.gs_point_s*, %struct.gs_point_s** %p.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %38, i64 2
  %x37 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx36, i32 0, i32 0
  store double %add35, double* %x37, align 8, !tbaa !14
  %39 = load %struct.gs_point_s*, %struct.gs_point_s** %c.addr, align 8, !tbaa !1
  %y38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %39, i32 0, i32 1
  %40 = load double, double* %y38, align 8, !tbaa !18
  %41 = load %struct.gs_point_s*, %struct.gs_point_s** %p0.addr, align 8, !tbaa !1
  %y39 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %41, i32 0, i32 1
  %42 = load double, double* %y39, align 8, !tbaa !18
  %43 = load double, double* %r.addr, align 8, !tbaa !33
  %mul40 = fmul double %42, %43
  %mul41 = fmul double %mul40, 0x3FE1AC5111534A21
  %add42 = fadd double %40, %mul41
  %44 = load %struct.gs_point_s*, %struct.gs_point_s** %p1.addr, align 8, !tbaa !1
  %y43 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %44, i32 0, i32 1
  %45 = load double, double* %y43, align 8, !tbaa !18
  %46 = load double, double* %r.addr, align 8, !tbaa !33
  %mul44 = fmul double %45, %46
  %add45 = fadd double %add42, %mul44
  %47 = load %struct.gs_point_s*, %struct.gs_point_s** %p.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %47, i64 2
  %y47 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx46, i32 0, i32 1
  store double %add45, double* %y47, align 8, !tbaa !18
  %48 = load %struct.gs_point_s*, %struct.gs_point_s** %c.addr, align 8, !tbaa !1
  %x48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %48, i32 0, i32 0
  %49 = load double, double* %x48, align 8, !tbaa !14
  %50 = load %struct.gs_point_s*, %struct.gs_point_s** %p1.addr, align 8, !tbaa !1
  %x49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %50, i32 0, i32 0
  %51 = load double, double* %x49, align 8, !tbaa !14
  %52 = load double, double* %r.addr, align 8, !tbaa !33
  %mul50 = fmul double %51, %52
  %add51 = fadd double %49, %mul50
  %53 = load %struct.gs_point_s*, %struct.gs_point_s** %p.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %53, i64 3
  %x53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx52, i32 0, i32 0
  store double %add51, double* %x53, align 8, !tbaa !14
  %54 = load %struct.gs_point_s*, %struct.gs_point_s** %c.addr, align 8, !tbaa !1
  %y54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %54, i32 0, i32 1
  %55 = load double, double* %y54, align 8, !tbaa !18
  %56 = load %struct.gs_point_s*, %struct.gs_point_s** %p1.addr, align 8, !tbaa !1
  %y55 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %56, i32 0, i32 1
  %57 = load double, double* %y55, align 8, !tbaa !18
  %58 = load double, double* %r.addr, align 8, !tbaa !33
  %mul56 = fmul double %57, %58
  %add57 = fadd double %55, %mul56
  %59 = load %struct.gs_point_s*, %struct.gs_point_s** %p.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %59, i64 3
  %y59 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx58, i32 0, i32 1
  store double %add57, double* %y59, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_dashpath(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  %fpath = alloca %struct.gx_path_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gx_path_s* %fpath to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_currentdash_length(%struct.gs_state_s* %3) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_flattenpath(%struct.gs_state_s* %4) #6
  store i32 %call1, i32* %code, align 4, !tbaa !34
  %5 = load i32, i32* %code, align 4, !tbaa !34
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %6 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 61
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !35
  store %struct.gx_path_s* %8, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %9, i32 0, i32 1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !58
  %call5 = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %fpath, %struct.gx_path_s* null, %struct.gs_memory_s* %10) #6
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gs_state_s* %12 to %struct.gs_imager_state_s*
  %call6 = call i32 @gx_path_add_dash_expansion(%struct.gx_path_s* %11, %struct.gx_path_s* %fpath, %struct.gs_imager_state_s* %13) #6
  store i32 %call6, i32* %code, align 4, !tbaa !34
  %14 = load i32, i32* %code, align 4, !tbaa !34
  %cmp7 = icmp slt i32 %14, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  call void @gx_path_free(%struct.gx_path_s* %fpath, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)) #6
  %15 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.4
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 61
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %path10, align 8, !tbaa !35
  %call11 = call i32 @gx_path_assign_free(%struct.gx_path_s* %17, %struct.gx_path_s* %fpath) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then.3, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast %struct.gx_path_s* %fpath to i8*
  call void @llvm.lifetime.end(i64 128, i8* %19) #1
  %20 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @gs_currentdash_length(%struct.gs_state_s*) #3

; Function Attrs: nounwind uwtable
define i32 @gs_flattenpath(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  %fpath = alloca %struct.gx_path_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 61
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !35
  store %struct.gx_path_s* %2, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %3 = bitcast %struct.gx_path_s* %fpath to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %curve_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 13
  %6 = load i32, i32* %curve_count, align 4, !tbaa !59
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !58
  %call = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %fpath, %struct.gx_path_s* null, %struct.gs_memory_s* %8) #6
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %flatness = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 27
  %11 = load float, float* %flatness, align 4, !tbaa !60
  %mul = fmul float %11, 2.560000e+02
  %conv = fptosi float %mul to i32
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %accurate_curves = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 30
  %13 = load i32, i32* %accurate_curves, align 4, !tbaa !61
  %tobool = icmp ne i32 %13, 0
  %cond = select i1 %tobool, i32 2, i32 0
  %call1 = call i32 @gx_path_copy_reducing(%struct.gx_path_s* %9, %struct.gx_path_s* %fpath, i32 %conv, %struct.gs_imager_state_s* null, i32 %cond) #6
  store i32 %call1, i32* %code, align 4, !tbaa !34
  %14 = load i32, i32* %code, align 4, !tbaa !34
  %cmp2 = icmp slt i32 %14, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @gx_path_free(%struct.gx_path_s* %fpath, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #6
  %15 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %call6 = call i32 @gx_path_assign_free(%struct.gx_path_s* %16, %struct.gx_path_s* %fpath) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast %struct.gx_path_s* %fpath to i8*
  call void @llvm.lifetime.end(i64 128, i8* %18) #1
  %19 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @gx_path_init_local_shared(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_memory_s*) #3

declare i32 @gx_path_add_dash_expansion(%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_imager_state_s*) #3

declare void @gx_path_free(%struct.gx_path_s*, i8*) #3

declare i32 @gx_path_assign_free(%struct.gx_path_s*, %struct.gx_path_s*) #3

declare i32 @gx_path_copy_reducing(%struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.gs_imager_state_s*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gs_reversepath(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  %rpath = alloca %struct.gx_path_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 61
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !35
  store %struct.gx_path_s* %2, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %3 = bitcast %struct.gx_path_s* %rpath to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !58
  %call = call i32 @gx_path_init_local_shared(%struct.gx_path_s* %rpath, %struct.gx_path_s* null, %struct.gs_memory_s* %6) #6
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %call1 = call i32 @gx_path_copy_reversed(%struct.gx_path_s* %7, %struct.gx_path_s* %rpath) #6
  store i32 %call1, i32* %code, align 4, !tbaa !34
  %8 = load i32, i32* %code, align 4, !tbaa !34
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @gx_path_free(%struct.gx_path_s* %rpath, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #6
  %9 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 6
  %11 = load i32, i32* %current_point_valid, align 4, !tbaa !38
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.2, label %if.end.28

if.then.2:                                        ; preds = %if.end
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %rpath, i32 0, i32 14
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %12 = load i32, i32* %x, align 4, !tbaa !5
  %conv = sitofp i32 %12 to double
  %mul = fmul double %conv, 3.906250e-03
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 7
  %x3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  store double %mul, double* %x3, align 8, !tbaa !62
  %position4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %rpath, i32 0, i32 14
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position4, i32 0, i32 1
  %14 = load i32, i32* %y, align 4, !tbaa !17
  %conv5 = sitofp i32 %14 to double
  %mul6 = fmul double %conv5, 3.906250e-03
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 7
  %y8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point7, i32 0, i32 1
  store double %mul6, double* %y8, align 8, !tbaa !63
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %rpath, i32 0, i32 3
  %16 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !64
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %16, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %17 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !65
  %cmp9 = icmp ne %struct.subpath_s* %17, null
  br i1 %cmp9, label %if.then.11, label %if.end.27

if.then.11:                                       ; preds = %if.then.2
  %segments12 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %rpath, i32 0, i32 3
  %18 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments12, align 8, !tbaa !64
  %contents13 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %18, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents13, i32 0, i32 1
  %19 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !66
  %pt = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %19, i32 0, i32 4
  %x14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %20 = load i32, i32* %x14, align 4, !tbaa !67
  %conv15 = sitofp i32 %20 to double
  %mul16 = fmul double %conv15, 3.906250e-03
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %subpath_start = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 8
  %x17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %subpath_start, i32 0, i32 0
  store double %mul16, double* %x17, align 8, !tbaa !70
  %segments18 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %rpath, i32 0, i32 3
  %22 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments18, align 8, !tbaa !64
  %contents19 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %22, i32 0, i32 1
  %subpath_current20 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents19, i32 0, i32 1
  %23 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current20, align 8, !tbaa !66
  %pt21 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %23, i32 0, i32 4
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt21, i32 0, i32 1
  %24 = load i32, i32* %y22, align 4, !tbaa !71
  %conv23 = sitofp i32 %24 to double
  %mul24 = fmul double %conv23, 3.906250e-03
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %subpath_start25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 8
  %y26 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %subpath_start25, i32 0, i32 1
  store double %mul24, double* %y26, align 8, !tbaa !72
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.11, %if.then.2
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %call29 = call i32 @gx_path_assign_free(%struct.gx_path_s* %26, %struct.gx_path_s* %rpath) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast %struct.gx_path_s* %rpath to i8*
  call void @llvm.lifetime.end(i64 128, i8* %28) #1
  %29 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @gx_path_copy_reversed(%struct.gx_path_s*, %struct.gx_path_s*) #3

; Function Attrs: nounwind uwtable
define i32 @gs_upathbbox(%struct.gs_state_s* %pgs, %struct.gs_rect_s* %pbox, i32 %include_moveto) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pbox.addr = alloca %struct.gs_rect_s*, align 8
  %include_moveto.addr = alloca i32, align 4
  %fbox = alloca %struct.gs_fixed_rect_s, align 4
  %dbox = alloca %struct.gs_rect_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pt = alloca %struct.gs_fixed_point_s, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbox, %struct.gs_rect_s** %pbox.addr, align 8, !tbaa !1
  store i32 %include_moveto, i32* %include_moveto.addr, align 4, !tbaa !34
  %0 = bitcast %struct.gs_fixed_rect_s* %fbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.gs_rect_s* %dbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 61
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !35
  %call = call i32 @gx_path_bbox_set(%struct.gx_path_s* %4, %struct.gs_fixed_rect_s* %fbox) #6
  store i32 %call, i32* %code, align 4, !tbaa !34
  %5 = load i32, i32* %code, align 4, !tbaa !34
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 61
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %path1, align 8, !tbaa !35
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 8
  %9 = load i8, i8* %state_flags, align 1, !tbaa !53
  %conv = zext i8 %9 to i32
  %and = and i32 %conv, -9
  %cmp2 = icmp eq i32 %and, 3
  br i1 %cmp2, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %include_moveto.addr, align 4, !tbaa !34
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.4, label %if.end.57

if.then.4:                                        ; preds = %land.lhs.true
  %11 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 6
  %13 = load i32, i32* %current_point_valid, align 4, !tbaa !38
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.4
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 7
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point, i32 0, i32 0
  %15 = load double, double* %x, align 8, !tbaa !62
  %mul = fmul double %15, 2.560000e+02
  %add = fadd double %mul, 5.000000e-01
  %call6 = call double @floor(double %add) #8
  %conv7 = fptosi double %call6 to i32
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  store i32 %conv7, i32* %x8, align 4, !tbaa !54
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %current_point9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 7
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %current_point9, i32 0, i32 1
  %17 = load double, double* %y, align 8, !tbaa !63
  %mul10 = fmul double %17, 2.560000e+02
  %add11 = fadd double %mul10, 5.000000e-01
  %call12 = call double @floor(double %add11) #8
  %conv13 = fptosi double %call12 to i32
  %y14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  store i32 %conv13, i32* %y14, align 4, !tbaa !55
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -14, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !34
  %18 = load i32, i32* %code, align 4, !tbaa !34
  %cmp15 = icmp slt i32 %18, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %cond.end
  %19 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %cond.end
  %x19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %20 = load i32, i32* %x19, align 4, !tbaa !54
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 0
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %21 = load i32, i32* %x20, align 4, !tbaa !73
  %cmp21 = icmp slt i32 %20, %21
  br i1 %cmp21, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.18
  %x24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %22 = load i32, i32* %x24, align 4, !tbaa !54
  %p25 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 0
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p25, i32 0, i32 0
  store i32 %22, i32* %x26, align 4, !tbaa !73
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.end.18
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %23 = load i32, i32* %y28, align 4, !tbaa !55
  %p29 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 0
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p29, i32 0, i32 1
  %24 = load i32, i32* %y30, align 4, !tbaa !74
  %cmp31 = icmp slt i32 %23, %24
  br i1 %cmp31, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.end.27
  %y34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %25 = load i32, i32* %y34, align 4, !tbaa !55
  %p35 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 0
  %y36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p35, i32 0, i32 1
  store i32 %25, i32* %y36, align 4, !tbaa !74
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.end.27
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %26 = load i32, i32* %x38, align 4, !tbaa !54
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 1
  %x39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %27 = load i32, i32* %x39, align 4, !tbaa !75
  %cmp40 = icmp sgt i32 %26, %27
  br i1 %cmp40, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.end.37
  %x43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %28 = load i32, i32* %x43, align 4, !tbaa !54
  %q44 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 1
  %x45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q44, i32 0, i32 0
  store i32 %28, i32* %x45, align 4, !tbaa !75
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.end.37
  %y47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %29 = load i32, i32* %y47, align 4, !tbaa !55
  %q48 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 1
  %y49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q48, i32 0, i32 1
  %30 = load i32, i32* %y49, align 4, !tbaa !76
  %cmp50 = icmp sgt i32 %29, %30
  br i1 %cmp50, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %if.end.46
  %y53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %31 = load i32, i32* %y53, align 4, !tbaa !55
  %q54 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 1
  %y55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q54, i32 0, i32 1
  store i32 %31, i32* %y55, align 4, !tbaa !76
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %if.end.46
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.17
  %32 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.83 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.57

if.end.57:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.end
  %p58 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 0
  %x59 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p58, i32 0, i32 0
  %33 = load i32, i32* %x59, align 4, !tbaa !73
  %conv60 = sitofp i32 %33 to double
  %mul61 = fmul double %conv60, 3.906250e-03
  %p62 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %x63 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p62, i32 0, i32 0
  store double %mul61, double* %x63, align 8, !tbaa !77
  %p64 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 0
  %y65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p64, i32 0, i32 1
  %34 = load i32, i32* %y65, align 4, !tbaa !74
  %conv66 = sitofp i32 %34 to double
  %mul67 = fmul double %conv66, 3.906250e-03
  %p68 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 0
  %y69 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p68, i32 0, i32 1
  store double %mul67, double* %y69, align 8, !tbaa !79
  %q70 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 1
  %x71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q70, i32 0, i32 0
  %35 = load i32, i32* %x71, align 4, !tbaa !75
  %conv72 = sitofp i32 %35 to double
  %mul73 = fmul double %conv72, 3.906250e-03
  %q74 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %x75 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q74, i32 0, i32 0
  store double %mul73, double* %x75, align 8, !tbaa !80
  %q76 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %fbox, i32 0, i32 1
  %y77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q76, i32 0, i32 1
  %36 = load i32, i32* %y77, align 4, !tbaa !76
  %conv78 = sitofp i32 %36 to double
  %mul79 = fmul double %conv78, 3.906250e-03
  %q80 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dbox, i32 0, i32 1
  %y81 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q80, i32 0, i32 1
  store double %mul79, double* %y81, align 8, !tbaa !81
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 5
  %38 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %39 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox.addr, align 8, !tbaa !1
  %call82 = call i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* %dbox, %struct.gs_matrix_s* %38, %struct.gs_rect_s* %39) #6
  store i32 %call82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

cleanup.83:                                       ; preds = %if.end.57, %cleanup, %if.then
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast %struct.gs_rect_s* %dbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %41) #1
  %42 = bitcast %struct.gs_fixed_rect_s* %fbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare i32 @gx_path_bbox_set(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #5

declare i32 @gs_bbox_transform_inverse(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #3

; Function Attrs: nounwind uwtable
define i32 @gs_path_enum_copy_init(%struct.gs_memory_s* %mem, %struct.gs_path_enum_s* %penum, %struct.gs_state_s* %pgs, i32 %copy) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %penum.addr = alloca %struct.gs_path_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %copy.addr = alloca i32, align 4
  %copied_path = alloca %struct.gx_path_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_path_enum_s* %penum, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %copy, i32* %copy.addr, align 4, !tbaa !34
  %0 = load i32, i32* %copy.addr, align 4, !tbaa !34
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.gx_path_s** %copied_path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gx_path_s* @gx_path_alloc_shared(%struct.gx_path_s* null, %struct.gs_memory_s* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)) #6
  store %struct.gx_path_s* %call, %struct.gx_path_s** %copied_path, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %copied_path, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_path_s* %4, null
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 61
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !35
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %copied_path, align 8, !tbaa !1
  %call2 = call i32 @gx_path_copy_reducing(%struct.gx_path_s* %6, %struct.gx_path_s* %7, i32 2147483647, %struct.gs_imager_state_s* null, i32 0) #6
  store i32 %call2, i32* %code, align 4, !tbaa !34
  %8 = load i32, i32* %code, align 4, !tbaa !34
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %copied_path, align 8, !tbaa !1
  call void @gx_path_free(%struct.gx_path_s* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)) #6
  %10 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %copied_path, align 8, !tbaa !1
  %call6 = call i32 @gx_path_enum_init(%struct.gs_path_enum_s* %11, %struct.gx_path_s* %12) #6
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %copied_path, align 8, !tbaa !1
  %14 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %copied_path7 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %14, i32 0, i32 4
  store %struct.gx_path_s* %13, %struct.gx_path_s** %copied_path7, align 8, !tbaa !82
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then.1
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct.gx_path_s** %copied_path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.11

if.else:                                          ; preds = %entry
  %17 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %path9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 61
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %path9, align 8, !tbaa !35
  %call10 = call i32 @gx_path_enum_init(%struct.gs_path_enum_s* %17, %struct.gx_path_s* %19) #6
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %cleanup.cont
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %21 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %21, i32 0, i32 0
  store %struct.gs_memory_s* %20, %struct.gs_memory_s** %memory, align 8, !tbaa !84
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %23 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %mat = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %23, i32 0, i32 1
  %call12 = call i32 @gs_currentmatrix(%struct.gs_state_s* %22, %struct.gs_matrix_s* %mat) #6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %cleanup
  %24 = load i32, i32* %retval
  ret i32 %24

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare %struct.gx_path_s* @gx_path_alloc_shared(%struct.gx_path_s*, %struct.gs_memory_s*, i8*) #3

declare i32 @gx_path_enum_init(%struct.gs_path_enum_s*, %struct.gx_path_s*) #3

declare i32 @gs_currentmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #3

; Function Attrs: nounwind uwtable
define i32 @gs_path_enum_next(%struct.gs_path_enum_s* %penum, %struct.gs_point_s* %ppts) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_path_enum_s*, align 8
  %ppts.addr = alloca %struct.gs_point_s*, align 8
  %fpts = alloca [3 x %struct.gs_fixed_point_s], align 16
  %pe_op = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_path_enum_s* %penum, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %ppts, %struct.gs_point_s** %ppts.addr, align 8, !tbaa !1
  %0 = bitcast [3 x %struct.gs_fixed_point_s]* %fpts to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %pe_op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %fpts, i32 0, i32 0
  %call = call i32 @gx_path_enum_next(%struct.gs_path_enum_s* %2, %struct.gs_fixed_point_s* %arraydecay) #6
  store i32 %call, i32* %pe_op, align 4, !tbaa !34
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %pe_op, align 4, !tbaa !34
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb
    i32 3, label %sw.bb.1
    i32 1, label %sw.bb.21
    i32 2, label %sw.bb.21
    i32 5, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %fpts, i32 0, i64 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %x, align 4, !tbaa !54
  %conv = sitofp i32 %5 to double
  %mul = fmul double %conv, 3.906250e-03
  %arrayidx2 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %fpts, i32 0, i64 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx2, i32 0, i32 1
  %6 = load i32, i32* %y, align 4, !tbaa !55
  %conv3 = sitofp i32 %6 to double
  %mul4 = fmul double %conv3, 3.906250e-03
  %7 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %mat = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %7, i32 0, i32 1
  %8 = load %struct.gs_point_s*, %struct.gs_point_s** %ppts.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %8, i64 1
  %call6 = call i32 @gs_point_transform_inverse(double %mul, double %mul4, %struct.gs_matrix_s* %mat, %struct.gs_point_s* %arrayidx5) #6
  store i32 %call6, i32* %code, align 4, !tbaa !34
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.1
  %arrayidx8 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %fpts, i32 0, i64 2
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx8, i32 0, i32 0
  %9 = load i32, i32* %x9, align 4, !tbaa !54
  %conv10 = sitofp i32 %9 to double
  %mul11 = fmul double %conv10, 3.906250e-03
  %arrayidx12 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %fpts, i32 0, i64 2
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx12, i32 0, i32 1
  %10 = load i32, i32* %y13, align 4, !tbaa !55
  %conv14 = sitofp i32 %10 to double
  %mul15 = fmul double %conv14, 3.906250e-03
  %11 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %mat16 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %11, i32 0, i32 1
  %12 = load %struct.gs_point_s*, %struct.gs_point_s** %ppts.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %12, i64 2
  %call18 = call i32 @gs_point_transform_inverse(double %mul11, double %mul15, %struct.gs_matrix_s* %mat16, %struct.gs_point_s* %arrayidx17) #6
  store i32 %call18, i32* %code, align 4, !tbaa !34
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb.1
  %13 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %sw.bb.21

sw.bb.21:                                         ; preds = %entry, %entry, %entry, %if.end
  %arrayidx22 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %fpts, i32 0, i64 0
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx22, i32 0, i32 0
  %14 = load i32, i32* %x23, align 4, !tbaa !54
  %conv24 = sitofp i32 %14 to double
  %mul25 = fmul double %conv24, 3.906250e-03
  %arrayidx26 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %fpts, i32 0, i64 0
  %y27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx26, i32 0, i32 1
  %15 = load i32, i32* %y27, align 4, !tbaa !55
  %conv28 = sitofp i32 %15 to double
  %mul29 = fmul double %conv28, 3.906250e-03
  %16 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %mat30 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %16, i32 0, i32 1
  %17 = load %struct.gs_point_s*, %struct.gs_point_s** %ppts.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %17, i64 0
  %call32 = call i32 @gs_point_transform_inverse(double %mul25, double %mul29, %struct.gs_matrix_s* %mat30, %struct.gs_point_s* %arrayidx31) #6
  store i32 %call32, i32* %code, align 4, !tbaa !34
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %sw.bb.21
  %18 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %sw.bb.21
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end.36
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %19 = load i32, i32* %pe_op, align 4, !tbaa !34
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.35, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %pe_op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast [3 x %struct.gs_fixed_point_s]* %fpts to i8*
  call void @llvm.lifetime.end(i64 24, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @gx_path_enum_next(%struct.gs_path_enum_s*, %struct.gs_fixed_point_s*) #3

declare i32 @gs_point_transform_inverse(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #3

; Function Attrs: nounwind uwtable
define void @gs_path_enum_cleanup(%struct.gs_path_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_path_enum_s*, align 8
  store %struct.gs_path_enum_s* %penum, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %copied_path = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %0, i32 0, i32 4
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %copied_path, align 8, !tbaa !82
  %cmp = icmp ne %struct.gx_path_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %copied_path1 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %2, i32 0, i32 4
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %copied_path1, align 8, !tbaa !82
  call void @gx_path_free(%struct.gx_path_s* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #6
  %4 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %4, i32 0, i32 3
  store %struct.gx_path_s* null, %struct.gx_path_s** %path, align 8, !tbaa !85
  %5 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %copied_path2 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %5, i32 0, i32 4
  store %struct.gx_path_s* null, %struct.gx_path_s** %copied_path2, align 8, !tbaa !82
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_imager_arc_add(%struct.gx_path_s* %ppath, %struct.gs_imager_state_s* %pis, i32 %clockwise, double %axc, double %ayc, double %arad, double %aang1, double %aang2, i32 %add_line, %struct.gs_point_s* %p3) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %clockwise.addr = alloca i32, align 4
  %axc.addr = alloca double, align 8
  %ayc.addr = alloca double, align 8
  %arad.addr = alloca double, align 8
  %aang1.addr = alloca double, align 8
  %aang2.addr = alloca double, align 8
  %add_line.addr = alloca i32, align 4
  %p3.addr = alloca %struct.gs_point_s*, align 8
  %ar = alloca double, align 8
  %ang1 = alloca double, align 8
  %ang2 = alloca double, align 8
  %anext = alloca double, align 8
  %ang1r = alloca double, align 8
  %arc = alloca %struct.arc_curve_params_s, align 8
  %code = alloca i32, align 4
  %adjust = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  %adjust65 = alloca double, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i32 %clockwise, i32* %clockwise.addr, align 4, !tbaa !34
  store double %axc, double* %axc.addr, align 8, !tbaa !33
  store double %ayc, double* %ayc.addr, align 8, !tbaa !33
  store double %arad, double* %arad.addr, align 8, !tbaa !33
  store double %aang1, double* %aang1.addr, align 8, !tbaa !33
  store double %aang2, double* %aang2.addr, align 8, !tbaa !33
  store i32 %add_line, i32* %add_line.addr, align 4, !tbaa !34
  store %struct.gs_point_s* %p3, %struct.gs_point_s** %p3.addr, align 8, !tbaa !1
  %0 = bitcast double* %ar to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double, double* %arad.addr, align 8, !tbaa !33
  store double %1, double* %ar, align 8, !tbaa !33
  %2 = bitcast double* %ang1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load double, double* %aang1.addr, align 8, !tbaa !33
  store double %3, double* %ang1, align 8, !tbaa !33
  %4 = bitcast double* %ang2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load double, double* %aang2.addr, align 8, !tbaa !33
  store double %5, double* %ang2, align 8, !tbaa !33
  %6 = bitcast double* %anext to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast double* %ang1r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.arc_curve_params_s* %arc to i8*
  call void @llvm.lifetime.start(i64 144, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %ppath1 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 0
  store %struct.gx_path_s* %10, %struct.gx_path_s** %ppath1, align 8, !tbaa !39
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %pis2 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 1
  store %struct.gs_imager_state_s* %11, %struct.gs_imager_state_s** %pis2, align 8, !tbaa !42
  %12 = load double, double* %axc.addr, align 8, !tbaa !33
  %center = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %center, i32 0, i32 0
  store double %12, double* %x, align 8, !tbaa !86
  %13 = load double, double* %ayc.addr, align 8, !tbaa !33
  %center3 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %center3, i32 0, i32 1
  store double %13, double* %y, align 8, !tbaa !87
  %14 = load double, double* %ar, align 8, !tbaa !33
  %cmp = fcmp olt double %14, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load double, double* %ang1, align 8, !tbaa !33
  %add = fadd double %15, 1.800000e+02
  store double %add, double* %ang1, align 8, !tbaa !33
  %16 = load double, double* %ang2, align 8, !tbaa !33
  %add4 = fadd double %16, 1.800000e+02
  store double %add4, double* %ang2, align 8, !tbaa !33
  %17 = load double, double* %ar, align 8, !tbaa !33
  %sub = fsub double -0.000000e+00, %17
  store double %sub, double* %ar, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load double, double* %ar, align 8, !tbaa !33
  %radius = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 3
  store double %18, double* %radius, align 8, !tbaa !43
  %19 = load i32, i32* %add_line.addr, align 4, !tbaa !34
  %tobool = icmp ne i32 %19, 0
  %cond = select i1 %tobool, i32 2, i32 1
  %action = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 4
  store i32 %cond, i32* %action, align 4, !tbaa !44
  %notes = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 5
  store i32 0, i32* %notes, align 4, !tbaa !45
  %fast_quadrant = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 11
  store i32 0, i32* %fast_quadrant, align 4, !tbaa !56
  %20 = load double, double* %ang1, align 8, !tbaa !33
  %call = call double @fmod(double %20, double 3.600000e+02) #7
  store double %call, double* %ang1r, align 8, !tbaa !33
  %21 = load double, double* %ang1r, align 8, !tbaa !33
  %sincos = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 9
  call void @gs_sincos_degrees(double %21, %struct.gs_sincos_s* %sincos) #6
  %22 = load double, double* %axc.addr, align 8, !tbaa !33
  %23 = load double, double* %ar, align 8, !tbaa !33
  %sincos5 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 9
  %cos = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos5, i32 0, i32 1
  %24 = load double, double* %cos, align 8, !tbaa !88
  %mul = fmul double %23, %24
  %add6 = fadd double %22, %mul
  %p37 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 7
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p37, i32 0, i32 0
  store double %add6, double* %x8, align 8, !tbaa !48
  %25 = load double, double* %ayc.addr, align 8, !tbaa !33
  %26 = load double, double* %ar, align 8, !tbaa !33
  %sincos9 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 9
  %sin = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos9, i32 0, i32 0
  %27 = load double, double* %sin, align 8, !tbaa !89
  %mul10 = fmul double %26, %27
  %add11 = fadd double %25, %mul10
  %p312 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 7
  %y13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p312, i32 0, i32 1
  store double %add11, double* %y13, align 8, !tbaa !49
  %28 = load i32, i32* %clockwise.addr, align 4, !tbaa !34
  %tobool14 = icmp ne i32 %28, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.15
  %29 = load double, double* %ang1, align 8, !tbaa !33
  %30 = load double, double* %ang2, align 8, !tbaa !33
  %cmp16 = fcmp olt double %29, %30
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load double, double* %ang2, align 8, !tbaa !33
  %sub17 = fsub double %31, 3.600000e+02
  store double %sub17, double* %ang2, align 8, !tbaa !33
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = load double, double* %ang2, align 8, !tbaa !33
  %cmp18 = fcmp olt double %32, 0.000000e+00
  br i1 %cmp18, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %while.end
  %33 = bitcast double* %adjust to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load double, double* %ang2, align 8, !tbaa !33
  %sub20 = fsub double -0.000000e+00, %34
  %div = fdiv double %sub20, 3.600000e+02
  %call21 = call double @ceil(double %div) #8
  %mul22 = fmul double %call21, 3.600000e+02
  store double %mul22, double* %adjust, align 8, !tbaa !33
  %35 = load double, double* %adjust, align 8, !tbaa !33
  %36 = load double, double* %ang1, align 8, !tbaa !33
  %add23 = fadd double %36, %35
  store double %add23, double* %ang1, align 8, !tbaa !33
  %37 = load double, double* %adjust, align 8, !tbaa !33
  %38 = load double, double* %ang2, align 8, !tbaa !33
  %add24 = fadd double %38, %37
  store double %add24, double* %ang2, align 8, !tbaa !33
  %39 = bitcast double* %adjust to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.19, %while.end
  %40 = load double, double* %ang1, align 8, !tbaa !33
  %angle = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 10
  store double %40, double* %angle, align 8, !tbaa !90
  %41 = load double, double* %ang1, align 8, !tbaa !33
  %42 = load double, double* %ang2, align 8, !tbaa !33
  %cmp26 = fcmp oeq double %41, %42
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  br label %last

if.end.28:                                        ; preds = %if.end.25
  %sincos29 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 9
  %orthogonal = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos29, i32 0, i32 2
  %43 = load i32, i32* %orthogonal, align 4, !tbaa !91
  %tobool30 = icmp ne i32 %43, 0
  br i1 %tobool30, label %if.end.45, label %if.then.31

if.then.31:                                       ; preds = %if.end.28
  %angle32 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 10
  %44 = load double, double* %angle32, align 8, !tbaa !90
  %div33 = fdiv double %44, 9.000000e+01
  %call34 = call double @floor(double %div33) #8
  %mul35 = fmul double %call34, 9.000000e+01
  store double %mul35, double* %anext, align 8, !tbaa !33
  %45 = load double, double* %anext, align 8, !tbaa !33
  %46 = load double, double* %ang2, align 8, !tbaa !33
  %cmp36 = fcmp olt double %45, %46
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.31
  br label %last

if.end.38:                                        ; preds = %if.then.31
  %47 = load double, double* %anext, align 8, !tbaa !33
  %call39 = call i32 @next_arc_curve(%struct.arc_curve_params_s* %arc, double %47) #6
  store i32 %call39, i32* %code, align 4, !tbaa !34
  %48 = load i32, i32* %code, align 4, !tbaa !34
  %cmp40 = icmp slt i32 %48, 0
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  %49 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end.38
  %action43 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 4
  store i32 0, i32* %action43, align 4, !tbaa !44
  %notes44 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 5
  store i32 1, i32* %notes44, align 4, !tbaa !45
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.42, %if.end.28
  br label %while.cond.46

while.cond.46:                                    ; preds = %if.end.54, %if.end.45
  %angle47 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 10
  %50 = load double, double* %angle47, align 8, !tbaa !90
  %sub48 = fsub double %50, 9.000000e+01
  store double %sub48, double* %anext, align 8, !tbaa !33
  %51 = load double, double* %ang2, align 8, !tbaa !33
  %cmp49 = fcmp oge double %sub48, %51
  br i1 %cmp49, label %while.body.50, label %while.end.57

while.body.50:                                    ; preds = %while.cond.46
  %52 = load double, double* %anext, align 8, !tbaa !33
  %call51 = call i32 @next_arc_quadrant(%struct.arc_curve_params_s* %arc, double %52) #6
  store i32 %call51, i32* %code, align 4, !tbaa !34
  %53 = load i32, i32* %code, align 4, !tbaa !34
  %cmp52 = icmp slt i32 %53, 0
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %while.body.50
  %54 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %while.body.50
  %action55 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 4
  store i32 0, i32* %action55, align 4, !tbaa !44
  %notes56 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 5
  store i32 1, i32* %notes56, align 4, !tbaa !45
  br label %while.cond.46

while.end.57:                                     ; preds = %while.cond.46
  br label %if.end.112

if.else:                                          ; preds = %if.end
  br label %while.cond.58

while.cond.58:                                    ; preds = %while.body.60, %if.else
  %55 = load double, double* %ang2, align 8, !tbaa !33
  %56 = load double, double* %ang1, align 8, !tbaa !33
  %cmp59 = fcmp olt double %55, %56
  br i1 %cmp59, label %while.body.60, label %while.end.62

while.body.60:                                    ; preds = %while.cond.58
  %57 = load double, double* %ang2, align 8, !tbaa !33
  %add61 = fadd double %57, 3.600000e+02
  store double %add61, double* %ang2, align 8, !tbaa !33
  br label %while.cond.58

while.end.62:                                     ; preds = %while.cond.58
  %58 = load double, double* %ang1, align 8, !tbaa !33
  %cmp63 = fcmp olt double %58, 0.000000e+00
  br i1 %cmp63, label %if.then.64, label %if.end.72

if.then.64:                                       ; preds = %while.end.62
  %59 = bitcast double* %adjust65 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  %60 = load double, double* %ang1, align 8, !tbaa !33
  %sub66 = fsub double -0.000000e+00, %60
  %div67 = fdiv double %sub66, 3.600000e+02
  %call68 = call double @ceil(double %div67) #8
  %mul69 = fmul double %call68, 3.600000e+02
  store double %mul69, double* %adjust65, align 8, !tbaa !33
  %61 = load double, double* %adjust65, align 8, !tbaa !33
  %62 = load double, double* %ang1, align 8, !tbaa !33
  %add70 = fadd double %62, %61
  store double %add70, double* %ang1, align 8, !tbaa !33
  %63 = load double, double* %adjust65, align 8, !tbaa !33
  %64 = load double, double* %ang2, align 8, !tbaa !33
  %add71 = fadd double %64, %63
  store double %add71, double* %ang2, align 8, !tbaa !33
  %65 = bitcast double* %adjust65 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.64, %while.end.62
  %66 = load double, double* %ang1, align 8, !tbaa !33
  %angle73 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 10
  store double %66, double* %angle73, align 8, !tbaa !90
  %67 = load double, double* %ang1, align 8, !tbaa !33
  %68 = load double, double* %ang2, align 8, !tbaa !33
  %cmp74 = fcmp oeq double %67, %68
  br i1 %cmp74, label %if.then.75, label %if.end.81

if.then.75:                                       ; preds = %if.end.72
  %69 = load double, double* %ang2, align 8, !tbaa !33
  %call76 = call i32 @next_arc_curve(%struct.arc_curve_params_s* %arc, double %69) #6
  store i32 %call76, i32* %code, align 4, !tbaa !34
  %70 = load i32, i32* %code, align 4, !tbaa !34
  %cmp77 = icmp slt i32 %70, 0
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.75
  %71 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %if.then.75
  %72 = load %struct.gs_point_s*, %struct.gs_point_s** %p3.addr, align 8, !tbaa !1
  %p380 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 7
  %73 = bitcast %struct.gs_point_s* %72 to i8*
  %74 = bitcast %struct.gs_point_s* %p380 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 16, i32 8, i1 false), !tbaa.struct !92
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.79, %if.end.72
  %sincos82 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 9
  %orthogonal83 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos82, i32 0, i32 2
  %75 = load i32, i32* %orthogonal83, align 4, !tbaa !91
  %tobool84 = icmp ne i32 %75, 0
  br i1 %tobool84, label %if.end.99, label %if.then.85

if.then.85:                                       ; preds = %if.end.81
  %angle86 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 10
  %76 = load double, double* %angle86, align 8, !tbaa !90
  %div87 = fdiv double %76, 9.000000e+01
  %call88 = call double @ceil(double %div87) #8
  %mul89 = fmul double %call88, 9.000000e+01
  store double %mul89, double* %anext, align 8, !tbaa !33
  %77 = load double, double* %anext, align 8, !tbaa !33
  %78 = load double, double* %ang2, align 8, !tbaa !33
  %cmp90 = fcmp ogt double %77, %78
  br i1 %cmp90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.then.85
  br label %last

if.end.92:                                        ; preds = %if.then.85
  %79 = load double, double* %anext, align 8, !tbaa !33
  %call93 = call i32 @next_arc_curve(%struct.arc_curve_params_s* %arc, double %79) #6
  store i32 %call93, i32* %code, align 4, !tbaa !34
  %80 = load i32, i32* %code, align 4, !tbaa !34
  %cmp94 = icmp slt i32 %80, 0
  br i1 %cmp94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.92
  %81 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.96:                                        ; preds = %if.end.92
  %action97 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 4
  store i32 0, i32* %action97, align 4, !tbaa !44
  %notes98 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 5
  store i32 1, i32* %notes98, align 4, !tbaa !45
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.96, %if.end.81
  br label %while.cond.100

while.cond.100:                                   ; preds = %if.end.108, %if.end.99
  %angle101 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 10
  %82 = load double, double* %angle101, align 8, !tbaa !90
  %add102 = fadd double %82, 9.000000e+01
  store double %add102, double* %anext, align 8, !tbaa !33
  %83 = load double, double* %ang2, align 8, !tbaa !33
  %cmp103 = fcmp ole double %add102, %83
  br i1 %cmp103, label %while.body.104, label %while.end.111

while.body.104:                                   ; preds = %while.cond.100
  %84 = load double, double* %anext, align 8, !tbaa !33
  %call105 = call i32 @next_arc_quadrant(%struct.arc_curve_params_s* %arc, double %84) #6
  store i32 %call105, i32* %code, align 4, !tbaa !34
  %85 = load i32, i32* %code, align 4, !tbaa !34
  %cmp106 = icmp slt i32 %85, 0
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %while.body.104
  %86 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.108:                                       ; preds = %while.body.104
  %action109 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 4
  store i32 0, i32* %action109, align 4, !tbaa !44
  %notes110 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 5
  store i32 1, i32* %notes110, align 4, !tbaa !45
  br label %while.cond.100

while.end.111:                                    ; preds = %while.cond.100
  br label %if.end.112

if.end.112:                                       ; preds = %while.end.111, %while.end.57
  %angle113 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 10
  %87 = load double, double* %angle113, align 8, !tbaa !90
  %88 = load double, double* %ang2, align 8, !tbaa !33
  %cmp114 = fcmp oeq double %87, %88
  br i1 %cmp114, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %if.end.112
  %89 = load %struct.gs_point_s*, %struct.gs_point_s** %p3.addr, align 8, !tbaa !1
  %p3116 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 7
  %90 = bitcast %struct.gs_point_s* %89 to i8*
  %91 = bitcast %struct.gs_point_s* %p3116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 16, i32 8, i1 false), !tbaa.struct !92
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.117:                                       ; preds = %if.end.112
  br label %last

last:                                             ; preds = %if.end.117, %if.then.91, %if.then.37, %if.then.27
  %92 = load double, double* %ang2, align 8, !tbaa !33
  %call118 = call i32 @next_arc_curve(%struct.arc_curve_params_s* %arc, double %92) #6
  store i32 %call118, i32* %code, align 4, !tbaa !34
  %93 = load i32, i32* %code, align 4, !tbaa !34
  %cmp119 = icmp slt i32 %93, 0
  br i1 %cmp119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %last
  %94 = load i32, i32* %code, align 4, !tbaa !34
  store i32 %94, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.121:                                       ; preds = %last
  %95 = load %struct.gs_point_s*, %struct.gs_point_s** %p3.addr, align 8, !tbaa !1
  %p3122 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %arc, i32 0, i32 7
  %96 = bitcast %struct.gs_point_s* %95 to i8*
  %97 = bitcast %struct.gs_point_s* %p3122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 16, i32 8, i1 false), !tbaa.struct !92
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.121, %if.then.120, %if.then.115, %if.then.107, %if.then.95, %if.then.78, %if.then.53, %if.then.41
  %98 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast %struct.arc_curve_params_s* %arc to i8*
  call void @llvm.lifetime.end(i64 144, i8* %99) #1
  %100 = bitcast double* %ang1r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast double* %anext to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast double* %ang2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast double* %ang1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast double* %ar to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = load i32, i32* %retval
  ret i32 %105
}

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #3

; Function Attrs: nounwind
declare double @fmod(double, double) #4

declare void @gs_sincos_degrees(double, %struct.gs_sincos_s*) #3

; Function Attrs: nounwind readnone
declare double @ceil(double) #5

; Function Attrs: nounwind uwtable
define internal i32 @next_arc_curve(%struct.arc_curve_params_s* %arc, double %anext) #0 {
entry:
  %arc.addr = alloca %struct.arc_curve_params_s*, align 8
  %anext.addr = alloca double, align 8
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %trad = alloca double, align 8
  store %struct.arc_curve_params_s* %arc, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  store double %anext, double* %anext.addr, align 8, !tbaa !33
  %0 = bitcast double* %x0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p3 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %1, i32 0, i32 7
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p3, i32 0, i32 0
  %2 = load double, double* %x, align 8, !tbaa !48
  %3 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p0 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %3, i32 0, i32 6
  %x1 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  store double %2, double* %x1, align 8, !tbaa !46
  store double %2, double* %x0, align 8, !tbaa !33
  %4 = bitcast double* %y0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p32 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %5, i32 0, i32 7
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p32, i32 0, i32 1
  %6 = load double, double* %y, align 8, !tbaa !49
  %7 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p03 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %7, i32 0, i32 6
  %y4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p03, i32 0, i32 1
  store double %6, double* %y4, align 8, !tbaa !47
  store double %6, double* %y0, align 8, !tbaa !33
  %8 = bitcast double* %trad to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %radius = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %9, i32 0, i32 3
  %10 = load double, double* %radius, align 8, !tbaa !43
  %11 = load double, double* %anext.addr, align 8, !tbaa !33
  %12 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %angle = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %12, i32 0, i32 10
  %13 = load double, double* %angle, align 8, !tbaa !90
  %sub = fsub double %11, %13
  %mul = fmul double %sub, 0x3F81DF46A2529D39
  %call = call double @tan(double %mul) #7
  %mul5 = fmul double %10, %call
  store double %mul5, double* %trad, align 8, !tbaa !33
  %14 = load double, double* %x0, align 8, !tbaa !33
  %15 = load double, double* %trad, align 8, !tbaa !33
  %16 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %sincos = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %16, i32 0, i32 9
  %sin = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos, i32 0, i32 0
  %17 = load double, double* %sin, align 8, !tbaa !89
  %mul6 = fmul double %15, %17
  %sub7 = fsub double %14, %mul6
  %18 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %18, i32 0, i32 8
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  store double %sub7, double* %x8, align 8, !tbaa !50
  %19 = load double, double* %y0, align 8, !tbaa !33
  %20 = load double, double* %trad, align 8, !tbaa !33
  %21 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %sincos9 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %21, i32 0, i32 9
  %cos = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos9, i32 0, i32 1
  %22 = load double, double* %cos, align 8, !tbaa !88
  %mul10 = fmul double %20, %22
  %add = fadd double %19, %mul10
  %23 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %pt11 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %23, i32 0, i32 8
  %y12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt11, i32 0, i32 1
  store double %add, double* %y12, align 8, !tbaa !51
  %24 = load double, double* %anext.addr, align 8, !tbaa !33
  %25 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %sincos13 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %25, i32 0, i32 9
  call void @gs_sincos_degrees(double %24, %struct.gs_sincos_s* %sincos13) #6
  %26 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %center = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %26, i32 0, i32 2
  %x14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %center, i32 0, i32 0
  %27 = load double, double* %x14, align 8, !tbaa !86
  %28 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %radius15 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %28, i32 0, i32 3
  %29 = load double, double* %radius15, align 8, !tbaa !43
  %30 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %sincos16 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %30, i32 0, i32 9
  %cos17 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos16, i32 0, i32 1
  %31 = load double, double* %cos17, align 8, !tbaa !88
  %mul18 = fmul double %29, %31
  %add19 = fadd double %27, %mul18
  %32 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p320 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %32, i32 0, i32 7
  %x21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p320, i32 0, i32 0
  store double %add19, double* %x21, align 8, !tbaa !48
  %33 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %center22 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %33, i32 0, i32 2
  %y23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %center22, i32 0, i32 1
  %34 = load double, double* %y23, align 8, !tbaa !87
  %35 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %radius24 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %35, i32 0, i32 3
  %36 = load double, double* %radius24, align 8, !tbaa !43
  %37 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %sincos25 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %37, i32 0, i32 9
  %sin26 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos25, i32 0, i32 0
  %38 = load double, double* %sin26, align 8, !tbaa !89
  %mul27 = fmul double %36, %38
  %add28 = fadd double %34, %mul27
  %39 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p329 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %39, i32 0, i32 7
  %y30 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p329, i32 0, i32 1
  store double %add28, double* %y30, align 8, !tbaa !49
  %40 = load double, double* %anext.addr, align 8, !tbaa !33
  %41 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %angle31 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %41, i32 0, i32 10
  store double %40, double* %angle31, align 8, !tbaa !90
  %42 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %call32 = call i32 @arc_add(%struct.arc_curve_params_s* %42, i32 0) #6
  %43 = bitcast double* %trad to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast double* %y0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast double* %x0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  ret i32 %call32
}

; Function Attrs: nounwind uwtable
define internal i32 @next_arc_quadrant(%struct.arc_curve_params_s* %arc, double %anext) #0 {
entry:
  %arc.addr = alloca %struct.arc_curve_params_s*, align 8
  %anext.addr = alloca double, align 8
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %scale = alloca double, align 8
  %scaled_radius = alloca double, align 8
  store %struct.arc_curve_params_s* %arc, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  store double %anext, double* %anext.addr, align 8, !tbaa !33
  %0 = bitcast double* %x0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p3 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %1, i32 0, i32 7
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p3, i32 0, i32 0
  %2 = load double, double* %x, align 8, !tbaa !48
  %3 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p0 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %3, i32 0, i32 6
  %x1 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  store double %2, double* %x1, align 8, !tbaa !46
  store double %2, double* %x0, align 8, !tbaa !33
  %4 = bitcast double* %y0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p32 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %5, i32 0, i32 7
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p32, i32 0, i32 1
  %6 = load double, double* %y, align 8, !tbaa !49
  %7 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p03 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %7, i32 0, i32 6
  %y4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p03, i32 0, i32 1
  store double %6, double* %y4, align 8, !tbaa !47
  store double %6, double* %y0, align 8, !tbaa !33
  %8 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %fast_quadrant = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %8, i32 0, i32 11
  %9 = load i32, i32* %fast_quadrant, align 4, !tbaa !56
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end.50, label %if.then

if.then:                                          ; preds = %entry
  %10 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %pis5 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %11, i32 0, i32 1
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis5, align 8, !tbaa !42
  store %struct.gs_imager_state_s* %12, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %13 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store double 0.000000e+00, double* %scale, align 8, !tbaa !33
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %14, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 1
  %15 = load float, float* %xy, align 4, !tbaa !93
  %conv = fpext float %15 to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm7 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %16, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm7, i32 0, i32 2
  %17 = load float, float* %yx, align 4, !tbaa !94
  %conv8 = fpext float %17 to double
  %cmp9 = fcmp oeq double %conv8, 0.000000e+00
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %18 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm11 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %18, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm11, i32 0, i32 0
  %19 = load float, float* %xx, align 4, !tbaa !95
  %conv12 = fpext float %19 to double
  %call = call double @fabs(double %conv12) #8
  store double %call, double* %scale, align 8, !tbaa !33
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm13 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm13, i32 0, i32 3
  %21 = load float, float* %yy, align 4, !tbaa !96
  %conv14 = fpext float %21 to double
  %call15 = call double @fabs(double %conv14) #8
  %cmp16 = fcmp oeq double %call, %call15
  br i1 %cmp16, label %if.then.41, label %if.else

cond.false:                                       ; preds = %land.lhs.true, %if.then
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm18 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %22, i32 0, i32 5
  %xx19 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm18, i32 0, i32 0
  %23 = load float, float* %xx19, align 4, !tbaa !95
  %conv20 = fpext float %23 to double
  %cmp21 = fcmp oeq double %conv20, 0.000000e+00
  br i1 %cmp21, label %land.lhs.true.23, label %cond.false.40

land.lhs.true.23:                                 ; preds = %cond.false
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm24 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %24, i32 0, i32 5
  %yy25 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm24, i32 0, i32 3
  %25 = load float, float* %yy25, align 4, !tbaa !96
  %conv26 = fpext float %25 to double
  %cmp27 = fcmp oeq double %conv26, 0.000000e+00
  br i1 %cmp27, label %cond.true.29, label %cond.false.40

cond.true.29:                                     ; preds = %land.lhs.true.23
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm30 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %26, i32 0, i32 5
  %xy31 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm30, i32 0, i32 1
  %27 = load float, float* %xy31, align 4, !tbaa !93
  %conv32 = fpext float %27 to double
  %call33 = call double @fabs(double %conv32) #8
  store double %call33, double* %scale, align 8, !tbaa !33
  %28 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %ctm34 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %28, i32 0, i32 5
  %yx35 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm34, i32 0, i32 2
  %29 = load float, float* %yx35, align 4, !tbaa !94
  %conv36 = fpext float %29 to double
  %call37 = call double @fabs(double %conv36) #8
  %cmp38 = fcmp oeq double %call33, %call37
  br i1 %cmp38, label %if.then.41, label %if.else

cond.false.40:                                    ; preds = %land.lhs.true.23, %cond.false
  br i1 false, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %cond.false.40, %cond.true.29, %cond.true
  %30 = bitcast double* %scaled_radius to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %radius = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %31, i32 0, i32 3
  %32 = load double, double* %radius, align 8, !tbaa !43
  %33 = load double, double* %scale, align 8, !tbaa !33
  %mul = fmul double %32, %33
  store double %mul, double* %scaled_radius, align 8, !tbaa !33
  %34 = load double, double* %scaled_radius, align 8, !tbaa !33
  %mul42 = fmul double %34, 2.560000e+02
  %conv43 = fptosi double %mul42 to i32
  %35 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %scaled_radius44 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %35, i32 0, i32 12
  store i32 %conv43, i32* %scaled_radius44, align 4, !tbaa !97
  %36 = load double, double* %scaled_radius, align 8, !tbaa !33
  %mul45 = fmul double %36, 0x3FE1AC5111534A21
  %mul46 = fmul double %mul45, 2.560000e+02
  %conv47 = fptosi double %mul46 to i32
  %37 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %quadrant_delta = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %37, i32 0, i32 13
  store i32 %conv47, i32* %quadrant_delta, align 4, !tbaa !57
  %38 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %fast_quadrant48 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %38, i32 0, i32 11
  store i32 1, i32* %fast_quadrant48, align 4, !tbaa !56
  %39 = bitcast double* %scaled_radius to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  br label %if.end

if.else:                                          ; preds = %cond.false.40, %cond.true.29, %cond.true
  %40 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %fast_quadrant49 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %40, i32 0, i32 11
  store i32 -1, i32* %fast_quadrant49, align 4, !tbaa !56
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.41
  %41 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  br label %if.end.50

if.end.50:                                        ; preds = %if.end, %entry
  %43 = load double, double* %anext.addr, align 8, !tbaa !33
  %conv51 = fptosi double %43 to i32
  %shr = ashr i32 %conv51, 1
  %and = and i32 %shr, 3
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.61
    i32 2, label %sw.bb.76
    i32 3, label %sw.bb.90
  ]

sw.bb:                                            ; preds = %if.end.50
  %44 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %sincos = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %44, i32 0, i32 9
  %sin = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos, i32 0, i32 0
  store double 0.000000e+00, double* %sin, align 8, !tbaa !89
  %45 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %sincos52 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %45, i32 0, i32 9
  %cos = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos52, i32 0, i32 1
  store double 1.000000e+00, double* %cos, align 8, !tbaa !88
  %46 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %center = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %46, i32 0, i32 2
  %x53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %center, i32 0, i32 0
  %47 = load double, double* %x53, align 8, !tbaa !86
  %48 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %radius54 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %48, i32 0, i32 3
  %49 = load double, double* %radius54, align 8, !tbaa !43
  %add = fadd double %47, %49
  store double %add, double* %x0, align 8, !tbaa !33
  %50 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p355 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %50, i32 0, i32 7
  %x56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p355, i32 0, i32 0
  store double %add, double* %x56, align 8, !tbaa !48
  %51 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %center57 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %51, i32 0, i32 2
  %y58 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %center57, i32 0, i32 1
  %52 = load double, double* %y58, align 8, !tbaa !87
  %53 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p359 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %53, i32 0, i32 7
  %y60 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p359, i32 0, i32 1
  store double %52, double* %y60, align 8, !tbaa !49
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.end.50
  %54 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %sincos62 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %54, i32 0, i32 9
  %sin63 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos62, i32 0, i32 0
  store double 1.000000e+00, double* %sin63, align 8, !tbaa !89
  %55 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %sincos64 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %55, i32 0, i32 9
  %cos65 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos64, i32 0, i32 1
  store double 0.000000e+00, double* %cos65, align 8, !tbaa !88
  %56 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %center66 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %56, i32 0, i32 2
  %x67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %center66, i32 0, i32 0
  %57 = load double, double* %x67, align 8, !tbaa !86
  %58 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p368 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %58, i32 0, i32 7
  %x69 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p368, i32 0, i32 0
  store double %57, double* %x69, align 8, !tbaa !48
  %59 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %center70 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %59, i32 0, i32 2
  %y71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %center70, i32 0, i32 1
  %60 = load double, double* %y71, align 8, !tbaa !87
  %61 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %radius72 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %61, i32 0, i32 3
  %62 = load double, double* %radius72, align 8, !tbaa !43
  %add73 = fadd double %60, %62
  store double %add73, double* %y0, align 8, !tbaa !33
  %63 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p374 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %63, i32 0, i32 7
  %y75 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p374, i32 0, i32 1
  store double %add73, double* %y75, align 8, !tbaa !49
  br label %sw.epilog

sw.bb.76:                                         ; preds = %if.end.50
  %64 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %sincos77 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %64, i32 0, i32 9
  %sin78 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos77, i32 0, i32 0
  store double 0.000000e+00, double* %sin78, align 8, !tbaa !89
  %65 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %sincos79 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %65, i32 0, i32 9
  %cos80 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos79, i32 0, i32 1
  store double -1.000000e+00, double* %cos80, align 8, !tbaa !88
  %66 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %center81 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %66, i32 0, i32 2
  %x82 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %center81, i32 0, i32 0
  %67 = load double, double* %x82, align 8, !tbaa !86
  %68 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %radius83 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %68, i32 0, i32 3
  %69 = load double, double* %radius83, align 8, !tbaa !43
  %sub = fsub double %67, %69
  store double %sub, double* %x0, align 8, !tbaa !33
  %70 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p384 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %70, i32 0, i32 7
  %x85 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p384, i32 0, i32 0
  store double %sub, double* %x85, align 8, !tbaa !48
  %71 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %center86 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %71, i32 0, i32 2
  %y87 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %center86, i32 0, i32 1
  %72 = load double, double* %y87, align 8, !tbaa !87
  %73 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p388 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %73, i32 0, i32 7
  %y89 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p388, i32 0, i32 1
  store double %72, double* %y89, align 8, !tbaa !49
  br label %sw.epilog

sw.bb.90:                                         ; preds = %if.end.50
  %74 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %sincos91 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %74, i32 0, i32 9
  %sin92 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos91, i32 0, i32 0
  store double -1.000000e+00, double* %sin92, align 8, !tbaa !89
  %75 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %sincos93 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %75, i32 0, i32 9
  %cos94 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %sincos93, i32 0, i32 1
  store double 0.000000e+00, double* %cos94, align 8, !tbaa !88
  %76 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %center95 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %76, i32 0, i32 2
  %x96 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %center95, i32 0, i32 0
  %77 = load double, double* %x96, align 8, !tbaa !86
  %78 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p397 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %78, i32 0, i32 7
  %x98 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p397, i32 0, i32 0
  store double %77, double* %x98, align 8, !tbaa !48
  %79 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %center99 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %79, i32 0, i32 2
  %y100 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %center99, i32 0, i32 1
  %80 = load double, double* %y100, align 8, !tbaa !87
  %81 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %radius101 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %81, i32 0, i32 3
  %82 = load double, double* %radius101, align 8, !tbaa !43
  %sub102 = fsub double %80, %82
  store double %sub102, double* %y0, align 8, !tbaa !33
  %83 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %p3103 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %83, i32 0, i32 7
  %y104 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p3103, i32 0, i32 1
  store double %sub102, double* %y104, align 8, !tbaa !49
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.50, %sw.bb.90, %sw.bb.76, %sw.bb.61, %sw.bb
  %84 = load double, double* %x0, align 8, !tbaa !33
  %85 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %85, i32 0, i32 8
  %x105 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  store double %84, double* %x105, align 8, !tbaa !50
  %86 = load double, double* %y0, align 8, !tbaa !33
  %87 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %pt106 = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %87, i32 0, i32 8
  %y107 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt106, i32 0, i32 1
  store double %86, double* %y107, align 8, !tbaa !51
  %88 = load double, double* %anext.addr, align 8, !tbaa !33
  %89 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %angle = getelementptr inbounds %struct.arc_curve_params_s, %struct.arc_curve_params_s* %89, i32 0, i32 10
  store double %88, double* %angle, align 8, !tbaa !90
  %90 = load %struct.arc_curve_params_s*, %struct.arc_curve_params_s** %arc.addr, align 8, !tbaa !1
  %call108 = call i32 @arc_add(%struct.arc_curve_params_s* %90, i32 1) #6
  %91 = bitcast double* %y0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast double* %x0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  ret i32 %call108
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare double @tan(double) #4

declare i32 @gs_point_transform2fixed_rounding(%struct.gs_matrix_fixed_s*, double, double, %struct.gs_fixed_point_s*) #3

declare i32 @gx_path_add_line_notes(%struct.gx_path_s*, i32, i32, i32) #3

declare i32 @gx_path_add_point(%struct.gx_path_s*, i32, i32) #3

declare i32 @gx_path_add_curve_notes(%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !13, i64 112}
!6 = !{!"gx_path_s", !7, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !11, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !13, i64 104, !13, i64 108, !12, i64 112, !2, i64 120}
!7 = !{!"gx_path_segments_s", !8, i64 0, !10, i64 24}
!8 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!"long", !3, i64 0}
!10 = !{!"psc_", !2, i64 0, !2, i64 8}
!11 = !{!"gs_fixed_rect_s", !12, i64 0, !12, i64 8}
!12 = !{!"gs_fixed_point_s", !13, i64 0, !13, i64 4}
!13 = !{!"int", !3, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"gs_point_s", !16, i64 0, !16, i64 8}
!16 = !{!"double", !3, i64 0}
!17 = !{!6, !13, i64 116}
!18 = !{!15, !16, i64 8}
!19 = !{!20, !16, i64 176}
!20 = !{!"gs_imager_state_s", !13, i64 0, !2, i64 8, !2, i64 16, !21, i64 24, !13, i64 128, !25, i64 132, !13, i64 168, !15, i64 176, !15, i64 192, !13, i64 208, !13, i64 212, !26, i64 216, !3, i64 220, !27, i64 224, !27, i64 228, !28, i64 232, !9, i64 240, !13, i64 248, !13, i64 252, !13, i64 256, !2, i64 264, !13, i64 272, !13, i64 276, !13, i64 280, !13, i64 284, !13, i64 288, !13, i64 292, !22, i64 296, !12, i64 300, !13, i64 308, !13, i64 312, !13, i64 316, !22, i64 320, !13, i64 324, !13, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !13, i64 408, !2, i64 416, !2, i64 424, !29, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !30, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !30, i64 1336}
!21 = !{!"gx_line_params_s", !22, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !13, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !13, i64 36, !23, i64 40, !24, i64 64}
!22 = !{!"float", !3, i64 0}
!23 = !{!"gs_matrix_s", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20}
!24 = !{!"gx_dash_params_s", !2, i64 0, !13, i64 8, !22, i64 12, !13, i64 16, !22, i64 20, !13, i64 24, !13, i64 28, !22, i64 32}
!25 = !{!"gs_matrix_fixed_s", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !13, i64 24, !13, i64 28, !13, i64 32}
!26 = !{!"short", !3, i64 0}
!27 = !{!"gs_transparency_source_s", !22, i64 0}
!28 = !{!"gs_xstate_trans_flags", !13, i64 0, !13, i64 4}
!29 = !{!"gx_transfer_s", !13, i64 0, !2, i64 8, !13, i64 16, !2, i64 24, !13, i64 32, !2, i64 40, !13, i64 48, !2, i64 56}
!30 = !{!"gs_devicen_color_map_s", !13, i64 0, !3, i64 4, !13, i64 8, !13, i64 12, !9, i64 16, !3, i64 24}
!31 = !{!20, !16, i64 184}
!32 = !{!20, !13, i64 168}
!33 = !{!16, !16, i64 0}
!34 = !{!13, !13, i64 0}
!35 = !{!36, !2, i64 1680}
!36 = !{!"gs_state_s", !13, i64 0, !2, i64 8, !2, i64 16, !21, i64 24, !13, i64 128, !25, i64 132, !13, i64 168, !15, i64 176, !15, i64 192, !13, i64 208, !13, i64 212, !26, i64 216, !3, i64 220, !27, i64 224, !27, i64 228, !28, i64 232, !9, i64 240, !13, i64 248, !13, i64 252, !13, i64 256, !2, i64 264, !13, i64 272, !13, i64 276, !13, i64 280, !13, i64 284, !13, i64 288, !13, i64 292, !22, i64 296, !12, i64 300, !13, i64 308, !13, i64 312, !13, i64 316, !22, i64 320, !13, i64 324, !13, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !13, i64 408, !2, i64 416, !2, i64 424, !29, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !30, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !30, i64 1336, !2, i64 1616, !23, i64 1624, !13, i64 1648, !23, i64 1652, !13, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !9, i64 1712, !9, i64 1720, !2, i64 1728, !13, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !25, i64 1808, !13, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !13, i64 1864, !2, i64 1872, !2, i64 1880, !37, i64 1888}
!37 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!38 = !{!36, !13, i64 168}
!39 = !{!40, !2, i64 0}
!40 = !{!"arc_curve_params_s", !2, i64 0, !2, i64 8, !15, i64 16, !16, i64 32, !3, i64 40, !3, i64 44, !15, i64 48, !15, i64 64, !15, i64 80, !41, i64 96, !16, i64 120, !13, i64 128, !13, i64 132, !13, i64 136}
!41 = !{!"gs_sincos_s", !16, i64 0, !16, i64 8, !13, i64 16}
!42 = !{!40, !2, i64 8}
!43 = !{!40, !16, i64 32}
!44 = !{!40, !3, i64 40}
!45 = !{!40, !3, i64 44}
!46 = !{!40, !16, i64 48}
!47 = !{!40, !16, i64 56}
!48 = !{!40, !16, i64 64}
!49 = !{!40, !16, i64 72}
!50 = !{!40, !16, i64 80}
!51 = !{!40, !16, i64 88}
!52 = !{!22, !22, i64 0}
!53 = !{!6, !3, i64 97}
!54 = !{!12, !13, i64 0}
!55 = !{!12, !13, i64 4}
!56 = !{!40, !13, i64 128}
!57 = !{!40, !13, i64 136}
!58 = !{!6, !2, i64 40}
!59 = !{!6, !13, i64 108}
!60 = !{!36, !22, i64 296}
!61 = !{!36, !13, i64 312}
!62 = !{!36, !16, i64 176}
!63 = !{!36, !16, i64 184}
!64 = !{!6, !2, i64 56}
!65 = !{!7, !2, i64 24}
!66 = !{!7, !2, i64 32}
!67 = !{!68, !13, i64 20}
!68 = !{!"subpath_s", !2, i64 0, !2, i64 8, !26, i64 16, !26, i64 18, !12, i64 20, !2, i64 32, !13, i64 40, !69, i64 48, !3, i64 88}
!69 = !{!"", !2, i64 0, !2, i64 8, !26, i64 16, !26, i64 18, !12, i64 20, !2, i64 32}
!70 = !{!36, !16, i64 192}
!71 = !{!68, !13, i64 24}
!72 = !{!36, !16, i64 200}
!73 = !{!11, !13, i64 0}
!74 = !{!11, !13, i64 4}
!75 = !{!11, !13, i64 8}
!76 = !{!11, !13, i64 12}
!77 = !{!78, !16, i64 0}
!78 = !{!"gs_rect_s", !15, i64 0, !15, i64 16}
!79 = !{!78, !16, i64 8}
!80 = !{!78, !16, i64 16}
!81 = !{!78, !16, i64 24}
!82 = !{!83, !2, i64 48}
!83 = !{!"gs_path_enum_s", !2, i64 0, !23, i64 8, !2, i64 32, !2, i64 40, !2, i64 48, !13, i64 56, !3, i64 60}
!84 = !{!83, !2, i64 0}
!85 = !{!83, !2, i64 40}
!86 = !{!40, !16, i64 16}
!87 = !{!40, !16, i64 24}
!88 = !{!40, !16, i64 104}
!89 = !{!40, !16, i64 96}
!90 = !{!40, !16, i64 120}
!91 = !{!40, !13, i64 112}
!92 = !{i64 0, i64 8, !33, i64 8, i64 8, !33}
!93 = !{!20, !22, i64 136}
!94 = !{!20, !22, i64 140}
!95 = !{!20, !22, i64 132}
!96 = !{!20, !22, i64 144}
!97 = !{!40, !13, i64 132}
