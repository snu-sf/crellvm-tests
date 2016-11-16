; ModuleID = './gsstate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
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
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon.12], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gx_clip_stack_s = type { %struct.rc_header_s, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s* }
%struct.gx_clip_path_s = type { %struct.gx_path_s, %struct.gx_clip_rect_list_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_rect_list_s*, i32, %struct.gx_cpath_path_list_s*, i64 }
%struct.gx_clip_rect_list_s = type { %struct.rc_header_s, %struct.gx_clip_list_s }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gx_cpath_path_list_s = type { %struct.gx_path_s, %struct.rc_header_s, i32, %struct.gx_cpath_path_list_s* }
%struct.anon.12 = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type { i32, %struct.pp_ }
%struct.pp_ = type { i32 (%struct.gs_pattern_template_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)*, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_pattern_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8* }
%struct.gs_uid_s = type { i64, i64* }
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
%struct.gx_color_tile_s = type { i64, i32, %struct.gs_uid_s, i32, i32, %struct.gs_matrix_s, %struct.gs_rect_s, %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s, %struct.gx_pattern_trans_s*, %union.gx_device_clist_s*, i8, i8, i8, [2 x i8], i32, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_pattern_trans_s = type { %struct.gx_device_s*, i8*, %struct.gs_memory_s*, %struct.gx_pattern_trans_s*, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, i32, %struct.pdf14_nonseparable_blending_procs_s*, i32, i32, %struct.gs_int_rect_s*, void (i32, i32, i32, i32, i32, i32, %struct.gx_color_tile_s*, %struct.gx_pattern_trans_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.pdf14_nonseparable_blending_procs_s = type { void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)* }
%struct.gx_image_enum_s = type opaque
%union.gx_device_clist_s = type opaque
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
%struct.gx_image_enum_common_s = type opaque
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
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.8 }
%union.anon.8 = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_ht_cache_s = type { i8*, i32, %struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s, i32, i32, i32, i64, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)* }
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.11 }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon.10, %struct.anon.10, %struct.anon.10, %struct.anon.10 }
%struct.anon.10 = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
%struct.anon.11 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
%struct.gx_cie_vector_cache3_s = type { [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.cie_interpolation_range_s] }
%struct.gx_cie_vector_cache_s = type { %struct.cie_cache_floats_s, %struct.cie_cache_vectors_s }
%struct.cie_cache_floats_s = type { %struct.cie_cache_params_s, [512 x float] }
%struct.cie_cache_params_s = type { i32, double, double, %struct.cie_linear_params_s }
%struct.cie_linear_params_s = type { i32, float, float }
%struct.cie_cache_vectors_s = type { %struct.cie_vector_cache_params_s, [512 x %struct.cie_cached_vector3_s] }
%struct.cie_vector_cache_params_s = type { float, float, float, [3 x %struct.cie_interpolation_range_s] }
%struct.cie_cached_vector3_s = type { float, float, float }
%struct.cie_interpolation_range_s = type { float, float }
%struct.gx_cie_float_fixed_cache_s = type { %struct.cie_cache_floats_s, %union.if_ }
%union.if_ = type { %struct.cie_cache_ints_s }
%struct.cie_cache_ints_s = type { %struct.cie_cache_params_s, [512 x i32] }
%union.gx_cie_scalar_cache_s = type { %struct.cie_cache_floats_s }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type { %struct.gs_memory_s*, %struct.gx_color_tile_s*, i32, i32, i32, i64, i64, void (%struct.gx_pattern_cache_s*)* }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type { i64, i64, i32, i32, %struct.rc_header_s, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32, i32, %struct.gx_cie_vector_cache3_s, %struct.gs_cie_wbsd_s, i32, %struct.gx_cie_vector_cache3_s, i32 }
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_state_parts_s = type { %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_path_s*, [2 x %struct.anon.13] }
%struct.anon.13 = type { %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_overprint_params_s = type { i32, i32, i32, i64, i16, i32 }

@.str = private unnamed_addr constant [9 x i8] c"gs_state\00", align 1
@st_gs_state = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 1920, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_state_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_state_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"gs_state_alloc\00", align 1
@gstate_initial = internal constant %struct.gs_imager_state_s { i32 1, %struct.gs_memory_s* null, i8* null, %struct.gx_line_params_s { float 0.000000e+00, i32 0, i32 0, i32 0, i32 0, i32 -1, float 1.000000e+01, float 0x3FC9FDD380000000, float 0.000000e+00, i32 0, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %struct.gx_dash_params_s { float* null, i32 0, float 0.000000e+00, i32 0, float 0.000000e+00, i32 1, i32 0, float 0.000000e+00 } }, i32 0, %struct.gs_matrix_fixed_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0 }, i32 0, %struct.gs_point_s zeroinitializer, %struct.gs_point_s zeroinitializer, i32 0, i32 252, i16 -1, i32 16, %struct.gs_transparency_source_s { float 1.000000e+00 }, %struct.gs_transparency_source_s { float 1.000000e+00 }, %struct.gs_xstate_trans_flags zeroinitializer, i64 0, i32 0, i32 0, i32 0, %struct.gx_device_s* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, float 1.000000e+00, %struct.gs_fixed_point_s { i32 128, i32 128 }, i32 0, i32 0, i32 0, float 1.000000e+00, i32 1, i32 1, %struct.gsicc_manager_s* null, %struct.gsicc_link_cache_s* null, %struct.gsicc_profile_cache_s* null, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)* @gx_default_get_cmap_procs, %struct.gs_halftone_s* null, [2 x %struct.gs_int_point_s] zeroinitializer, %struct.gx_device_halftone_s* null, %struct.gs_cie_render_s* null, i32 0, %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s* null, %struct.gx_transfer_s zeroinitializer, [64 x %struct.gx_transfer_map_s*] zeroinitializer, %struct.gx_cie_joint_caches_s* null, %struct.gx_color_map_procs_s* null, %struct.gs_devicen_color_map_s zeroinitializer, %struct.gx_pattern_cache_s* null, %struct.gs_color_space_s* null, %struct.gs_color_space_s* null, %struct.gx_cie_joint_caches_s* null, %struct.gs_devicen_color_map_s zeroinitializer }, align 8
@st_halftone = external constant %struct.gs_memory_struct_type_s, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"gs_state_alloc(halftone)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"gs_state_alloc(path)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"gs_state_alloc(clip_path)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"gs_state_alloc(view_clip)\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"gs_state_free\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"gs_gsave\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"gs_gsave_for_save(view_clip)\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"gs_grestore\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"gs_grestoreall_for_restore\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"gs_gstate\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"gs_state_copy\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"gs_copygstate\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"gs_currentgstate\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"gs_setgstate\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"gs_state_update_overprint\00", align 1
@st_imager_state = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.17 = private unnamed_addr constant [25 x i8] c"gstate_alloc_parts(path)\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"gstate_alloc_parts(clip_path)\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"gstate_alloc_parts(effective_clip_path)\00", align 1
@st_client_color = external constant %struct.gs_memory_struct_type_s, align 8
@st_device_color = external constant %struct.gs_memory_struct_type_s, align 8
@.str.20 = private unnamed_addr constant [21 x i8] c"gstate_free_contents\00", align 1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @gs_state_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %gsvptr = alloca %struct.gs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %gsvptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_state_s*
  store %struct.gs_state_s* %2, %struct.gs_state_s** %gsvptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
    i32 7, label %sw.bb.13
    i32 8, label %sw.bb.17
    i32 9, label %sw.bb.21
    i32 10, label %sw.bb.26
    i32 11, label %sw.bb.31
    i32 12, label %sw.bb.36
    i32 13, label %sw.bb.38
    i32 14, label %sw.bb.40
    i32 15, label %sw.bb.42
    i32 16, label %sw.bb.45
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_imager_state, i32 0, i32 4), align 8, !tbaa !7
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = load i32, i32* %size.addr, align 4, !tbaa !5
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %8, 17
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %4(%struct.gs_memory_s* %5, i8* %6, i32 %7, i32 %sub, %struct.enum_ptr_s* %9, %struct.gs_memory_struct_type_s* @st_imager_state, %struct.gc_state_s* %10) #3
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %11 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to %struct.gs_state_s*
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 56
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !9
  %14 = bitcast %struct.gs_state_s* %13 to i8*
  %15 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %15, i32 0, i32 0
  store i8* %14, i8** %ptr, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %16 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %17 = bitcast i8* %16 to %struct.gs_state_s*
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 61
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !28
  %19 = bitcast %struct.gx_path_s* %18 to i8*
  %20 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %20, i32 0, i32 0
  store i8* %19, i8** %ptr2, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.3:                                          ; preds = %entry
  %21 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %22 = bitcast i8* %21 to %struct.gs_state_s*
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 62
  %23 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !29
  %24 = bitcast %struct.gx_clip_path_s* %23 to i8*
  %25 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %25, i32 0, i32 0
  store i8* %24, i8** %ptr4, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.5:                                          ; preds = %entry
  %26 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %27 = bitcast i8* %26 to %struct.gs_state_s*
  %clip_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 63
  %28 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %clip_stack, align 8, !tbaa !30
  %29 = bitcast %struct.gx_clip_stack_s* %28 to i8*
  %30 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %30, i32 0, i32 0
  store i8* %29, i8** %ptr6, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.7:                                          ; preds = %entry
  %31 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %32 = bitcast i8* %31 to %struct.gs_state_s*
  %view_clip = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 64
  %33 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip, align 8, !tbaa !31
  %34 = bitcast %struct.gx_clip_path_s* %33 to i8*
  %35 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %35, i32 0, i32 0
  store i8* %34, i8** %ptr8, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.9:                                          ; preds = %entry
  %36 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %37 = bitcast i8* %36 to %struct.gs_state_s*
  %effective_clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 67
  %38 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path, align 8, !tbaa !32
  %39 = bitcast %struct.gx_clip_path_s* %38 to i8*
  %40 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr10 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %40, i32 0, i32 0
  store i8* %39, i8** %ptr10, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.11:                                         ; preds = %entry
  %41 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %42 = bitcast i8* %41 to %struct.gs_state_s*
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %42, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx, i32 0, i32 0
  %43 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !33
  %44 = bitcast %struct.gs_color_space_s* %43 to i8*
  %45 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr12 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %45, i32 0, i32 0
  store i8* %44, i8** %ptr12, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.13:                                         ; preds = %entry
  %46 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %47 = bitcast i8* %46 to %struct.gs_state_s*
  %color14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %47, i32 0, i32 69
  %arrayidx15 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color14, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx15, i32 0, i32 1
  %48 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !35
  %49 = bitcast %struct.gs_client_color_s* %48 to i8*
  %50 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr16 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %50, i32 0, i32 0
  store i8* %49, i8** %ptr16, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.17:                                         ; preds = %entry
  %51 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %52 = bitcast i8* %51 to %struct.gs_state_s*
  %color18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %52, i32 0, i32 69
  %arrayidx19 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color18, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx19, i32 0, i32 2
  %53 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !36
  %54 = bitcast %struct.gx_device_color_s* %53 to i8*
  %55 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr20 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %55, i32 0, i32 0
  store i8* %54, i8** %ptr20, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.21:                                         ; preds = %entry
  %56 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %57 = bitcast i8* %56 to %struct.gs_state_s*
  %color22 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %57, i32 0, i32 69
  %arrayidx23 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color22, i32 0, i64 1
  %color_space24 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx23, i32 0, i32 0
  %58 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space24, align 8, !tbaa !33
  %59 = bitcast %struct.gs_color_space_s* %58 to i8*
  %60 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr25 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %60, i32 0, i32 0
  store i8* %59, i8** %ptr25, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.26:                                         ; preds = %entry
  %61 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %62 = bitcast i8* %61 to %struct.gs_state_s*
  %color27 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %62, i32 0, i32 69
  %arrayidx28 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color27, i32 0, i64 1
  %ccolor29 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx28, i32 0, i32 1
  %63 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor29, align 8, !tbaa !35
  %64 = bitcast %struct.gs_client_color_s* %63 to i8*
  %65 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr30 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %65, i32 0, i32 0
  store i8* %64, i8** %ptr30, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.31:                                         ; preds = %entry
  %66 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %67 = bitcast i8* %66 to %struct.gs_state_s*
  %color32 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %67, i32 0, i32 69
  %arrayidx33 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color32, i32 0, i64 1
  %dev_color34 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx33, i32 0, i32 2
  %68 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color34, align 8, !tbaa !36
  %69 = bitcast %struct.gx_device_color_s* %68 to i8*
  %70 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr35 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %70, i32 0, i32 0
  store i8* %69, i8** %ptr35, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.36:                                         ; preds = %entry
  %71 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %72 = bitcast i8* %71 to %struct.gs_state_s*
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %72, i32 0, i32 70
  %73 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !37
  %74 = bitcast %struct.gs_font_s* %73 to i8*
  %75 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr37 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %75, i32 0, i32 0
  store i8* %74, i8** %ptr37, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.38:                                         ; preds = %entry
  %76 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %77 = bitcast i8* %76 to %struct.gs_state_s*
  %root_font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %77, i32 0, i32 71
  %78 = load %struct.gs_font_s*, %struct.gs_font_s** %root_font, align 8, !tbaa !38
  %79 = bitcast %struct.gs_font_s* %78 to i8*
  %80 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr39 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %80, i32 0, i32 0
  store i8* %79, i8** %ptr39, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.40:                                         ; preds = %entry
  %81 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %82 = bitcast i8* %81 to %struct.gs_state_s*
  %show_gstate = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %82, i32 0, i32 76
  %83 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate, align 8, !tbaa !39
  %84 = bitcast %struct.gs_state_s* %83 to i8*
  %85 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr41 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %85, i32 0, i32 0
  store i8* %84, i8** %ptr41, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.42:                                         ; preds = %entry
  %86 = load %struct.gs_state_s*, %struct.gs_state_s** %gsvptr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %86, i32 0, i32 78
  %87 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !40
  %call43 = call %struct.gx_device_s* @gx_device_enum_ptr(%struct.gx_device_s* %87) #3
  %88 = bitcast %struct.gx_device_s* %call43 to i8*
  %89 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr44 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %89, i32 0, i32 0
  store i8* %88, i8** %ptr44, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.45:                                         ; preds = %entry
  %90 = load %struct.gs_state_s*, %struct.gs_state_s** %gsvptr, align 8, !tbaa !1
  %dfilter_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %90, i32 0, i32 79
  %91 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack, align 8, !tbaa !41
  %92 = bitcast %struct.gs_device_filter_stack_s* %91 to i8*
  %93 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr46 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %93, i32 0, i32 0
  store i8* %92, i8** %ptr46, align 8, !tbaa !26
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.45, %sw.bb.42, %sw.bb.40, %sw.bb.38, %sw.bb.36, %sw.bb.31, %sw.bb.26, %sw.bb.21, %sw.bb.17, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb, %sw.default
  %94 = bitcast %struct.gs_state_s** %gsvptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %95
}

; Function Attrs: nounwind uwtable
define internal void @gs_state_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %gsvptr = alloca %struct.gs_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %gsvptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_state_s*
  store %struct.gs_state_s* %2, %struct.gs_state_s** %gsvptr, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_imager_state, i32 0, i32 5), align 8, !tbaa !42
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_imager_state, %struct.gc_state_s* %6) #3
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gc_state_s* %7 to %struct.gc_procs_common_s**
  %9 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %8, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %9, i32 0, i32 0
  %10 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !43
  %11 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to %struct.gs_state_s*
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 56
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !9
  %14 = bitcast %struct.gs_state_s* %13 to i8*
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %10(i8* %14, %struct.gc_state_s* %15) #3
  %16 = bitcast i8* %call to %struct.gs_state_s*
  %17 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %18 = bitcast i8* %17 to %struct.gs_state_s*
  %saved1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 56
  store %struct.gs_state_s* %16, %struct.gs_state_s** %saved1, align 8, !tbaa !9
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gc_state_s* %19 to %struct.gc_procs_common_s**
  %21 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %20, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %21, i32 0, i32 0
  %22 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !43
  %23 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %24 = bitcast i8* %23 to %struct.gs_state_s*
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 61
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !28
  %26 = bitcast %struct.gx_path_s* %25 to i8*
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %22(i8* %26, %struct.gc_state_s* %27) #3
  %28 = bitcast i8* %call3 to %struct.gx_path_s*
  %29 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %30 = bitcast i8* %29 to %struct.gs_state_s*
  %path4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 61
  store %struct.gx_path_s* %28, %struct.gx_path_s** %path4, align 8, !tbaa !28
  %31 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gc_state_s* %31 to %struct.gc_procs_common_s**
  %33 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %32, align 8, !tbaa !1
  %reloc_struct_ptr5 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %33, i32 0, i32 0
  %34 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr5, align 8, !tbaa !43
  %35 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %36 = bitcast i8* %35 to %struct.gs_state_s*
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 62
  %37 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !29
  %38 = bitcast %struct.gx_clip_path_s* %37 to i8*
  %39 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %34(i8* %38, %struct.gc_state_s* %39) #3
  %40 = bitcast i8* %call6 to %struct.gx_clip_path_s*
  %41 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %42 = bitcast i8* %41 to %struct.gs_state_s*
  %clip_path7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %42, i32 0, i32 62
  store %struct.gx_clip_path_s* %40, %struct.gx_clip_path_s** %clip_path7, align 8, !tbaa !29
  %43 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %44 = bitcast %struct.gc_state_s* %43 to %struct.gc_procs_common_s**
  %45 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %44, align 8, !tbaa !1
  %reloc_struct_ptr8 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %45, i32 0, i32 0
  %46 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr8, align 8, !tbaa !43
  %47 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %48 = bitcast i8* %47 to %struct.gs_state_s*
  %clip_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %48, i32 0, i32 63
  %49 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %clip_stack, align 8, !tbaa !30
  %50 = bitcast %struct.gx_clip_stack_s* %49 to i8*
  %51 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call9 = call i8* %46(i8* %50, %struct.gc_state_s* %51) #3
  %52 = bitcast i8* %call9 to %struct.gx_clip_stack_s*
  %53 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %54 = bitcast i8* %53 to %struct.gs_state_s*
  %clip_stack10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %54, i32 0, i32 63
  store %struct.gx_clip_stack_s* %52, %struct.gx_clip_stack_s** %clip_stack10, align 8, !tbaa !30
  %55 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %56 = bitcast %struct.gc_state_s* %55 to %struct.gc_procs_common_s**
  %57 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %56, align 8, !tbaa !1
  %reloc_struct_ptr11 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %57, i32 0, i32 0
  %58 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr11, align 8, !tbaa !43
  %59 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %60 = bitcast i8* %59 to %struct.gs_state_s*
  %view_clip = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %60, i32 0, i32 64
  %61 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip, align 8, !tbaa !31
  %62 = bitcast %struct.gx_clip_path_s* %61 to i8*
  %63 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call12 = call i8* %58(i8* %62, %struct.gc_state_s* %63) #3
  %64 = bitcast i8* %call12 to %struct.gx_clip_path_s*
  %65 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %66 = bitcast i8* %65 to %struct.gs_state_s*
  %view_clip13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %66, i32 0, i32 64
  store %struct.gx_clip_path_s* %64, %struct.gx_clip_path_s** %view_clip13, align 8, !tbaa !31
  %67 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %68 = bitcast %struct.gc_state_s* %67 to %struct.gc_procs_common_s**
  %69 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %68, align 8, !tbaa !1
  %reloc_struct_ptr14 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %69, i32 0, i32 0
  %70 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr14, align 8, !tbaa !43
  %71 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %72 = bitcast i8* %71 to %struct.gs_state_s*
  %effective_clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %72, i32 0, i32 67
  %73 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path, align 8, !tbaa !32
  %74 = bitcast %struct.gx_clip_path_s* %73 to i8*
  %75 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call15 = call i8* %70(i8* %74, %struct.gc_state_s* %75) #3
  %76 = bitcast i8* %call15 to %struct.gx_clip_path_s*
  %77 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %78 = bitcast i8* %77 to %struct.gs_state_s*
  %effective_clip_path16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %78, i32 0, i32 67
  store %struct.gx_clip_path_s* %76, %struct.gx_clip_path_s** %effective_clip_path16, align 8, !tbaa !32
  %79 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %80 = bitcast %struct.gc_state_s* %79 to %struct.gc_procs_common_s**
  %81 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %80, align 8, !tbaa !1
  %reloc_struct_ptr17 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %81, i32 0, i32 0
  %82 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr17, align 8, !tbaa !43
  %83 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %84 = bitcast i8* %83 to %struct.gs_state_s*
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %84, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx, i32 0, i32 0
  %85 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !33
  %86 = bitcast %struct.gs_color_space_s* %85 to i8*
  %87 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call18 = call i8* %82(i8* %86, %struct.gc_state_s* %87) #3
  %88 = bitcast i8* %call18 to %struct.gs_color_space_s*
  %89 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %90 = bitcast i8* %89 to %struct.gs_state_s*
  %color19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %90, i32 0, i32 69
  %arrayidx20 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color19, i32 0, i64 0
  %color_space21 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx20, i32 0, i32 0
  store %struct.gs_color_space_s* %88, %struct.gs_color_space_s** %color_space21, align 8, !tbaa !33
  %91 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %92 = bitcast %struct.gc_state_s* %91 to %struct.gc_procs_common_s**
  %93 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %92, align 8, !tbaa !1
  %reloc_struct_ptr22 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %93, i32 0, i32 0
  %94 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr22, align 8, !tbaa !43
  %95 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %96 = bitcast i8* %95 to %struct.gs_state_s*
  %color23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %96, i32 0, i32 69
  %arrayidx24 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color23, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx24, i32 0, i32 1
  %97 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !35
  %98 = bitcast %struct.gs_client_color_s* %97 to i8*
  %99 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call25 = call i8* %94(i8* %98, %struct.gc_state_s* %99) #3
  %100 = bitcast i8* %call25 to %struct.gs_client_color_s*
  %101 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %102 = bitcast i8* %101 to %struct.gs_state_s*
  %color26 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %102, i32 0, i32 69
  %arrayidx27 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color26, i32 0, i64 0
  %ccolor28 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx27, i32 0, i32 1
  store %struct.gs_client_color_s* %100, %struct.gs_client_color_s** %ccolor28, align 8, !tbaa !35
  %103 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %104 = bitcast %struct.gc_state_s* %103 to %struct.gc_procs_common_s**
  %105 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %104, align 8, !tbaa !1
  %reloc_struct_ptr29 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %105, i32 0, i32 0
  %106 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr29, align 8, !tbaa !43
  %107 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %108 = bitcast i8* %107 to %struct.gs_state_s*
  %color30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %108, i32 0, i32 69
  %arrayidx31 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color30, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx31, i32 0, i32 2
  %109 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !36
  %110 = bitcast %struct.gx_device_color_s* %109 to i8*
  %111 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call32 = call i8* %106(i8* %110, %struct.gc_state_s* %111) #3
  %112 = bitcast i8* %call32 to %struct.gx_device_color_s*
  %113 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %114 = bitcast i8* %113 to %struct.gs_state_s*
  %color33 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %114, i32 0, i32 69
  %arrayidx34 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color33, i32 0, i64 0
  %dev_color35 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx34, i32 0, i32 2
  store %struct.gx_device_color_s* %112, %struct.gx_device_color_s** %dev_color35, align 8, !tbaa !36
  %115 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %116 = bitcast %struct.gc_state_s* %115 to %struct.gc_procs_common_s**
  %117 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %116, align 8, !tbaa !1
  %reloc_struct_ptr36 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %117, i32 0, i32 0
  %118 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr36, align 8, !tbaa !43
  %119 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %120 = bitcast i8* %119 to %struct.gs_state_s*
  %color37 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %120, i32 0, i32 69
  %arrayidx38 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color37, i32 0, i64 1
  %color_space39 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx38, i32 0, i32 0
  %121 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space39, align 8, !tbaa !33
  %122 = bitcast %struct.gs_color_space_s* %121 to i8*
  %123 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call40 = call i8* %118(i8* %122, %struct.gc_state_s* %123) #3
  %124 = bitcast i8* %call40 to %struct.gs_color_space_s*
  %125 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %126 = bitcast i8* %125 to %struct.gs_state_s*
  %color41 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %126, i32 0, i32 69
  %arrayidx42 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color41, i32 0, i64 1
  %color_space43 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx42, i32 0, i32 0
  store %struct.gs_color_space_s* %124, %struct.gs_color_space_s** %color_space43, align 8, !tbaa !33
  %127 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %128 = bitcast %struct.gc_state_s* %127 to %struct.gc_procs_common_s**
  %129 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %128, align 8, !tbaa !1
  %reloc_struct_ptr44 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %129, i32 0, i32 0
  %130 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr44, align 8, !tbaa !43
  %131 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %132 = bitcast i8* %131 to %struct.gs_state_s*
  %color45 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %132, i32 0, i32 69
  %arrayidx46 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color45, i32 0, i64 1
  %ccolor47 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx46, i32 0, i32 1
  %133 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor47, align 8, !tbaa !35
  %134 = bitcast %struct.gs_client_color_s* %133 to i8*
  %135 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call48 = call i8* %130(i8* %134, %struct.gc_state_s* %135) #3
  %136 = bitcast i8* %call48 to %struct.gs_client_color_s*
  %137 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %138 = bitcast i8* %137 to %struct.gs_state_s*
  %color49 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %138, i32 0, i32 69
  %arrayidx50 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color49, i32 0, i64 1
  %ccolor51 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx50, i32 0, i32 1
  store %struct.gs_client_color_s* %136, %struct.gs_client_color_s** %ccolor51, align 8, !tbaa !35
  %139 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %140 = bitcast %struct.gc_state_s* %139 to %struct.gc_procs_common_s**
  %141 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %140, align 8, !tbaa !1
  %reloc_struct_ptr52 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %141, i32 0, i32 0
  %142 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr52, align 8, !tbaa !43
  %143 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %144 = bitcast i8* %143 to %struct.gs_state_s*
  %color53 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %144, i32 0, i32 69
  %arrayidx54 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color53, i32 0, i64 1
  %dev_color55 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx54, i32 0, i32 2
  %145 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color55, align 8, !tbaa !36
  %146 = bitcast %struct.gx_device_color_s* %145 to i8*
  %147 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call56 = call i8* %142(i8* %146, %struct.gc_state_s* %147) #3
  %148 = bitcast i8* %call56 to %struct.gx_device_color_s*
  %149 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %150 = bitcast i8* %149 to %struct.gs_state_s*
  %color57 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %150, i32 0, i32 69
  %arrayidx58 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color57, i32 0, i64 1
  %dev_color59 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx58, i32 0, i32 2
  store %struct.gx_device_color_s* %148, %struct.gx_device_color_s** %dev_color59, align 8, !tbaa !36
  %151 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %152 = bitcast %struct.gc_state_s* %151 to %struct.gc_procs_common_s**
  %153 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %152, align 8, !tbaa !1
  %reloc_struct_ptr60 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %153, i32 0, i32 0
  %154 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr60, align 8, !tbaa !43
  %155 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %156 = bitcast i8* %155 to %struct.gs_state_s*
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %156, i32 0, i32 70
  %157 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !37
  %158 = bitcast %struct.gs_font_s* %157 to i8*
  %159 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call61 = call i8* %154(i8* %158, %struct.gc_state_s* %159) #3
  %160 = bitcast i8* %call61 to %struct.gs_font_s*
  %161 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %162 = bitcast i8* %161 to %struct.gs_state_s*
  %font62 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %162, i32 0, i32 70
  store %struct.gs_font_s* %160, %struct.gs_font_s** %font62, align 8, !tbaa !37
  %163 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %164 = bitcast %struct.gc_state_s* %163 to %struct.gc_procs_common_s**
  %165 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %164, align 8, !tbaa !1
  %reloc_struct_ptr63 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %165, i32 0, i32 0
  %166 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr63, align 8, !tbaa !43
  %167 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %168 = bitcast i8* %167 to %struct.gs_state_s*
  %root_font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %168, i32 0, i32 71
  %169 = load %struct.gs_font_s*, %struct.gs_font_s** %root_font, align 8, !tbaa !38
  %170 = bitcast %struct.gs_font_s* %169 to i8*
  %171 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call64 = call i8* %166(i8* %170, %struct.gc_state_s* %171) #3
  %172 = bitcast i8* %call64 to %struct.gs_font_s*
  %173 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %174 = bitcast i8* %173 to %struct.gs_state_s*
  %root_font65 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %174, i32 0, i32 71
  store %struct.gs_font_s* %172, %struct.gs_font_s** %root_font65, align 8, !tbaa !38
  %175 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %176 = bitcast %struct.gc_state_s* %175 to %struct.gc_procs_common_s**
  %177 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %176, align 8, !tbaa !1
  %reloc_struct_ptr66 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %177, i32 0, i32 0
  %178 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr66, align 8, !tbaa !43
  %179 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %180 = bitcast i8* %179 to %struct.gs_state_s*
  %show_gstate = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %180, i32 0, i32 76
  %181 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate, align 8, !tbaa !39
  %182 = bitcast %struct.gs_state_s* %181 to i8*
  %183 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call67 = call i8* %178(i8* %182, %struct.gc_state_s* %183) #3
  %184 = bitcast i8* %call67 to %struct.gs_state_s*
  %185 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %186 = bitcast i8* %185 to %struct.gs_state_s*
  %show_gstate68 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %186, i32 0, i32 76
  store %struct.gs_state_s* %184, %struct.gs_state_s** %show_gstate68, align 8, !tbaa !39
  %187 = load %struct.gs_state_s*, %struct.gs_state_s** %gsvptr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %187, i32 0, i32 78
  %188 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !40
  %189 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call69 = call %struct.gx_device_s* @gx_device_reloc_ptr(%struct.gx_device_s* %188, %struct.gc_state_s* %189) #3
  %190 = load %struct.gs_state_s*, %struct.gs_state_s** %gsvptr, align 8, !tbaa !1
  %device70 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %190, i32 0, i32 78
  store %struct.gx_device_s* %call69, %struct.gx_device_s** %device70, align 8, !tbaa !40
  %191 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %192 = bitcast %struct.gc_state_s* %191 to %struct.gc_procs_common_s**
  %193 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %192, align 8, !tbaa !1
  %reloc_struct_ptr71 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %193, i32 0, i32 0
  %194 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr71, align 8, !tbaa !43
  %195 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %196 = bitcast i8* %195 to %struct.gs_state_s*
  %dfilter_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %196, i32 0, i32 79
  %197 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack, align 8, !tbaa !41
  %198 = bitcast %struct.gs_device_filter_stack_s* %197 to i8*
  %199 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call72 = call i8* %194(i8* %198, %struct.gc_state_s* %199) #3
  %200 = bitcast i8* %call72 to %struct.gs_device_filter_stack_s*
  %201 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %202 = bitcast i8* %201 to %struct.gs_state_s*
  %dfilter_stack73 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %202, i32 0, i32 79
  store %struct.gs_device_filter_stack_s* %200, %struct.gs_device_filter_stack_s** %dfilter_stack73, align 8, !tbaa !41
  %203 = bitcast %struct.gs_state_s** %gsvptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gs_state_s* @gs_state_alloc(%struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca %struct.gs_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_state_s* @gstate_alloc(%struct.gs_memory_s* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), %struct.gs_state_s* null) #3
  store %struct.gs_state_s* %call, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_state_s* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_state_s* null, %struct.gs_state_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %5 = bitcast %struct.gs_state_s* %4 to %struct.gs_imager_state_s*
  %6 = bitcast %struct.gs_imager_state_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%struct.gs_imager_state_s* @gstate_initial to i8*), i64 1616, i32 8, i1 false), !tbaa.struct !45
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 56
  store %struct.gs_state_s* null, %struct.gs_state_s** %saved, align 8, !tbaa !9
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 61
  store %struct.gx_path_s* null, %struct.gx_path_s** %path, align 8, !tbaa !28
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 62
  store %struct.gx_clip_path_s* null, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !29
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %clip_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 63
  store %struct.gx_clip_stack_s* null, %struct.gx_clip_stack_s** %clip_stack, align 8, !tbaa !30
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %view_clip = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 64
  store %struct.gx_clip_path_s* null, %struct.gx_clip_path_s** %view_clip, align 8, !tbaa !31
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %effective_clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 67
  store %struct.gx_clip_path_s* null, %struct.gx_clip_path_s** %effective_clip_path, align 8, !tbaa !32
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 70
  store %struct.gs_font_s* null, %struct.gs_font_s** %font, align 8, !tbaa !37
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %root_font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 71
  store %struct.gs_font_s* null, %struct.gs_font_s** %root_font, align 8, !tbaa !38
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %show_gstate = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 76
  store %struct.gs_state_s* null, %struct.gs_state_s** %show_gstate, align 8, !tbaa !39
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 78
  store %struct.gx_device_s* null, %struct.gx_device_s** %device, align 8, !tbaa !40
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %dfilter_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 79
  store %struct.gs_device_filter_stack_s* null, %struct.gs_device_filter_stack_s** %dfilter_stack, align 8, !tbaa !41
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %19 = bitcast %struct.gs_state_s* %18 to %struct.gs_imager_state_s*
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_imager_state_initialize(%struct.gs_imager_state_s* %19, %struct.gs_memory_s* %20) #3
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %21, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %fail

if.end.4:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %23 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !51
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call5 = call i8* %23(%struct.gs_memory_s* %24, %struct.gs_memory_struct_type_s* @st_halftone, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)) #3
  %25 = bitcast i8* %call5 to %struct.gs_halftone_s*
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %halftone = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 39
  store %struct.gs_halftone_s* %25, %struct.gs_halftone_s** %halftone, align 8, !tbaa !54
  %cmp6 = icmp eq %struct.gs_halftone_s* %25, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %fail

if.else:                                          ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.else
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %halftone9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 39
  %28 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone9, align 8, !tbaa !54
  %rc = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %28, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !55
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %halftone10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 39
  %31 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone10, align 8, !tbaa !54
  %rc11 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %31, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc11, i32 0, i32 1
  store %struct.gs_memory_s* %29, %struct.gs_memory_s** %memory, align 8, !tbaa !58
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %halftone12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 39
  %33 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone12, align 8, !tbaa !54
  %rc13 = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %33, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc13, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !59
  br label %do.body.14

do.body.14:                                       ; preds = %do.body.8
  br label %do.cond

do.cond:                                          ; preds = %do.body.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.end
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  br label %if.end.17

if.end.17:                                        ; preds = %do.end.16
  br label %do.cond.18

do.cond.18:                                       ; preds = %if.end.17
  br label %do.end.19

do.end.19:                                        ; preds = %do.cond.18
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %halftone20 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 39
  %35 = load %struct.gs_halftone_s*, %struct.gs_halftone_s** %halftone20, align 8, !tbaa !54
  %type = getelementptr inbounds %struct.gs_halftone_s, %struct.gs_halftone_s* %35, i32 0, i32 0
  store i32 0, i32* %type, align 4, !tbaa !60
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call21 = call %struct.gs_memory_s* @gstate_path_memory(%struct.gs_memory_s* %36) #3
  %call22 = call %struct.gx_path_s* @gx_path_alloc_shared(%struct.gx_path_s* null, %struct.gs_memory_s* %call21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #3
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %path23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 61
  store %struct.gx_path_s* %call22, %struct.gx_path_s** %path23, align 8, !tbaa !28
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call24 = call %struct.gx_clip_path_s* @gx_cpath_alloc_shared(%struct.gx_clip_path_s* null, %struct.gs_memory_s* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0)) #3
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %clip_path25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %39, i32 0, i32 62
  store %struct.gx_clip_path_s* %call24, %struct.gx_clip_path_s** %clip_path25, align 8, !tbaa !29
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %clip_stack26 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %40, i32 0, i32 63
  store %struct.gx_clip_stack_s* null, %struct.gx_clip_stack_s** %clip_stack26, align 8, !tbaa !30
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call27 = call %struct.gx_clip_path_s* @gx_cpath_alloc_shared(%struct.gx_clip_path_s* null, %struct.gs_memory_s* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)) #3
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %view_clip28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %42, i32 0, i32 64
  store %struct.gx_clip_path_s* %call27, %struct.gx_clip_path_s** %view_clip28, align 8, !tbaa !31
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %view_clip29 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %43, i32 0, i32 64
  %44 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip29, align 8, !tbaa !31
  %cmp30 = icmp eq %struct.gx_clip_path_s* %44, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %do.end.19
  br label %fail

if.end.32:                                        ; preds = %do.end.19
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %view_clip33 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %45, i32 0, i32 64
  %46 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip33, align 8, !tbaa !31
  %rule = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %46, i32 0, i32 2
  store i32 0, i32* %rule, align 4, !tbaa !61
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %clip_path34 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %47, i32 0, i32 62
  %48 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path34, align 8, !tbaa !29
  %id = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %48, i32 0, i32 8
  %49 = load i64, i64* %id, align 8, !tbaa !70
  %50 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %effective_clip_id = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %50, i32 0, i32 65
  store i64 %49, i64* %effective_clip_id, align 8, !tbaa !71
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %effective_view_clip_id = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %51, i32 0, i32 66
  store i64 0, i64* %effective_view_clip_id, align 8, !tbaa !72
  %52 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %clip_path35 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %52, i32 0, i32 62
  %53 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path35, align 8, !tbaa !29
  %54 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %effective_clip_path36 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %54, i32 0, i32 67
  store %struct.gx_clip_path_s* %53, %struct.gx_clip_path_s** %effective_clip_path36, align 8, !tbaa !32
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %effective_clip_shared = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %55, i32 0, i32 68
  store i32 1, i32* %effective_clip_shared, align 4, !tbaa !73
  %56 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %memory37 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %56, i32 0, i32 1
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory37, align 8, !tbaa !74
  %call38 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %57) #3
  %58 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %58, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx, i32 0, i32 0
  store %struct.gs_color_space_s* %call38, %struct.gs_color_space_s** %color_space, align 8, !tbaa !33
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color39 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %59, i32 0, i32 69
  %arrayidx40 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color39, i32 0, i64 0
  %color_space41 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx40, i32 0, i32 0
  %60 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space41, align 8, !tbaa !33
  %cmp42 = icmp eq %struct.gs_color_space_s* %60, null
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.32
  br label %fail

if.end.44:                                        ; preds = %if.end.32
  %61 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %memory45 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %61, i32 0, i32 1
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory45, align 8, !tbaa !74
  %call46 = call %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s* %62) #3
  %63 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color47 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %63, i32 0, i32 69
  %arrayidx48 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color47, i32 0, i64 1
  %color_space49 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx48, i32 0, i32 0
  store %struct.gs_color_space_s* %call46, %struct.gs_color_space_s** %color_space49, align 8, !tbaa !33
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color50 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %64, i32 0, i32 69
  %arrayidx51 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color50, i32 0, i64 1
  %color_space52 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx51, i32 0, i32 0
  %65 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space52, align 8, !tbaa !33
  %cmp53 = icmp eq %struct.gs_color_space_s* %65, null
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.44
  br label %fail

if.end.55:                                        ; preds = %if.end.44
  %66 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %66, i32 0, i32 74
  store i32 0, i32* %in_cachedevice, align 4, !tbaa !75
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  call void @gs_swapcolors_quick(%struct.gs_state_s* %67) #3
  %68 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call56 = call i32 @gx_set_device_color_1(%struct.gs_state_s* %68) #3
  store i32 %call56, i32* %code, align 4, !tbaa !5
  %69 = load i32, i32* %code, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %69, 0
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.55
  br label %fail

if.end.59:                                        ; preds = %if.end.55
  %70 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  call void @gs_swapcolors_quick(%struct.gs_state_s* %70) #3
  %71 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call60 = call i32 @gx_set_device_color_1(%struct.gs_state_s* %71) #3
  store i32 %call60, i32* %code, align 4, !tbaa !5
  %72 = load i32, i32* %code, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %72, 0
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.59
  br label %fail

if.end.63:                                        ; preds = %if.end.59
  %73 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %device64 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %73, i32 0, i32 78
  store %struct.gx_device_s* null, %struct.gx_device_s** %device64, align 8, !tbaa !40
  %74 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call65 = call i32 @gs_nulldevice(%struct.gs_state_s* %74) #3
  store i32 %call65, i32* %code, align 4, !tbaa !5
  %75 = load i32, i32* %code, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %75, 0
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.63
  br label %fail

if.end.68:                                        ; preds = %if.end.63
  %76 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call69 = call i32 @gs_setalpha(%struct.gs_state_s* %76, double 1.000000e+00) #3
  %77 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call70 = call i32 @gs_settransfer(%struct.gs_state_s* %77, float (double, %struct.gx_transfer_map_s*)* @gs_identity_transfer) #3
  %78 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call71 = call i32 @gs_setflat(%struct.gs_state_s* %78, double 1.000000e+00) #3
  %79 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call72 = call i32 @gs_setfilladjust(%struct.gs_state_s* %79, double 3.000000e-01, double 3.000000e-01) #3
  %80 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  call void @gs_setlimitclamp(%struct.gs_state_s* %80, i32 0) #3
  %81 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call73 = call i32 @gs_setstrokeadjust(%struct.gs_state_s* %81, i32 1) #3
  %82 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %font74 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %82, i32 0, i32 70
  store %struct.gs_font_s* null, %struct.gs_font_s** %font74, align 8, !tbaa !37
  %83 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %root_font75 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %83, i32 0, i32 71
  store %struct.gs_font_s* null, %struct.gs_font_s** %root_font75, align 8, !tbaa !38
  %84 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %in_charpath = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %84, i32 0, i32 75
  store i32 0, i32* %in_charpath, align 4, !tbaa !76
  %85 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %show_gstate76 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %85, i32 0, i32 76
  store %struct.gs_state_s* null, %struct.gs_state_s** %show_gstate76, align 8, !tbaa !39
  %86 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %level = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %86, i32 0, i32 77
  store i32 0, i32* %level, align 4, !tbaa !77
  %87 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %dfilter_stack77 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %87, i32 0, i32 79
  store %struct.gs_device_filter_stack_s* null, %struct.gs_device_filter_stack_s** %dfilter_stack77, align 8, !tbaa !41
  %88 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call78 = call i32 @gs_initgraphics(%struct.gs_state_s* %88) #3
  %cmp79 = icmp sge i32 %call78, 0
  br i1 %cmp79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.68
  %89 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  store %struct.gs_state_s* %89, %struct.gs_state_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.81:                                        ; preds = %if.end.68
  br label %fail

fail:                                             ; preds = %if.end.81, %if.then.67, %if.then.62, %if.then.58, %if.then.54, %if.then.43, %if.then.31, %if.then.7, %if.then.3
  %90 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call82 = call i32 @gs_state_free(%struct.gs_state_s* %90) #3
  store %struct.gs_state_s* null, %struct.gs_state_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then.80, %if.then
  %91 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = load %struct.gs_state_s*, %struct.gs_state_s** %retval
  ret %struct.gs_state_s* %93
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct.gs_state_s* @gstate_alloc(%struct.gs_memory_s* %mem, i8* %cname, %struct.gs_state_s* %pfrom) #0 {
entry:
  %retval = alloca %struct.gs_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %pfrom.addr = alloca %struct.gs_state_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pfrom, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !51
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_state to %struct.gs_memory_struct_type_s*), i8* %4) #3
  %5 = bitcast i8* %call to %struct.gs_state_s*
  store %struct.gs_state_s* %5, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_state_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_state_s* null, %struct.gs_state_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call1 = call i32 @gstate_alloc_parts(%struct.gs_state_s* %7, %struct.gs_state_s* %8, %struct.gs_memory_s* %9, i8* %10) #3
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %12 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %15 = bitcast %struct.gs_state_s* %14 to i8*
  %16 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %12(%struct.gs_memory_s* %13, i8* %15, i8* %16) #3
  store %struct.gs_state_s* null, %struct.gs_state_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 1
  store %struct.gs_memory_s* %17, %struct.gs_memory_s** %memory, align 8, !tbaa !74
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  store %struct.gs_state_s* %19, %struct.gs_state_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.3, %if.then
  %20 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %retval
  ret %struct.gs_state_s* %21
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_imager_state_initialize(%struct.gs_imager_state_s*, %struct.gs_memory_s*) #2

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #2

declare %struct.gx_path_s* @gx_path_alloc_shared(%struct.gx_path_s*, %struct.gs_memory_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_memory_s* @gstate_path_memory(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %1 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !79
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_s* %1(%struct.gs_memory_s* %2) #3
  ret %struct.gs_memory_s* %call
}

declare %struct.gx_clip_path_s* @gx_cpath_alloc_shared(%struct.gx_clip_path_s*, %struct.gs_memory_s*, i8*) #2

declare %struct.gs_color_space_s* @gs_cspace_new_DeviceGray(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define void @gs_swapcolors_quick(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %tmp_cie = alloca %struct.gx_cie_joint_caches_s*, align 8
  %tmp_ccm = alloca %struct.gs_devicen_color_map_s, align 8
  %tmp_cc = alloca %struct.gs_client_color_s*, align 8
  %tmp = alloca i32, align 4
  %tmp_dc = alloca %struct.gx_device_color_s*, align 8
  %tmp_cs = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_cie_joint_caches_s** %tmp_cie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_devicen_color_map_s* %tmp_ccm to i8*
  call void @llvm.lifetime.start(i64 280, i8* %1) #1
  %2 = bitcast %struct.gs_client_color_s** %tmp_cc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gx_device_color_s** %tmp_dc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.gs_color_space_s** %tmp_cs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx, i32 0, i32 1
  %7 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !35
  store %struct.gs_client_color_s* %7, %struct.gs_client_color_s** %tmp_cc, align 8, !tbaa !1
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 69
  %arrayidx4 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color3, i32 0, i64 1
  %ccolor5 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx4, i32 0, i32 1
  %9 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor5, align 8, !tbaa !35
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 69
  %arrayidx7 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color6, i32 0, i64 0
  %ccolor8 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx7, i32 0, i32 1
  store %struct.gs_client_color_s* %9, %struct.gs_client_color_s** %ccolor8, align 8, !tbaa !35
  %11 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %tmp_cc, align 8, !tbaa !1
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 69
  %arrayidx10 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color9, i32 0, i64 1
  %ccolor11 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx10, i32 0, i32 1
  store %struct.gs_client_color_s* %11, %struct.gs_client_color_s** %ccolor11, align 8, !tbaa !35
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 69
  %arrayidx13 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color12, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx13, i32 0, i32 2
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !36
  store %struct.gx_device_color_s* %14, %struct.gx_device_color_s** %tmp_dc, align 8, !tbaa !1
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 69
  %arrayidx15 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color14, i32 0, i64 1
  %dev_color16 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx15, i32 0, i32 2
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color16, align 8, !tbaa !36
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 69
  %arrayidx18 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color17, i32 0, i64 0
  %dev_color19 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx18, i32 0, i32 2
  store %struct.gx_device_color_s* %16, %struct.gx_device_color_s** %dev_color19, align 8, !tbaa !36
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %tmp_dc, align 8, !tbaa !1
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color20 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 69
  %arrayidx21 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color20, i32 0, i64 1
  %dev_color22 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx21, i32 0, i32 2
  store %struct.gx_device_color_s* %18, %struct.gx_device_color_s** %dev_color22, align 8, !tbaa !36
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 69
  %arrayidx24 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color23, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx24, i32 0, i32 0
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !33
  store %struct.gs_color_space_s* %21, %struct.gs_color_space_s** %tmp_cs, align 8, !tbaa !1
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 69
  %arrayidx26 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color25, i32 0, i64 1
  %color_space27 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx26, i32 0, i32 0
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space27, align 8, !tbaa !33
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 69
  %arrayidx29 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color28, i32 0, i64 0
  %color_space30 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx29, i32 0, i32 0
  store %struct.gs_color_space_s* %23, %struct.gs_color_space_s** %color_space30, align 8, !tbaa !33
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %tmp_cs, align 8, !tbaa !1
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color31 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 69
  %arrayidx32 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color31, i32 0, i64 1
  %color_space33 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx32, i32 0, i32 0
  store %struct.gs_color_space_s* %25, %struct.gs_color_space_s** %color_space33, align 8, !tbaa !33
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %cie_joint_caches = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 48
  %28 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !80
  store %struct.gx_cie_joint_caches_s* %28, %struct.gx_cie_joint_caches_s** %tmp_cie, align 8, !tbaa !1
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %cie_joint_caches_alt = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 54
  %30 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt, align 8, !tbaa !81
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %cie_joint_caches34 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 48
  store %struct.gx_cie_joint_caches_s* %30, %struct.gx_cie_joint_caches_s** %cie_joint_caches34, align 8, !tbaa !80
  %32 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %tmp_cie, align 8, !tbaa !1
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %cie_joint_caches_alt35 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 54
  store %struct.gx_cie_joint_caches_s* %32, %struct.gx_cie_joint_caches_s** %cie_joint_caches_alt35, align 8, !tbaa !81
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color_component_map = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 50
  %35 = bitcast %struct.gs_devicen_color_map_s* %tmp_ccm to i8*
  %36 = bitcast %struct.gs_devicen_color_map_s* %color_component_map to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 280, i32 8, i1 false), !tbaa.struct !82
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color_component_map36 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 50
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color_component_map_alt = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 55
  %39 = bitcast %struct.gs_devicen_color_map_s* %color_component_map36 to i8*
  %40 = bitcast %struct.gs_devicen_color_map_s* %color_component_map_alt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 280, i32 8, i1 false), !tbaa.struct !82
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color_component_map_alt37 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %41, i32 0, i32 55
  %42 = bitcast %struct.gs_devicen_color_map_s* %color_component_map_alt37 to i8*
  %43 = bitcast %struct.gs_devicen_color_map_s* %tmp_ccm to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 280, i32 8, i1 false), !tbaa.struct !82
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %44, i32 0, i32 21
  %45 = load i32, i32* %overprint, align 4, !tbaa !83
  store i32 %45, i32* %tmp, align 4, !tbaa !5
  %46 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint_alt = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %46, i32 0, i32 24
  %47 = load i32, i32* %overprint_alt, align 4, !tbaa !84
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint38 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %48, i32 0, i32 21
  store i32 %47, i32* %overprint38, align 4, !tbaa !83
  %49 = load i32, i32* %tmp, align 4, !tbaa !5
  %50 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint_alt39 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %50, i32 0, i32 24
  store i32 %49, i32* %overprint_alt39, align 4, !tbaa !84
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %51, i32 0, i32 22
  %52 = load i32, i32* %overprint_mode, align 4, !tbaa !85
  store i32 %52, i32* %tmp, align 4, !tbaa !5
  %53 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint_mode_alt = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %53, i32 0, i32 25
  %54 = load i32, i32* %overprint_mode_alt, align 4, !tbaa !86
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint_mode40 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %55, i32 0, i32 22
  store i32 %54, i32* %overprint_mode40, align 4, !tbaa !85
  %56 = load i32, i32* %tmp, align 4, !tbaa !5
  %57 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint_mode_alt41 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %57, i32 0, i32 25
  store i32 %56, i32* %overprint_mode_alt41, align 4, !tbaa !86
  %58 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %58, i32 0, i32 23
  %59 = load i32, i32* %effective_overprint_mode, align 4, !tbaa !87
  store i32 %59, i32* %tmp, align 4, !tbaa !5
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_overprint_mode_alt = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %60, i32 0, i32 26
  %61 = load i32, i32* %effective_overprint_mode_alt, align 4, !tbaa !88
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_overprint_mode42 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %62, i32 0, i32 23
  store i32 %61, i32* %effective_overprint_mode42, align 4, !tbaa !87
  %63 = load i32, i32* %tmp, align 4, !tbaa !5
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_overprint_mode_alt43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %64, i32 0, i32 26
  store i32 %63, i32* %effective_overprint_mode_alt43, align 4, !tbaa !88
  %65 = bitcast %struct.gs_color_space_s** %tmp_cs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast %struct.gx_device_color_s** %tmp_dc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast %struct.gs_client_color_s** %tmp_cc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.gs_devicen_color_map_s* %tmp_ccm to i8*
  call void @llvm.lifetime.end(i64 280, i8* %69) #1
  %70 = bitcast %struct.gx_cie_joint_caches_s** %tmp_cie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  ret void
}

declare i32 @gx_set_device_color_1(%struct.gs_state_s*) #2

declare i32 @gs_nulldevice(%struct.gs_state_s*) #2

declare i32 @gs_setalpha(%struct.gs_state_s*, double) #2

declare i32 @gs_settransfer(%struct.gs_state_s*, float (double, %struct.gx_transfer_map_s*)*) #2

declare float @gs_identity_transfer(double, %struct.gx_transfer_map_s*) #2

declare i32 @gs_setflat(%struct.gs_state_s*, double) #2

; Function Attrs: nounwind uwtable
define i32 @gs_setfilladjust(%struct.gs_state_s* %pgs, double %adjust_x, double %adjust_y) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %adjust_x.addr = alloca double, align 8
  %adjust_y.addr = alloca double, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %adjust_x, double* %adjust_x.addr, align 8, !tbaa !48
  store double %adjust_y, double* %adjust_y.addr, align 8, !tbaa !48
  %0 = load double, double* %adjust_x.addr, align 8, !tbaa !48
  %cmp = fcmp ole double %0, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.5

cond.false:                                       ; preds = %entry
  %1 = load double, double* %adjust_x.addr, align 8, !tbaa !48
  %cmp1 = fcmp oge double %1, 5.000000e-01
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load double, double* %adjust_x.addr, align 8, !tbaa !48
  %mul = fmul double %2, 2.560000e+02
  %conv = fptosi double %mul to i32
  %conv4 = sext i32 %conv to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi i64 [ 128, %cond.true.2 ], [ %conv4, %cond.false.3 ]
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.end, %cond.true
  %cond6 = phi i64 [ 0, %cond.true ], [ %cond, %cond.end ]
  %conv7 = trunc i64 %cond6 to i32
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %fill_adjust = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 28
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust, i32 0, i32 0
  store i32 %conv7, i32* %x, align 4, !tbaa !89
  %4 = load double, double* %adjust_y.addr, align 8, !tbaa !48
  %cmp8 = fcmp ole double %4, 0.000000e+00
  br i1 %cmp8, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end.5
  br label %cond.end.21

cond.false.11:                                    ; preds = %cond.end.5
  %5 = load double, double* %adjust_y.addr, align 8, !tbaa !48
  %cmp12 = fcmp oge double %5, 5.000000e-01
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.false.11
  br label %cond.end.19

cond.false.15:                                    ; preds = %cond.false.11
  %6 = load double, double* %adjust_y.addr, align 8, !tbaa !48
  %mul16 = fmul double %6, 2.560000e+02
  %conv17 = fptosi double %mul16 to i32
  %conv18 = sext i32 %conv17 to i64
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.15, %cond.true.14
  %cond20 = phi i64 [ 128, %cond.true.14 ], [ %conv18, %cond.false.15 ]
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.end.19, %cond.true.10
  %cond22 = phi i64 [ 0, %cond.true.10 ], [ %cond20, %cond.end.19 ]
  %conv23 = trunc i64 %cond22 to i32
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %fill_adjust24 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 28
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust24, i32 0, i32 1
  store i32 %conv23, i32* %y, align 4, !tbaa !90
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gs_setlimitclamp(%struct.gs_state_s* %pgs, i32 %clamp) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %clamp.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %clamp, i32* %clamp.addr, align 4, !tbaa !5
  %0 = load i32, i32* %clamp.addr, align 4, !tbaa !5
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clamp_coordinates = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 9
  store i32 %0, i32* %clamp_coordinates, align 4, !tbaa !91
  ret void
}

declare i32 @gs_setstrokeadjust(%struct.gs_state_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gs_initgraphics(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_initmatrix(%struct.gs_state_s* %1) #3
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_newpath(%struct.gs_state_s* %2) #3
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_initclip(%struct.gs_state_s* %3) #3
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call5 = call i32 @gs_setlinewidth(%struct.gs_state_s* %4, double 1.000000e+00) #3
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %6 = load i32, i32* getelementptr inbounds (%struct.gs_imager_state_s, %struct.gs_imager_state_s* @gstate_initial, i32 0, i32 3, i32 1), align 4, !tbaa !92
  %call8 = call i32 @gs_setlinestartcap(%struct.gs_state_s* %5, i32 %6) #3
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.7
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %8 = load i32, i32* getelementptr inbounds (%struct.gs_imager_state_s, %struct.gs_imager_state_s* @gstate_initial, i32 0, i32 3, i32 2), align 4, !tbaa !94
  %call11 = call i32 @gs_setlineendcap(%struct.gs_state_s* %7, i32 %8) #3
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.10
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %10 = load i32, i32* getelementptr inbounds (%struct.gs_imager_state_s, %struct.gs_imager_state_s* @gstate_initial, i32 0, i32 3, i32 3), align 4, !tbaa !95
  %call14 = call i32 @gs_setlinedashcap(%struct.gs_state_s* %9, i32 %10) #3
  store i32 %call14, i32* %code, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.13
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %12 = load i32, i32* getelementptr inbounds (%struct.gs_imager_state_s, %struct.gs_imager_state_s* @gstate_initial, i32 0, i32 3, i32 4), align 4, !tbaa !96
  %call17 = call i32 @gs_setlinejoin(%struct.gs_state_s* %11, i32 %12) #3
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.16
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %14 = load i32, i32* getelementptr inbounds (%struct.gs_imager_state_s, %struct.gs_imager_state_s* @gstate_initial, i32 0, i32 3, i32 5), align 4, !tbaa !97
  %call20 = call i32 @gs_setcurvejoin(%struct.gs_state_s* %13, i32 %14) #3
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.19
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call23 = call i32 @gs_setdash(%struct.gs_state_s* %15, float* null, i32 0, double 0.000000e+00) #3
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.22
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @gs_setdashadapt(%struct.gs_state_s* %16, i32 0) #3
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call26 = call i32 @gs_setdotlength(%struct.gs_state_s* %17, double 0.000000e+00, i32 0) #3
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.25
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call29 = call i32 @gs_setdotorientation(%struct.gs_state_s* %18) #3
  store i32 %call29, i32* %code, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.28
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %20 = load float, float* getelementptr inbounds (%struct.gs_imager_state_s, %struct.gs_imager_state_s* @gstate_initial, i32 0, i32 3, i32 6), align 4, !tbaa !98
  %conv = fpext float %20 to double
  %call32 = call i32 @gs_setmiterlimit(%struct.gs_state_s* %19, double %conv) #3
  store i32 %call32, i32* %code, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.31, %lor.lhs.false.28, %lor.lhs.false.25, %lor.lhs.false.22, %lor.lhs.false.19, %lor.lhs.false.16, %lor.lhs.false.13, %lor.lhs.false.10, %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %entry
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.31
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 10
  store i32 252, i32* %log_op, align 4, !tbaa !99
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @gs_state_free(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @gstate_free_contents(%struct.gs_state_s* %0) #3
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !74
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %3 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !74
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_state_s* %6 to i8*
  call void %3(%struct.gs_memory_s* %5, i8* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0)) #3
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @gs_state_set_client(%struct.gs_state_s* %pgs, i8* %pdata, %struct.gs_state_client_procs_s* %pprocs, i32 %client_has_pattern_streams) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pdata.addr = alloca i8*, align 8
  %pprocs.addr = alloca %struct.gs_state_client_procs_s*, align 8
  %client_has_pattern_streams.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store %struct.gs_state_client_procs_s* %pprocs, %struct.gs_state_client_procs_s** %pprocs.addr, align 8, !tbaa !1
  store i32 %client_has_pattern_streams, i32* %client_has_pattern_streams.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 2
  store i8* %0, i8** %client_data, align 8, !tbaa !100
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %client_procs = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 80
  %3 = load %struct.gs_state_client_procs_s*, %struct.gs_state_client_procs_s** %pprocs.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_state_client_procs_s* %client_procs to i8*
  %5 = bitcast %struct.gs_state_client_procs_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false), !tbaa.struct !101
  %6 = load i32, i32* %client_has_pattern_streams.addr, align 4, !tbaa !5
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %have_pattern_streams = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 31
  store i32 %6, i32* %have_pattern_streams, align 4, !tbaa !102
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gs_state_client_data(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %client_data, align 8, !tbaa !100
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_state_free_chain(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %saved = alloca %struct.gs_state_s*, align 8
  %tmp = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %1, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %2 = bitcast %struct.gs_state_s** %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_state_s* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %saved1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 56
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %saved1, align 8, !tbaa !9
  store %struct.gs_state_s* %5, %struct.gs_state_s** %tmp, align 8, !tbaa !1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %call = call i32 @gs_state_free(%struct.gs_state_s* %6) #3
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %tmp, align 8, !tbaa !1
  store %struct.gs_state_s* %7, %struct.gs_state_s** %saved, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = bitcast %struct.gs_state_s** %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @gstate_free_contents(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %cname = alloca i8*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !74
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast i8** %cname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), i8** %cname, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 78
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !40
  %tobool = icmp ne %struct.gx_device_s* %5, null
  br i1 %tobool, label %if.then, label %if.end.27

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  br label %do.cond

do.cond:                                          ; preds = %do.body.2
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 78
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %device3, align 8, !tbaa !40
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %8 = load i64, i64* %ref_count, align 8, !tbaa !103
  %add = add nsw i64 %8, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !103
  br label %do.cond.4

do.cond.4:                                        ; preds = %do.end
  br label %do.end.5

do.end.5:                                         ; preds = %do.cond.4
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 78
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %device6, align 8, !tbaa !40
  %rc7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 7
  %ref_count8 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc7, i32 0, i32 0
  %11 = load i64, i64* %ref_count8, align 8, !tbaa !103
  %tobool9 = icmp ne i64 %11, 0
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %do.end.5
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.body.11
  br label %do.cond.13

do.cond.13:                                       ; preds = %do.body.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 78
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %device15, align 8, !tbaa !40
  %rc16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !113
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 78
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %device17, align 8, !tbaa !40
  %rc18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 7
  %memory19 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !114
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device20 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 78
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %device20, align 8, !tbaa !40
  %20 = bitcast %struct.gx_device_s* %19 to i8*
  %21 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %14(%struct.gs_memory_s* %17, i8* %20, i8* %21) #3
  br label %do.cond.21

do.cond.21:                                       ; preds = %do.end.14
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 78
  store %struct.gx_device_s* null, %struct.gx_device_s** %device23, align 8, !tbaa !40
  br label %if.end

if.else:                                          ; preds = %do.end.5
  br label %do.body.24

do.body.24:                                       ; preds = %if.else
  br label %do.cond.25

do.cond.25:                                       ; preds = %do.body.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  br label %if.end

if.end:                                           ; preds = %do.end.26, %do.end.22
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %do.body
  br label %do.cond.28

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 63
  %24 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %clip_stack, align 8, !tbaa !30
  %25 = load i8*, i8** %cname, align 8, !tbaa !1
  call void @clip_stack_rc_adjust(%struct.gx_clip_stack_s* %24, i32 -1, i8* %25) #3
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.29
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %dfilter_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 79
  %27 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack, align 8, !tbaa !41
  %tobool31 = icmp ne %struct.gs_device_filter_stack_s* %27, null
  br i1 %tobool31, label %if.then.32, label %if.end.67

if.then.32:                                       ; preds = %do.body.30
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  br label %do.body.34

do.body.34:                                       ; preds = %do.body.33
  br label %do.cond.35

do.cond.35:                                       ; preds = %do.body.34
  br label %do.end.36

do.end.36:                                        ; preds = %do.cond.35
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %dfilter_stack37 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 79
  %29 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack37, align 8, !tbaa !41
  %rc38 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %29, i32 0, i32 3
  %ref_count39 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc38, i32 0, i32 0
  %30 = load i64, i64* %ref_count39, align 8, !tbaa !115
  %add40 = add nsw i64 %30, -1
  store i64 %add40, i64* %ref_count39, align 8, !tbaa !115
  br label %do.cond.41

do.cond.41:                                       ; preds = %do.end.36
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %dfilter_stack43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 79
  %32 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack43, align 8, !tbaa !41
  %rc44 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %32, i32 0, i32 3
  %ref_count45 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc44, i32 0, i32 0
  %33 = load i64, i64* %ref_count45, align 8, !tbaa !115
  %tobool46 = icmp ne i64 %33, 0
  br i1 %tobool46, label %if.else.62, label %if.then.47

if.then.47:                                       ; preds = %do.end.42
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.body.48
  br label %do.cond.50

do.cond.50:                                       ; preds = %do.body.49
  br label %do.end.51

do.end.51:                                        ; preds = %do.cond.50
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %dfilter_stack52 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 79
  %35 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack52, align 8, !tbaa !41
  %rc53 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %35, i32 0, i32 3
  %free54 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc53, i32 0, i32 2
  %36 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free54, align 8, !tbaa !117
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %dfilter_stack55 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 79
  %38 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack55, align 8, !tbaa !41
  %rc56 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %38, i32 0, i32 3
  %memory57 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc56, i32 0, i32 1
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory57, align 8, !tbaa !118
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %dfilter_stack58 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %40, i32 0, i32 79
  %41 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack58, align 8, !tbaa !41
  %42 = bitcast %struct.gs_device_filter_stack_s* %41 to i8*
  %43 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %36(%struct.gs_memory_s* %39, i8* %42, i8* %43) #3
  br label %do.cond.59

do.cond.59:                                       ; preds = %do.end.51
  br label %do.end.60

do.end.60:                                        ; preds = %do.cond.59
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %dfilter_stack61 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %44, i32 0, i32 79
  store %struct.gs_device_filter_stack_s* null, %struct.gs_device_filter_stack_s** %dfilter_stack61, align 8, !tbaa !41
  br label %if.end.66

if.else.62:                                       ; preds = %do.end.42
  br label %do.body.63

do.body.63:                                       ; preds = %if.else.62
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.body.63
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  br label %if.end.66

if.end.66:                                        ; preds = %do.end.65, %do.end.60
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %do.body.30
  br label %do.cond.68

do.cond.68:                                       ; preds = %if.end.67
  br label %do.end.69

do.end.69:                                        ; preds = %do.cond.68
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @gs_swapcolors_quick(%struct.gs_state_s* %45) #3
  %46 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @cs_adjust_counts_icc(%struct.gs_state_s* %46, i32 -1) #3
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @gs_swapcolors_quick(%struct.gs_state_s* %47) #3
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @cs_adjust_counts_icc(%struct.gs_state_s* %48, i32 -1) #3
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %49, i32 0, i32 2
  %50 = load i8*, i8** %client_data, align 8, !tbaa !100
  %cmp = icmp ne i8* %50, null
  br i1 %cmp, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %do.end.69
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %client_procs = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %51, i32 0, i32 80
  %free71 = getelementptr inbounds %struct.gs_state_client_procs_s, %struct.gs_state_client_procs_s* %client_procs, i32 0, i32 2
  %52 = load void (i8*, %struct.gs_memory_s*)*, void (i8*, %struct.gs_memory_s*)** %free71, align 8, !tbaa !119
  %53 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %client_data72 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %53, i32 0, i32 2
  %54 = load i8*, i8** %client_data72, align 8, !tbaa !100
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void %52(i8* %54, %struct.gs_memory_s* %55) #3
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %do.end.69
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %57 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %59, i32 0, i32 3
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 11
  %pattern = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 0
  %60 = load float*, float** %pattern, align 8, !tbaa !120
  %61 = bitcast float* %60 to i8*
  %62 = load i8*, i8** %cname, align 8, !tbaa !1
  call void %57(%struct.gs_memory_s* %58, i8* %61, i8* %62) #3
  %63 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %65 = load i8*, i8** %cname, align 8, !tbaa !1
  call void @gstate_free_parts(%struct.gs_state_s* %63, %struct.gs_memory_s* %64, i8* %65) #3
  %66 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %67 = bitcast %struct.gs_state_s* %66 to %struct.gs_imager_state_s*
  call void @gs_imager_state_release(%struct.gs_imager_state_s* %67) #3
  %68 = bitcast i8** %cname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_gsave(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pnew = alloca %struct.gs_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pnew to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !74
  %call = call %struct.gs_state_s* @gstate_clone(%struct.gs_state_s* %1, %struct.gs_memory_s* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 0) #3
  store %struct.gs_state_s* %call, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_state_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 63
  store %struct.gx_clip_stack_s* null, %struct.gx_clip_stack_s** %clip_stack, align 8, !tbaa !30
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %dfilter_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 79
  %7 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack, align 8, !tbaa !41
  %tobool = icmp ne %struct.gs_device_filter_stack_s* %7, null
  br i1 %tobool, label %if.then.1, label %if.end.7

if.then.1:                                        ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %if.then.1
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %dfilter_stack3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 79
  %9 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack3, align 8, !tbaa !41
  %rc = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %9, i32 0, i32 3
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %10 = load i64, i64* %ref_count, align 8, !tbaa !115
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !115
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.2
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.5

do.cond.5:                                        ; preds = %do.end
  br label %do.end.6

do.end.6:                                         ; preds = %do.cond.5
  br label %if.end.7

if.end.7:                                         ; preds = %do.end.6, %do.body
  br label %do.cond.8

do.cond.8:                                        ; preds = %if.end.7
  br label %do.end.9

do.end.9:                                         ; preds = %do.cond.8
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 56
  store %struct.gs_state_s* %11, %struct.gs_state_s** %saved, align 8, !tbaa !9
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %show_gstate = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 76
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate, align 8, !tbaa !39
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %cmp10 = icmp eq %struct.gs_state_s* %14, %15
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %do.end.9
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %show_gstate12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 76
  store %struct.gs_state_s* %16, %struct.gs_state_s** %show_gstate12, align 8, !tbaa !39
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %show_gstate13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 76
  store %struct.gs_state_s* %16, %struct.gs_state_s** %show_gstate13, align 8, !tbaa !39
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %do.end.9
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %level = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 77
  %20 = load i32, i32* %level, align 4, !tbaa !77
  %inc15 = add nsw i32 %20, 1
  store i32 %inc15, i32* %level, align 4, !tbaa !77
  br label %do.body.16

do.body.16:                                       ; preds = %if.end.14
  br label %do.cond.17

do.cond.17:                                       ; preds = %do.body.16
  br label %do.end.18

do.end.18:                                        ; preds = %do.cond.17
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.18, %if.then
  %21 = bitcast %struct.gs_state_s** %pnew to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_state_s* @gstate_clone(%struct.gs_state_s* %pfrom, %struct.gs_memory_s* %mem, i8* %cname, i32 %reason) #0 {
entry:
  %retval = alloca %struct.gs_state_s*, align 8
  %pfrom.addr = alloca %struct.gs_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %reason.addr = alloca i32, align 4
  %pgs = alloca %struct.gs_state_s*, align 8
  %parts = alloca %struct.gs_state_parts_s, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %pdata = alloca i8*, align 8
  %dfrom = alloca float*, align 8
  %dto = alloca float*, align 8
  store %struct.gs_state_s* %pfrom, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  store i32 %reason, i32* %reason.addr, align 4, !tbaa !47
  %0 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %call = call %struct.gs_state_s* @gstate_alloc(%struct.gs_memory_s* %1, i8* %2, %struct.gs_state_s* %3) #3
  store %struct.gs_state_s* %call, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %4 = bitcast %struct.gs_state_parts_s* %parts to i8*
  call void @llvm.lifetime.start(i64 56, i8* %4) #1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_state_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_state_s* null, %struct.gs_state_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.191

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 61
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !28
  %path1 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 0
  store %struct.gx_path_s* %7, %struct.gx_path_s** %path1, align 8, !tbaa !121
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 62
  %9 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !29
  %clip_path2 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 1
  store %struct.gx_clip_path_s* %9, %struct.gx_clip_path_s** %clip_path2, align 8, !tbaa !123
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %effective_clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 67
  %11 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path, align 8, !tbaa !32
  %effective_clip_path3 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 2
  store %struct.gx_clip_path_s* %11, %struct.gx_clip_path_s** %effective_clip_path3, align 8, !tbaa !124
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx, i32 0, i32 1
  %13 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !35
  %color4 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color4, i32 0, i64 0
  %ccolor6 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx5, i32 0, i32 0
  store %struct.gs_client_color_s* %13, %struct.gs_client_color_s** %ccolor6, align 8, !tbaa !125
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 69
  %arrayidx8 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color7, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx8, i32 0, i32 2
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !36
  %color9 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color9, i32 0, i64 0
  %dev_color11 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx10, i32 0, i32 1
  store %struct.gx_device_color_s* %15, %struct.gx_device_color_s** %dev_color11, align 8, !tbaa !127
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 69
  %arrayidx13 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color12, i32 0, i64 1
  %ccolor14 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx13, i32 0, i32 1
  %17 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor14, align 8, !tbaa !35
  %color15 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx16 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color15, i32 0, i64 1
  %ccolor17 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx16, i32 0, i32 0
  store %struct.gs_client_color_s* %17, %struct.gs_client_color_s** %ccolor17, align 8, !tbaa !125
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 69
  %arrayidx19 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color18, i32 0, i64 1
  %dev_color20 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx19, i32 0, i32 2
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color20, align 8, !tbaa !36
  %color21 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx22 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color21, i32 0, i64 1
  %dev_color23 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx22, i32 0, i32 1
  store %struct.gx_device_color_s* %19, %struct.gx_device_color_s** %dev_color23, align 8, !tbaa !127
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gs_state_s* %20 to i8*
  %23 = bitcast %struct.gs_state_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 1920, i32 8, i1 false), !tbaa.struct !128
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 3
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 11
  %pattern = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 0
  %25 = load float*, float** %pattern, align 8, !tbaa !120
  %tobool = icmp ne float* %25, null
  br i1 %tobool, label %if.then.24, label %if.end.32

if.then.24:                                       ; preds = %if.end
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %line_params25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 3
  %dash26 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params25, i32 0, i32 11
  %pattern27 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash26, i32 0, i32 0
  store float* null, float** %pattern27, align 8, !tbaa !120
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %call28 = call i32 @gstate_copy_dash(%struct.gs_state_s* %28, %struct.gs_state_s* %29) #3
  store i32 %call28, i32* %code, align 4, !tbaa !5
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %30, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.24
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.then.24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.30, %if.end.31
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.191 [
    i32 0, label %cleanup.cont
    i32 2, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.32

if.end.32:                                        ; preds = %cleanup.cont, %if.end
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 2
  %33 = load i8*, i8** %client_data, align 8, !tbaa !100
  %cmp33 = icmp ne i8* %33, null
  br i1 %cmp33, label %if.then.34, label %if.end.46

if.then.34:                                       ; preds = %if.end.32
  %34 = bitcast i8** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %client_procs = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 80
  %alloc = getelementptr inbounds %struct.gs_state_client_procs_s, %struct.gs_state_client_procs_s* %client_procs, i32 0, i32 0
  %36 = load i8* (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*)** %alloc, align 8, !tbaa !129
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call35 = call i8* %36(%struct.gs_memory_s* %37) #3
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %client_data36 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 2
  store i8* %call35, i8** %client_data36, align 8, !tbaa !100
  store i8* %call35, i8** %pdata, align 8, !tbaa !1
  %39 = load i8*, i8** %pdata, align 8, !tbaa !1
  %cmp37 = icmp eq i8* %39, null
  br i1 %cmp37, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.34
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %41 = load i8*, i8** %pdata, align 8, !tbaa !1
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %client_data38 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %42, i32 0, i32 2
  %43 = load i8*, i8** %client_data38, align 8, !tbaa !100
  %44 = load i32, i32* %reason.addr, align 4, !tbaa !47
  %call39 = call i32 @gstate_copy_client_data(%struct.gs_state_s* %40, i8* %41, i8* %43, i32 %44) #3
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false, %if.then.34
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.43

if.end.42:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.43

cleanup.43:                                       ; preds = %if.then.41, %if.end.42
  %45 = bitcast i8** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %cleanup.dest.44 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.44, label %cleanup.191 [
    i32 0, label %cleanup.cont.45
    i32 2, label %fail
  ]

cleanup.cont.45:                                  ; preds = %cleanup.43
  br label %if.end.46

if.end.46:                                        ; preds = %cleanup.cont.45, %if.end.32
  %46 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %47 = bitcast %struct.gs_state_s* %46 to %struct.gs_imager_state_s*
  call void @gs_imager_state_copied(%struct.gs_imager_state_s* %47) #3
  br label %do.body

do.body:                                          ; preds = %if.end.46
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %48, i32 0, i32 78
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !40
  %tobool47 = icmp ne %struct.gx_device_s* %49, null
  br i1 %tobool47, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %do.body
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.48
  %50 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %device50 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %50, i32 0, i32 78
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %device50, align 8, !tbaa !40
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %52 = load i64, i64* %ref_count, align 8, !tbaa !103
  %inc = add nsw i64 %52, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !103
  br label %do.body.51

do.body.51:                                       ; preds = %do.body.49
  br label %do.cond

do.cond:                                          ; preds = %do.body.51
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.52

do.cond.52:                                       ; preds = %do.end
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  br label %if.end.54

if.end.54:                                        ; preds = %do.end.53, %do.body
  br label %do.cond.55

do.cond.55:                                       ; preds = %if.end.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  %color57 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx58 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color57, i32 0, i64 0
  %ccolor59 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx58, i32 0, i32 0
  %53 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor59, align 8, !tbaa !125
  %54 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %color60 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %54, i32 0, i32 69
  %arrayidx61 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color60, i32 0, i64 0
  %ccolor62 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx61, i32 0, i32 1
  %55 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor62, align 8, !tbaa !35
  %56 = bitcast %struct.gs_client_color_s* %53 to i8*
  %57 = bitcast %struct.gs_client_color_s* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 264, i32 8, i1 false), !tbaa.struct !130
  %color63 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx64 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color63, i32 0, i64 0
  %dev_color65 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx64, i32 0, i32 1
  %58 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color65, align 8, !tbaa !127
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %color66 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %59, i32 0, i32 69
  %arrayidx67 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color66, i32 0, i64 0
  %dev_color68 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx67, i32 0, i32 2
  %60 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color68, align 8, !tbaa !36
  %61 = bitcast %struct.gx_device_color_s* %58 to i8*
  %62 = bitcast %struct.gx_device_color_s* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 656, i32 8, i1 false), !tbaa.struct !131
  %color69 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx70 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color69, i32 0, i64 1
  %ccolor71 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx70, i32 0, i32 0
  %63 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor71, align 8, !tbaa !125
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %color72 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %64, i32 0, i32 69
  %arrayidx73 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color72, i32 0, i64 1
  %ccolor74 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx73, i32 0, i32 1
  %65 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor74, align 8, !tbaa !35
  %66 = bitcast %struct.gs_client_color_s* %63 to i8*
  %67 = bitcast %struct.gs_client_color_s* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 264, i32 8, i1 false), !tbaa.struct !130
  %color75 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx76 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color75, i32 0, i64 1
  %dev_color77 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx76, i32 0, i32 1
  %68 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color77, align 8, !tbaa !127
  %69 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %color78 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %69, i32 0, i32 69
  %arrayidx79 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color78, i32 0, i64 1
  %dev_color80 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx79, i32 0, i32 2
  %70 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color80, align 8, !tbaa !36
  %71 = bitcast %struct.gx_device_color_s* %68 to i8*
  %72 = bitcast %struct.gx_device_color_s* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 656, i32 8, i1 false), !tbaa.struct !131
  %73 = load i32, i32* %reason.addr, align 4, !tbaa !47
  %cmp81 = icmp eq i32 %73, 0
  br i1 %cmp81, label %if.then.82, label %if.else

if.then.82:                                       ; preds = %do.end.56
  %74 = bitcast float** %dfrom to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %line_params83 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %75, i32 0, i32 3
  %dash84 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params83, i32 0, i32 11
  %pattern85 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash84, i32 0, i32 0
  %76 = load float*, float** %pattern85, align 8, !tbaa !120
  store float* %76, float** %dfrom, align 8, !tbaa !1
  %77 = bitcast float** %dto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %line_params86 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %78, i32 0, i32 3
  %dash87 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params86, i32 0, i32 11
  %pattern88 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash87, i32 0, i32 0
  %79 = load float*, float** %pattern88, align 8, !tbaa !120
  store float* %79, float** %dto, align 8, !tbaa !1
  %path89 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 0
  %80 = load %struct.gx_path_s*, %struct.gx_path_s** %path89, align 8, !tbaa !121
  %81 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %path90 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %81, i32 0, i32 61
  store %struct.gx_path_s* %80, %struct.gx_path_s** %path90, align 8, !tbaa !28
  %clip_path91 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 1
  %82 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path91, align 8, !tbaa !123
  %83 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %clip_path92 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %83, i32 0, i32 62
  store %struct.gx_clip_path_s* %82, %struct.gx_clip_path_s** %clip_path92, align 8, !tbaa !29
  %effective_clip_path93 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 2
  %84 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path93, align 8, !tbaa !124
  %85 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %effective_clip_path94 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %85, i32 0, i32 67
  store %struct.gx_clip_path_s* %84, %struct.gx_clip_path_s** %effective_clip_path94, align 8, !tbaa !32
  %color95 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx96 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color95, i32 0, i64 0
  %ccolor97 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx96, i32 0, i32 0
  %86 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor97, align 8, !tbaa !125
  %87 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %color98 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %87, i32 0, i32 69
  %arrayidx99 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color98, i32 0, i64 0
  %ccolor100 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx99, i32 0, i32 1
  store %struct.gs_client_color_s* %86, %struct.gs_client_color_s** %ccolor100, align 8, !tbaa !35
  %color101 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx102 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color101, i32 0, i64 0
  %dev_color103 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx102, i32 0, i32 1
  %88 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color103, align 8, !tbaa !127
  %89 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %color104 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %89, i32 0, i32 69
  %arrayidx105 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color104, i32 0, i64 0
  %dev_color106 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx105, i32 0, i32 2
  store %struct.gx_device_color_s* %88, %struct.gx_device_color_s** %dev_color106, align 8, !tbaa !36
  %color107 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx108 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color107, i32 0, i64 1
  %ccolor109 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx108, i32 0, i32 0
  %90 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor109, align 8, !tbaa !125
  %91 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %color110 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %91, i32 0, i32 69
  %arrayidx111 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color110, i32 0, i64 1
  %ccolor112 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx111, i32 0, i32 1
  store %struct.gs_client_color_s* %90, %struct.gs_client_color_s** %ccolor112, align 8, !tbaa !35
  %color113 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx114 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color113, i32 0, i64 1
  %dev_color115 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx114, i32 0, i32 1
  %92 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color115, align 8, !tbaa !127
  %93 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %color116 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %93, i32 0, i32 69
  %arrayidx117 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color116, i32 0, i64 1
  %dev_color118 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx117, i32 0, i32 2
  store %struct.gx_device_color_s* %92, %struct.gx_device_color_s** %dev_color118, align 8, !tbaa !36
  %94 = load float*, float** %dfrom, align 8, !tbaa !1
  %95 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %line_params119 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %95, i32 0, i32 3
  %dash120 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params119, i32 0, i32 11
  %pattern121 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash120, i32 0, i32 0
  store float* %94, float** %pattern121, align 8, !tbaa !120
  %96 = load float*, float** %dto, align 8, !tbaa !1
  %97 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %line_params122 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %97, i32 0, i32 3
  %dash123 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params122, i32 0, i32 11
  %pattern124 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash123, i32 0, i32 0
  store float* %96, float** %pattern124, align 8, !tbaa !120
  %98 = bitcast float** %dto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast float** %dfrom to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  br label %if.end.155

if.else:                                          ; preds = %do.end.56
  %path125 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 0
  %100 = load %struct.gx_path_s*, %struct.gx_path_s** %path125, align 8, !tbaa !121
  %101 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %path126 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %101, i32 0, i32 61
  store %struct.gx_path_s* %100, %struct.gx_path_s** %path126, align 8, !tbaa !28
  %clip_path127 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 1
  %102 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path127, align 8, !tbaa !123
  %103 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %clip_path128 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %103, i32 0, i32 62
  store %struct.gx_clip_path_s* %102, %struct.gx_clip_path_s** %clip_path128, align 8, !tbaa !29
  %effective_clip_path129 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 2
  %104 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path129, align 8, !tbaa !124
  %105 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %effective_clip_path130 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %105, i32 0, i32 67
  store %struct.gx_clip_path_s* %104, %struct.gx_clip_path_s** %effective_clip_path130, align 8, !tbaa !32
  %color131 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx132 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color131, i32 0, i64 0
  %ccolor133 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx132, i32 0, i32 0
  %106 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor133, align 8, !tbaa !125
  %107 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color134 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %107, i32 0, i32 69
  %arrayidx135 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color134, i32 0, i64 0
  %ccolor136 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx135, i32 0, i32 1
  store %struct.gs_client_color_s* %106, %struct.gs_client_color_s** %ccolor136, align 8, !tbaa !35
  %color137 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx138 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color137, i32 0, i64 0
  %dev_color139 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx138, i32 0, i32 1
  %108 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color139, align 8, !tbaa !127
  %109 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color140 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %109, i32 0, i32 69
  %arrayidx141 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color140, i32 0, i64 0
  %dev_color142 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx141, i32 0, i32 2
  store %struct.gx_device_color_s* %108, %struct.gx_device_color_s** %dev_color142, align 8, !tbaa !36
  %color143 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx144 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color143, i32 0, i64 1
  %ccolor145 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx144, i32 0, i32 0
  %110 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor145, align 8, !tbaa !125
  %111 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color146 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %111, i32 0, i32 69
  %arrayidx147 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color146, i32 0, i64 1
  %ccolor148 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx147, i32 0, i32 1
  store %struct.gs_client_color_s* %110, %struct.gs_client_color_s** %ccolor148, align 8, !tbaa !35
  %color149 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx150 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color149, i32 0, i64 1
  %dev_color151 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx150, i32 0, i32 1
  %112 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color151, align 8, !tbaa !127
  %113 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color152 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %113, i32 0, i32 69
  %arrayidx153 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color152, i32 0, i64 1
  %dev_color154 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx153, i32 0, i32 2
  store %struct.gx_device_color_s* %112, %struct.gx_device_color_s** %dev_color154, align 8, !tbaa !36
  br label %if.end.155

if.end.155:                                       ; preds = %if.else, %if.then.82
  %114 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  call void @gs_swapcolors_quick(%struct.gs_state_s* %114) #3
  %115 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  call void @cs_adjust_counts_icc(%struct.gs_state_s* %115, i32 1) #3
  %116 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  call void @gs_swapcolors_quick(%struct.gs_state_s* %116) #3
  %117 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  call void @cs_adjust_counts_icc(%struct.gs_state_s* %117, i32 1) #3
  %118 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  store %struct.gs_state_s* %118, %struct.gs_state_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.191

fail:                                             ; preds = %cleanup.43, %cleanup
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %119, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %120 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %121 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %122 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %line_params156 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %122, i32 0, i32 3
  %dash157 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params156, i32 0, i32 11
  %pattern158 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash157, i32 0, i32 0
  %123 = load float*, float** %pattern158, align 8, !tbaa !120
  %124 = bitcast float* %123 to i8*
  %125 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %120(%struct.gs_memory_s* %121, i8* %124, i8* %125) #3
  %path159 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 0
  %126 = load %struct.gx_path_s*, %struct.gx_path_s** %path159, align 8, !tbaa !121
  %127 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %path160 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %127, i32 0, i32 61
  store %struct.gx_path_s* %126, %struct.gx_path_s** %path160, align 8, !tbaa !28
  %clip_path161 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 1
  %128 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path161, align 8, !tbaa !123
  %129 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %clip_path162 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %129, i32 0, i32 62
  store %struct.gx_clip_path_s* %128, %struct.gx_clip_path_s** %clip_path162, align 8, !tbaa !29
  %effective_clip_path163 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 2
  %130 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path163, align 8, !tbaa !124
  %131 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %effective_clip_path164 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %131, i32 0, i32 67
  store %struct.gx_clip_path_s* %130, %struct.gx_clip_path_s** %effective_clip_path164, align 8, !tbaa !32
  %color165 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx166 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color165, i32 0, i64 0
  %ccolor167 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx166, i32 0, i32 0
  %132 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor167, align 8, !tbaa !125
  %133 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color168 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %133, i32 0, i32 69
  %arrayidx169 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color168, i32 0, i64 0
  %ccolor170 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx169, i32 0, i32 1
  store %struct.gs_client_color_s* %132, %struct.gs_client_color_s** %ccolor170, align 8, !tbaa !35
  %color171 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx172 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color171, i32 0, i64 0
  %dev_color173 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx172, i32 0, i32 1
  %134 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color173, align 8, !tbaa !127
  %135 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color174 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %135, i32 0, i32 69
  %arrayidx175 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color174, i32 0, i64 0
  %dev_color176 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx175, i32 0, i32 2
  store %struct.gx_device_color_s* %134, %struct.gx_device_color_s** %dev_color176, align 8, !tbaa !36
  %color177 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx178 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color177, i32 0, i64 1
  %ccolor179 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx178, i32 0, i32 0
  %136 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor179, align 8, !tbaa !125
  %137 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color180 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %137, i32 0, i32 69
  %arrayidx181 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color180, i32 0, i64 1
  %ccolor182 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx181, i32 0, i32 1
  store %struct.gs_client_color_s* %136, %struct.gs_client_color_s** %ccolor182, align 8, !tbaa !35
  %color183 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx184 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color183, i32 0, i64 1
  %dev_color185 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx184, i32 0, i32 1
  %138 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color185, align 8, !tbaa !127
  %139 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %color186 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %139, i32 0, i32 69
  %arrayidx187 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color186, i32 0, i64 1
  %dev_color188 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx187, i32 0, i32 2
  store %struct.gx_device_color_s* %138, %struct.gx_device_color_s** %dev_color188, align 8, !tbaa !36
  %140 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %141 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %142 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gstate_free_parts(%struct.gs_state_s* %140, %struct.gs_memory_s* %141, i8* %142) #3
  %143 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs189 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %143, i32 0, i32 1
  %free_object190 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs189, i32 0, i32 2
  %144 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object190, align 8, !tbaa !78
  %145 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %146 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %147 = bitcast %struct.gs_state_s* %146 to i8*
  %148 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %144(%struct.gs_memory_s* %145, i8* %147, i8* %148) #3
  store %struct.gs_state_s* null, %struct.gs_state_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.191

cleanup.191:                                      ; preds = %fail, %if.end.155, %cleanup.43, %cleanup, %if.then
  %149 = bitcast %struct.gs_state_parts_s* %parts to i8*
  call void @llvm.lifetime.end(i64 56, i8* %149) #1
  %150 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = load %struct.gs_state_s*, %struct.gs_state_s** %retval
  ret %struct.gs_state_s* %151
}

; Function Attrs: nounwind uwtable
define i32 @gs_gsave_for_save(%struct.gs_state_s* %pgs, %struct.gs_state_s** %psaved) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %psaved.addr = alloca %struct.gs_state_s**, align 8
  %code = alloca i32, align 4
  %old_cpath = alloca %struct.gx_clip_path_s*, align 8
  %new_cpath = alloca %struct.gx_clip_path_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_state_s** %psaved, %struct.gs_state_s*** %psaved.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gx_clip_path_s** %old_cpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 64
  %3 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip, align 8, !tbaa !31
  store %struct.gx_clip_path_s* %3, %struct.gx_clip_path_s** %old_cpath, align 8, !tbaa !1
  %4 = bitcast %struct.gx_clip_path_s** %new_cpath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %old_cpath, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_clip_path_s* %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %old_cpath, align 8, !tbaa !1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !74
  %call = call %struct.gx_clip_path_s* @gx_cpath_alloc_shared(%struct.gx_clip_path_s* %6, %struct.gs_memory_s* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0)) #3
  store %struct.gx_clip_path_s* %call, %struct.gx_clip_path_s** %new_cpath, align 8, !tbaa !1
  %9 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %new_cpath, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_clip_path_s* %9, null
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.else:                                          ; preds = %entry
  store %struct.gx_clip_path_s* null, %struct.gx_clip_path_s** %new_cpath, align 8, !tbaa !1
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.end
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call3 = call i32 @gs_gsave(%struct.gs_state_s* %10) #3
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %11, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  br label %fail

if.end.6:                                         ; preds = %if.end.2
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 67
  %13 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path, align 8, !tbaa !32
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 64
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip7, align 8, !tbaa !31
  %cmp8 = icmp eq %struct.gx_clip_path_s* %13, %15
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %16 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %new_cpath, align 8, !tbaa !1
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_clip_path10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 67
  store %struct.gx_clip_path_s* %16, %struct.gx_clip_path_s** %effective_clip_path10, align 8, !tbaa !32
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.6
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %new_cpath, align 8, !tbaa !1
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 64
  store %struct.gx_clip_path_s* %18, %struct.gx_clip_path_s** %view_clip12, align 8, !tbaa !31
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 56
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !9
  %22 = load %struct.gs_state_s**, %struct.gs_state_s*** %psaved.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %21, %struct.gs_state_s** %22, align 8, !tbaa !1
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %saved13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %23, i32 0, i32 56
  store %struct.gs_state_s* null, %struct.gs_state_s** %saved13, align 8, !tbaa !9
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

fail:                                             ; preds = %if.then.5
  %25 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %new_cpath, align 8, !tbaa !1
  %tobool14 = icmp ne %struct.gx_clip_path_s* %25, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %fail
  %26 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %new_cpath, align 8, !tbaa !1
  call void @gx_cpath_free(%struct.gx_clip_path_s* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0)) #3
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %fail
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.end.11, %if.then.1
  %28 = bitcast %struct.gx_clip_path_s** %new_cpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast %struct.gx_clip_path_s** %old_cpath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare void @gx_cpath_free(%struct.gx_clip_path_s*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_grestore_only(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %saved = alloca %struct.gs_state_s*, align 8
  %pdata = alloca i8*, align 8
  %sdata = alloca i8*, align 8
  %prior_overprint = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %saved1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 56
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %saved1, align 8, !tbaa !9
  store %struct.gs_state_s* %2, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %3 = bitcast i8** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 2
  %5 = load i8*, i8** %client_data, align 8, !tbaa !100
  store i8* %5, i8** %pdata, align 8, !tbaa !1
  %6 = bitcast i8** %sdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %prior_overprint to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 21
  %9 = load i32, i32* %overprint, align 4, !tbaa !83
  store i32 %9, i32* %prior_overprint, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_state_s* %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %client_data2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 2
  %12 = load i8*, i8** %client_data2, align 8, !tbaa !100
  store i8* %12, i8** %sdata, align 8, !tbaa !1
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %pattern_cache = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 51
  %14 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !132
  %cmp = icmp eq %struct.gx_pattern_cache_s* %14, null
  br i1 %cmp, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %pattern_cache4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 51
  %16 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache4, align 8, !tbaa !132
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %pattern_cache5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 51
  store %struct.gx_pattern_cache_s* %16, %struct.gx_pattern_cache_s** %pattern_cache5, align 8, !tbaa !132
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %18 = load i8*, i8** %sdata, align 8, !tbaa !1
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %client_data7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 2
  store i8* %18, i8** %client_data7, align 8, !tbaa !100
  %20 = load i8*, i8** %pdata, align 8, !tbaa !1
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %client_data8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 2
  store i8* %20, i8** %client_data8, align 8, !tbaa !100
  %22 = load i8*, i8** %pdata, align 8, !tbaa !1
  %cmp9 = icmp ne i8* %22, null
  br i1 %cmp9, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end.6
  %23 = load i8*, i8** %sdata, align 8, !tbaa !1
  %cmp10 = icmp ne i8* %23, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %25 = load i8*, i8** %pdata, align 8, !tbaa !1
  %26 = load i8*, i8** %sdata, align 8, !tbaa !1
  %call = call i32 @gstate_copy_client_data(%struct.gs_state_s* %24, i8* %25, i8* %26, i32 1) #3
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %land.lhs.true, %if.end.6
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @gstate_free_contents(%struct.gs_state_s* %27) #3
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %30 = bitcast %struct.gs_state_s* %28 to i8*
  %31 = bitcast %struct.gs_state_s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 1920, i32 8, i1 false), !tbaa.struct !128
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %show_gstate = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 76
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate, align 8, !tbaa !39
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.gs_state_s* %33, %34
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %show_gstate15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 76
  store %struct.gs_state_s* %35, %struct.gs_state_s** %show_gstate15, align 8, !tbaa !39
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 1
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !74
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %39 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %40, i32 0, i32 1
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !74
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %43 = bitcast %struct.gs_state_s* %42 to i8*
  call void %39(%struct.gs_memory_s* %41, i8* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0)) #3
  %44 = load i32, i32* %prior_overprint, align 4, !tbaa !5
  %tobool18 = icmp ne i32 %44, 0
  br i1 %tobool18, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %45, i32 0, i32 21
  %46 = load i32, i32* %overprint19, align 4, !tbaa !83
  %tobool20 = icmp ne i32 %46, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.16
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call22 = call i32 @gs_do_set_overprint(%struct.gs_state_s* %47) #3
  store i32 %call22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.21, %if.then
  %48 = bitcast i32* %prior_overprint to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i8** %sdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i8** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @gstate_copy_client_data(%struct.gs_state_s* %pgs, i8* %dto, i8* %dfrom, i32 %reason) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dto.addr = alloca i8*, align 8
  %dfrom.addr = alloca i8*, align 8
  %reason.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i8* %dto, i8** %dto.addr, align 8, !tbaa !1
  store i8* %dfrom, i8** %dfrom.addr, align 8, !tbaa !1
  store i32 %reason, i32* %reason.addr, align 4, !tbaa !47
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %client_procs = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 80
  %copy_for = getelementptr inbounds %struct.gs_state_client_procs_s, %struct.gs_state_client_procs_s* %client_procs, i32 0, i32 3
  %1 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %copy_for, align 8, !tbaa !133
  %cmp = icmp ne i32 (i8*, i8*, i32)* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %client_procs1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 80
  %copy_for2 = getelementptr inbounds %struct.gs_state_client_procs_s, %struct.gs_state_client_procs_s* %client_procs1, i32 0, i32 3
  %3 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %copy_for2, align 8, !tbaa !133
  %4 = load i8*, i8** %dto.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %dfrom.addr, align 8, !tbaa !1
  %6 = load i32, i32* %reason.addr, align 4, !tbaa !47
  %call = call i32 %3(i8* %4, i8* %5, i32 %6) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %client_procs3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 80
  %copy = getelementptr inbounds %struct.gs_state_client_procs_s, %struct.gs_state_client_procs_s* %client_procs3, i32 0, i32 1
  %8 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %copy, align 8, !tbaa !134
  %9 = load i8*, i8** %dto.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %dfrom.addr, align 8, !tbaa !1
  %call4 = call i32 %8(i8* %9, i8* %10) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call4, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gs_do_set_overprint(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %pcc = alloca %struct.gs_client_color_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx, i32 0, i32 0
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !33
  store %struct.gs_color_space_s* %2, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %3 = bitcast %struct.gs_client_color_s** %pcc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 69
  %arrayidx2 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color1, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx2, i32 0, i32 1
  %5 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !35
  store %struct.gs_client_color_s* %5, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 0
  %8 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !135
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %8, i32 0, i32 4
  %9 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !137
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call = call i32 %9(%struct.gs_color_space_s* %10) #3
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %11, i32 0, i32 0
  %12 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !139
  %cmp3 = icmp ne %struct.gs_pattern_instance_s* %12, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %pattern4 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %13, i32 0, i32 0
  %14 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern4, align 8, !tbaa !139
  %type5 = getelementptr inbounds %struct.gs_pattern_instance_s, %struct.gs_pattern_instance_s* %14, i32 0, i32 1
  %15 = load %struct.gs_pattern_type_s*, %struct.gs_pattern_type_s** %type5, align 8, !tbaa !142
  %procs = getelementptr inbounds %struct.gs_pattern_type_s, %struct.gs_pattern_type_s* %15, i32 0, i32 1
  %set_color = getelementptr inbounds %struct.pp_, %struct.pp_* %procs, i32 0, i32 4
  %16 = load i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)** %set_color, align 8, !tbaa !144
  %17 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call6 = call i32 %16(%struct.gs_client_color_s* %17, %struct.gs_state_s* %18) #3
  store i32 %call6, i32* %code, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type7 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 0
  %20 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type7, align 8, !tbaa !135
  %set_overprint = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %20, i32 0, i32 12
  %21 = load i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)** %set_overprint, align 8, !tbaa !147
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call8 = call i32 %21(%struct.gs_color_space_s* %22, %struct.gs_state_s* %23) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.gs_client_color_s** %pcc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @gs_grestore(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 56
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !9
  %tobool = icmp ne %struct.gs_state_s* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_gsave(%struct.gs_state_s* %3) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_grestore_only(%struct.gs_state_s* %4) #3
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %saved4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 56
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %saved4, align 8, !tbaa !9
  %tobool5 = icmp ne %struct.gs_state_s* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.3
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call8 = call i32 @gs_gsave(%struct.gs_state_s* %9) #3
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gs_grestoreall_for_restore(%struct.gs_state_s* %pgs, %struct.gs_state_s* %saved) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %saved.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %saved, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %saved1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 56
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %saved1, align 8, !tbaa !9
  %saved2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 56
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %saved2, align 8, !tbaa !9
  %tobool = icmp ne %struct.gs_state_s* %3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_grestore(%struct.gs_state_s* %4) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %pattern_cache = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 51
  %8 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !132
  %tobool3 = icmp ne %struct.gx_pattern_cache_s* %8, null
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %while.end
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %pattern_cache5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 51
  %10 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache5, align 8, !tbaa !132
  %free_all = getelementptr inbounds %struct.gx_pattern_cache_s, %struct.gx_pattern_cache_s* %10, i32 0, i32 7
  %11 = load void (%struct.gx_pattern_cache_s*)*, void (%struct.gx_pattern_cache_s*)** %free_all, align 8, !tbaa !148
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %pattern_cache6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 51
  %13 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache6, align 8, !tbaa !132
  call void %11(%struct.gx_pattern_cache_s* %13) #3
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %while.end
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %saved.addr, align 8, !tbaa !1
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %saved8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 56
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %saved8, align 8, !tbaa !9
  %saved9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 56
  store %struct.gs_state_s* %14, %struct.gs_state_s** %saved9, align 8, !tbaa !9
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call10 = call i32 @gs_grestore(%struct.gs_state_s* %17) #3
  store i32 %call10, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %18, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.7
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 64
  %21 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip, align 8, !tbaa !31
  %tobool14 = icmp ne %struct.gx_clip_path_s* %21, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 64
  %23 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip16, align 8, !tbaa !31
  call void @gx_cpath_free(%struct.gx_clip_path_s* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0)) #3
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 64
  store %struct.gx_clip_path_s* null, %struct.gx_clip_path_s** %view_clip17, align 8, !tbaa !31
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call19 = call i32 @gs_grestore(%struct.gs_state_s* %25) #3
  store i32 %call19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.12, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @gs_grestoreall(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 56
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !9
  %tobool = icmp ne %struct.gs_state_s* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_gsave(%struct.gs_state_s* %2) #3
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %saved1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 56
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %saved1, align 8, !tbaa !9
  %saved2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 56
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %saved2, align 8, !tbaa !9
  %tobool3 = icmp ne %struct.gs_state_s* %5, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call4 = call i32 @gs_grestore(%struct.gs_state_s* %7) #3
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.body
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %while.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call7 = call i32 @gs_grestore(%struct.gs_state_s* %11) #3
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %cleanup, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define %struct.gs_state_s* @gs_gstate(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !74
  %call = call %struct.gs_state_s* @gs_state_copy(%struct.gs_state_s* %0, %struct.gs_memory_s* %2) #3
  ret %struct.gs_state_s* %call
}

; Function Attrs: nounwind uwtable
define %struct.gs_state_s* @gs_state_copy(%struct.gs_state_s* %pgs, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca %struct.gs_state_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pnew = alloca %struct.gs_state_s*, align 8
  %view_clip = alloca %struct.gx_clip_path_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %pnew to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gx_clip_path_s** %view_clip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 64
  %3 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip1, align 8, !tbaa !31
  store %struct.gx_clip_path_s* %3, %struct.gx_clip_path_s** %view_clip, align 8, !tbaa !1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 64
  store %struct.gx_clip_path_s* null, %struct.gx_clip_path_s** %view_clip2, align 8, !tbaa !31
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_state_s* @gstate_clone(%struct.gs_state_s* %5, %struct.gs_memory_s* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 2) #3
  store %struct.gs_state_s* %call, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_state_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_state_s* null, %struct.gs_state_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %clip_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 63
  %9 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %clip_stack, align 8, !tbaa !30
  call void @clip_stack_rc_adjust(%struct.gx_clip_stack_s* %9, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0)) #3
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %dfilter_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 79
  %11 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack, align 8, !tbaa !41
  %tobool = icmp ne %struct.gs_device_filter_stack_s* %11, null
  br i1 %tobool, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %do.body
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %dfilter_stack5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 79
  %13 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack5, align 8, !tbaa !41
  %rc = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %13, i32 0, i32 3
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %14 = load i64, i64* %ref_count, align 8, !tbaa !115
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !115
  br label %do.body.6

do.body.6:                                        ; preds = %do.body.4
  br label %do.cond

do.cond:                                          ; preds = %do.body.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.7

do.cond.7:                                        ; preds = %do.end
  br label %do.end.8

do.end.8:                                         ; preds = %do.cond.7
  br label %if.end.9

if.end.9:                                         ; preds = %do.end.8, %do.body
  br label %do.cond.10

do.cond.10:                                       ; preds = %if.end.9
  br label %do.end.11

do.end.11:                                        ; preds = %do.cond.10
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip, align 8, !tbaa !1
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 64
  store %struct.gx_clip_path_s* %15, %struct.gx_clip_path_s** %view_clip12, align 8, !tbaa !31
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 56
  store %struct.gs_state_s* null, %struct.gs_state_s** %saved, align 8, !tbaa !9
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %show_gstate = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 76
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate, align 8, !tbaa !39
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.gs_state_s* %19, %20
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.11
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %do.end.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_state_s* [ %21, %cond.true ], [ null, %cond.false ]
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  %show_gstate14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 76
  store %struct.gs_state_s* %cond, %struct.gs_state_s** %show_gstate14, align 8, !tbaa !39
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pnew, align 8, !tbaa !1
  store %struct.gs_state_s* %23, %struct.gs_state_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %24 = bitcast %struct.gx_clip_path_s** %view_clip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.gs_state_s** %pnew to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %retval
  ret %struct.gs_state_s* %26
}

; Function Attrs: nounwind uwtable
define internal void @clip_stack_rc_adjust(%struct.gx_clip_stack_s* %cs, i32 %delta, i8* %cname) #0 {
entry:
  %cs.addr = alloca %struct.gx_clip_stack_s*, align 8
  %delta.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %p = alloca %struct.gx_clip_stack_s*, align 8
  %q = alloca %struct.gx_clip_stack_s*, align 8
  store %struct.gx_clip_stack_s* %cs, %struct.gx_clip_stack_s** %cs.addr, align 8, !tbaa !1
  store i32 %delta, i32* %delta.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_clip_stack_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %cs.addr, align 8, !tbaa !1
  store %struct.gx_clip_stack_s* %1, %struct.gx_clip_stack_s** %p, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %do.end.23, %entry
  %2 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %p, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_clip_stack_s* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = bitcast %struct.gx_clip_stack_s** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %p, align 8, !tbaa !1
  store %struct.gx_clip_stack_s* %4, %struct.gx_clip_stack_s** %q, align 8, !tbaa !1
  %5 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %p, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_clip_stack_s, %struct.gx_clip_stack_s* %5, i32 0, i32 2
  %6 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %next, align 8, !tbaa !150
  store %struct.gx_clip_stack_s* %6, %struct.gx_clip_stack_s** %p, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %while.body
  %7 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %q, align 8, !tbaa !1
  %tobool1 = icmp ne %struct.gx_clip_stack_s* %7, null
  br i1 %tobool1, label %if.then, label %if.end.21

if.then:                                          ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  br label %do.body.3

do.body.3:                                        ; preds = %do.body.2
  br label %do.cond

do.cond:                                          ; preds = %do.body.3
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load i32, i32* %delta.addr, align 4, !tbaa !5
  %conv = sext i32 %8 to i64
  %9 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %q, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_clip_stack_s, %struct.gx_clip_stack_s* %9, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %10 = load i64, i64* %ref_count, align 8, !tbaa !152
  %add = add nsw i64 %10, %conv
  store i64 %add, i64* %ref_count, align 8, !tbaa !152
  br label %do.cond.4

do.cond.4:                                        ; preds = %do.end
  br label %do.end.5

do.end.5:                                         ; preds = %do.cond.4
  %11 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %q, align 8, !tbaa !1
  %rc6 = getelementptr inbounds %struct.gx_clip_stack_s, %struct.gx_clip_stack_s* %11, i32 0, i32 0
  %ref_count7 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc6, i32 0, i32 0
  %12 = load i64, i64* %ref_count7, align 8, !tbaa !152
  %tobool8 = icmp ne i64 %12, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %do.end.5
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.body.10
  br label %do.cond.12

do.cond.12:                                       ; preds = %do.body.11
  br label %do.end.13

do.end.13:                                        ; preds = %do.cond.12
  %13 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %q, align 8, !tbaa !1
  %rc14 = getelementptr inbounds %struct.gx_clip_stack_s, %struct.gx_clip_stack_s* %13, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc14, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !153
  %15 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %q, align 8, !tbaa !1
  %rc15 = getelementptr inbounds %struct.gx_clip_stack_s, %struct.gx_clip_stack_s* %15, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc15, i32 0, i32 1
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !154
  %17 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %q, align 8, !tbaa !1
  %18 = bitcast %struct.gx_clip_stack_s* %17 to i8*
  %19 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %14(%struct.gs_memory_s* %16, i8* %18, i8* %19) #3
  br label %do.cond.16

do.cond.16:                                       ; preds = %do.end.13
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  store %struct.gx_clip_stack_s* null, %struct.gx_clip_stack_s** %q, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %do.end.5
  br label %do.body.18

do.body.18:                                       ; preds = %if.else
  br label %do.cond.19

do.cond.19:                                       ; preds = %do.body.18
  br label %do.end.20

do.end.20:                                        ; preds = %do.cond.19
  br label %if.end

if.end:                                           ; preds = %do.end.20, %do.end.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %do.body
  br label %do.cond.22

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  %20 = bitcast %struct.gx_clip_stack_s** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = bitcast %struct.gx_clip_stack_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_copygstate(%struct.gs_state_s* %pto, %struct.gs_state_s* %pfrom) #0 {
entry:
  %pto.addr = alloca %struct.gs_state_s*, align 8
  %pfrom.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pto, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pfrom, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %call = call i32 @gstate_copy(%struct.gs_state_s* %0, %struct.gs_state_s* %1, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0)) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gstate_copy(%struct.gs_state_s* %pto, %struct.gs_state_s* %pfrom, i32 %reason, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %pto.addr = alloca %struct.gs_state_s*, align 8
  %pfrom.addr = alloca %struct.gs_state_s*, align 8
  %reason.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %parts = alloca %struct.gs_state_parts_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pcache = alloca %struct.gx_pattern_cache_s*, align 8
  %pdata = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %saved = alloca %struct.gs_state_s*, align 8
  %pattern204 = alloca float*, align 8
  store %struct.gs_state_s* %pto, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pfrom, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  store i32 %reason, i32* %reason.addr, align 4, !tbaa !47
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_parts_s* %parts to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 61
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !28
  %path1 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 0
  store %struct.gx_path_s* %2, %struct.gx_path_s** %path1, align 8, !tbaa !121
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 62
  %4 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !29
  %clip_path2 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 1
  store %struct.gx_clip_path_s* %4, %struct.gx_clip_path_s** %clip_path2, align 8, !tbaa !123
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %effective_clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 67
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path, align 8, !tbaa !32
  %effective_clip_path3 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 2
  store %struct.gx_clip_path_s* %6, %struct.gx_clip_path_s** %effective_clip_path3, align 8, !tbaa !124
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx, i32 0, i32 1
  %8 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !35
  %color4 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color4, i32 0, i64 0
  %ccolor6 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx5, i32 0, i32 0
  store %struct.gs_client_color_s* %8, %struct.gs_client_color_s** %ccolor6, align 8, !tbaa !125
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %color7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 69
  %arrayidx8 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color7, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx8, i32 0, i32 2
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !36
  %color9 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color9, i32 0, i64 0
  %dev_color11 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx10, i32 0, i32 1
  store %struct.gx_device_color_s* %10, %struct.gx_device_color_s** %dev_color11, align 8, !tbaa !127
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %color12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 69
  %arrayidx13 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color12, i32 0, i64 1
  %ccolor14 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx13, i32 0, i32 1
  %12 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor14, align 8, !tbaa !35
  %color15 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx16 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color15, i32 0, i64 1
  %ccolor17 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx16, i32 0, i32 0
  store %struct.gs_client_color_s* %12, %struct.gs_client_color_s** %ccolor17, align 8, !tbaa !125
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %color18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 69
  %arrayidx19 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color18, i32 0, i64 1
  %dev_color20 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx19, i32 0, i32 2
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color20, align 8, !tbaa !36
  %color21 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx22 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color21, i32 0, i64 1
  %dev_color23 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx22, i32 0, i32 1
  store %struct.gx_device_color_s* %14, %struct.gx_device_color_s** %dev_color23, align 8, !tbaa !127
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 3
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 11
  %pattern = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 0
  %16 = load float*, float** %pattern, align 8, !tbaa !120
  %tobool = icmp ne float* %16, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %line_params24 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 3
  %dash25 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params24, i32 0, i32 11
  %pattern26 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash25, i32 0, i32 0
  %18 = load float*, float** %pattern26, align 8, !tbaa !120
  %tobool27 = icmp ne float* %18, null
  br i1 %tobool27, label %if.then, label %if.end.29

if.then:                                          ; preds = %lor.lhs.false, %entry
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %call = call i32 @gstate_copy_dash(%struct.gs_state_s* %20, %struct.gs_state_s* %21) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %22, 0
  br i1 %cmp, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.then
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.28
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.261 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.29

if.end.29:                                        ; preds = %cleanup.cont, %lor.lhs.false
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  call void @cs_adjust_counts_icc(%struct.gs_state_s* %25, i32 -1) #3
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  call void @gs_swapcolors_quick(%struct.gs_state_s* %26) #3
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  call void @cs_adjust_counts_icc(%struct.gs_state_s* %27, i32 -1) #3
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  call void @gs_swapcolors_quick(%struct.gs_state_s* %28) #3
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %path30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i32 0, i32 61
  %30 = load %struct.gx_path_s*, %struct.gx_path_s** %path30, align 8, !tbaa !28
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %path31 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 61
  %32 = load %struct.gx_path_s*, %struct.gx_path_s** %path31, align 8, !tbaa !28
  %call32 = call i32 @gx_path_assign_preserve(%struct.gx_path_s* %30, %struct.gx_path_s* %32) #3
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %clip_path33 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 62
  %34 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path33, align 8, !tbaa !29
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %clip_path34 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 62
  %36 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path34, align 8, !tbaa !29
  %call35 = call i32 @gx_cpath_assign_preserve(%struct.gx_clip_path_s* %34, %struct.gx_clip_path_s* %36) #3
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %effective_clip_shared = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 68
  %38 = load i32, i32* %effective_clip_shared, align 4, !tbaa !73
  %tobool36 = icmp ne i32 %38, 0
  br i1 %tobool36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.end.29
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %effective_clip_path38 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %39, i32 0, i32 67
  %40 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path38, align 8, !tbaa !32
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %view_clip = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %41, i32 0, i32 64
  %42 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip, align 8, !tbaa !31
  %cmp39 = icmp eq %struct.gx_clip_path_s* %40, %42
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.37
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %view_clip40 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %43, i32 0, i32 64
  %44 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip40, align 8, !tbaa !31
  br label %cond.end

cond.false:                                       ; preds = %if.then.37
  %clip_path41 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 1
  %45 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path41, align 8, !tbaa !123
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_clip_path_s* [ %44, %cond.true ], [ %45, %cond.false ]
  %effective_clip_path42 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 2
  store %struct.gx_clip_path_s* %cond, %struct.gx_clip_path_s** %effective_clip_path42, align 8, !tbaa !124
  br label %if.end.46

if.else:                                          ; preds = %if.end.29
  %46 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %effective_clip_path43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %46, i32 0, i32 67
  %47 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path43, align 8, !tbaa !32
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %effective_clip_path44 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %48, i32 0, i32 67
  %49 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path44, align 8, !tbaa !32
  %call45 = call i32 @gx_cpath_assign_preserve(%struct.gx_clip_path_s* %47, %struct.gx_clip_path_s* %49) #3
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %cond.end
  %color47 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx48 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color47, i32 0, i64 0
  %ccolor49 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx48, i32 0, i32 0
  %50 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor49, align 8, !tbaa !125
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %color50 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %51, i32 0, i32 69
  %arrayidx51 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color50, i32 0, i64 0
  %ccolor52 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx51, i32 0, i32 1
  %52 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor52, align 8, !tbaa !35
  %53 = bitcast %struct.gs_client_color_s* %50 to i8*
  %54 = bitcast %struct.gs_client_color_s* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 264, i32 8, i1 false), !tbaa.struct !130
  %color53 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx54 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color53, i32 0, i64 0
  %dev_color55 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx54, i32 0, i32 1
  %55 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color55, align 8, !tbaa !127
  %56 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %color56 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %56, i32 0, i32 69
  %arrayidx57 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color56, i32 0, i64 0
  %dev_color58 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx57, i32 0, i32 2
  %57 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color58, align 8, !tbaa !36
  %58 = bitcast %struct.gx_device_color_s* %55 to i8*
  %59 = bitcast %struct.gx_device_color_s* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 656, i32 8, i1 false), !tbaa.struct !131
  %color59 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx60 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color59, i32 0, i64 1
  %ccolor61 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx60, i32 0, i32 0
  %60 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor61, align 8, !tbaa !125
  %61 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %color62 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %61, i32 0, i32 69
  %arrayidx63 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color62, i32 0, i64 1
  %ccolor64 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx63, i32 0, i32 1
  %62 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor64, align 8, !tbaa !35
  %63 = bitcast %struct.gs_client_color_s* %60 to i8*
  %64 = bitcast %struct.gs_client_color_s* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 264, i32 8, i1 false), !tbaa.struct !130
  %color65 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx66 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color65, i32 0, i64 1
  %dev_color67 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx66, i32 0, i32 1
  %65 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color67, align 8, !tbaa !127
  %66 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %color68 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %66, i32 0, i32 69
  %arrayidx69 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color68, i32 0, i64 1
  %dev_color70 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx69, i32 0, i32 2
  %67 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color70, align 8, !tbaa !36
  %68 = bitcast %struct.gx_device_color_s* %65 to i8*
  %69 = bitcast %struct.gx_device_color_s* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 656, i32 8, i1 false), !tbaa.struct !131
  br label %do.body

do.body:                                          ; preds = %if.end.46
  %70 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %70, i32 0, i32 78
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !40
  %72 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %device71 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %72, i32 0, i32 78
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %device71, align 8, !tbaa !40
  %cmp72 = icmp ne %struct.gx_device_s* %71, %73
  br i1 %cmp72, label %if.then.73, label %if.end.126

if.then.73:                                       ; preds = %do.body
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.73
  %74 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %device75 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %74, i32 0, i32 78
  %75 = load %struct.gx_device_s*, %struct.gx_device_s** %device75, align 8, !tbaa !40
  %tobool76 = icmp ne %struct.gx_device_s* %75, null
  br i1 %tobool76, label %if.then.77, label %if.end.83

if.then.77:                                       ; preds = %do.body.74
  br label %do.body.78

do.body.78:                                       ; preds = %if.then.77
  %76 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %device79 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %76, i32 0, i32 78
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %device79, align 8, !tbaa !40
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %77, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %78 = load i64, i64* %ref_count, align 8, !tbaa !103
  %inc = add nsw i64 %78, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !103
  br label %do.body.80

do.body.80:                                       ; preds = %do.body.78
  br label %do.cond

do.cond:                                          ; preds = %do.body.80
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.81

do.cond.81:                                       ; preds = %do.end
  br label %do.end.82

do.end.82:                                        ; preds = %do.cond.81
  br label %if.end.83

if.end.83:                                        ; preds = %do.end.82, %do.body.74
  br label %do.cond.84

do.cond.84:                                       ; preds = %if.end.83
  br label %do.end.85

do.end.85:                                        ; preds = %do.cond.84
  br label %do.body.86

do.body.86:                                       ; preds = %do.end.85
  %79 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %device87 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %79, i32 0, i32 78
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %device87, align 8, !tbaa !40
  %tobool88 = icmp ne %struct.gx_device_s* %80, null
  br i1 %tobool88, label %if.then.89, label %if.end.123

if.then.89:                                       ; preds = %do.body.86
  br label %do.body.90

do.body.90:                                       ; preds = %if.then.89
  br label %do.body.91

do.body.91:                                       ; preds = %do.body.90
  br label %do.cond.92

do.cond.92:                                       ; preds = %do.body.91
  br label %do.end.93

do.end.93:                                        ; preds = %do.cond.92
  %81 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %device94 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %81, i32 0, i32 78
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %device94, align 8, !tbaa !40
  %rc95 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %82, i32 0, i32 7
  %ref_count96 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc95, i32 0, i32 0
  %83 = load i64, i64* %ref_count96, align 8, !tbaa !103
  %add = add nsw i64 %83, -1
  store i64 %add, i64* %ref_count96, align 8, !tbaa !103
  br label %do.cond.97

do.cond.97:                                       ; preds = %do.end.93
  br label %do.end.98

do.end.98:                                        ; preds = %do.cond.97
  %84 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %device99 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %84, i32 0, i32 78
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %device99, align 8, !tbaa !40
  %rc100 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %85, i32 0, i32 7
  %ref_count101 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc100, i32 0, i32 0
  %86 = load i64, i64* %ref_count101, align 8, !tbaa !103
  %tobool102 = icmp ne i64 %86, 0
  br i1 %tobool102, label %if.else.118, label %if.then.103

if.then.103:                                      ; preds = %do.end.98
  br label %do.body.104

do.body.104:                                      ; preds = %if.then.103
  br label %do.body.105

do.body.105:                                      ; preds = %do.body.104
  br label %do.cond.106

do.cond.106:                                      ; preds = %do.body.105
  br label %do.end.107

do.end.107:                                       ; preds = %do.cond.106
  %87 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %device108 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %87, i32 0, i32 78
  %88 = load %struct.gx_device_s*, %struct.gx_device_s** %device108, align 8, !tbaa !40
  %rc109 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %88, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc109, i32 0, i32 2
  %89 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !113
  %90 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %device110 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %90, i32 0, i32 78
  %91 = load %struct.gx_device_s*, %struct.gx_device_s** %device110, align 8, !tbaa !40
  %rc111 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %91, i32 0, i32 7
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc111, i32 0, i32 1
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !114
  %93 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %device112 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %93, i32 0, i32 78
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %device112, align 8, !tbaa !40
  %95 = bitcast %struct.gx_device_s* %94 to i8*
  %96 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %89(%struct.gs_memory_s* %92, i8* %95, i8* %96) #3
  br label %do.cond.113

do.cond.113:                                      ; preds = %do.end.107
  br label %do.end.114

do.end.114:                                       ; preds = %do.cond.113
  br label %do.body.115

do.body.115:                                      ; preds = %do.end.114
  br label %do.cond.116

do.cond.116:                                      ; preds = %do.body.115
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  br label %if.end.122

if.else.118:                                      ; preds = %do.end.98
  br label %do.body.119

do.body.119:                                      ; preds = %if.else.118
  br label %do.cond.120

do.cond.120:                                      ; preds = %do.body.119
  br label %do.end.121

do.end.121:                                       ; preds = %do.cond.120
  br label %if.end.122

if.end.122:                                       ; preds = %do.end.121, %do.end.117
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %do.body.86
  br label %do.cond.124

do.cond.124:                                      ; preds = %if.end.123
  br label %do.end.125

do.end.125:                                       ; preds = %do.cond.124
  br label %if.end.126

if.end.126:                                       ; preds = %do.end.125, %do.body
  br label %do.cond.127

do.cond.127:                                      ; preds = %if.end.126
  br label %do.end.128

do.end.128:                                       ; preds = %do.cond.127
  br label %do.body.129

do.body.129:                                      ; preds = %do.end.128
  %97 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %dfilter_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %97, i32 0, i32 79
  %98 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack, align 8, !tbaa !41
  %99 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %dfilter_stack130 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %99, i32 0, i32 79
  %100 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack130, align 8, !tbaa !41
  %cmp131 = icmp ne %struct.gs_device_filter_stack_s* %98, %100
  br i1 %cmp131, label %if.then.132, label %if.end.193

if.then.132:                                      ; preds = %do.body.129
  br label %do.body.133

do.body.133:                                      ; preds = %if.then.132
  %101 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %dfilter_stack134 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %101, i32 0, i32 79
  %102 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack134, align 8, !tbaa !41
  %tobool135 = icmp ne %struct.gs_device_filter_stack_s* %102, null
  br i1 %tobool135, label %if.then.136, label %if.end.147

if.then.136:                                      ; preds = %do.body.133
  br label %do.body.137

do.body.137:                                      ; preds = %if.then.136
  %103 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %dfilter_stack138 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %103, i32 0, i32 79
  %104 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack138, align 8, !tbaa !41
  %rc139 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %104, i32 0, i32 3
  %ref_count140 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc139, i32 0, i32 0
  %105 = load i64, i64* %ref_count140, align 8, !tbaa !115
  %inc141 = add nsw i64 %105, 1
  store i64 %inc141, i64* %ref_count140, align 8, !tbaa !115
  br label %do.body.142

do.body.142:                                      ; preds = %do.body.137
  br label %do.cond.143

do.cond.143:                                      ; preds = %do.body.142
  br label %do.end.144

do.end.144:                                       ; preds = %do.cond.143
  br label %do.cond.145

do.cond.145:                                      ; preds = %do.end.144
  br label %do.end.146

do.end.146:                                       ; preds = %do.cond.145
  br label %if.end.147

if.end.147:                                       ; preds = %do.end.146, %do.body.133
  br label %do.cond.148

do.cond.148:                                      ; preds = %if.end.147
  br label %do.end.149

do.end.149:                                       ; preds = %do.cond.148
  br label %do.body.150

do.body.150:                                      ; preds = %do.end.149
  %106 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %dfilter_stack151 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %106, i32 0, i32 79
  %107 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack151, align 8, !tbaa !41
  %tobool152 = icmp ne %struct.gs_device_filter_stack_s* %107, null
  br i1 %tobool152, label %if.then.153, label %if.end.190

if.then.153:                                      ; preds = %do.body.150
  br label %do.body.154

do.body.154:                                      ; preds = %if.then.153
  br label %do.body.155

do.body.155:                                      ; preds = %do.body.154
  br label %do.cond.156

do.cond.156:                                      ; preds = %do.body.155
  br label %do.end.157

do.end.157:                                       ; preds = %do.cond.156
  %108 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %dfilter_stack158 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %108, i32 0, i32 79
  %109 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack158, align 8, !tbaa !41
  %rc159 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %109, i32 0, i32 3
  %ref_count160 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc159, i32 0, i32 0
  %110 = load i64, i64* %ref_count160, align 8, !tbaa !115
  %add161 = add nsw i64 %110, -1
  store i64 %add161, i64* %ref_count160, align 8, !tbaa !115
  br label %do.cond.162

do.cond.162:                                      ; preds = %do.end.157
  br label %do.end.163

do.end.163:                                       ; preds = %do.cond.162
  %111 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %dfilter_stack164 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %111, i32 0, i32 79
  %112 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack164, align 8, !tbaa !41
  %rc165 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %112, i32 0, i32 3
  %ref_count166 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc165, i32 0, i32 0
  %113 = load i64, i64* %ref_count166, align 8, !tbaa !115
  %tobool167 = icmp ne i64 %113, 0
  br i1 %tobool167, label %if.else.185, label %if.then.168

if.then.168:                                      ; preds = %do.end.163
  br label %do.body.169

do.body.169:                                      ; preds = %if.then.168
  br label %do.body.170

do.body.170:                                      ; preds = %do.body.169
  br label %do.cond.171

do.cond.171:                                      ; preds = %do.body.170
  br label %do.end.172

do.end.172:                                       ; preds = %do.cond.171
  %114 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %dfilter_stack173 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %114, i32 0, i32 79
  %115 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack173, align 8, !tbaa !41
  %rc174 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %115, i32 0, i32 3
  %free175 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc174, i32 0, i32 2
  %116 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free175, align 8, !tbaa !117
  %117 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %dfilter_stack176 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %117, i32 0, i32 79
  %118 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack176, align 8, !tbaa !41
  %rc177 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %118, i32 0, i32 3
  %memory178 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc177, i32 0, i32 1
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory178, align 8, !tbaa !118
  %120 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %dfilter_stack179 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %120, i32 0, i32 79
  %121 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack179, align 8, !tbaa !41
  %122 = bitcast %struct.gs_device_filter_stack_s* %121 to i8*
  %123 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %116(%struct.gs_memory_s* %119, i8* %122, i8* %123) #3
  br label %do.cond.180

do.cond.180:                                      ; preds = %do.end.172
  br label %do.end.181

do.end.181:                                       ; preds = %do.cond.180
  br label %do.body.182

do.body.182:                                      ; preds = %do.end.181
  br label %do.cond.183

do.cond.183:                                      ; preds = %do.body.182
  br label %do.end.184

do.end.184:                                       ; preds = %do.cond.183
  br label %if.end.189

if.else.185:                                      ; preds = %do.end.163
  br label %do.body.186

do.body.186:                                      ; preds = %if.else.185
  br label %do.cond.187

do.cond.187:                                      ; preds = %do.body.186
  br label %do.end.188

do.end.188:                                       ; preds = %do.cond.187
  br label %if.end.189

if.end.189:                                       ; preds = %do.end.188, %do.end.184
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %do.body.150
  br label %do.cond.191

do.cond.191:                                      ; preds = %if.end.190
  br label %do.end.192

do.end.192:                                       ; preds = %do.cond.191
  br label %if.end.193

if.end.193:                                       ; preds = %do.end.192, %do.body.129
  br label %do.cond.194

do.cond.194:                                      ; preds = %if.end.193
  br label %do.end.195

do.end.195:                                       ; preds = %do.cond.194
  %124 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %clip_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %124, i32 0, i32 63
  %125 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %clip_stack, align 8, !tbaa !30
  %126 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %clip_stack196 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %126, i32 0, i32 63
  %127 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %clip_stack196, align 8, !tbaa !30
  %cmp197 = icmp ne %struct.gx_clip_stack_s* %125, %127
  br i1 %cmp197, label %if.then.198, label %if.end.201

if.then.198:                                      ; preds = %do.end.195
  %128 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %clip_stack199 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %128, i32 0, i32 63
  %129 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %clip_stack199, align 8, !tbaa !30
  %130 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @clip_stack_rc_adjust(%struct.gx_clip_stack_s* %129, i32 1, i8* %130) #3
  %131 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %clip_stack200 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %131, i32 0, i32 63
  %132 = load %struct.gx_clip_stack_s*, %struct.gx_clip_stack_s** %clip_stack200, align 8, !tbaa !30
  %133 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @clip_stack_rc_adjust(%struct.gx_clip_stack_s* %132, i32 -1, i8* %133) #3
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.198, %do.end.195
  %134 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #1
  %135 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %pattern_cache = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %135, i32 0, i32 51
  %136 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache, align 8, !tbaa !132
  store %struct.gx_pattern_cache_s* %136, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %137 = bitcast i8** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %137) #1
  %138 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %138, i32 0, i32 2
  %139 = load i8*, i8** %client_data, align 8, !tbaa !100
  store i8* %139, i8** %pdata, align 8, !tbaa !1
  %140 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %140) #1
  %141 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %memory202 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %141, i32 0, i32 1
  %142 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory202, align 8, !tbaa !74
  store %struct.gs_memory_s* %142, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %143 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.start(i64 8, i8* %143) #1
  %144 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %saved203 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %144, i32 0, i32 56
  %145 = load %struct.gs_state_s*, %struct.gs_state_s** %saved203, align 8, !tbaa !9
  store %struct.gs_state_s* %145, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %146 = bitcast float** %pattern204 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %146) #1
  %147 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %line_params205 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %147, i32 0, i32 3
  %dash206 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params205, i32 0, i32 11
  %pattern207 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash206, i32 0, i32 0
  %148 = load float*, float** %pattern207, align 8, !tbaa !120
  store float* %148, float** %pattern204, align 8, !tbaa !1
  %149 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %150 = bitcast %struct.gs_state_s* %149 to %struct.gs_imager_state_s*
  %151 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %152 = bitcast %struct.gs_state_s* %151 to %struct.gs_imager_state_s*
  call void @gs_imager_state_pre_assign(%struct.gs_imager_state_s* %150, %struct.gs_imager_state_s* %152) #3
  %153 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %154 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %155 = bitcast %struct.gs_state_s* %153 to i8*
  %156 = bitcast %struct.gs_state_s* %154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %155, i8* %156, i64 1920, i32 8, i1 false), !tbaa.struct !128
  %157 = load i8*, i8** %pdata, align 8, !tbaa !1
  %158 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %client_data208 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %158, i32 0, i32 2
  store i8* %157, i8** %client_data208, align 8, !tbaa !100
  %159 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %160 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %memory209 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %160, i32 0, i32 1
  store %struct.gs_memory_s* %159, %struct.gs_memory_s** %memory209, align 8, !tbaa !74
  %161 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %162 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %saved210 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %162, i32 0, i32 56
  store %struct.gs_state_s* %161, %struct.gs_state_s** %saved210, align 8, !tbaa !9
  %163 = load float*, float** %pattern204, align 8, !tbaa !1
  %164 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %line_params211 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %164, i32 0, i32 3
  %dash212 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params211, i32 0, i32 11
  %pattern213 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash212, i32 0, i32 0
  store float* %163, float** %pattern213, align 8, !tbaa !120
  %165 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %pattern_cache214 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %165, i32 0, i32 51
  %166 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pattern_cache214, align 8, !tbaa !132
  %cmp215 = icmp eq %struct.gx_pattern_cache_s* %166, null
  br i1 %cmp215, label %if.then.216, label %if.end.218

if.then.216:                                      ; preds = %if.end.201
  %167 = load %struct.gx_pattern_cache_s*, %struct.gx_pattern_cache_s** %pcache, align 8, !tbaa !1
  %168 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %pattern_cache217 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %168, i32 0, i32 51
  store %struct.gx_pattern_cache_s* %167, %struct.gx_pattern_cache_s** %pattern_cache217, align 8, !tbaa !132
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.216, %if.end.201
  %169 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %client_data219 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %169, i32 0, i32 2
  %170 = load i8*, i8** %client_data219, align 8, !tbaa !100
  %cmp220 = icmp ne i8* %170, null
  br i1 %cmp220, label %if.then.221, label %if.end.224

if.then.221:                                      ; preds = %if.end.218
  %171 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %172 = load i8*, i8** %pdata, align 8, !tbaa !1
  %173 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %client_data222 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %173, i32 0, i32 2
  %174 = load i8*, i8** %client_data222, align 8, !tbaa !100
  %175 = load i32, i32* %reason.addr, align 4, !tbaa !47
  %call223 = call i32 @gstate_copy_client_data(%struct.gs_state_s* %171, i8* %172, i8* %174, i32 %175) #3
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.221, %if.end.218
  %176 = bitcast float** %pattern204 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast i8** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast %struct.gx_pattern_cache_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %path225 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 0
  %181 = load %struct.gx_path_s*, %struct.gx_path_s** %path225, align 8, !tbaa !121
  %182 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %path226 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %182, i32 0, i32 61
  store %struct.gx_path_s* %181, %struct.gx_path_s** %path226, align 8, !tbaa !28
  %clip_path227 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 1
  %183 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path227, align 8, !tbaa !123
  %184 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %clip_path228 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %184, i32 0, i32 62
  store %struct.gx_clip_path_s* %183, %struct.gx_clip_path_s** %clip_path228, align 8, !tbaa !29
  %effective_clip_path229 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 2
  %185 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path229, align 8, !tbaa !124
  %186 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %effective_clip_path230 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %186, i32 0, i32 67
  store %struct.gx_clip_path_s* %185, %struct.gx_clip_path_s** %effective_clip_path230, align 8, !tbaa !32
  %color231 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx232 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color231, i32 0, i64 0
  %ccolor233 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx232, i32 0, i32 0
  %187 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor233, align 8, !tbaa !125
  %188 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %color234 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %188, i32 0, i32 69
  %arrayidx235 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color234, i32 0, i64 0
  %ccolor236 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx235, i32 0, i32 1
  store %struct.gs_client_color_s* %187, %struct.gs_client_color_s** %ccolor236, align 8, !tbaa !35
  %color237 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx238 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color237, i32 0, i64 0
  %dev_color239 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx238, i32 0, i32 1
  %189 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color239, align 8, !tbaa !127
  %190 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %color240 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %190, i32 0, i32 69
  %arrayidx241 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color240, i32 0, i64 0
  %dev_color242 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx241, i32 0, i32 2
  store %struct.gx_device_color_s* %189, %struct.gx_device_color_s** %dev_color242, align 8, !tbaa !36
  %color243 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx244 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color243, i32 0, i64 1
  %ccolor245 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx244, i32 0, i32 0
  %191 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor245, align 8, !tbaa !125
  %192 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %color246 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %192, i32 0, i32 69
  %arrayidx247 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color246, i32 0, i64 1
  %ccolor248 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx247, i32 0, i32 1
  store %struct.gs_client_color_s* %191, %struct.gs_client_color_s** %ccolor248, align 8, !tbaa !35
  %color249 = getelementptr inbounds %struct.gs_state_parts_s, %struct.gs_state_parts_s* %parts, i32 0, i32 3
  %arrayidx250 = getelementptr inbounds [2 x %struct.anon.13], [2 x %struct.anon.13]* %color249, i32 0, i64 1
  %dev_color251 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %arrayidx250, i32 0, i32 1
  %193 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color251, align 8, !tbaa !127
  %194 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %color252 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %194, i32 0, i32 69
  %arrayidx253 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color252, i32 0, i64 1
  %dev_color254 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx253, i32 0, i32 2
  store %struct.gx_device_color_s* %193, %struct.gx_device_color_s** %dev_color254, align 8, !tbaa !36
  %195 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  call void @cs_adjust_counts_icc(%struct.gs_state_s* %195, i32 1) #3
  %196 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  call void @gs_swapcolors_quick(%struct.gs_state_s* %196) #3
  %197 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  call void @cs_adjust_counts_icc(%struct.gs_state_s* %197, i32 1) #3
  %198 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  call void @gs_swapcolors_quick(%struct.gs_state_s* %198) #3
  %199 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %show_gstate = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %199, i32 0, i32 76
  %200 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate, align 8, !tbaa !39
  %201 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %cmp255 = icmp eq %struct.gs_state_s* %200, %201
  br i1 %cmp255, label %cond.true.256, label %cond.false.257

cond.true.256:                                    ; preds = %if.end.224
  %202 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  br label %cond.end.258

cond.false.257:                                   ; preds = %if.end.224
  br label %cond.end.258

cond.end.258:                                     ; preds = %cond.false.257, %cond.true.256
  %cond259 = phi %struct.gs_state_s* [ %202, %cond.true.256 ], [ null, %cond.false.257 ]
  %203 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %show_gstate260 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %203, i32 0, i32 76
  store %struct.gs_state_s* %cond259, %struct.gs_state_s** %show_gstate260, align 8, !tbaa !39
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.261

cleanup.261:                                      ; preds = %cond.end.258, %cleanup
  %204 = bitcast %struct.gs_state_parts_s* %parts to i8*
  call void @llvm.lifetime.end(i64 56, i8* %204) #1
  %205 = load i32, i32* %retval
  ret i32 %205
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentgstate(%struct.gs_state_s* %pto, %struct.gs_state_s* %pgs) #0 {
entry:
  %pto.addr = alloca %struct.gs_state_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pto, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gstate_copy(%struct.gs_state_s* %1, %struct.gs_state_s* %2, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %3 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %view_clip = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 64
  store %struct.gx_clip_path_s* null, %struct.gx_clip_path_s** %view_clip, align 8, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @gs_setgstate(%struct.gs_state_s* %pgs, %struct.gs_state_s* %pfrom) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pfrom.addr = alloca %struct.gs_state_s*, align 8
  %saved_show = alloca %struct.gs_state_s*, align 8
  %level = alloca i32, align 4
  %view_clip = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  %prior_op = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pfrom, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %saved_show to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %show_gstate = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 76
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate, align 8, !tbaa !39
  store %struct.gs_state_s* %2, %struct.gs_state_s** %saved_show, align 8, !tbaa !1
  %3 = bitcast i32* %level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %level1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 77
  %5 = load i32, i32* %level1, align 4, !tbaa !77
  store i32 %5, i32* %level, align 4, !tbaa !5
  %6 = bitcast %struct.gx_clip_path_s** %view_clip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 64
  %8 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip2, align 8, !tbaa !31
  store %struct.gx_clip_path_s* %8, %struct.gx_clip_path_s** %view_clip, align 8, !tbaa !1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %prior_op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 21
  %12 = load i32, i32* %overprint, align 4, !tbaa !83
  store i32 %12, i32* %prior_op, align 4, !tbaa !5
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 64
  store %struct.gx_clip_path_s* null, %struct.gx_clip_path_s** %view_clip3, align 8, !tbaa !31
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %call = call i32 @gstate_copy(%struct.gs_state_s* %14, %struct.gs_state_s* %15, i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load i32, i32* %level, align 4, !tbaa !5
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %level4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 77
  store i32 %18, i32* %level4, align 4, !tbaa !77
  %20 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %view_clip, align 8, !tbaa !1
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %view_clip5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 64
  store %struct.gx_clip_path_s* %20, %struct.gx_clip_path_s** %view_clip5, align 8, !tbaa !31
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %show_gstate6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 76
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %show_gstate6, align 8, !tbaa !39
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.gs_state_s* %23, %24
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %saved_show, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_state_s* [ %25, %cond.true ], [ %26, %cond.false ]
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %show_gstate8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 76
  store %struct.gs_state_s* %cond, %struct.gs_state_s** %show_gstate8, align 8, !tbaa !39
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 21
  %29 = load i32, i32* %overprint9, align 4, !tbaa !83
  %30 = load i32, i32* %prior_op, align 4, !tbaa !5
  %cmp10 = icmp ne i32 %29, %30
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %cond.end
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call12 = call i32 @gs_do_set_overprint(%struct.gs_state_s* %31) #3
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.11, %if.then
  %32 = bitcast i32* %prior_op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.gx_clip_path_s** %view_clip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i32* %level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct.gs_state_s** %saved_show to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !74
  ret %struct.gs_memory_s* %1
}

; Function Attrs: nounwind uwtable
define %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 56
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !9
  ret %struct.gs_state_s* %1
}

; Function Attrs: nounwind uwtable
define %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s* %pgs, %struct.gs_state_s* %new_saved) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %new_saved.addr = alloca %struct.gs_state_s*, align 8
  %saved = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %new_saved, %struct.gs_state_s** %new_saved.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %saved1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 56
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %saved1, align 8, !tbaa !9
  store %struct.gs_state_s* %2, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %new_saved.addr, align 8, !tbaa !1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %saved2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 56
  store %struct.gs_state_s* %3, %struct.gs_state_s** %saved2, align 8, !tbaa !9
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %saved, align 8, !tbaa !1
  %6 = bitcast %struct.gs_state_s** %saved to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret %struct.gs_state_s* %5
}

; Function Attrs: nounwind uwtable
define %struct.gs_memory_s* @gs_state_swap_memory(%struct.gs_state_s* %pgs, %struct.gs_memory_s* %mem) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %memory = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %memory to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !74
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %memory, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 1
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %memory2, align 8, !tbaa !74
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !1
  %6 = bitcast %struct.gs_memory_s** %memory to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret %struct.gs_memory_s* %5
}

; Function Attrs: nounwind uwtable
define i32 @gs_state_update_overprint(%struct.gs_state_s* %pgs, %struct.gs_overprint_params_s* %pparams) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pparams.addr = alloca %struct.gs_overprint_params_s*, align 8
  %pct = alloca %struct.gs_composite_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %code = alloca i32, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  %ovptdev = alloca %struct.gx_device_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_overprint_params_s* %pparams, %struct.gs_overprint_params_s** %pparams.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_composite_s** %pct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.gs_composite_s* null, %struct.gs_composite_s** %pct, align 8, !tbaa !1
  %1 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_state_s* %2 to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %3, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 78
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !40
  store %struct.gx_device_s* %7, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s** %ovptdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams.addr, align 8, !tbaa !1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !74
  %call = call i32 @gs_create_overprint(%struct.gs_composite_s** %pct, %struct.gs_overprint_params_s* %9, %struct.gs_memory_s* %11) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %create_compositor = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 40
  %13 = load i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)** %create_compositor, align 8, !tbaa !155
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %15 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct, align 8, !tbaa !1
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 1
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !74
  %call2 = call i32 %13(%struct.gx_device_s* %14, %struct.gx_device_s** %ovptdev, %struct.gs_composite_s* %15, %struct.gs_imager_state_s* %16, %struct.gs_memory_s* %18, %struct.gx_device_s* null) #3
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end.6

if.then:                                          ; preds = %land.lhs.true
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %ovptdev, align 8, !tbaa !1
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.gx_device_s* %19, %20
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %ovptdev, align 8, !tbaa !1
  call void @gx_set_device_only(%struct.gs_state_s* %21, %struct.gx_device_s* %22) #3
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %land.lhs.true, %entry
  %23 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.gs_composite_s* %23, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.6
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 1
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !74
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 2
  %26 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 1
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !74
  %29 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct, align 8, !tbaa !1
  %30 = bitcast %struct.gs_composite_s* %29 to i8*
  call void %26(%struct.gs_memory_s* %28, i8* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0)) #3
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end.6
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %31, -1
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.16

land.lhs.true.14:                                 ; preds = %if.end.12
  %32 = load %struct.gs_overprint_params_s*, %struct.gs_overprint_params_s** %pparams.addr, align 8, !tbaa !1
  %retain_any_comps = getelementptr inbounds %struct.gs_overprint_params_s, %struct.gs_overprint_params_s* %32, i32 0, i32 0
  %33 = load i32, i32* %retain_any_comps, align 4, !tbaa !156
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.14
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true.14, %if.end.12
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %35 = bitcast %struct.gx_device_s** %ovptdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.gs_composite_s** %pct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  ret i32 %34
}

declare i32 @gs_create_overprint(%struct.gs_composite_s**, %struct.gs_overprint_params_s*, %struct.gs_memory_s*) #2

declare void @gx_set_device_only(%struct.gs_state_s*, %struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define void @gs_setoverprint(%struct.gs_state_s* %pgs, i32 %ovp) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ovp.addr = alloca i32, align 4
  %prior_ovp = alloca i32, align 4
  %profile_struct = alloca %struct.cmm_dev_profile_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %ovp, i32* %ovp.addr, align 4, !tbaa !5
  %0 = bitcast i32* %prior_ovp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 21
  %2 = load i32, i32* %overprint, align 4, !tbaa !83
  store i32 %2, i32* %prior_ovp, align 4, !tbaa !5
  %3 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 78
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !40
  store %struct.gx_device_s* %6, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_s* %7, null
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %9 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !158
  %cmp1 = icmp eq i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %9, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 39
  %11 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !159
  store %struct.cmm_dev_profile_s* %11, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %get_profile4 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 67
  %13 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile4, align 8, !tbaa !158
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call = call i32 %13(%struct.gx_device_s* %14, %struct.cmm_dev_profile_s** %profile_struct) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %15 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.cmm_dev_profile_s* %15, null
  br i1 %cmp5, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %16 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %sim_overprint = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %16, i32 0, i32 10
  %17 = load i32, i32* %sim_overprint, align 4, !tbaa !160
  %cmp6 = icmp eq i32 %17, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %land.lhs.true, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %18 = load i32, i32* %ovp.addr, align 4, !tbaa !5
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 21
  store i32 %18, i32* %overprint10, align 4, !tbaa !83
  %20 = load i32, i32* %prior_ovp, align 4, !tbaa !5
  %21 = load i32, i32* %ovp.addr, align 4, !tbaa !5
  %cmp11 = icmp ne i32 %20, %21
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.9
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call13 = call i32 @gs_do_set_overprint(%struct.gs_state_s* %22) #3
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.7
  %23 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %prior_ovp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
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
define i32 @gs_currentoverprint(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 21
  %1 = load i32, i32* %overprint, align 4, !tbaa !83
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_setoverprintmode(%struct.gs_state_s* %pgs, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %mode.addr = alloca i32, align 4
  %prior_mode = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !5
  %0 = bitcast i32* %prior_mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %effective_overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 23
  %2 = load i32, i32* %effective_overprint_mode, align 4, !tbaa !87
  store i32 %2, i32* %prior_mode, align 4, !tbaa !5
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %mode.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %mode.addr, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %5, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* %mode.addr, align 4, !tbaa !5
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 22
  store i32 %6, i32* %overprint_mode, align 4, !tbaa !85
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 21
  %9 = load i32, i32* %overprint, align 4, !tbaa !83
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %prior_mode, align 4, !tbaa !5
  %11 = load i32, i32* %mode.addr, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %10, %11
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_do_set_overprint(%struct.gs_state_s* %12) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i32* %prior_mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentoverprintmode(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 22
  %1 = load i32, i32* %overprint_mode, align 4, !tbaa !85
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @gs_setcpsimode(%struct.gs_memory_s* %mem, i32 %mode) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %mode.addr = alloca i32, align 4
  %libctx = alloca %struct.gs_lib_ctx_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_lib_ctx_s** %libctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %1) #3
  store %struct.gs_lib_ctx_s* %call, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %2 = load i32, i32* %mode.addr, align 4, !tbaa !5
  %3 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %CPSI_mode = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %3, i32 0, i32 23
  store i32 %2, i32* %CPSI_mode, align 4, !tbaa !162
  %4 = bitcast %struct.gs_lib_ctx_s** %libctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret void
}

declare %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_currentcpsimode(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %libctx = alloca %struct.gs_lib_ctx_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_lib_ctx_s** %libctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %1) #3
  store %struct.gs_lib_ctx_s* %call, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %2 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %CPSI_mode = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %2, i32 0, i32 23
  %3 = load i32, i32* %CPSI_mode, align 4, !tbaa !162
  %4 = bitcast %struct.gs_lib_ctx_s** %libctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @gs_setrenderingintent(%struct.gs_state_s* %pgs, i32 %ri) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ri.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %ri, i32* %ri.addr, align 4, !tbaa !5
  %0 = load i32, i32* %ri.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %ri.addr, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %ri.addr, align 4, !tbaa !5
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %renderingintent = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 33
  store i32 %2, i32* %renderingintent, align 4, !tbaa !164
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentrenderingintent(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %renderingintent = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 33
  %1 = load i32, i32* %renderingintent, align 4, !tbaa !164
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_setblackptcomp(%struct.gs_state_s* %pgs, i32 %bkpt) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %bkpt.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %bkpt, i32* %bkpt.addr, align 4, !tbaa !5
  %0 = load i32, i32* %bkpt.addr, align 4, !tbaa !5
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %blackptcomp = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 34
  store i32 %0, i32* %blackptcomp, align 4, !tbaa !165
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentblackptcomp(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %blackptcomp = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 34
  %1 = load i32, i32* %blackptcomp, align 4, !tbaa !165
  ret i32 %1
}

declare i32 @gs_initmatrix(%struct.gs_state_s*) #2

declare i32 @gs_newpath(%struct.gs_state_s*) #2

declare i32 @gs_initclip(%struct.gs_state_s*) #2

declare i32 @gs_setlinewidth(%struct.gs_state_s*, double) #2

declare i32 @gs_setlinestartcap(%struct.gs_state_s*, i32) #2

declare i32 @gs_setlineendcap(%struct.gs_state_s*, i32) #2

declare i32 @gs_setlinedashcap(%struct.gs_state_s*, i32) #2

declare i32 @gs_setlinejoin(%struct.gs_state_s*, i32) #2

declare i32 @gs_setcurvejoin(%struct.gs_state_s*, i32) #2

declare i32 @gs_setdash(%struct.gs_state_s*, float*, i32, double) #2

declare void @gs_setdashadapt(%struct.gs_state_s*, i32) #2

declare i32 @gs_setdotlength(%struct.gs_state_s*, double, i32) #2

declare i32 @gs_setdotorientation(%struct.gs_state_s*) #2

declare i32 @gs_setmiterlimit(%struct.gs_state_s*, double) #2

; Function Attrs: nounwind uwtable
define i32 @gs_currentfilladjust(%struct.gs_state_s* %pgs, %struct.gs_point_s* %adjust) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %adjust.addr = alloca %struct.gs_point_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %adjust, %struct.gs_point_s** %adjust.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %fill_adjust = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 28
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust, i32 0, i32 0
  %1 = load i32, i32* %x, align 4, !tbaa !89
  %conv = sitofp i32 %1 to double
  %mul = fmul double %conv, 3.906250e-03
  %2 = load %struct.gs_point_s*, %struct.gs_point_s** %adjust.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %2, i32 0, i32 0
  store double %mul, double* %x1, align 8, !tbaa !166
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %fill_adjust2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 28
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %fill_adjust2, i32 0, i32 1
  %4 = load i32, i32* %y, align 4, !tbaa !90
  %conv3 = sitofp i32 %4 to double
  %mul4 = fmul double %conv3, 3.906250e-03
  %5 = load %struct.gs_point_s*, %struct.gs_point_s** %adjust.addr, align 8, !tbaa !1
  %y5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i32 0, i32 1
  store double %mul4, double* %y5, align 8, !tbaa !167
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentlimitclamp(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clamp_coordinates = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 9
  %1 = load i32, i32* %clamp_coordinates, align 4, !tbaa !91
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @gs_settextrenderingmode(%struct.gs_state_s* %pgs, i32 %trm) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %trm.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %trm, i32* %trm.addr, align 4, !tbaa !5
  %0 = load i32, i32* %trm.addr, align 4, !tbaa !5
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %text_rendering_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 18
  store i32 %0, i32* %text_rendering_mode, align 4, !tbaa !168
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_currenttextrenderingmode(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %text_rendering_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 18
  %1 = load i32, i32* %text_rendering_mode, align 4, !tbaa !168
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @gs_sethpglpathmode(%struct.gs_state_s* %pgs, i32 %path) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %path.addr = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %path, i32* %path.addr, align 4, !tbaa !5
  %0 = load i32, i32* %path.addr, align 4, !tbaa !5
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %hpgl_path_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 4
  store i32 %0, i32* %hpgl_path_mode, align 4, !tbaa !169
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_currenthpglpathmode(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %hpgl_path_mode = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 4
  %1 = load i32, i32* %hpgl_path_mode, align 4, !tbaa !169
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i64 @gx_get_clip_path_id(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 62
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !29
  %id = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %1, i32 0, i32 8
  %2 = load i64, i64* %id, align 8, !tbaa !70
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define i32 @gs_swapcolors(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %prior_overprint = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %prior_overprint to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 21
  %2 = load i32, i32* %overprint, align 4, !tbaa !83
  store i32 %2, i32* %prior_overprint, align 4, !tbaa !5
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @gs_swapcolors_quick(%struct.gs_state_s* %3) #3
  %4 = load i32, i32* %prior_overprint, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 21
  %6 = load i32, i32* %overprint1, align 4, !tbaa !83
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_do_set_overprint(%struct.gs_state_s* %7) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i32* %prior_overprint to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare %struct.gx_device_s* @gx_device_enum_ptr(%struct.gx_device_s*) #2

declare %struct.gx_device_s* @gx_device_reloc_ptr(%struct.gx_device_s*, %struct.gc_state_s*) #2

declare %struct.gx_color_map_procs_s* @gx_default_get_cmap_procs(%struct.gs_imager_state_s*, %struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gstate_alloc_parts(%struct.gs_state_s* %parts, %struct.gs_state_s* %shared, %struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %parts.addr = alloca %struct.gs_state_s*, align 8
  %shared.addr = alloca %struct.gs_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %path_mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %parts, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %shared, %struct.gs_state_s** %shared.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %path_mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_s* @gstate_path_memory(%struct.gs_memory_s* %1) #3
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %path_mem, align 8, !tbaa !1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %shared.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_state_s* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %shared.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 61
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !28
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %path_mem, align 8, !tbaa !1
  %call1 = call %struct.gx_path_s* @gx_path_alloc_shared(%struct.gx_path_s* %4, %struct.gs_memory_s* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0)) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %path_mem, align 8, !tbaa !1
  %call2 = call %struct.gx_path_s* @gx_path_alloc_shared(%struct.gx_path_s* null, %struct.gs_memory_s* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0)) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_path_s* [ %call1, %cond.true ], [ %call2, %cond.false ]
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %path3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 61
  store %struct.gx_path_s* %cond, %struct.gx_path_s** %path3, align 8, !tbaa !28
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %shared.addr, align 8, !tbaa !1
  %tobool4 = icmp ne %struct.gs_state_s* %8, null
  br i1 %tobool4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %shared.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 62
  %10 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !29
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call6 = call %struct.gx_clip_path_s* @gx_cpath_alloc_shared(%struct.gx_clip_path_s* %10, %struct.gs_memory_s* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0)) #3
  br label %cond.end.9

cond.false.7:                                     ; preds = %cond.end
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call8 = call %struct.gx_clip_path_s* @gx_cpath_alloc_shared(%struct.gx_clip_path_s* null, %struct.gs_memory_s* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0)) #3
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.7, %cond.true.5
  %cond10 = phi %struct.gx_clip_path_s* [ %call6, %cond.true.5 ], [ %call8, %cond.false.7 ]
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %clip_path11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 62
  store %struct.gx_clip_path_s* %cond10, %struct.gx_clip_path_s** %clip_path11, align 8, !tbaa !29
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %shared.addr, align 8, !tbaa !1
  %tobool12 = icmp ne %struct.gs_state_s* %14, null
  br i1 %tobool12, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %cond.end.9
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %shared.addr, align 8, !tbaa !1
  %effective_clip_shared = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 68
  %16 = load i32, i32* %effective_clip_shared, align 4, !tbaa !73
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %cond.end.9
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %clip_path14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 62
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path14, align 8, !tbaa !29
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %effective_clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 67
  store %struct.gx_clip_path_s* %18, %struct.gx_clip_path_s** %effective_clip_path, align 8, !tbaa !32
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %effective_clip_shared15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 68
  store i32 1, i32* %effective_clip_shared15, align 4, !tbaa !73
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %shared.addr, align 8, !tbaa !1
  %effective_clip_path16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 67
  %22 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path16, align 8, !tbaa !32
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call17 = call %struct.gx_clip_path_s* @gx_cpath_alloc_shared(%struct.gx_clip_path_s* %22, %struct.gs_memory_s* %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0)) #3
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %effective_clip_path18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 67
  store %struct.gx_clip_path_s* %call17, %struct.gx_clip_path_s** %effective_clip_path18, align 8, !tbaa !32
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %effective_clip_shared19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 68
  store i32 0, i32* %effective_clip_shared19, align 4, !tbaa !73
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx, i32 0, i32 0
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %color_space, align 8, !tbaa !33
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %color20 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 69
  %arrayidx21 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color20, i32 0, i64 1
  %color_space22 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx21, i32 0, i32 0
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %color_space22, align 8, !tbaa !33
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %29 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !51
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %31 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call23 = call i8* %29(%struct.gs_memory_s* %30, %struct.gs_memory_struct_type_s* @st_client_color, i8* %31) #3
  %32 = bitcast i8* %call23 to %struct.gs_client_color_s*
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %color24 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 69
  %arrayidx25 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color24, i32 0, i64 0
  %ccolor = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx25, i32 0, i32 1
  store %struct.gs_client_color_s* %32, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !35
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %alloc_struct27 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs26, i32 0, i32 8
  %35 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct27, align 8, !tbaa !51
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call28 = call i8* %35(%struct.gs_memory_s* %36, %struct.gs_memory_struct_type_s* @st_client_color, i8* %37) #3
  %38 = bitcast i8* %call28 to %struct.gs_client_color_s*
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %color29 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %39, i32 0, i32 69
  %arrayidx30 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color29, i32 0, i64 1
  %ccolor31 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx30, i32 0, i32 1
  store %struct.gs_client_color_s* %38, %struct.gs_client_color_s** %ccolor31, align 8, !tbaa !35
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %alloc_struct33 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs32, i32 0, i32 8
  %41 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct33, align 8, !tbaa !51
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %43 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call34 = call i8* %41(%struct.gs_memory_s* %42, %struct.gs_memory_struct_type_s* @st_device_color, i8* %43) #3
  %44 = bitcast i8* %call34 to %struct.gx_device_color_s*
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %color35 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %45, i32 0, i32 69
  %arrayidx36 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color35, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx36, i32 0, i32 2
  store %struct.gx_device_color_s* %44, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !36
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %alloc_struct38 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs37, i32 0, i32 8
  %47 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct38, align 8, !tbaa !51
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %49 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call39 = call i8* %47(%struct.gs_memory_s* %48, %struct.gs_memory_struct_type_s* @st_device_color, i8* %49) #3
  %50 = bitcast i8* %call39 to %struct.gx_device_color_s*
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %color40 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %51, i32 0, i32 69
  %arrayidx41 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color40, i32 0, i64 1
  %dev_color42 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx41, i32 0, i32 2
  store %struct.gx_device_color_s* %50, %struct.gx_device_color_s** %dev_color42, align 8, !tbaa !36
  %52 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %path43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %52, i32 0, i32 61
  %53 = load %struct.gx_path_s*, %struct.gx_path_s** %path43, align 8, !tbaa !28
  %cmp = icmp eq %struct.gx_path_s* %53, null
  br i1 %cmp, label %if.then.70, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.end
  %54 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %clip_path45 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %54, i32 0, i32 62
  %55 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path45, align 8, !tbaa !29
  %cmp46 = icmp eq %struct.gx_clip_path_s* %55, null
  br i1 %cmp46, label %if.then.70, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.44
  %56 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %effective_clip_path48 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %56, i32 0, i32 67
  %57 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path48, align 8, !tbaa !32
  %cmp49 = icmp eq %struct.gx_clip_path_s* %57, null
  br i1 %cmp49, label %if.then.70, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.47
  %58 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %color51 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %58, i32 0, i32 69
  %arrayidx52 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color51, i32 0, i64 0
  %ccolor53 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx52, i32 0, i32 1
  %59 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor53, align 8, !tbaa !35
  %cmp54 = icmp eq %struct.gs_client_color_s* %59, null
  br i1 %cmp54, label %if.then.70, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %lor.lhs.false.50
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %color56 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %60, i32 0, i32 69
  %arrayidx57 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color56, i32 0, i64 0
  %dev_color58 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx57, i32 0, i32 2
  %61 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color58, align 8, !tbaa !36
  %cmp59 = icmp eq %struct.gx_device_color_s* %61, null
  br i1 %cmp59, label %if.then.70, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.55
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %color61 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %62, i32 0, i32 69
  %arrayidx62 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color61, i32 0, i64 1
  %ccolor63 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx62, i32 0, i32 1
  %63 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor63, align 8, !tbaa !35
  %cmp64 = icmp eq %struct.gs_client_color_s* %63, null
  br i1 %cmp64, label %if.then.70, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.60
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %color66 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %64, i32 0, i32 69
  %arrayidx67 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color66, i32 0, i64 1
  %dev_color68 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx67, i32 0, i32 2
  %65 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color68, align 8, !tbaa !36
  %cmp69 = icmp eq %struct.gx_device_color_s* %65, null
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %lor.lhs.false.65, %lor.lhs.false.60, %lor.lhs.false.55, %lor.lhs.false.50, %lor.lhs.false.47, %lor.lhs.false.44, %if.end
  %66 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %68 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gstate_free_parts(%struct.gs_state_s* %66, %struct.gs_memory_s* %67, i8* %68) #3
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %lor.lhs.false.65
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.71, %if.then.70
  %69 = bitcast %struct.gs_memory_s** %path_mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal void @gstate_free_parts(%struct.gs_state_s* %parts, %struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %parts.addr = alloca %struct.gs_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_state_s* %parts, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %1 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color, i32 0, i64 1
  %dev_color = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx, i32 0, i32 2
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !36
  %5 = bitcast %struct.gx_device_color_s* %4 to i8*
  %6 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %1(%struct.gs_memory_s* %2, i8* %5, i8* %6) #3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %free_object2 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 2
  %8 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object2, align 8, !tbaa !78
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %color3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 69
  %arrayidx4 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color3, i32 0, i64 1
  %ccolor = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx4, i32 0, i32 1
  %11 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor, align 8, !tbaa !35
  %12 = bitcast %struct.gs_client_color_s* %11 to i8*
  %13 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %8(%struct.gs_memory_s* %9, i8* %12, i8* %13) #3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %free_object6 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 2
  %15 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object6, align 8, !tbaa !78
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %color7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 69
  %arrayidx8 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color7, i32 0, i64 0
  %dev_color9 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx8, i32 0, i32 2
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color9, align 8, !tbaa !36
  %19 = bitcast %struct.gx_device_color_s* %18 to i8*
  %20 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %15(%struct.gs_memory_s* %16, i8* %19, i8* %20) #3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %free_object11 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 2
  %22 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object11, align 8, !tbaa !78
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %color12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 69
  %arrayidx13 = getelementptr inbounds [2 x %struct.anon.12], [2 x %struct.anon.12]* %color12, i32 0, i64 0
  %ccolor14 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %arrayidx13, i32 0, i32 1
  %25 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %ccolor14, align 8, !tbaa !35
  %26 = bitcast %struct.gs_client_color_s* %25 to i8*
  %27 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %22(%struct.gs_memory_s* %23, i8* %26, i8* %27) #3
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %effective_clip_shared = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 68
  %29 = load i32, i32* %effective_clip_shared, align 4, !tbaa !73
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %effective_clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 67
  %31 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %effective_clip_path, align 8, !tbaa !32
  %32 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gx_cpath_free(%struct.gx_clip_path_s* %31, i8* %32) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 62
  %34 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !29
  %35 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gx_cpath_free(%struct.gx_clip_path_s* %34, i8* %35) #3
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 61
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !28
  %tobool15 = icmp ne %struct.gx_path_s* %37, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %parts.addr, align 8, !tbaa !1
  %path17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 61
  %39 = load %struct.gx_path_s*, %struct.gx_path_s** %path17, align 8, !tbaa !28
  %40 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gx_path_free(%struct.gx_path_s* %39, i8* %40) #3
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end
  ret void
}

declare void @gx_path_free(%struct.gx_path_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gstate_copy_dash(%struct.gs_state_s* %pto, %struct.gs_state_s* %pfrom) #0 {
entry:
  %pto.addr = alloca %struct.gs_state_s*, align 8
  %pfrom.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pto, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pfrom, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pto.addr, align 8, !tbaa !1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 3
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 11
  %pattern = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 0
  %2 = load float*, float** %pattern, align 8, !tbaa !120
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %line_params1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 3
  %dash2 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params1, i32 0, i32 11
  %pattern_size = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash2, i32 0, i32 1
  %4 = load i32, i32* %pattern_size, align 4, !tbaa !170
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pfrom.addr, align 8, !tbaa !1
  %line_params3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 3
  %dash4 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params3, i32 0, i32 11
  %offset = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash4, i32 0, i32 2
  %6 = load float, float* %offset, align 4, !tbaa !171
  %conv = fpext float %6 to double
  %call = call i32 @gs_setdash(%struct.gs_state_s* %0, float* %2, i32 %4, double %conv) #3
  ret i32 %call
}

declare void @gs_imager_state_copied(%struct.gs_imager_state_s*) #2

declare void @cs_adjust_counts_icc(%struct.gs_state_s*, i32) #2

declare void @gs_imager_state_release(%struct.gs_imager_state_s*) #2

declare i32 @gx_path_assign_preserve(%struct.gx_path_s*, %struct.gx_path_s*) #2

declare i32 @gx_cpath_assign_preserve(%struct.gx_clip_path_s*, %struct.gx_clip_path_s*) #2

declare void @gs_imager_state_pre_assign(%struct.gs_imager_state_s*, %struct.gs_imager_state_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 32}
!8 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!9 = !{!10, !2, i64 1616}
!10 = !{!"gs_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !11, i64 24, !6, i64 128, !15, i64 132, !6, i64 168, !16, i64 176, !16, i64 192, !6, i64 208, !6, i64 212, !18, i64 216, !3, i64 220, !19, i64 224, !19, i64 228, !20, i64 232, !21, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !12, i64 296, !22, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !12, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !23, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !24, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !24, i64 1336, !2, i64 1616, !13, i64 1624, !6, i64 1648, !13, i64 1652, !6, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !21, i64 1712, !21, i64 1720, !2, i64 1728, !6, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !15, i64 1808, !6, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !6, i64 1864, !2, i64 1872, !2, i64 1880, !25, i64 1888}
!11 = !{!"gx_line_params_s", !12, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !6, i64 36, !13, i64 40, !14, i64 64}
!12 = !{!"float", !3, i64 0}
!13 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!14 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !12, i64 12, !6, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !12, i64 32}
!15 = !{!"gs_matrix_fixed_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!16 = !{!"gs_point_s", !17, i64 0, !17, i64 8}
!17 = !{!"double", !3, i64 0}
!18 = !{!"short", !3, i64 0}
!19 = !{!"gs_transparency_source_s", !12, i64 0}
!20 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!21 = !{!"long", !3, i64 0}
!22 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!23 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!24 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !21, i64 16, !3, i64 24}
!25 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!26 = !{!27, !2, i64 0}
!27 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!28 = !{!10, !2, i64 1680}
!29 = !{!10, !2, i64 1688}
!30 = !{!10, !2, i64 1696}
!31 = !{!10, !2, i64 1704}
!32 = !{!10, !2, i64 1728}
!33 = !{!34, !2, i64 0}
!34 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!35 = !{!34, !2, i64 8}
!36 = !{!34, !2, i64 16}
!37 = !{!10, !2, i64 1792}
!38 = !{!10, !2, i64 1800}
!39 = !{!10, !2, i64 1856}
!40 = !{!10, !2, i64 1872}
!41 = !{!10, !2, i64 1880}
!42 = !{!8, !2, i64 40}
!43 = !{!44, !2, i64 0}
!44 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!45 = !{i64 0, i64 4, !5, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !46, i64 28, i64 4, !47, i64 32, i64 4, !47, i64 36, i64 4, !47, i64 40, i64 4, !47, i64 44, i64 4, !5, i64 48, i64 4, !46, i64 52, i64 4, !46, i64 56, i64 4, !46, i64 60, i64 4, !5, i64 64, i64 4, !46, i64 68, i64 4, !46, i64 72, i64 4, !46, i64 76, i64 4, !46, i64 80, i64 4, !46, i64 84, i64 4, !46, i64 88, i64 8, !1, i64 96, i64 4, !5, i64 100, i64 4, !46, i64 104, i64 4, !5, i64 108, i64 4, !46, i64 112, i64 4, !5, i64 116, i64 4, !5, i64 120, i64 4, !46, i64 128, i64 4, !5, i64 132, i64 4, !46, i64 136, i64 4, !46, i64 140, i64 4, !46, i64 144, i64 4, !46, i64 148, i64 4, !46, i64 152, i64 4, !46, i64 156, i64 4, !5, i64 160, i64 4, !5, i64 164, i64 4, !5, i64 168, i64 4, !5, i64 176, i64 8, !48, i64 184, i64 8, !48, i64 192, i64 8, !48, i64 200, i64 8, !48, i64 208, i64 4, !5, i64 212, i64 4, !5, i64 216, i64 2, !49, i64 220, i64 4, !47, i64 224, i64 4, !46, i64 228, i64 4, !46, i64 232, i64 4, !5, i64 236, i64 4, !5, i64 240, i64 8, !50, i64 248, i64 4, !5, i64 252, i64 4, !5, i64 256, i64 4, !5, i64 264, i64 8, !1, i64 272, i64 4, !5, i64 276, i64 4, !5, i64 280, i64 4, !5, i64 284, i64 4, !5, i64 288, i64 4, !5, i64 292, i64 4, !5, i64 296, i64 4, !46, i64 300, i64 4, !5, i64 304, i64 4, !5, i64 308, i64 4, !5, i64 312, i64 4, !5, i64 316, i64 4, !5, i64 320, i64 4, !46, i64 324, i64 4, !5, i64 328, i64 4, !5, i64 336, i64 8, !1, i64 344, i64 8, !1, i64 352, i64 8, !1, i64 360, i64 8, !1, i64 368, i64 8, !1, i64 376, i64 16, !47, i64 392, i64 8, !1, i64 400, i64 8, !1, i64 408, i64 4, !5, i64 416, i64 8, !1, i64 424, i64 8, !1, i64 432, i64 4, !5, i64 440, i64 8, !1, i64 448, i64 4, !5, i64 456, i64 8, !1, i64 464, i64 4, !5, i64 472, i64 8, !1, i64 480, i64 4, !5, i64 488, i64 8, !1, i64 496, i64 512, !47, i64 1008, i64 8, !1, i64 1016, i64 8, !1, i64 1024, i64 4, !5, i64 1028, i64 4, !47, i64 1032, i64 4, !5, i64 1036, i64 4, !5, i64 1040, i64 8, !50, i64 1048, i64 256, !47, i64 1304, i64 8, !1, i64 1312, i64 8, !1, i64 1320, i64 8, !1, i64 1328, i64 8, !1, i64 1336, i64 4, !5, i64 1340, i64 4, !47, i64 1344, i64 4, !5, i64 1348, i64 4, !5, i64 1352, i64 8, !50, i64 1360, i64 256, !47}
!46 = !{!12, !12, i64 0}
!47 = !{!3, !3, i64 0}
!48 = !{!17, !17, i64 0}
!49 = !{!18, !18, i64 0}
!50 = !{!21, !21, i64 0}
!51 = !{!52, !2, i64 72}
!52 = !{!"gs_memory_s", !2, i64 0, !53, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!53 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!54 = !{!10, !2, i64 368}
!55 = !{!56, !21, i64 8}
!56 = !{!"gs_halftone_s", !3, i64 0, !57, i64 8, !3, i64 32}
!57 = !{!"rc_header_s", !21, i64 0, !2, i64 8, !2, i64 16}
!58 = !{!56, !2, i64 16}
!59 = !{!56, !2, i64 24}
!60 = !{!56, !3, i64 0}
!61 = !{!62, !6, i64 232}
!62 = !{!"gx_clip_path_s", !63, i64 0, !67, i64 128, !6, i64 232, !66, i64 236, !66, i64 252, !2, i64 272, !6, i64 280, !2, i64 288, !21, i64 296}
!63 = !{!"gx_path_s", !64, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !66, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !6, i64 104, !6, i64 108, !22, i64 112, !2, i64 120}
!64 = !{!"gx_path_segments_s", !57, i64 0, !65, i64 24}
!65 = !{!"psc_", !2, i64 0, !2, i64 8}
!66 = !{!"gs_fixed_rect_s", !22, i64 0, !22, i64 8}
!67 = !{!"gx_clip_rect_list_s", !57, i64 0, !68, i64 24}
!68 = !{!"gx_clip_list_s", !69, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !6, i64 68, !6, i64 72}
!69 = !{!"gx_clip_rect_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !3, i64 32}
!70 = !{!62, !21, i64 296}
!71 = !{!10, !21, i64 1712}
!72 = !{!10, !21, i64 1720}
!73 = !{!10, !6, i64 1736}
!74 = !{!10, !2, i64 8}
!75 = !{!10, !3, i64 1848}
!76 = !{!10, !3, i64 1852}
!77 = !{!10, !6, i64 1864}
!78 = !{!52, !2, i64 24}
!79 = !{!52, !2, i64 32}
!80 = !{!10, !2, i64 1008}
!81 = !{!10, !2, i64 1328}
!82 = !{i64 0, i64 4, !5, i64 4, i64 4, !47, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 8, !50, i64 24, i64 256, !47}
!83 = !{!10, !6, i64 272}
!84 = !{!10, !6, i64 284}
!85 = !{!10, !6, i64 276}
!86 = !{!10, !6, i64 288}
!87 = !{!10, !6, i64 280}
!88 = !{!10, !6, i64 292}
!89 = !{!10, !6, i64 300}
!90 = !{!10, !6, i64 304}
!91 = !{!10, !6, i64 208}
!92 = !{!93, !3, i64 28}
!93 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !11, i64 24, !6, i64 128, !15, i64 132, !6, i64 168, !16, i64 176, !16, i64 192, !6, i64 208, !6, i64 212, !18, i64 216, !3, i64 220, !19, i64 224, !19, i64 228, !20, i64 232, !21, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !12, i64 296, !22, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !12, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !23, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !24, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !24, i64 1336}
!94 = !{!93, !3, i64 32}
!95 = !{!93, !3, i64 36}
!96 = !{!93, !3, i64 40}
!97 = !{!93, !6, i64 44}
!98 = !{!93, !12, i64 48}
!99 = !{!10, !6, i64 212}
!100 = !{!10, !2, i64 16}
!101 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1}
!102 = !{!10, !6, i64 316}
!103 = !{!104, !21, i64 56}
!104 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !57, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !105, i64 96, !107, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !21, i64 928, !21, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !21, i64 968, !21, i64 976, !108, i64 984, !6, i64 1052, !6, i64 1056, !109, i64 1064, !2, i64 1104, !3, i64 1112, !111, i64 1120, !112, i64 1144}
!105 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !18, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !106, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !21, i64 704, !6, i64 712}
!106 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!107 = !{!"gx_device_cached_colors_s", !21, i64 0, !21, i64 8}
!108 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!109 = !{!"gdev_space_params_s", !21, i64 0, !21, i64 8, !110, i64 16, !6, i64 32, !3, i64 36}
!110 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !21, i64 8}
!111 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!112 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!113 = !{!104, !2, i64 72}
!114 = !{!104, !2, i64 64}
!115 = !{!116, !21, i64 24}
!116 = !{!"gs_device_filter_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !57, i64 24}
!117 = !{!116, !2, i64 40}
!118 = !{!116, !2, i64 32}
!119 = !{!10, !2, i64 1904}
!120 = !{!10, !2, i64 88}
!121 = !{!122, !2, i64 0}
!122 = !{!"gs_state_parts_s", !2, i64 0, !2, i64 8, !2, i64 16, !3, i64 24}
!123 = !{!122, !2, i64 8}
!124 = !{!122, !2, i64 16}
!125 = !{!126, !2, i64 0}
!126 = !{!"", !2, i64 0, !2, i64 8}
!127 = !{!126, !2, i64 8}
!128 = !{i64 0, i64 4, !5, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !46, i64 28, i64 4, !47, i64 32, i64 4, !47, i64 36, i64 4, !47, i64 40, i64 4, !47, i64 44, i64 4, !5, i64 48, i64 4, !46, i64 52, i64 4, !46, i64 56, i64 4, !46, i64 60, i64 4, !5, i64 64, i64 4, !46, i64 68, i64 4, !46, i64 72, i64 4, !46, i64 76, i64 4, !46, i64 80, i64 4, !46, i64 84, i64 4, !46, i64 88, i64 8, !1, i64 96, i64 4, !5, i64 100, i64 4, !46, i64 104, i64 4, !5, i64 108, i64 4, !46, i64 112, i64 4, !5, i64 116, i64 4, !5, i64 120, i64 4, !46, i64 128, i64 4, !5, i64 132, i64 4, !46, i64 136, i64 4, !46, i64 140, i64 4, !46, i64 144, i64 4, !46, i64 148, i64 4, !46, i64 152, i64 4, !46, i64 156, i64 4, !5, i64 160, i64 4, !5, i64 164, i64 4, !5, i64 168, i64 4, !5, i64 176, i64 8, !48, i64 184, i64 8, !48, i64 192, i64 8, !48, i64 200, i64 8, !48, i64 208, i64 4, !5, i64 212, i64 4, !5, i64 216, i64 2, !49, i64 220, i64 4, !47, i64 224, i64 4, !46, i64 228, i64 4, !46, i64 232, i64 4, !5, i64 236, i64 4, !5, i64 240, i64 8, !50, i64 248, i64 4, !5, i64 252, i64 4, !5, i64 256, i64 4, !5, i64 264, i64 8, !1, i64 272, i64 4, !5, i64 276, i64 4, !5, i64 280, i64 4, !5, i64 284, i64 4, !5, i64 288, i64 4, !5, i64 292, i64 4, !5, i64 296, i64 4, !46, i64 300, i64 4, !5, i64 304, i64 4, !5, i64 308, i64 4, !5, i64 312, i64 4, !5, i64 316, i64 4, !5, i64 320, i64 4, !46, i64 324, i64 4, !5, i64 328, i64 4, !5, i64 336, i64 8, !1, i64 344, i64 8, !1, i64 352, i64 8, !1, i64 360, i64 8, !1, i64 368, i64 8, !1, i64 376, i64 16, !47, i64 392, i64 8, !1, i64 400, i64 8, !1, i64 408, i64 4, !5, i64 416, i64 8, !1, i64 424, i64 8, !1, i64 432, i64 4, !5, i64 440, i64 8, !1, i64 448, i64 4, !5, i64 456, i64 8, !1, i64 464, i64 4, !5, i64 472, i64 8, !1, i64 480, i64 4, !5, i64 488, i64 8, !1, i64 496, i64 512, !47, i64 1008, i64 8, !1, i64 1016, i64 8, !1, i64 1024, i64 4, !5, i64 1028, i64 4, !47, i64 1032, i64 4, !5, i64 1036, i64 4, !5, i64 1040, i64 8, !50, i64 1048, i64 256, !47, i64 1304, i64 8, !1, i64 1312, i64 8, !1, i64 1320, i64 8, !1, i64 1328, i64 8, !1, i64 1336, i64 4, !5, i64 1340, i64 4, !47, i64 1344, i64 4, !5, i64 1348, i64 4, !5, i64 1352, i64 8, !50, i64 1360, i64 256, !47, i64 1616, i64 8, !1, i64 1624, i64 4, !46, i64 1628, i64 4, !46, i64 1632, i64 4, !46, i64 1636, i64 4, !46, i64 1640, i64 4, !46, i64 1644, i64 4, !46, i64 1648, i64 4, !5, i64 1652, i64 4, !46, i64 1656, i64 4, !46, i64 1660, i64 4, !46, i64 1664, i64 4, !46, i64 1668, i64 4, !46, i64 1672, i64 4, !46, i64 1676, i64 4, !5, i64 1680, i64 8, !1, i64 1688, i64 8, !1, i64 1696, i64 8, !1, i64 1704, i64 8, !1, i64 1712, i64 8, !50, i64 1720, i64 8, !50, i64 1728, i64 8, !1, i64 1736, i64 4, !5, i64 1744, i64 48, !47, i64 1792, i64 8, !1, i64 1800, i64 8, !1, i64 1808, i64 4, !46, i64 1812, i64 4, !46, i64 1816, i64 4, !46, i64 1820, i64 4, !46, i64 1824, i64 4, !46, i64 1828, i64 4, !46, i64 1832, i64 4, !5, i64 1836, i64 4, !5, i64 1840, i64 4, !5, i64 1844, i64 4, !5, i64 1848, i64 4, !47, i64 1852, i64 4, !47, i64 1856, i64 8, !1, i64 1864, i64 4, !5, i64 1872, i64 8, !1, i64 1880, i64 8, !1, i64 1888, i64 8, !1, i64 1896, i64 8, !1, i64 1904, i64 8, !1, i64 1912, i64 8, !1}
!129 = !{!10, !2, i64 1888}
!130 = !{i64 0, i64 8, !1, i64 8, i64 256, !47}
!131 = !{i64 0, i64 8, !1, i64 8, i64 8, !50, i64 8, i64 8, !1, i64 16, i64 16, !47, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 2, !49, i64 18, i64 64, !47, i64 84, i64 256, !47, i64 340, i64 2, !49, i64 344, i64 8, !50, i64 8, i64 8, !1, i64 8, i64 128, !47, i64 352, i64 4, !5, i64 356, i64 4, !5, i64 360, i64 4, !5, i64 368, i64 8, !1, i64 376, i64 256, !47, i64 632, i64 4, !5, i64 636, i64 4, !5, i64 640, i64 8, !50, i64 648, i64 8, !1}
!132 = !{!10, !2, i64 1304}
!133 = !{!10, !2, i64 1912}
!134 = !{!10, !2, i64 1896}
!135 = !{!136, !2, i64 0}
!136 = !{!"gs_color_space_s", !2, i64 0, !57, i64 8, !21, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!137 = !{!138, !2, i64 24}
!138 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!139 = !{!140, !2, i64 0}
!140 = !{!"gs_client_color_s", !2, i64 0, !141, i64 8}
!141 = !{!"gs_paint_color_s", !3, i64 0}
!142 = !{!143, !2, i64 24}
!143 = !{!"gs_pattern_instance_s", !57, i64 0, !2, i64 24, !2, i64 32, !21, i64 40}
!144 = !{!145, !2, i64 40}
!145 = !{!"gs_pattern_type_s", !6, i64 0, !146, i64 8}
!146 = !{!"pp_", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!147 = !{!138, !2, i64 88}
!148 = !{!149, !2, i64 48}
!149 = !{!"gx_pattern_cache_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !21, i64 32, !21, i64 40, !2, i64 48}
!150 = !{!151, !2, i64 32}
!151 = !{!"gx_clip_stack_s", !57, i64 0, !2, i64 24, !2, i64 32}
!152 = !{!151, !21, i64 0}
!153 = !{!151, !2, i64 16}
!154 = !{!151, !2, i64 8}
!155 = !{!104, !2, i64 1464}
!156 = !{!157, !6, i64 0}
!157 = !{!"gs_overprint_params_s", !6, i64 0, !6, i64 4, !6, i64 8, !21, i64 16, !18, i64 24, !6, i64 28}
!158 = !{!104, !2, i64 1680}
!159 = !{!104, !2, i64 1104}
!160 = !{!161, !6, i64 172}
!161 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !2, i64 176, !6, i64 184, !2, i64 192, !57, i64 200}
!162 = !{!163, !6, i64 176}
!163 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !21, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!164 = !{!10, !6, i64 324}
!165 = !{!10, !6, i64 328}
!166 = !{!16, !17, i64 0}
!167 = !{!16, !17, i64 8}
!168 = !{!10, !6, i64 252}
!169 = !{!10, !6, i64 128}
!170 = !{!10, !6, i64 96}
!171 = !{!10, !12, i64 100}
