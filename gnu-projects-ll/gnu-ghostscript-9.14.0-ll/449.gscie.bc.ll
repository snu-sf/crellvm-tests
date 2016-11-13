; ModuleID = './gscie.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gs_range4_s = type { [4 x %struct.gs_range_s] }
%struct.gs_cie_defg_proc4_s = type { [4 x float (double, %struct.gs_cie_defg_s*)*] }
%struct.gs_cie_defg_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.8, %struct.gs_range4_s, %struct.gs_cie_defg_proc4_s, %struct.gs_range4_s, %struct.gx_color_lookup_table_s, %struct.anon.9 }
%struct.gs_cie_common_s = type { i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i8*, %struct.gs_range3_s, %struct.gs_cie_common_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_wb_s, %struct.anon.3 }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, {}*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
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
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
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
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
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
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_halftone_s = type opaque
%struct.gx_device_halftone_s = type opaque
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.0 }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon, %struct.anon, %struct.anon, %struct.anon }
%struct.anon = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_vector3_s = type { float, float, float }
%struct.anon.0 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
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
%struct.gx_pattern_cache_s = type opaque
%struct.gx_cie_joint_caches_s = type { i64, i64, i32, i32, %struct.rc_header_s, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32, i32, %struct.gx_cie_vector_cache3_s, %struct.gs_cie_wbsd_s, i32, %struct.gx_cie_vector_cache3_s, i32 }
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon.1], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_clip_stack_s = type opaque
%struct.anon.1 = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gs_cie_common_proc3_s = type { [3 x float (double, %struct.gs_cie_common_s*)*] }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.anon.3 = type { [3 x %union.gx_cie_scalar_cache_s] }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_cie_abc_proc3_s = type { [3 x float (double, %struct.gs_cie_abc_s*)*] }
%struct.gs_cie_abc_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.5 }
%struct.anon.5 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.anon.8 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.anon.9 = type { [4 x %union.gx_cie_scalar_cache_s] }
%struct.gs_cie_def_proc3_s = type { [3 x float (double, %struct.gs_cie_def_s*)*] }
%struct.gs_cie_def_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.6, %struct.gs_range3_s, %struct.gs_cie_def_proc3_s, %struct.gs_range3_s, %struct.gx_color_lookup_table_s, %struct.anon.7 }
%struct.anon.6 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.anon.7 = type { [3 x %union.gx_cie_scalar_cache_s] }
%struct.gs_cie_a_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range_s, {}*, %struct.gs_vector3_s, %struct.anon.4 }
%struct.anon.4 = type { %struct.gx_cie_vector_cache_s }
%struct.gs_sample_loop_params_s = type { float, float, i32 }
%struct.cie_cache_fracs_s = type { %struct.cie_cache_params_s, [512 x i16] }
%struct.cie_cache_range_temp_s = type { float, i32, i32 }

@Range3_default = constant %struct.gs_range3_s { [3 x %struct.gs_range_s] [%struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }, %struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }, %struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }] }, align 4
@Range4_default = constant %struct.gs_range4_s { [4 x %struct.gs_range_s] [%struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }, %struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }, %struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }, %struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }] }, align 4
@DecodeDEFG_default = constant %struct.gs_cie_defg_proc4_s { [4 x float (double, %struct.gs_cie_defg_s*)*] [float (double, %struct.gs_cie_defg_s*)* @defg_identity, float (double, %struct.gs_cie_defg_s*)* @defg_identity, float (double, %struct.gs_cie_defg_s*)* @defg_identity, float (double, %struct.gs_cie_defg_s*)* @defg_identity] }, align 8
@DecodeDEFG_from_cache = constant %struct.gs_cie_defg_proc4_s { [4 x float (double, %struct.gs_cie_defg_s*)*] [float (double, %struct.gs_cie_defg_s*)* @defg_from_cache_0, float (double, %struct.gs_cie_defg_s*)* @defg_from_cache_1, float (double, %struct.gs_cie_defg_s*)* @defg_from_cache_2, float (double, %struct.gs_cie_defg_s*)* @defg_from_cache_3] }, align 8
@DecodeDEF_default = constant %struct.gs_cie_def_proc3_s { [3 x float (double, %struct.gs_cie_def_s*)*] [float (double, %struct.gs_cie_def_s*)* @def_identity, float (double, %struct.gs_cie_def_s*)* @def_identity, float (double, %struct.gs_cie_def_s*)* @def_identity] }, align 8
@DecodeDEF_from_cache = constant %struct.gs_cie_def_proc3_s { [3 x float (double, %struct.gs_cie_def_s*)*] [float (double, %struct.gs_cie_def_s*)* @def_from_cache_0, float (double, %struct.gs_cie_def_s*)* @def_from_cache_1, float (double, %struct.gs_cie_def_s*)* @def_from_cache_2] }, align 8
@DecodeABC_default = constant %struct.gs_cie_abc_proc3_s { [3 x float (double, %struct.gs_cie_abc_s*)*] [float (double, %struct.gs_cie_abc_s*)* @abc_identity, float (double, %struct.gs_cie_abc_s*)* @abc_identity, float (double, %struct.gs_cie_abc_s*)* @abc_identity] }, align 8
@DecodeABC_from_cache = constant %struct.gs_cie_abc_proc3_s { [3 x float (double, %struct.gs_cie_abc_s*)*] [float (double, %struct.gs_cie_abc_s*)* @abc_from_cache_0, float (double, %struct.gs_cie_abc_s*)* @abc_from_cache_1, float (double, %struct.gs_cie_abc_s*)* @abc_from_cache_2] }, align 8
@DecodeLMN_default = constant %struct.gs_cie_common_proc3_s { [3 x float (double, %struct.gs_cie_common_s*)*] [float (double, %struct.gs_cie_common_s*)* @common_identity, float (double, %struct.gs_cie_common_s*)* @common_identity, float (double, %struct.gs_cie_common_s*)* @common_identity] }, align 8
@DecodeLMN_from_cache = constant %struct.gs_cie_common_proc3_s { [3 x float (double, %struct.gs_cie_common_s*)*] [float (double, %struct.gs_cie_common_s*)* @lmn_from_cache_0, float (double, %struct.gs_cie_common_s*)* @lmn_from_cache_1, float (double, %struct.gs_cie_common_s*)* @lmn_from_cache_2] }, align 8
@Matrix3_default = constant %struct.gs_matrix3_s { %struct.gs_vector3_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %struct.gs_vector3_s { float 0.000000e+00, float 1.000000e+00, float 0.000000e+00 }, %struct.gs_vector3_s { float 0.000000e+00, float 0.000000e+00, float 1.000000e+00 }, i32 1 }, align 4
@RangeA_default = constant %struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }, align 4
@DecodeA_default = constant float (double, %struct.gs_cie_a_s*)* @a_identity, align 8
@DecodeA_from_cache = constant float (double, %struct.gs_cie_a_s*)* @a_from_cache, align 8
@MatrixA_default = constant %struct.gs_vector3_s { float 1.000000e+00, float 1.000000e+00, float 1.000000e+00 }, align 4
@BlackPoint_default = constant %struct.gs_vector3_s zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"DecodeABC\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DecodeDEFG\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DecodeDEF\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"DecodeA\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"DecodeLMN\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"gs_setcolorrendering\00", align 1
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@st_joint_caches = internal constant %struct.gs_memory_struct_type_s { i32 49856, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"gx_unshare_cie_caches\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"EncodeLMN\00", align 1
@Encode_default = external constant %struct.gs_cie_render_proc3_s, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"EncodeABC\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"RenderTableT\00", align 1
@RenderTableT_default = external constant %struct.gs_cie_render_table_procs_s, align 8
@st_imager_state = external constant %struct.gs_memory_struct_type_s, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"gx_cie_to_xyz_alloc(imager state)\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"gx_cie_to_xyz_free(joint caches)\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"gx_cie_to_xyz_free\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"gx_cie_to_xyz_free(imager state)\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"gx_cie_joint_caches\00", align 1
@TransformPQR_from_cache = external constant %struct.gs_cie_transform_proc3_s, align 8
@TransformPQR_default = external constant %struct.gs_cie_transform_proc3_s, align 8
@.str.15 = private unnamed_addr constant [13 x i8] c"TransformPQR\00", align 1

; Function Attrs: nounwind uwtable
define float @a_identity(double %in, %struct.gs_cie_a_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_a_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_a_s* %pcie, %struct.gs_cie_a_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %conv = fptrunc double %0 to float
  ret float %conv
}

; Function Attrs: nounwind uwtable
define float @abc_identity(double %in, %struct.gs_cie_abc_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_abc_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_abc_s* %pcie, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %conv = fptrunc double %0 to float
  ret float %conv
}

; Function Attrs: nounwind uwtable
define float @common_identity(double %in, %struct.gs_cie_common_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_common_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_common_s* %pcie, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %conv = fptrunc double %0 to float
  ret float %conv
}

; Function Attrs: nounwind uwtable
define float @gs_cie_cached_value(double %in, %struct.cie_cache_floats_s* %pcache) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcache.addr = alloca %struct.cie_cache_floats_s*, align 8
  %index = alloca i32, align 4
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.cie_cache_floats_s* %pcache, %struct.cie_cache_floats_s** %pcache.addr, align 8, !tbaa !5
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %in.addr, align 8, !tbaa !1
  %2 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %2, i32 0, i32 0
  %base = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params, i32 0, i32 1
  %3 = load double, double* %base, align 8, !tbaa !7
  %sub = fsub double %1, %3
  %4 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache.addr, align 8, !tbaa !5
  %params1 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %4, i32 0, i32 0
  %factor = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params1, i32 0, i32 2
  %5 = load double, double* %factor, align 8, !tbaa !13
  %mul = fmul double %sub, %5
  %add = fadd double %mul, 1.000000e-04
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %index, align 4, !tbaa !14
  %6 = load i32, i32* %index, align 4, !tbaa !14
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.7

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %index, align 4, !tbaa !14
  %cmp3 = icmp sge i32 %7, 512
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %8 = load i32, i32* %index, align 4, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi i32 [ 511, %cond.true.5 ], [ %8, %cond.false.6 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond8, i32* %index, align 4, !tbaa !14
  %9 = load i32, i32* %index, align 4, !tbaa !14
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache.addr, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 %idxprom
  %11 = load float, float* %arrayidx, align 4, !tbaa !15
  %12 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret float %11
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal float @defg_identity(double %in, %struct.gs_cie_defg_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_defg_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_defg_s* %pcie, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %conv = fptrunc double %0 to float
  ret float %conv
}

; Function Attrs: nounwind uwtable
define internal float @defg_from_cache_0(double %in, %struct.gs_cie_defg_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_defg_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_defg_s* %pcie, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !5
  %caches_defg = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %1, i32 0, i32 10
  %DecodeDEFG = getelementptr inbounds %struct.anon.9, %struct.anon.9* %caches_defg, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG, i32 0, i64 0
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #7
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @defg_from_cache_1(double %in, %struct.gs_cie_defg_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_defg_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_defg_s* %pcie, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !5
  %caches_defg = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %1, i32 0, i32 10
  %DecodeDEFG = getelementptr inbounds %struct.anon.9, %struct.anon.9* %caches_defg, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG, i32 0, i64 1
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #7
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @defg_from_cache_2(double %in, %struct.gs_cie_defg_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_defg_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_defg_s* %pcie, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !5
  %caches_defg = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %1, i32 0, i32 10
  %DecodeDEFG = getelementptr inbounds %struct.anon.9, %struct.anon.9* %caches_defg, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG, i32 0, i64 2
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #7
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @defg_from_cache_3(double %in, %struct.gs_cie_defg_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_defg_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_defg_s* %pcie, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !5
  %caches_defg = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %1, i32 0, i32 10
  %DecodeDEFG = getelementptr inbounds %struct.anon.9, %struct.anon.9* %caches_defg, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG, i32 0, i64 3
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #7
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @def_identity(double %in, %struct.gs_cie_def_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_def_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_def_s* %pcie, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %conv = fptrunc double %0 to float
  ret float %conv
}

; Function Attrs: nounwind uwtable
define internal float @def_from_cache_0(double %in, %struct.gs_cie_def_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_def_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_def_s* %pcie, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !5
  %caches_def = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %1, i32 0, i32 10
  %DecodeDEF = getelementptr inbounds %struct.anon.7, %struct.anon.7* %caches_def, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF, i32 0, i64 0
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #7
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @def_from_cache_1(double %in, %struct.gs_cie_def_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_def_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_def_s* %pcie, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !5
  %caches_def = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %1, i32 0, i32 10
  %DecodeDEF = getelementptr inbounds %struct.anon.7, %struct.anon.7* %caches_def, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF, i32 0, i64 1
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #7
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @def_from_cache_2(double %in, %struct.gs_cie_def_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_def_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_def_s* %pcie, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !5
  %caches_def = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %1, i32 0, i32 10
  %DecodeDEF = getelementptr inbounds %struct.anon.7, %struct.anon.7* %caches_def, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF, i32 0, i64 2
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #7
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @abc_from_cache_0(double %in, %struct.gs_cie_abc_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_abc_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_abc_s* %pcie, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %1, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches, i32 0, i32 1
  %caches1 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches1, i32 0, i64 0
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 0
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #7
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @abc_from_cache_1(double %in, %struct.gs_cie_abc_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_abc_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_abc_s* %pcie, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %1, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches, i32 0, i32 1
  %caches1 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches1, i32 0, i64 1
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 0
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #7
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @abc_from_cache_2(double %in, %struct.gs_cie_abc_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_abc_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_abc_s* %pcie, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %1, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches, i32 0, i32 1
  %caches1 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches1, i32 0, i64 2
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 0
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #7
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @lmn_from_cache_0(double %in, %struct.gs_cie_common_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_common_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_common_s* %pcie, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %1, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i64 0
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #7
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @lmn_from_cache_1(double %in, %struct.gs_cie_common_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_common_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_common_s* %pcie, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %1, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i64 1
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #7
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @lmn_from_cache_2(double %in, %struct.gs_cie_common_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_common_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_common_s* %pcie, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %1, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i64 2
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #7
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @a_from_cache(double %in, %struct.gs_cie_a_s* %pcie) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcie.addr = alloca %struct.gs_cie_a_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !1
  store %struct.gs_cie_a_s* %pcie, %struct.gs_cie_a_s** %pcie.addr, align 8, !tbaa !5
  %0 = load double, double* %in.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %1, i32 0, i32 5
  %DecodeA = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches, i32 0, i32 0
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %DecodeA, i32 0, i32 0
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #7
  ret float %call
}

; Function Attrs: nounwind uwtable
define void @gx_init_CIE(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %0 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  call void @gx_init_paint_4(%struct.gs_client_color_s* %0, %struct.gs_color_space_s* %1) #7
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 0
  %3 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !16
  %restrict_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %3, i32 0, i32 6
  %4 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)** %restrict_color, align 8, !tbaa !20
  %5 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  call void %4(%struct.gs_client_color_s* %5, %struct.gs_color_space_s* %6) #7
  ret void
}

declare void @gx_init_paint_4(%struct.gs_client_color_s*, %struct.gs_color_space_s*) #2

; Function Attrs: nounwind uwtable
define void @gx_restrict_CIEDEFG(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pcie = alloca %struct.gs_cie_defg_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_cie_defg_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %defg = bitcast %union.anon* %params to %struct.gs_cie_defg_s**
  %2 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !5
  store %struct.gs_cie_defg_s* %2, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !5
  %3 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %3, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %4 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !5
  %RangeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %4, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  call void @cie_restrict(float* %arrayidx, %struct.gs_range_s* %arrayidx1) #7
  %5 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  %paint2 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %5, i32 0, i32 1
  %values3 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [64 x float], [64 x float]* %values3, i32 0, i64 1
  %6 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !5
  %RangeDEFG5 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %6, i32 0, i32 6
  %ranges6 = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG5, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges6, i32 0, i64 1
  call void @cie_restrict(float* %arrayidx4, %struct.gs_range_s* %arrayidx7) #7
  %7 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  %paint8 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %7, i32 0, i32 1
  %values9 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [64 x float], [64 x float]* %values9, i32 0, i64 2
  %8 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !5
  %RangeDEFG11 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %8, i32 0, i32 6
  %ranges12 = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG11, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges12, i32 0, i64 2
  call void @cie_restrict(float* %arrayidx10, %struct.gs_range_s* %arrayidx13) #7
  %9 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  %paint14 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %9, i32 0, i32 1
  %values15 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint14, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [64 x float], [64 x float]* %values15, i32 0, i64 3
  %10 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !5
  %RangeDEFG17 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %10, i32 0, i32 6
  %ranges18 = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG17, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges18, i32 0, i64 3
  call void @cie_restrict(float* %arrayidx16, %struct.gs_range_s* %arrayidx19) #7
  %11 = bitcast %struct.gs_cie_defg_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cie_restrict(float* %pv, %struct.gs_range_s* %range) #3 {
entry:
  %pv.addr = alloca float*, align 8
  %range.addr = alloca %struct.gs_range_s*, align 8
  store float* %pv, float** %pv.addr, align 8, !tbaa !5
  store %struct.gs_range_s* %range, %struct.gs_range_s** %range.addr, align 8, !tbaa !5
  %0 = load float*, float** %pv.addr, align 8, !tbaa !5
  %1 = load float, float* %0, align 4, !tbaa !15
  %2 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !5
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %2, i32 0, i32 0
  %3 = load float, float* %rmin, align 4, !tbaa !22
  %cmp = fcmp ole float %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !5
  %rmin1 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %4, i32 0, i32 0
  %5 = load float, float* %rmin1, align 4, !tbaa !22
  %6 = load float*, float** %pv.addr, align 8, !tbaa !5
  store float %5, float* %6, align 4, !tbaa !15
  br label %if.end.5

if.else:                                          ; preds = %entry
  %7 = load float*, float** %pv.addr, align 8, !tbaa !5
  %8 = load float, float* %7, align 4, !tbaa !15
  %9 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !5
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %9, i32 0, i32 1
  %10 = load float, float* %rmax, align 4, !tbaa !24
  %cmp2 = fcmp oge float %8, %10
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %11 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !5
  %rmax4 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %11, i32 0, i32 1
  %12 = load float, float* %rmax4, align 4, !tbaa !24
  %13 = load float*, float** %pv.addr, align 8, !tbaa !5
  store float %12, float* %13, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_restrict_CIEDEF(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pcie = alloca %struct.gs_cie_def_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_cie_def_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %def = bitcast %union.anon* %params to %struct.gs_cie_def_s**
  %2 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !5
  store %struct.gs_cie_def_s* %2, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !5
  %3 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %3, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %4 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !5
  %RangeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %4, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  call void @cie_restrict(float* %arrayidx, %struct.gs_range_s* %arrayidx1) #7
  %5 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  %paint2 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %5, i32 0, i32 1
  %values3 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [64 x float], [64 x float]* %values3, i32 0, i64 1
  %6 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !5
  %RangeDEF5 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %6, i32 0, i32 6
  %ranges6 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF5, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges6, i32 0, i64 1
  call void @cie_restrict(float* %arrayidx4, %struct.gs_range_s* %arrayidx7) #7
  %7 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  %paint8 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %7, i32 0, i32 1
  %values9 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [64 x float], [64 x float]* %values9, i32 0, i64 2
  %8 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !5
  %RangeDEF11 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %8, i32 0, i32 6
  %ranges12 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF11, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges12, i32 0, i64 2
  call void @cie_restrict(float* %arrayidx10, %struct.gs_range_s* %arrayidx13) #7
  %9 = bitcast %struct.gs_cie_def_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_restrict_CIEABC(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pcie = alloca %struct.gs_cie_abc_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_cie_abc_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %abc = bitcast %union.anon* %params to %struct.gs_cie_abc_s**
  %2 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !5
  store %struct.gs_cie_abc_s* %2, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !5
  %3 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %3, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %4 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !5
  %RangeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %4, i32 0, i32 2
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  call void @cie_restrict(float* %arrayidx, %struct.gs_range_s* %arrayidx1) #7
  %5 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  %paint2 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %5, i32 0, i32 1
  %values3 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [64 x float], [64 x float]* %values3, i32 0, i64 1
  %6 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !5
  %RangeABC5 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %6, i32 0, i32 2
  %ranges6 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC5, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges6, i32 0, i64 1
  call void @cie_restrict(float* %arrayidx4, %struct.gs_range_s* %arrayidx7) #7
  %7 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  %paint8 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %7, i32 0, i32 1
  %values9 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [64 x float], [64 x float]* %values9, i32 0, i64 2
  %8 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !5
  %RangeABC11 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %8, i32 0, i32 2
  %ranges12 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC11, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges12, i32 0, i64 2
  call void @cie_restrict(float* %arrayidx10, %struct.gs_range_s* %arrayidx13) #7
  %9 = bitcast %struct.gs_cie_abc_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_restrict_CIEA(%struct.gs_client_color_s* %pcc, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %pcc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pcie = alloca %struct.gs_cie_a_s*, align 8
  store %struct.gs_client_color_s* %pcc, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_cie_a_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %a = bitcast %union.anon* %params to %struct.gs_cie_a_s**
  %2 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !5
  store %struct.gs_cie_a_s* %2, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !5
  %3 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc.addr, align 8, !tbaa !5
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %3, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %4 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !5
  %RangeA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %4, i32 0, i32 2
  call void @cie_restrict(float* %arrayidx, %struct.gs_range_s* %RangeA) #7
  %5 = bitcast %struct.gs_cie_a_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_install_cie_abc(%struct.gs_cie_abc_s* %pcie, %struct.gs_state_s* %pgs) #0 {
entry:
  %pcie.addr = alloca %struct.gs_cie_abc_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %j = alloca i32, align 4
  %pcf = alloca %struct.cie_cache_floats_s*, align 8
  %i = alloca i32, align 4
  %lp = alloca %struct.gs_sample_loop_params_s, align 4
  %v = alloca float, align 4
  store %struct.gs_cie_abc_s* %pcie, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %MatrixABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %0, i32 0, i32 4
  call void @cie_matrix_init(%struct.gs_matrix3_s* %MatrixABC) #7
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %do.body.1
  %2 = load i32, i32* %j, align 4, !tbaa !14
  %conv = sext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 3
  br i1 %cmp, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  %3 = bitcast %struct.cie_cache_floats_s** %pcf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %5, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches, i32 0, i32 1
  %caches3 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches3, i32 0, i64 %idxprom
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 0
  store %struct.cie_cache_floats_s* %floats, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.start(i64 12, i8* %7) #1
  %8 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %8, i32 0, i32 0
  %9 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %RangeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %10, i32 0, i32 2
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom4
  call void @gs_cie_cache_init(%struct.cie_cache_params_s* %params, %struct.gs_sample_loop_params_s* %lp, %struct.gs_range_s* %arrayidx5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)) #7
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !14
  %N = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %12 = load i32, i32* %N, align 4, !tbaa !25
  %cmp7 = icmp sle i32 %11, %12
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %13 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %N10 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %14 = load i32, i32* %N10, align 4, !tbaa !25
  %15 = load i32, i32* %i, align 4, !tbaa !14
  %sub = sub nsw i32 %14, %15
  %conv11 = sitofp i32 %sub to float
  %A = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 0
  %16 = load float, float* %A, align 4, !tbaa !27
  %mul = fmul float %conv11, %16
  %17 = load i32, i32* %i, align 4, !tbaa !14
  %conv12 = sitofp i32 %17 to float
  %B = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 1
  %18 = load float, float* %B, align 4, !tbaa !28
  %mul13 = fmul float %conv12, %18
  %add = fadd float %mul, %mul13
  %N14 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %19 = load i32, i32* %N14, align 4, !tbaa !25
  %conv15 = sitofp i32 %19 to float
  %div = fdiv float %add, %conv15
  store float %div, float* %v, align 4, !tbaa !15
  %20 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom16 = sext i32 %20 to i64
  %21 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %DecodeABC17 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %21, i32 0, i32 3
  %procs = getelementptr inbounds %struct.gs_cie_abc_proc3_s, %struct.gs_cie_abc_proc3_s* %DecodeABC17, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x float (double, %struct.gs_cie_abc_s*)*], [3 x float (double, %struct.gs_cie_abc_s*)*]* %procs, i32 0, i64 %idxprom16
  %22 = load float (double, %struct.gs_cie_abc_s*)*, float (double, %struct.gs_cie_abc_s*)** %arrayidx18, align 8, !tbaa !5
  %23 = load float, float* %v, align 4, !tbaa !15
  %conv19 = fpext float %23 to double
  %24 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %call = call float %22(double %conv19, %struct.gs_cie_abc_s* %24) #7
  %25 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom20 = sext i32 %25 to i64
  %26 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %26, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 %idxprom20
  store float %call, float* %arrayidx21, align 4, !tbaa !15
  br label %do.body.22

do.body.22:                                       ; preds = %for.body.9
  br label %do.cond

do.cond:                                          ; preds = %do.body.22
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond
  %27 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  br label %for.inc

for.inc:                                          ; preds = %do.end.23
  %28 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %29 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom24 = sext i32 %29 to i64
  %30 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %DecodeABC25 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %30, i32 0, i32 3
  %procs26 = getelementptr inbounds %struct.gs_cie_abc_proc3_s, %struct.gs_cie_abc_proc3_s* %DecodeABC25, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [3 x float (double, %struct.gs_cie_abc_s*)*], [3 x float (double, %struct.gs_cie_abc_s*)*]* %procs26, i32 0, i64 %idxprom24
  %31 = load float (double, %struct.gs_cie_abc_s*)*, float (double, %struct.gs_cie_abc_s*)** %arrayidx27, align 8, !tbaa !5
  %32 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom28 = sext i32 %32 to i64
  %arrayidx29 = getelementptr inbounds [3 x float (double, %struct.gs_cie_abc_s*)*], [3 x float (double, %struct.gs_cie_abc_s*)*]* getelementptr inbounds (%struct.gs_cie_abc_proc3_s, %struct.gs_cie_abc_proc3_s* @DecodeABC_default, i32 0, i32 0), i32 0, i64 %idxprom28
  %33 = load float (double, %struct.gs_cie_abc_s*)*, float (double, %struct.gs_cie_abc_s*)** %arrayidx29, align 8, !tbaa !5
  %cmp30 = icmp eq float (double, %struct.gs_cie_abc_s*)* %31, %33
  %conv31 = zext i1 %cmp30 to i32
  %34 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %params32 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %34, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params32, i32 0, i32 0
  store i32 %conv31, i32* %is_identity, align 4, !tbaa !29
  %35 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.end(i64 12, i8* %35) #1
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.cie_cache_floats_s** %pcf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end
  %38 = load i32, i32* %j, align 4, !tbaa !14
  %inc34 = add nsw i32 %38, 1
  store i32 %inc34, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  %39 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  br label %do.end.37

do.end.37:                                        ; preds = %for.end.35
  %40 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %common = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %40, i32 0, i32 0
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  call void @gx_cie_load_common_cache(%struct.gs_cie_common_s* %common, %struct.gs_state_s* %41) #7
  %42 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  call void @gs_cie_abc_complete(%struct.gs_cie_abc_s* %42) #7
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %call38 = call i32 @gs_cie_cs_complete(%struct.gs_state_s* %43, i32 1) #7
  ret i32 %call38
}

; Function Attrs: nounwind uwtable
define internal void @cie_matrix_init(%struct.gs_matrix3_s* %mat) #0 {
entry:
  %mat.addr = alloca %struct.gs_matrix3_s*, align 8
  store %struct.gs_matrix3_s* %mat, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %0 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %0, i32 0, i32 0
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu, i32 0, i32 0
  %1 = load float, float* %u, align 4, !tbaa !30
  %conv = fpext float %1 to double
  %cmp = fcmp oeq double %conv, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %land.end.44

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cu2 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %2, i32 0, i32 0
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu2, i32 0, i32 1
  %3 = load float, float* %v, align 4, !tbaa !33
  %conv3 = fpext float %3 to double
  %cmp4 = fcmp oeq double %conv3, 0.000000e+00
  br i1 %cmp4, label %land.lhs.true.6, label %land.end.44

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %4 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cu7 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %4, i32 0, i32 0
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu7, i32 0, i32 2
  %5 = load float, float* %w, align 4, !tbaa !34
  %conv8 = fpext float %5 to double
  %cmp9 = fcmp oeq double %conv8, 0.000000e+00
  br i1 %cmp9, label %land.lhs.true.11, label %land.end.44

land.lhs.true.11:                                 ; preds = %land.lhs.true.6
  %6 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %6, i32 0, i32 1
  %v12 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv, i32 0, i32 1
  %7 = load float, float* %v12, align 4, !tbaa !35
  %conv13 = fpext float %7 to double
  %cmp14 = fcmp oeq double %conv13, 1.000000e+00
  br i1 %cmp14, label %land.lhs.true.16, label %land.end.44

land.lhs.true.16:                                 ; preds = %land.lhs.true.11
  %8 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cv17 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %8, i32 0, i32 1
  %u18 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv17, i32 0, i32 0
  %9 = load float, float* %u18, align 4, !tbaa !36
  %conv19 = fpext float %9 to double
  %cmp20 = fcmp oeq double %conv19, 0.000000e+00
  br i1 %cmp20, label %land.lhs.true.22, label %land.end.44

land.lhs.true.22:                                 ; preds = %land.lhs.true.16
  %10 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cv23 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %10, i32 0, i32 1
  %w24 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv23, i32 0, i32 2
  %11 = load float, float* %w24, align 4, !tbaa !37
  %conv25 = fpext float %11 to double
  %cmp26 = fcmp oeq double %conv25, 0.000000e+00
  br i1 %cmp26, label %land.lhs.true.28, label %land.end.44

land.lhs.true.28:                                 ; preds = %land.lhs.true.22
  %12 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cw = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %12, i32 0, i32 2
  %w29 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw, i32 0, i32 2
  %13 = load float, float* %w29, align 4, !tbaa !38
  %conv30 = fpext float %13 to double
  %cmp31 = fcmp oeq double %conv30, 1.000000e+00
  br i1 %cmp31, label %land.rhs, label %land.end.44

land.rhs:                                         ; preds = %land.lhs.true.28
  %14 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cw33 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %14, i32 0, i32 2
  %u34 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw33, i32 0, i32 0
  %15 = load float, float* %u34, align 4, !tbaa !39
  %conv35 = fpext float %15 to double
  %cmp36 = fcmp oeq double %conv35, 0.000000e+00
  br i1 %cmp36, label %land.rhs.38, label %land.end

land.rhs.38:                                      ; preds = %land.rhs
  %16 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cw39 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %16, i32 0, i32 2
  %v40 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw39, i32 0, i32 1
  %17 = load float, float* %v40, align 4, !tbaa !40
  %conv41 = fpext float %17 to double
  %cmp42 = fcmp oeq double %conv41, 0.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs.38, %land.rhs
  %18 = phi i1 [ false, %land.rhs ], [ %cmp42, %land.rhs.38 ]
  br label %land.end.44

land.end.44:                                      ; preds = %land.end, %land.lhs.true.28, %land.lhs.true.22, %land.lhs.true.16, %land.lhs.true.11, %land.lhs.true.6, %land.lhs.true, %entry
  %19 = phi i1 [ false, %land.lhs.true.28 ], [ false, %land.lhs.true.22 ], [ false, %land.lhs.true.16 ], [ false, %land.lhs.true.11 ], [ false, %land.lhs.true.6 ], [ false, %land.lhs.true ], [ false, %entry ], [ %18, %land.end ]
  %land.ext = zext i1 %19 to i32
  %20 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %is_identity = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %20, i32 0, i32 3
  store i32 %land.ext, i32* %is_identity, align 4, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_cie_cache_init(%struct.cie_cache_params_s* %pcache, %struct.gs_sample_loop_params_s* %pslp, %struct.gs_range_s* %domain, i8* %cname) #0 {
entry:
  %pcache.addr = alloca %struct.cie_cache_params_s*, align 8
  %pslp.addr = alloca %struct.gs_sample_loop_params_s*, align 8
  %domain.addr = alloca %struct.gs_range_s*, align 8
  %cname.addr = alloca i8*, align 8
  %A = alloca float, align 4
  %B = alloca float, align 4
  %R = alloca double, align 8
  %delta = alloca double, align 8
  %X = alloca double, align 8
  %K = alloca i32, align 4
  %Ca = alloca double, align 8
  %Cb = alloca double, align 8
  %C = alloca double, align 8
  %M = alloca i32, align 4
  %cexp = alloca i32, align 4
  %cfrac = alloca double, align 8
  store %struct.cie_cache_params_s* %pcache, %struct.cie_cache_params_s** %pcache.addr, align 8, !tbaa !5
  store %struct.gs_sample_loop_params_s* %pslp, %struct.gs_sample_loop_params_s** %pslp.addr, align 8, !tbaa !5
  store %struct.gs_range_s* %domain, %struct.gs_range_s** %domain.addr, align 8, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !5
  %0 = bitcast float* %A to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_range_s*, %struct.gs_range_s** %domain.addr, align 8, !tbaa !5
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %1, i32 0, i32 0
  %2 = load float, float* %rmin, align 4, !tbaa !22
  store float %2, float* %A, align 4, !tbaa !15
  %3 = bitcast float* %B to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_range_s*, %struct.gs_range_s** %domain.addr, align 8, !tbaa !5
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %4, i32 0, i32 1
  %5 = load float, float* %rmax, align 4, !tbaa !24
  store float %5, float* %B, align 4, !tbaa !15
  %6 = bitcast double* %R to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load float, float* %B, align 4, !tbaa !15
  %8 = load float, float* %A, align 4, !tbaa !15
  %sub = fsub float %7, %8
  %conv = fpext float %sub to double
  store double %conv, double* %R, align 8, !tbaa !1
  %9 = bitcast double* %delta to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load float, float* %A, align 4, !tbaa !15
  %cmp = fcmp olt float %10, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load float, float* %B, align 4, !tbaa !15
  %cmp2 = fcmp oge float %11, 0.000000e+00
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = bitcast double* %X to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load float, float* %A, align 4, !tbaa !15
  %mul = fmul float -5.110000e+02, %13
  %conv4 = fpext float %mul to double
  %14 = load double, double* %R, align 8, !tbaa !1
  %div = fdiv double %conv4, %14
  store double %div, double* %X, align 8, !tbaa !1
  %15 = bitcast i32* %K to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load float, float* %A, align 4, !tbaa !15
  %17 = load float, float* %B, align 4, !tbaa !15
  %add = fadd float %16, %17
  %cmp5 = fcmp olt float %add, 0.000000e+00
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %18 = load double, double* %X, align 8, !tbaa !1
  %call = call double @floor(double %18) #8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %19 = load double, double* %X, align 8, !tbaa !1
  %call7 = call double @ceil(double %19) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call, %cond.true ], [ %call7, %cond.false ]
  %conv8 = fptosi double %cond to i32
  store i32 %conv8, i32* %K, align 4, !tbaa !14
  %20 = bitcast double* %Ca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load float, float* %A, align 4, !tbaa !15
  %sub9 = fsub float -0.000000e+00, %21
  %22 = load i32, i32* %K, align 4, !tbaa !14
  %conv10 = sitofp i32 %22 to float
  %div11 = fdiv float %sub9, %conv10
  %conv12 = fpext float %div11 to double
  store double %conv12, double* %Ca, align 8, !tbaa !1
  %23 = bitcast double* %Cb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load float, float* %B, align 4, !tbaa !15
  %25 = load i32, i32* %K, align 4, !tbaa !14
  %sub13 = sub nsw i32 511, %25
  %conv14 = sitofp i32 %sub13 to float
  %div15 = fdiv float %24, %conv14
  %conv16 = fpext float %div15 to double
  store double %conv16, double* %Cb, align 8, !tbaa !1
  %26 = bitcast double* %C to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load double, double* %Ca, align 8, !tbaa !1
  %28 = load double, double* %Cb, align 8, !tbaa !1
  %cmp17 = fcmp ogt double %27, %28
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.end
  %29 = load double, double* %Ca, align 8, !tbaa !1
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end
  %30 = load double, double* %Cb, align 8, !tbaa !1
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi double [ %29, %cond.true.19 ], [ %30, %cond.false.20 ]
  store double %cond22, double* %C, align 8, !tbaa !1
  %31 = bitcast i32* %M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 15, i32* %M, align 4, !tbaa !14
  %32 = bitcast i32* %cexp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast double* %cfrac to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load double, double* %C, align 8, !tbaa !1
  %call23 = call double @frexp(double %34, i32* %cexp) #9
  store double %call23, double* %cfrac, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %cond.end.21
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %35 = load double, double* %cfrac, align 8, !tbaa !1
  %call24 = call double @ldexp(double %35, i32 15) #9
  %call25 = call double @ceil(double %call24) #8
  %36 = load i32, i32* %cexp, align 4, !tbaa !14
  %sub26 = sub nsw i32 %36, 15
  %call27 = call double @ldexp(double %call25, i32 %sub26) #9
  store double %call27, double* %C, align 8, !tbaa !1
  %37 = load i32, i32* %K, align 4, !tbaa !14
  %sub28 = sub nsw i32 0, %37
  %conv29 = sitofp i32 %sub28 to double
  %38 = load double, double* %C, align 8, !tbaa !1
  %mul30 = fmul double %conv29, %38
  %conv31 = fptrunc double %mul30 to float
  store float %conv31, float* %A, align 4, !tbaa !15
  %39 = load i32, i32* %K, align 4, !tbaa !14
  %sub32 = sub nsw i32 511, %39
  %conv33 = sitofp i32 %sub32 to double
  %40 = load double, double* %C, align 8, !tbaa !1
  %mul34 = fmul double %conv33, %40
  %conv35 = fptrunc double %mul34 to float
  store float %conv35, float* %B, align 4, !tbaa !15
  br label %do.body.36

do.body.36:                                       ; preds = %do.end
  br label %do.cond.37

do.cond.37:                                       ; preds = %do.body.36
  br label %do.end.38

do.end.38:                                        ; preds = %do.cond.37
  %41 = load float, float* %B, align 4, !tbaa !15
  %42 = load float, float* %A, align 4, !tbaa !15
  %sub39 = fsub float %41, %42
  %conv40 = fpext float %sub39 to double
  store double %conv40, double* %R, align 8, !tbaa !1
  %43 = bitcast double* %cfrac to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i32* %cexp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast double* %C to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast double* %Cb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast double* %Ca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %K to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast double* %X to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  br label %if.end

if.end:                                           ; preds = %do.end.38, %land.lhs.true, %entry
  %51 = load double, double* %R, align 8, !tbaa !1
  %div41 = fdiv double %51, 5.110000e+02
  store double %div41, double* %delta, align 8, !tbaa !1
  %52 = load float, float* %A, align 4, !tbaa !15
  %conv42 = fpext float %52 to double
  %53 = load %struct.cie_cache_params_s*, %struct.cie_cache_params_s** %pcache.addr, align 8, !tbaa !5
  %base = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %53, i32 0, i32 1
  store double %conv42, double* %base, align 8, !tbaa !42
  %54 = load double, double* %delta, align 8, !tbaa !1
  %cmp43 = fcmp olt double %54, 0.000000e+00
  br i1 %cmp43, label %cond.true.45, label %cond.false.47

cond.true.45:                                     ; preds = %if.end
  %55 = load double, double* %delta, align 8, !tbaa !1
  %sub46 = fsub double -0.000000e+00, %55
  br label %cond.end.48

cond.false.47:                                    ; preds = %if.end
  %56 = load double, double* %delta, align 8, !tbaa !1
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.45
  %cond49 = phi double [ %sub46, %cond.true.45 ], [ %56, %cond.false.47 ]
  %cmp50 = fcmp olt double %cond49, 1.000000e-30
  br i1 %cmp50, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %cond.end.48
  br label %cond.end.55

cond.false.53:                                    ; preds = %cond.end.48
  %57 = load double, double* %R, align 8, !tbaa !1
  %div54 = fdiv double 5.110000e+02, %57
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.53, %cond.true.52
  %cond56 = phi double [ 1.000000e+00, %cond.true.52 ], [ %div54, %cond.false.53 ]
  %58 = load %struct.cie_cache_params_s*, %struct.cie_cache_params_s** %pcache.addr, align 8, !tbaa !5
  %factor = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %58, i32 0, i32 2
  store double %cond56, double* %factor, align 8, !tbaa !43
  br label %do.body.57

do.body.57:                                       ; preds = %cond.end.55
  br label %do.cond.58

do.cond.58:                                       ; preds = %do.body.57
  br label %do.end.59

do.end.59:                                        ; preds = %do.cond.58
  %59 = load float, float* %A, align 4, !tbaa !15
  %60 = load %struct.gs_sample_loop_params_s*, %struct.gs_sample_loop_params_s** %pslp.addr, align 8, !tbaa !5
  %A60 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %60, i32 0, i32 0
  store float %59, float* %A60, align 4, !tbaa !27
  %61 = load float, float* %B, align 4, !tbaa !15
  %62 = load %struct.gs_sample_loop_params_s*, %struct.gs_sample_loop_params_s** %pslp.addr, align 8, !tbaa !5
  %B61 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %62, i32 0, i32 1
  store float %61, float* %B61, align 4, !tbaa !28
  %63 = load %struct.gs_sample_loop_params_s*, %struct.gs_sample_loop_params_s** %pslp.addr, align 8, !tbaa !5
  %N = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %63, i32 0, i32 2
  store i32 511, i32* %N, align 4, !tbaa !25
  %64 = bitcast double* %delta to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast double* %R to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast float* %B to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast float* %A to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_cie_load_common_cache(%struct.gs_cie_common_s* %pcie, %struct.gs_state_s* %pgs) #0 {
entry:
  %pcie.addr = alloca %struct.gs_cie_common_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %j = alloca i32, align 4
  %pcf = alloca %struct.cie_cache_floats_s*, align 8
  %i = alloca i32, align 4
  %lp = alloca %struct.gs_sample_loop_params_s, align 4
  %v = alloca float, align 4
  store %struct.gs_cie_common_s* %pcie, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %MatrixLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %0, i32 0, i32 4
  call void @cie_matrix_init(%struct.gs_matrix3_s* %MatrixLMN) #7
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %do.body.1
  %2 = load i32, i32* %j, align 4, !tbaa !14
  %conv = sext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 3
  br i1 %cmp, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  %3 = bitcast %struct.cie_cache_floats_s** %pcf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %5, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i64 %idxprom
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  store %struct.cie_cache_floats_s* %floats, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.start(i64 12, i8* %7) #1
  %8 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %8, i32 0, i32 0
  %9 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %RangeLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %10, i32 0, i32 2
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeLMN, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom3
  call void @gs_cie_cache_init(%struct.cie_cache_params_s* %params, %struct.gs_sample_loop_params_s* %lp, %struct.gs_range_s* %arrayidx4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)) #7
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !14
  %N = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %12 = load i32, i32* %N, align 4, !tbaa !25
  %cmp6 = icmp sle i32 %11, %12
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %13 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %N9 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %14 = load i32, i32* %N9, align 4, !tbaa !25
  %15 = load i32, i32* %i, align 4, !tbaa !14
  %sub = sub nsw i32 %14, %15
  %conv10 = sitofp i32 %sub to float
  %A = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 0
  %16 = load float, float* %A, align 4, !tbaa !27
  %mul = fmul float %conv10, %16
  %17 = load i32, i32* %i, align 4, !tbaa !14
  %conv11 = sitofp i32 %17 to float
  %B = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 1
  %18 = load float, float* %B, align 4, !tbaa !28
  %mul12 = fmul float %conv11, %18
  %add = fadd float %mul, %mul12
  %N13 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %19 = load i32, i32* %N13, align 4, !tbaa !25
  %conv14 = sitofp i32 %19 to float
  %div = fdiv float %add, %conv14
  store float %div, float* %v, align 4, !tbaa !15
  %20 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom15 = sext i32 %20 to i64
  %21 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %DecodeLMN16 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %21, i32 0, i32 3
  %procs = getelementptr inbounds %struct.gs_cie_common_proc3_s, %struct.gs_cie_common_proc3_s* %DecodeLMN16, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x float (double, %struct.gs_cie_common_s*)*], [3 x float (double, %struct.gs_cie_common_s*)*]* %procs, i32 0, i64 %idxprom15
  %22 = load float (double, %struct.gs_cie_common_s*)*, float (double, %struct.gs_cie_common_s*)** %arrayidx17, align 8, !tbaa !5
  %23 = load float, float* %v, align 4, !tbaa !15
  %conv18 = fpext float %23 to double
  %24 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %call = call float %22(double %conv18, %struct.gs_cie_common_s* %24) #7
  %25 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom19 = sext i32 %25 to i64
  %26 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %26, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 %idxprom19
  store float %call, float* %arrayidx20, align 4, !tbaa !15
  br label %do.body.21

do.body.21:                                       ; preds = %for.body.8
  br label %do.cond

do.cond:                                          ; preds = %do.body.21
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond
  %27 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  br label %for.inc

for.inc:                                          ; preds = %do.end.22
  %28 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %29 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom23 = sext i32 %29 to i64
  %30 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %DecodeLMN24 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %30, i32 0, i32 3
  %procs25 = getelementptr inbounds %struct.gs_cie_common_proc3_s, %struct.gs_cie_common_proc3_s* %DecodeLMN24, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x float (double, %struct.gs_cie_common_s*)*], [3 x float (double, %struct.gs_cie_common_s*)*]* %procs25, i32 0, i64 %idxprom23
  %31 = load float (double, %struct.gs_cie_common_s*)*, float (double, %struct.gs_cie_common_s*)** %arrayidx26, align 8, !tbaa !5
  %32 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom27 = sext i32 %32 to i64
  %arrayidx28 = getelementptr inbounds [3 x float (double, %struct.gs_cie_common_s*)*], [3 x float (double, %struct.gs_cie_common_s*)*]* getelementptr inbounds (%struct.gs_cie_common_proc3_s, %struct.gs_cie_common_proc3_s* @DecodeLMN_default, i32 0, i32 0), i32 0, i64 %idxprom27
  %33 = load float (double, %struct.gs_cie_common_s*)*, float (double, %struct.gs_cie_common_s*)** %arrayidx28, align 8, !tbaa !5
  %cmp29 = icmp eq float (double, %struct.gs_cie_common_s*)* %31, %33
  %conv30 = zext i1 %cmp29 to i32
  %34 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %params31 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %34, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params31, i32 0, i32 0
  store i32 %conv30, i32* %is_identity, align 4, !tbaa !29
  %35 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.end(i64 12, i8* %35) #1
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.cie_cache_floats_s** %pcf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %38 = load i32, i32* %j, align 4, !tbaa !14
  %inc33 = add nsw i32 %38, 1
  store i32 %inc33, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  %39 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  br label %do.end.36

do.end.36:                                        ; preds = %for.end.34
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_cie_abc_complete(%struct.gs_cie_abc_s* %pcie) #0 {
entry:
  %pcie.addr = alloca %struct.gs_cie_abc_s*, align 8
  store %struct.gs_cie_abc_s* %pcie, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %0 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %0, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches, i32 0, i32 1
  call void @cache3_set_linear(%struct.gx_cie_vector_cache3_s* %DecodeABC) #7
  %1 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %caches1 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %1, i32 0, i32 5
  %DecodeABC2 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches1, i32 0, i32 1
  %2 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %MatrixABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %2, i32 0, i32 4
  %call = call i32 @cie_cache_mult3(%struct.gx_cie_vector_cache3_s* %DecodeABC2, %struct.gs_matrix3_s* %MatrixABC, double 1.000000e-03) #7
  %3 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %caches3 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %3, i32 0, i32 5
  %skipABC = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches3, i32 0, i32 0
  store i32 %call, i32* %skipABC, align 4, !tbaa !44
  %4 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !5
  %5 = bitcast %struct.gs_cie_abc_s* %4 to %struct.gs_cie_common_s*
  call void @gx_cie_common_complete(%struct.gs_cie_common_s* %5) #7
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_cie_cs_complete(%struct.gs_state_s* %pgs, i32 %init) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %init.addr = alloca i32, align 4
  %pjc = alloca %struct.gx_cie_joint_caches_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  store i32 %init, i32* %init.addr, align 4, !tbaa !14
  %0 = bitcast %struct.gx_cie_joint_caches_s** %pjc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %call = call %struct.gx_cie_joint_caches_s* @gx_unshare_cie_caches(%struct.gs_state_s* %1) #7
  store %struct.gx_cie_joint_caches_s* %call, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %2 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %cmp = icmp eq %struct.gx_cie_joint_caches_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %init.addr, align 4, !tbaa !14
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 0, i32 1
  %4 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %status = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %4, i32 0, i32 3
  store i32 %cond, i32* %status, align 4, !tbaa !54
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct.gx_cie_joint_caches_s** %pjc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gx_install_CIEDEFG(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcie = alloca %struct.gs_cie_defg_s*, align 8
  %j = alloca i32, align 4
  %pcf = alloca %struct.cie_cache_floats_s*, align 8
  %i = alloca i32, align 4
  %lp = alloca %struct.gs_sample_loop_params_s, align 4
  %v = alloca float, align 4
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_cie_defg_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %defg = bitcast %union.anon* %params to %struct.gs_cie_defg_s**
  %2 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !5
  store %struct.gs_cie_defg_s* %2, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %do.body
  %4 = load i32, i32* %j, align 4, !tbaa !14
  %conv = sext i32 %4 to i64
  %cmp = icmp ult i64 %conv, 4
  br i1 %cmp, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  %5 = bitcast %struct.cie_cache_floats_s** %pcf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !5
  %caches_defg = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %7, i32 0, i32 10
  %DecodeDEFG = getelementptr inbounds %struct.anon.9, %struct.anon.9* %caches_defg, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG, i32 0, i64 %idxprom
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  store %struct.cie_cache_floats_s* %floats, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.start(i64 12, i8* %9) #1
  %10 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %params2 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %10, i32 0, i32 0
  %11 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !5
  %RangeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %12, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom3
  call void @gs_cie_cache_init(%struct.cie_cache_params_s* %params2, %struct.gs_sample_loop_params_s* %lp, %struct.gs_range_s* %arrayidx4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)) #7
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !14
  %N = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %14 = load i32, i32* %N, align 4, !tbaa !25
  %cmp6 = icmp sle i32 %13, %14
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %15 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %N9 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %16 = load i32, i32* %N9, align 4, !tbaa !25
  %17 = load i32, i32* %i, align 4, !tbaa !14
  %sub = sub nsw i32 %16, %17
  %conv10 = sitofp i32 %sub to float
  %A = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 0
  %18 = load float, float* %A, align 4, !tbaa !27
  %mul = fmul float %conv10, %18
  %19 = load i32, i32* %i, align 4, !tbaa !14
  %conv11 = sitofp i32 %19 to float
  %B = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 1
  %20 = load float, float* %B, align 4, !tbaa !28
  %mul12 = fmul float %conv11, %20
  %add = fadd float %mul, %mul12
  %N13 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %21 = load i32, i32* %N13, align 4, !tbaa !25
  %conv14 = sitofp i32 %21 to float
  %div = fdiv float %add, %conv14
  store float %div, float* %v, align 4, !tbaa !15
  %22 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom15 = sext i32 %22 to i64
  %23 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !5
  %DecodeDEFG16 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %23, i32 0, i32 7
  %procs = getelementptr inbounds %struct.gs_cie_defg_proc4_s, %struct.gs_cie_defg_proc4_s* %DecodeDEFG16, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [4 x float (double, %struct.gs_cie_defg_s*)*], [4 x float (double, %struct.gs_cie_defg_s*)*]* %procs, i32 0, i64 %idxprom15
  %24 = load float (double, %struct.gs_cie_defg_s*)*, float (double, %struct.gs_cie_defg_s*)** %arrayidx17, align 8, !tbaa !5
  %25 = load float, float* %v, align 4, !tbaa !15
  %conv18 = fpext float %25 to double
  %26 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !5
  %call = call float %24(double %conv18, %struct.gs_cie_defg_s* %26) #7
  %27 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom19 = sext i32 %27 to i64
  %28 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %28, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 %idxprom19
  store float %call, float* %arrayidx20, align 4, !tbaa !15
  br label %do.body.21

do.body.21:                                       ; preds = %for.body.8
  br label %do.cond

do.cond:                                          ; preds = %do.body.21
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %30 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %31 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom22 = sext i32 %31 to i64
  %32 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !5
  %DecodeDEFG23 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %32, i32 0, i32 7
  %procs24 = getelementptr inbounds %struct.gs_cie_defg_proc4_s, %struct.gs_cie_defg_proc4_s* %DecodeDEFG23, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [4 x float (double, %struct.gs_cie_defg_s*)*], [4 x float (double, %struct.gs_cie_defg_s*)*]* %procs24, i32 0, i64 %idxprom22
  %33 = load float (double, %struct.gs_cie_defg_s*)*, float (double, %struct.gs_cie_defg_s*)** %arrayidx25, align 8, !tbaa !5
  %34 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom26 = sext i32 %34 to i64
  %arrayidx27 = getelementptr inbounds [4 x float (double, %struct.gs_cie_defg_s*)*], [4 x float (double, %struct.gs_cie_defg_s*)*]* getelementptr inbounds (%struct.gs_cie_defg_proc4_s, %struct.gs_cie_defg_proc4_s* @DecodeDEFG_default, i32 0, i32 0), i32 0, i64 %idxprom26
  %35 = load float (double, %struct.gs_cie_defg_s*)*, float (double, %struct.gs_cie_defg_s*)** %arrayidx27, align 8, !tbaa !5
  %cmp28 = icmp eq float (double, %struct.gs_cie_defg_s*)* %33, %35
  %conv29 = zext i1 %cmp28 to i32
  %36 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %params30 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %36, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params30, i32 0, i32 0
  store i32 %conv29, i32* %is_identity, align 4, !tbaa !29
  %37 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.end(i64 12, i8* %37) #1
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.cie_cache_floats_s** %pcf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end
  %40 = load i32, i32* %j, align 4, !tbaa !14
  %inc32 = add nsw i32 %40, 1
  store i32 %inc32, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  %41 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  br label %do.cond.34

do.cond.34:                                       ; preds = %for.end.33
  br label %do.end.35

do.end.35:                                        ; preds = %do.cond.34
  %42 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !5
  %43 = bitcast %struct.gs_cie_defg_s* %42 to %struct.gs_cie_abc_s*
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %call36 = call i32 @gx_install_cie_abc(%struct.gs_cie_abc_s* %43, %struct.gs_state_s* %44) #7
  %45 = bitcast %struct.gs_cie_defg_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  ret i32 %call36
}

; Function Attrs: nounwind uwtable
define i32 @gx_install_CIEDEF(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcie = alloca %struct.gs_cie_def_s*, align 8
  %j = alloca i32, align 4
  %pcf = alloca %struct.cie_cache_floats_s*, align 8
  %i = alloca i32, align 4
  %lp = alloca %struct.gs_sample_loop_params_s, align 4
  %v = alloca float, align 4
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_cie_def_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %def = bitcast %union.anon* %params to %struct.gs_cie_def_s**
  %2 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !5
  store %struct.gs_cie_def_s* %2, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %do.body
  %4 = load i32, i32* %j, align 4, !tbaa !14
  %conv = sext i32 %4 to i64
  %cmp = icmp ult i64 %conv, 3
  br i1 %cmp, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  %5 = bitcast %struct.cie_cache_floats_s** %pcf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !5
  %caches_def = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %7, i32 0, i32 10
  %DecodeDEF = getelementptr inbounds %struct.anon.7, %struct.anon.7* %caches_def, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF, i32 0, i64 %idxprom
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  store %struct.cie_cache_floats_s* %floats, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.start(i64 12, i8* %9) #1
  %10 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %params2 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %10, i32 0, i32 0
  %11 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !5
  %RangeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %12, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom3
  call void @gs_cie_cache_init(%struct.cie_cache_params_s* %params2, %struct.gs_sample_loop_params_s* %lp, %struct.gs_range_s* %arrayidx4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)) #7
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !14
  %N = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %14 = load i32, i32* %N, align 4, !tbaa !25
  %cmp6 = icmp sle i32 %13, %14
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %15 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %N9 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %16 = load i32, i32* %N9, align 4, !tbaa !25
  %17 = load i32, i32* %i, align 4, !tbaa !14
  %sub = sub nsw i32 %16, %17
  %conv10 = sitofp i32 %sub to float
  %A = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 0
  %18 = load float, float* %A, align 4, !tbaa !27
  %mul = fmul float %conv10, %18
  %19 = load i32, i32* %i, align 4, !tbaa !14
  %conv11 = sitofp i32 %19 to float
  %B = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 1
  %20 = load float, float* %B, align 4, !tbaa !28
  %mul12 = fmul float %conv11, %20
  %add = fadd float %mul, %mul12
  %N13 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %21 = load i32, i32* %N13, align 4, !tbaa !25
  %conv14 = sitofp i32 %21 to float
  %div = fdiv float %add, %conv14
  store float %div, float* %v, align 4, !tbaa !15
  %22 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom15 = sext i32 %22 to i64
  %23 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !5
  %DecodeDEF16 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %23, i32 0, i32 7
  %procs = getelementptr inbounds %struct.gs_cie_def_proc3_s, %struct.gs_cie_def_proc3_s* %DecodeDEF16, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x float (double, %struct.gs_cie_def_s*)*], [3 x float (double, %struct.gs_cie_def_s*)*]* %procs, i32 0, i64 %idxprom15
  %24 = load float (double, %struct.gs_cie_def_s*)*, float (double, %struct.gs_cie_def_s*)** %arrayidx17, align 8, !tbaa !5
  %25 = load float, float* %v, align 4, !tbaa !15
  %conv18 = fpext float %25 to double
  %26 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !5
  %call = call float %24(double %conv18, %struct.gs_cie_def_s* %26) #7
  %27 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom19 = sext i32 %27 to i64
  %28 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %28, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 %idxprom19
  store float %call, float* %arrayidx20, align 4, !tbaa !15
  br label %do.body.21

do.body.21:                                       ; preds = %for.body.8
  br label %do.cond

do.cond:                                          ; preds = %do.body.21
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %30 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %31 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom22 = sext i32 %31 to i64
  %32 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !5
  %DecodeDEF23 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %32, i32 0, i32 7
  %procs24 = getelementptr inbounds %struct.gs_cie_def_proc3_s, %struct.gs_cie_def_proc3_s* %DecodeDEF23, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x float (double, %struct.gs_cie_def_s*)*], [3 x float (double, %struct.gs_cie_def_s*)*]* %procs24, i32 0, i64 %idxprom22
  %33 = load float (double, %struct.gs_cie_def_s*)*, float (double, %struct.gs_cie_def_s*)** %arrayidx25, align 8, !tbaa !5
  %34 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom26 = sext i32 %34 to i64
  %arrayidx27 = getelementptr inbounds [3 x float (double, %struct.gs_cie_def_s*)*], [3 x float (double, %struct.gs_cie_def_s*)*]* getelementptr inbounds (%struct.gs_cie_def_proc3_s, %struct.gs_cie_def_proc3_s* @DecodeDEF_default, i32 0, i32 0), i32 0, i64 %idxprom26
  %35 = load float (double, %struct.gs_cie_def_s*)*, float (double, %struct.gs_cie_def_s*)** %arrayidx27, align 8, !tbaa !5
  %cmp28 = icmp eq float (double, %struct.gs_cie_def_s*)* %33, %35
  %conv29 = zext i1 %cmp28 to i32
  %36 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %params30 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %36, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params30, i32 0, i32 0
  store i32 %conv29, i32* %is_identity, align 4, !tbaa !29
  %37 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.end(i64 12, i8* %37) #1
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.cie_cache_floats_s** %pcf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end
  %40 = load i32, i32* %j, align 4, !tbaa !14
  %inc32 = add nsw i32 %40, 1
  store i32 %inc32, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  %41 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  br label %do.cond.34

do.cond.34:                                       ; preds = %for.end.33
  br label %do.end.35

do.end.35:                                        ; preds = %do.cond.34
  %42 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !5
  %43 = bitcast %struct.gs_cie_def_s* %42 to %struct.gs_cie_abc_s*
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %call36 = call i32 @gx_install_cie_abc(%struct.gs_cie_abc_s* %43, %struct.gs_state_s* %44) #7
  %45 = bitcast %struct.gs_cie_def_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  ret i32 %call36
}

; Function Attrs: nounwind uwtable
define i32 @gx_install_CIEABC(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 7
  %abc = bitcast %union.anon* %params to %struct.gs_cie_abc_s**
  %1 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !5
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %call = call i32 @gx_install_cie_abc(%struct.gs_cie_abc_s* %1, %struct.gs_state_s* %2) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_install_CIEA(%struct.gs_color_space_s* %pcs, %struct.gs_state_s* %pgs) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcie = alloca %struct.gs_cie_a_s*, align 8
  %lp = alloca %struct.gs_sample_loop_params_s, align 4
  %i = alloca i32, align 4
  %in = alloca float, align 4
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_cie_a_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %a = bitcast %union.anon* %params to %struct.gs_cie_a_s**
  %2 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !5
  store %struct.gs_cie_a_s* %2, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !5
  %3 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.start(i64 12, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %5, i32 0, i32 5
  %DecodeA = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches, i32 0, i32 0
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %DecodeA, i32 0, i32 0
  %params1 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 0
  %6 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !5
  %RangeA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %6, i32 0, i32 2
  call void @gs_cie_cache_init(%struct.cie_cache_params_s* %params1, %struct.gs_sample_loop_params_s* %lp, %struct.gs_range_s* %RangeA, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)) #7
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !14
  %N = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %8 = load i32, i32* %N, align 4, !tbaa !25
  %cmp = icmp sle i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = bitcast float* %in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %N2 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %10 = load i32, i32* %N2, align 4, !tbaa !25
  %11 = load i32, i32* %i, align 4, !tbaa !14
  %sub = sub nsw i32 %10, %11
  %conv = sitofp i32 %sub to float
  %A = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 0
  %12 = load float, float* %A, align 4, !tbaa !27
  %mul = fmul float %conv, %12
  %13 = load i32, i32* %i, align 4, !tbaa !14
  %conv3 = sitofp i32 %13 to float
  %B = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 1
  %14 = load float, float* %B, align 4, !tbaa !28
  %mul4 = fmul float %conv3, %14
  %add = fadd float %mul, %mul4
  %N5 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %15 = load i32, i32* %N5, align 4, !tbaa !25
  %conv6 = sitofp i32 %15 to float
  %div = fdiv float %add, %conv6
  store float %div, float* %in, align 4, !tbaa !15
  %16 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !5
  %DecodeA7 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %16, i32 0, i32 3
  %DecodeA8 = bitcast {}** %DecodeA7 to float (double, %struct.gs_cie_a_s*)**
  %17 = load float (double, %struct.gs_cie_a_s*)*, float (double, %struct.gs_cie_a_s*)** %DecodeA8, align 8, !tbaa !58
  %18 = load float, float* %in, align 4, !tbaa !15
  %conv9 = fpext float %18 to double
  %19 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !5
  %call = call float %17(double %conv9, %struct.gs_cie_a_s* %19) #7
  %20 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !5
  %caches10 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %21, i32 0, i32 5
  %DecodeA11 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches10, i32 0, i32 0
  %floats12 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %DecodeA11, i32 0, i32 0
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats12, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 %idxprom
  store float %call, float* %arrayidx, align 4, !tbaa !15
  br label %do.body

do.body:                                          ; preds = %for.body
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %22 = bitcast float* %in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %23 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !5
  %common = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %24, i32 0, i32 0
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  call void @gx_cie_load_common_cache(%struct.gs_cie_common_s* %common, %struct.gs_state_s* %25) #7
  %26 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !5
  call void @gs_cie_a_complete(%struct.gs_cie_a_s* %26) #7
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %call13 = call i32 @gs_cie_cs_complete(%struct.gs_state_s* %27, i32 1) #7
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.end(i64 12, i8* %29) #1
  %30 = bitcast %struct.gs_cie_a_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  ret i32 %call13
}

; Function Attrs: nounwind uwtable
define void @gs_cie_a_complete(%struct.gs_cie_a_s* %pcie) #0 {
entry:
  %pcie.addr = alloca %struct.gs_cie_a_s*, align 8
  store %struct.gs_cie_a_s* %pcie, %struct.gs_cie_a_s** %pcie.addr, align 8, !tbaa !5
  %0 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %0, i32 0, i32 5
  %DecodeA = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches, i32 0, i32 0
  %1 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie.addr, align 8, !tbaa !5
  %MatrixA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %1, i32 0, i32 4
  %2 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie.addr, align 8, !tbaa !5
  %caches1 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %2, i32 0, i32 5
  %DecodeA2 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches1, i32 0, i32 0
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %DecodeA2, i32 0, i32 0
  call void @cie_cache_mult(%struct.gx_cie_vector_cache_s* %DecodeA, %struct.gs_vector3_s* %MatrixA, %struct.cie_cache_floats_s* %floats, double 1.000000e-03) #7
  %3 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie.addr, align 8, !tbaa !5
  %caches3 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %3, i32 0, i32 5
  %DecodeA4 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches3, i32 0, i32 0
  %floats5 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %DecodeA4, i32 0, i32 0
  call void @cache_set_linear(%struct.cie_cache_floats_s* %floats5) #7
  %4 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie.addr, align 8, !tbaa !5
  %5 = bitcast %struct.gs_cie_a_s* %4 to %struct.gs_cie_common_s*
  call void @gx_cie_common_complete(%struct.gs_cie_common_s* %5) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_cie_common_complete(%struct.gs_cie_common_s* %pcie) #0 {
entry:
  %pcie.addr = alloca %struct.gs_cie_common_s*, align 8
  %i = alloca i32, align 4
  store %struct.gs_cie_common_s* %pcie, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !14
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %3, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i64 %idxprom
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  call void @cache_set_linear(%struct.cie_cache_floats_s* %floats) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cache_set_linear(%struct.cie_cache_floats_s* %pcf) #0 {
entry:
  %pcf.addr = alloca %struct.cie_cache_floats_s*, align 8
  store %struct.cie_cache_floats_s* %pcf, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %0 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %0, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params, i32 0, i32 0
  %1 = load i32, i32* %is_identity, align 4, !tbaa !29
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %params1 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %2, i32 0, i32 0
  %linear = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params1, i32 0, i32 3
  %is_linear = getelementptr inbounds %struct.cie_linear_params_s, %struct.cie_linear_params_s* %linear, i32 0, i32 0
  store i32 1, i32* %is_linear, align 4, !tbaa !64
  %3 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %params2 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %3, i32 0, i32 0
  %linear3 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params2, i32 0, i32 3
  %origin = getelementptr inbounds %struct.cie_linear_params_s, %struct.cie_linear_params_s* %linear3, i32 0, i32 2
  store float 0.000000e+00, float* %origin, align 4, !tbaa !65
  %4 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %params4 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %4, i32 0, i32 0
  %linear5 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params4, i32 0, i32 3
  %scale = getelementptr inbounds %struct.cie_linear_params_s, %struct.cie_linear_params_s* %linear5, i32 0, i32 1
  store float 1.000000e+00, float* %scale, align 4, !tbaa !66
  br label %if.end.25

if.else:                                          ; preds = %entry
  %5 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %params6 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %5, i32 0, i32 0
  %linear7 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params6, i32 0, i32 3
  %6 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %call = call i32 @cache_is_linear(%struct.cie_linear_params_s* %linear7, %struct.cie_cache_floats_s* %6) #7
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.then.9, label %if.end.24

if.then.9:                                        ; preds = %if.else
  %7 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %params10 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %7, i32 0, i32 0
  %linear11 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params10, i32 0, i32 3
  %origin12 = getelementptr inbounds %struct.cie_linear_params_s, %struct.cie_linear_params_s* %linear11, i32 0, i32 2
  %8 = load float, float* %origin12, align 4, !tbaa !65
  %cmp = fcmp oeq float %8, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.9
  %9 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %params13 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %9, i32 0, i32 0
  %linear14 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params13, i32 0, i32 3
  %scale15 = getelementptr inbounds %struct.cie_linear_params_s, %struct.cie_linear_params_s* %linear14, i32 0, i32 1
  %10 = load float, float* %scale15, align 4, !tbaa !66
  %sub = fsub float %10, 1.000000e+00
  %conv = fpext float %sub to double
  %call16 = call double @fabs(double %conv) #8
  %cmp17 = fcmp olt double %call16, 1.000000e-05
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %land.lhs.true
  %11 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %params20 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %11, i32 0, i32 0
  %is_identity21 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params20, i32 0, i32 0
  store i32 1, i32* %is_identity21, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then.19, %land.lhs.true, %if.then.9
  br label %do.body.22

do.body.22:                                       ; preds = %if.end
  br label %do.end.23

do.end.23:                                        ; preds = %do.body.22
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.23, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_cie_defg_complete(%struct.gs_cie_defg_s* %pcie) #0 {
entry:
  %pcie.addr = alloca %struct.gs_cie_defg_s*, align 8
  %j = alloca i32, align 4
  store %struct.gs_cie_defg_s* %pcie, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !5
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4, !tbaa !14
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !5
  %caches_defg = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %3, i32 0, i32 10
  %DecodeDEFG = getelementptr inbounds %struct.anon.9, %struct.anon.9* %caches_defg, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG, i32 0, i64 %idxprom
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 1
  %arraydecay = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i32 0
  %4 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !5
  %RangeHIJK = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %5, i32 0, i32 8
  %ranges = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeHIJK, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom1
  %6 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !5
  %Table = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %7, i32 0, i32 9
  %dims = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %Table, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4, !tbaa !14
  call void @gs_cie_defx_scale(float* %arraydecay, %struct.gs_range_s* %arrayidx2, i32 %8) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %j, align 4, !tbaa !14
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie.addr, align 8, !tbaa !5
  %11 = bitcast %struct.gs_cie_defg_s* %10 to %struct.gs_cie_abc_s*
  call void @gs_cie_abc_complete(%struct.gs_cie_abc_s* %11) #7
  %12 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_cie_defx_scale(float* %values, %struct.gs_range_s* %range, i32 %dim) #0 {
entry:
  %values.addr = alloca float*, align 8
  %range.addr = alloca %struct.gs_range_s*, align 8
  %dim.addr = alloca i32, align 4
  %scale = alloca double, align 8
  %i = alloca i32, align 4
  %value = alloca float, align 4
  store float* %values, float** %values.addr, align 8, !tbaa !5
  store %struct.gs_range_s* %range, %struct.gs_range_s** %range.addr, align 8, !tbaa !5
  store i32 %dim, i32* %dim.addr, align 4, !tbaa !14
  %0 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %dim.addr, align 4, !tbaa !14
  %conv = sitofp i32 %1 to double
  %sub = fsub double %conv, 1.000000e+00
  %2 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !5
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %2, i32 0, i32 1
  %3 = load float, float* %rmax, align 4, !tbaa !24
  %4 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !5
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %4, i32 0, i32 0
  %5 = load float, float* %rmin, align 4, !tbaa !22
  %sub1 = fsub float %3, %5
  %conv2 = fpext float %sub1 to double
  %div = fdiv double %sub, %conv2
  store double %div, double* %scale, align 8, !tbaa !1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !14
  %cmp = icmp slt i32 %7, 512
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = bitcast float* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = sext i32 %9 to i64
  %10 = load float*, float** %values.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds float, float* %10, i64 %idxprom
  %11 = load float, float* %arrayidx, align 4, !tbaa !15
  store float %11, float* %value, align 4, !tbaa !15
  %12 = load float, float* %value, align 4, !tbaa !15
  %13 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !5
  %rmin4 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %13, i32 0, i32 0
  %14 = load float, float* %rmin4, align 4, !tbaa !22
  %cmp5 = fcmp ole float %12, %14
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.17

cond.false:                                       ; preds = %for.body
  %15 = load float, float* %value, align 4, !tbaa !15
  %16 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !5
  %rmax7 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %16, i32 0, i32 1
  %17 = load float, float* %rmax7, align 4, !tbaa !24
  %cmp8 = fcmp oge float %15, %17
  br i1 %cmp8, label %cond.true.10, label %cond.false.13

cond.true.10:                                     ; preds = %cond.false
  %18 = load i32, i32* %dim.addr, align 4, !tbaa !14
  %sub11 = sub nsw i32 %18, 1
  %conv12 = sitofp i32 %sub11 to double
  br label %cond.end

cond.false.13:                                    ; preds = %cond.false
  %19 = load float, float* %value, align 4, !tbaa !15
  %20 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !5
  %rmin14 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %20, i32 0, i32 0
  %21 = load float, float* %rmin14, align 4, !tbaa !22
  %sub15 = fsub float %19, %21
  %conv16 = fpext float %sub15 to double
  %22 = load double, double* %scale, align 8, !tbaa !1
  %mul = fmul double %conv16, %22
  br label %cond.end

cond.end:                                         ; preds = %cond.false.13, %cond.true.10
  %cond = phi double [ %conv12, %cond.true.10 ], [ %mul, %cond.false.13 ]
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.end, %cond.true
  %cond18 = phi double [ 0.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %conv19 = fptrunc double %cond18 to float
  %23 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom20 = sext i32 %23 to i64
  %24 = load float*, float** %values.addr, align 8, !tbaa !5
  %arrayidx21 = getelementptr inbounds float, float* %24, i64 %idxprom20
  store float %conv19, float* %arrayidx21, align 4, !tbaa !15
  %25 = bitcast float* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.17
  %26 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_cie_def_complete(%struct.gs_cie_def_s* %pcie) #0 {
entry:
  %pcie.addr = alloca %struct.gs_cie_def_s*, align 8
  %j = alloca i32, align 4
  store %struct.gs_cie_def_s* %pcie, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !5
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4, !tbaa !14
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !5
  %caches_def = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %3, i32 0, i32 10
  %DecodeDEF = getelementptr inbounds %struct.anon.7, %struct.anon.7* %caches_def, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF, i32 0, i64 %idxprom
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 1
  %arraydecay = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i32 0
  %4 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !5
  %RangeHIJ = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %5, i32 0, i32 8
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeHIJ, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom1
  %6 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !5
  %Table = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %7, i32 0, i32 9
  %dims = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %Table, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4, !tbaa !14
  call void @gs_cie_defx_scale(float* %arraydecay, %struct.gs_range_s* %arrayidx2, i32 %8) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %j, align 4, !tbaa !14
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie.addr, align 8, !tbaa !5
  %11 = bitcast %struct.gs_cie_def_s* %10 to %struct.gs_cie_abc_s*
  call void @gs_cie_abc_complete(%struct.gs_cie_abc_s* %11) #7
  %12 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cache3_set_linear(%struct.gx_cie_vector_cache3_s* %pvc) #0 {
entry:
  %pvc.addr = alloca %struct.gx_cie_vector_cache3_s*, align 8
  store %struct.gx_cie_vector_cache3_s* %pvc, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %0 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches, i32 0, i64 0
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 0
  call void @cache_set_linear(%struct.cie_cache_floats_s* %floats) #7
  %1 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %caches1 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches1, i32 0, i64 1
  %floats3 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx2, i32 0, i32 0
  call void @cache_set_linear(%struct.cie_cache_floats_s* %floats3) #7
  %2 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %caches4 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %2, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches4, i32 0, i64 2
  %floats6 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx5, i32 0, i32 0
  call void @cache_set_linear(%struct.cie_cache_floats_s* %floats6) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cie_cache_mult3(%struct.gx_cie_vector_cache3_s* %pvc, %struct.gs_matrix3_s* %pmat, double %threshold) #0 {
entry:
  %pvc.addr = alloca %struct.gx_cie_vector_cache3_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix3_s*, align 8
  %threshold.addr = alloca double, align 8
  store %struct.gx_cie_vector_cache3_s* %pvc, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  store %struct.gs_matrix3_s* %pmat, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !5
  store double %threshold, double* %threshold.addr, align 8, !tbaa !1
  %0 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches, i32 0, i64 0
  %1 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !5
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %1, i32 0, i32 0
  %2 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %caches1 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches1, i32 0, i64 0
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx2, i32 0, i32 0
  %3 = load double, double* %threshold.addr, align 8, !tbaa !1
  call void @cie_cache_mult(%struct.gx_cie_vector_cache_s* %arrayidx, %struct.gs_vector3_s* %cu, %struct.cie_cache_floats_s* %floats, double %3) #7
  %4 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %caches3 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches3, i32 0, i64 1
  %5 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !5
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %5, i32 0, i32 1
  %6 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %caches5 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %6, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches5, i32 0, i64 1
  %floats7 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx6, i32 0, i32 0
  %7 = load double, double* %threshold.addr, align 8, !tbaa !1
  call void @cie_cache_mult(%struct.gx_cie_vector_cache_s* %arrayidx4, %struct.gs_vector3_s* %cv, %struct.cie_cache_floats_s* %floats7, double %7) #7
  %8 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %caches8 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %8, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches8, i32 0, i64 2
  %9 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !5
  %cw = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %9, i32 0, i32 2
  %10 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %caches10 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %10, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches10, i32 0, i64 2
  %floats12 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx11, i32 0, i32 0
  %11 = load double, double* %threshold.addr, align 8, !tbaa !1
  call void @cie_cache_mult(%struct.gx_cie_vector_cache_s* %arrayidx9, %struct.gs_vector3_s* %cw, %struct.cie_cache_floats_s* %floats12, double %11) #7
  %12 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  call void @cie_cache3_set_interpolation(%struct.gx_cie_vector_cache3_s* %12) #7
  %13 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !5
  %is_identity = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %13, i32 0, i32 3
  %14 = load i32, i32* %is_identity, align 4, !tbaa !41
  %15 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %caches13 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %15, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches13, i32 0, i64 0
  %floats15 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx14, i32 0, i32 0
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats15, i32 0, i32 0
  %is_identity16 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params, i32 0, i32 0
  %16 = load i32, i32* %is_identity16, align 4, !tbaa !67
  %and = and i32 %14, %16
  %17 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %caches17 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %17, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches17, i32 0, i64 1
  %floats19 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx18, i32 0, i32 0
  %params20 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats19, i32 0, i32 0
  %is_identity21 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params20, i32 0, i32 0
  %18 = load i32, i32* %is_identity21, align 4, !tbaa !67
  %and22 = and i32 %and, %18
  %19 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %caches23 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %19, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches23, i32 0, i64 2
  %floats25 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx24, i32 0, i32 0
  %params26 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats25, i32 0, i32 0
  %is_identity27 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params26, i32 0, i32 0
  %20 = load i32, i32* %is_identity27, align 4, !tbaa !67
  %and28 = and i32 %and22, %20
  ret i32 %and28
}

; Function Attrs: nounwind uwtable
define internal void @cie_cache_mult(%struct.gx_cie_vector_cache_s* %pcache, %struct.gs_vector3_s* %pvec, %struct.cie_cache_floats_s* %pcf, double %threshold) #0 {
entry:
  %pcache.addr = alloca %struct.gx_cie_vector_cache_s*, align 8
  %pvec.addr = alloca %struct.gs_vector3_s*, align 8
  %pcf.addr = alloca %struct.cie_cache_floats_s*, align 8
  %threshold.addr = alloca double, align 8
  %u = alloca float, align 4
  %v = alloca float, align 4
  %w = alloca float, align 4
  %i = alloca i32, align 4
  %f = alloca float, align 4
  store %struct.gx_cie_vector_cache_s* %pcache, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  store %struct.gs_vector3_s* %pvec, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !5
  store %struct.cie_cache_floats_s* %pcf, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  store double %threshold, double* %threshold.addr, align 8, !tbaa !1
  %0 = bitcast float* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !5
  %u1 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %1, i32 0, i32 0
  %2 = load float, float* %u1, align 4, !tbaa !68
  store float %2, float* %u, align 4, !tbaa !15
  %3 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !5
  %v2 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %4, i32 0, i32 1
  %5 = load float, float* %v2, align 4, !tbaa !69
  store float %5, float* %v, align 4, !tbaa !15
  %6 = bitcast float* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !5
  %w3 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %7, i32 0, i32 2
  %8 = load float, float* %w3, align 4, !tbaa !70
  store float %8, float* %w, align 4, !tbaa !15
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %10, i32 0, i32 0
  %base = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params, i32 0, i32 1
  %11 = load double, double* %base, align 8, !tbaa !7
  %conv = fptrunc double %11 to float
  %12 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %vecs = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %12, i32 0, i32 1
  %params4 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs, i32 0, i32 0
  %base5 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params4, i32 0, i32 0
  store float %conv, float* %base5, align 4, !tbaa !71
  %13 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %params6 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %13, i32 0, i32 0
  %factor = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params6, i32 0, i32 2
  %14 = load double, double* %factor, align 8, !tbaa !13
  %conv7 = fptrunc double %14 to float
  %15 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %vecs8 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %15, i32 0, i32 1
  %params9 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs8, i32 0, i32 0
  %factor10 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params9, i32 0, i32 1
  store float %conv7, float* %factor10, align 4, !tbaa !72
  %16 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %params11 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %16, i32 0, i32 0
  %factor12 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params11, i32 0, i32 2
  %17 = load double, double* %factor12, align 8, !tbaa !13
  %div = fdiv double 5.110000e+02, %17
  %18 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %params13 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %18, i32 0, i32 0
  %base14 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params13, i32 0, i32 1
  %19 = load double, double* %base14, align 8, !tbaa !7
  %add = fadd double %div, %19
  %conv15 = fptrunc double %add to float
  %20 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %vecs16 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %20, i32 0, i32 1
  %params17 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs16, i32 0, i32 0
  %limit = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params17, i32 0, i32 2
  store float %conv15, float* %limit, align 4, !tbaa !73
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, i32* %i, align 4, !tbaa !14
  %cmp = icmp slt i32 %21, 512
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = bitcast float* %f to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %24, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 %idxprom
  %25 = load float, float* %arrayidx, align 4, !tbaa !15
  store float %25, float* %f, align 4, !tbaa !15
  %26 = load float, float* %f, align 4, !tbaa !15
  %27 = load float, float* %u, align 4, !tbaa !15
  %mul = fmul float %26, %27
  %28 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom19 = sext i32 %28 to i64
  %29 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %vecs20 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %29, i32 0, i32 1
  %values21 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs20, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values21, i32 0, i64 %idxprom19
  %u23 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %arrayidx22, i32 0, i32 0
  store float %mul, float* %u23, align 4, !tbaa !74
  %30 = load float, float* %f, align 4, !tbaa !15
  %31 = load float, float* %v, align 4, !tbaa !15
  %mul24 = fmul float %30, %31
  %32 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom25 = sext i32 %32 to i64
  %33 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %vecs26 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %33, i32 0, i32 1
  %values27 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs26, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values27, i32 0, i64 %idxprom25
  %v29 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %arrayidx28, i32 0, i32 1
  store float %mul24, float* %v29, align 4, !tbaa !76
  %34 = load float, float* %f, align 4, !tbaa !15
  %35 = load float, float* %w, align 4, !tbaa !15
  %mul30 = fmul float %34, %35
  %36 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom31 = sext i32 %36 to i64
  %37 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %vecs32 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %37, i32 0, i32 1
  %values33 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs32, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values33, i32 0, i64 %idxprom31
  %w35 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %arrayidx34, i32 0, i32 2
  store float %mul30, float* %w35, align 4, !tbaa !77
  %38 = bitcast float* %f to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %41 = load double, double* %threshold.addr, align 8, !tbaa !1
  call void @cie_cache_set_interpolation(%struct.gx_cie_vector_cache_s* %40, double %41) #7
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast float* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast float* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_setcolorrendering(%struct.gs_state_s* %pgs, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %code = alloca i32, align 4
  %pcrd_old = alloca %struct.gs_cie_render_s*, align 8
  %joint_ok = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %call = call i32 @gs_cie_render_complete(%struct.gs_cie_render_s* %1) #7
  store i32 %call, i32* %code, align 4, !tbaa !14
  %2 = bitcast %struct.gs_cie_render_s** %pcrd_old to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_render = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 42
  %4 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render, align 8, !tbaa !78
  store %struct.gs_cie_render_s* %4, %struct.gs_cie_render_s** %pcrd_old, align 8, !tbaa !5
  %5 = bitcast i32* %joint_ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %code, align 4, !tbaa !14
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !14
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd_old, align 8, !tbaa !5
  %cmp1 = icmp ne %struct.gs_cie_render_s* %8, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %id = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %9, i32 0, i32 2
  %10 = load i64, i64* %id, align 8, !tbaa !92
  %11 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd_old, align 8, !tbaa !5
  %id2 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %11, i32 0, i32 2
  %12 = load i64, i64* %id2, align 8, !tbaa !92
  %cmp3 = icmp eq i64 %10, %12
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %13 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd_old, align 8, !tbaa !5
  %cmp6 = icmp ne %struct.gs_cie_render_s* %13, null
  br i1 %cmp6, label %land.lhs.true.7, label %land.end

land.lhs.true.7:                                  ; preds = %if.end.5
  %14 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %points = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %14, i32 0, i32 4
  %WhitePoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points, i32 0, i32 0
  %15 = bitcast %struct.gs_vector3_s* %WhitePoint to i8*
  %16 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd_old, align 8, !tbaa !5
  %points8 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %16, i32 0, i32 4
  %WhitePoint9 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points8, i32 0, i32 0
  %17 = bitcast %struct.gs_vector3_s* %WhitePoint9 to i8*
  %call10 = call i32 @memcmp(i8* %15, i8* %17, i64 12) #10
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %land.end, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %land.lhs.true.7
  %18 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %points12 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %18, i32 0, i32 4
  %BlackPoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points12, i32 0, i32 1
  %19 = bitcast %struct.gs_vector3_s* %BlackPoint to i8*
  %20 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd_old, align 8, !tbaa !5
  %points13 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %20, i32 0, i32 4
  %BlackPoint14 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points13, i32 0, i32 1
  %21 = bitcast %struct.gs_vector3_s* %BlackPoint14 to i8*
  %call15 = call i32 @memcmp(i8* %19, i8* %21, i64 12) #10
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.end, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %land.lhs.true.11
  %22 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %22, i32 0, i32 5
  %23 = bitcast %struct.gs_matrix3_s* %MatrixPQR to i8*
  %24 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd_old, align 8, !tbaa !5
  %MatrixPQR18 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %24, i32 0, i32 5
  %25 = bitcast %struct.gs_matrix3_s* %MatrixPQR18 to i8*
  %call19 = call i32 @memcmp(i8* %23, i8* %25, i64 40) #10
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.end, label %land.lhs.true.21

land.lhs.true.21:                                 ; preds = %land.lhs.true.17
  %26 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %RangePQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %26, i32 0, i32 6
  %27 = bitcast %struct.gs_range3_s* %RangePQR to i8*
  %28 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd_old, align 8, !tbaa !5
  %RangePQR22 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %28, i32 0, i32 6
  %29 = bitcast %struct.gs_range3_s* %RangePQR22 to i8*
  %call23 = call i32 @memcmp(i8* %27, i8* %29, i64 24) #10
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.21
  %30 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %TransformPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %30, i32 0, i32 7
  %31 = bitcast %struct.gs_cie_transform_proc3_s* %TransformPQR to i8*
  %32 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd_old, align 8, !tbaa !5
  %TransformPQR25 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %32, i32 0, i32 7
  %33 = bitcast %struct.gs_cie_transform_proc3_s* %TransformPQR25 to i8*
  %call26 = call i32 @memcmp(i8* %31, i8* %33, i64 40) #10
  %tobool27 = icmp ne i32 %call26, 0
  %lnot = xor i1 %tobool27, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.21, %land.lhs.true.17, %land.lhs.true.11, %land.lhs.true.7, %if.end.5
  %34 = phi i1 [ false, %land.lhs.true.21 ], [ false, %land.lhs.true.17 ], [ false, %land.lhs.true.11 ], [ false, %land.lhs.true.7 ], [ false, %if.end.5 ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %34 to i32
  store i32 %land.ext, i32* %joint_ok, align 4, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %land.end
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_render28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %35, i32 0, i32 42
  %36 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render28, align 8, !tbaa !78
  %37 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %cmp29 = icmp ne %struct.gs_cie_render_s* %36, %37
  br i1 %cmp29, label %if.then.30, label %if.end.81

if.then.30:                                       ; preds = %do.body
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.30
  %38 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %tobool32 = icmp ne %struct.gs_cie_render_s* %38, null
  br i1 %tobool32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %do.body.31
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %39 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %39, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %40 = load i64, i64* %ref_count, align 8, !tbaa !101
  %inc = add nsw i64 %40, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !101
  br label %do.body.35

do.body.35:                                       ; preds = %do.body.34
  br label %do.cond

do.cond:                                          ; preds = %do.body.35
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.36

do.cond.36:                                       ; preds = %do.end
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.31
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_render42 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %41, i32 0, i32 42
  %42 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render42, align 8, !tbaa !78
  %tobool43 = icmp ne %struct.gs_cie_render_s* %42, null
  br i1 %tobool43, label %if.then.44, label %if.end.77

if.then.44:                                       ; preds = %do.body.41
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.body.45
  br label %do.cond.47

do.cond.47:                                       ; preds = %do.body.46
  br label %do.end.48

do.end.48:                                        ; preds = %do.cond.47
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_render49 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %43, i32 0, i32 42
  %44 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render49, align 8, !tbaa !78
  %rc50 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %44, i32 0, i32 1
  %ref_count51 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc50, i32 0, i32 0
  %45 = load i64, i64* %ref_count51, align 8, !tbaa !101
  %add = add nsw i64 %45, -1
  store i64 %add, i64* %ref_count51, align 8, !tbaa !101
  br label %do.cond.52

do.cond.52:                                       ; preds = %do.end.48
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  %46 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_render54 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %46, i32 0, i32 42
  %47 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render54, align 8, !tbaa !78
  %rc55 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %47, i32 0, i32 1
  %ref_count56 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc55, i32 0, i32 0
  %48 = load i64, i64* %ref_count56, align 8, !tbaa !101
  %tobool57 = icmp ne i64 %48, 0
  br i1 %tobool57, label %if.else, label %if.then.58

if.then.58:                                       ; preds = %do.end.53
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  br label %do.body.60

do.body.60:                                       ; preds = %do.body.59
  br label %do.cond.61

do.cond.61:                                       ; preds = %do.body.60
  br label %do.end.62

do.end.62:                                        ; preds = %do.cond.61
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_render63 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %49, i32 0, i32 42
  %50 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render63, align 8, !tbaa !78
  %rc64 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %50, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc64, i32 0, i32 2
  %51 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !102
  %52 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_render65 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %52, i32 0, i32 42
  %53 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render65, align 8, !tbaa !78
  %rc66 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %53, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc66, i32 0, i32 1
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !103
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_render67 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %55, i32 0, i32 42
  %56 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render67, align 8, !tbaa !78
  %57 = bitcast %struct.gs_cie_render_s* %56 to i8*
  call void %51(%struct.gs_memory_s* %54, i8* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #7
  br label %do.cond.68

do.cond.68:                                       ; preds = %do.end.62
  br label %do.end.69

do.end.69:                                        ; preds = %do.cond.68
  br label %do.body.70

do.body.70:                                       ; preds = %do.end.69
  br label %do.cond.71

do.cond.71:                                       ; preds = %do.body.70
  br label %do.end.72

do.end.72:                                        ; preds = %do.cond.71
  br label %if.end.76

if.else:                                          ; preds = %do.end.53
  br label %do.body.73

do.body.73:                                       ; preds = %if.else
  br label %do.cond.74

do.cond.74:                                       ; preds = %do.body.73
  br label %do.end.75

do.end.75:                                        ; preds = %do.cond.74
  br label %if.end.76

if.end.76:                                        ; preds = %do.end.75, %do.end.72
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %do.body.41
  br label %do.cond.78

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79

do.end.79:                                        ; preds = %do.cond.78
  %58 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_render80 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %59, i32 0, i32 42
  store %struct.gs_cie_render_s* %58, %struct.gs_cie_render_s** %cie_render80, align 8, !tbaa !78
  br label %if.end.81

if.end.81:                                        ; preds = %do.end.79, %do.body
  br label %do.cond.82

do.cond.82:                                       ; preds = %if.end.81
  br label %do.end.83

do.end.83:                                        ; preds = %do.cond.82
  %60 = load i32, i32* %joint_ok, align 4, !tbaa !14
  %tobool84 = icmp ne i32 %60, 0
  br i1 %tobool84, label %if.end.87, label %if.then.85

if.then.85:                                       ; preds = %do.end.83
  %61 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %call86 = call i32 @gs_cie_cs_complete(%struct.gs_state_s* %61, i32 1) #7
  store i32 %call86, i32* %code, align 4, !tbaa !14
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %do.end.83
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %62, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx, i32 0, i32 2
  %63 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !104
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %63, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type, align 8, !tbaa !106
  %64 = load i32, i32* %code, align 4, !tbaa !14
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.87, %if.then.4, %if.then
  %65 = bitcast i32* %joint_ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast %struct.gs_cie_render_s** %pcrd_old to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define i32 @gs_cie_render_complete(%struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %retval = alloca i32, align 4
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %c = alloca i32, align 4
  %f = alloca double, align 8
  %pcache = alloca %struct.gx_cie_float_fixed_cache_s*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %prange = alloca %struct.gs_range_s*, align 8
  %scale = alloca double, align 8
  %v = alloca float, align 4
  %itemp = alloca i32, align 4
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %status = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 0
  %2 = load i32, i32* %status, align 4, !tbaa !113
  %cmp = icmp uge i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %call = call i32 @gs_cie_render_sample(%struct.gs_cie_render_s* %3) #7
  store i32 %call, i32* %code, align 4, !tbaa !14
  %4 = load i32, i32* %code, align 4, !tbaa !14
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* %code, align 4, !tbaa !14
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixABCEncode = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %6, i32 0, i32 17
  %7 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %7, i32 0, i32 11
  %8 = bitcast %struct.gs_matrix3_s* %MatrixABCEncode to i8*
  %9 = bitcast %struct.gs_matrix3_s* %MatrixABC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 40, i32 4, i1 false), !tbaa.struct !114
  %10 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast double* %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32 0, i32* %c, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc.70, %if.end.3
  %12 = load i32, i32* %c, align 4, !tbaa !14
  %cmp4 = icmp slt i32 %12, 3
  br i1 %cmp4, label %for.body, label %for.end.72

for.body:                                         ; preds = %for.cond
  %13 = bitcast %struct.gx_cie_float_fixed_cache_s** %pcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %c, align 4, !tbaa !14
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %15, i32 0, i32 22
  %EncodeABC = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC, i32 0, i64 %idxprom
  store %struct.gx_cie_float_fixed_cache_s* %arrayidx, %struct.gx_cie_float_fixed_cache_s** %pcache, align 8, !tbaa !5
  %16 = load i32, i32* %c, align 4, !tbaa !14
  %idxprom5 = sext i32 %16 to i64
  %17 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches6 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %17, i32 0, i32 22
  %EncodeLMN = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches6, i32 0, i32 0
  %caches7 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %EncodeLMN, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches7, i32 0, i64 %idxprom5
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx8, i32 0, i32 0
  %18 = load i32, i32* %c, align 4, !tbaa !14
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %RangeLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %19, i32 0, i32 10
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeLMN, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom9
  call void @cie_cache_restrict(%struct.cie_cache_floats_s* %floats, %struct.gs_range_s* %arrayidx10) #7
  %20 = load i32, i32* %c, align 4, !tbaa !14
  %idxprom11 = sext i32 %20 to i64
  %21 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches12 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %21, i32 0, i32 22
  %EncodeABC13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches12, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC13, i32 0, i64 %idxprom11
  %floats15 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx14, i32 0, i32 0
  %22 = load i32, i32* %c, align 4, !tbaa !14
  %idxprom16 = sext i32 %22 to i64
  %23 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %RangeABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %23, i32 0, i32 13
  %ranges17 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges17, i32 0, i64 %idxprom16
  call void @cie_cache_restrict(%struct.cie_cache_floats_s* %floats15, %struct.gs_range_s* %arrayidx18) #7
  %24 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %RenderTable = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %24, i32 0, i32 14
  %lookup = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable, i32 0, i32 0
  %table = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup, i32 0, i32 3
  %25 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !115
  %cmp19 = icmp eq %struct.gs_const_string_s* %25, null
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.body
  %26 = load %struct.gx_cie_float_fixed_cache_s*, %struct.gx_cie_float_fixed_cache_s** %pcache, align 8, !tbaa !5
  %floats21 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %26, i32 0, i32 0
  call void @cie_cache_restrict(%struct.cie_cache_floats_s* %floats21, %struct.gs_range_s* getelementptr inbounds (%struct.gs_range3_s, %struct.gs_range3_s* @Range3_default, i32 0, i32 0, i64 0)) #7
  %27 = load %struct.gx_cie_float_fixed_cache_s*, %struct.gx_cie_float_fixed_cache_s** %pcache, align 8, !tbaa !5
  %floats22 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %27, i32 0, i32 0
  %28 = load %struct.gx_cie_float_fixed_cache_s*, %struct.gx_cie_float_fixed_cache_s** %pcache, align 8, !tbaa !5
  %fixeds = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %28, i32 0, i32 1
  %fracs = bitcast %union.if_* %fixeds to %struct.cie_cache_fracs_s*
  call void @gs_cie_cache_to_fracs(%struct.cie_cache_floats_s* %floats22, %struct.cie_cache_fracs_s* %fracs) #7
  %29 = load %struct.gx_cie_float_fixed_cache_s*, %struct.gx_cie_float_fixed_cache_s** %pcache, align 8, !tbaa !5
  %fixeds23 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %29, i32 0, i32 1
  %fracs24 = bitcast %union.if_* %fixeds23 to %struct.cie_cache_fracs_s*
  %params = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs24, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params, i32 0, i32 0
  store i32 0, i32* %is_identity, align 4, !tbaa !116
  br label %if.end.69

if.else:                                          ; preds = %for.body
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load i32, i32* %c, align 4, !tbaa !14
  %idxprom25 = sext i32 %32 to i64
  %33 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %RenderTable26 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %33, i32 0, i32 14
  %lookup27 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable26, i32 0, i32 0
  %dims = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup27, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i64 %idxprom25
  %34 = load i32, i32* %arrayidx28, align 4, !tbaa !14
  store i32 %34, i32* %n, align 4, !tbaa !14
  %35 = bitcast %struct.gs_range_s** %prange to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %RangeABC29 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %36, i32 0, i32 13
  %ranges30 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC29, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges30, i32 0, i32 0
  %37 = load i32, i32* %c, align 4, !tbaa !14
  %idx.ext = sext i32 %37 to i64
  %add.ptr = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arraydecay, i64 %idx.ext
  store %struct.gs_range_s* %add.ptr, %struct.gs_range_s** %prange, align 8, !tbaa !5
  %38 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = load i32, i32* %n, align 4, !tbaa !14
  %sub = sub nsw i32 %39, 1
  %conv = sitofp i32 %sub to float
  %40 = load %struct.gs_range_s*, %struct.gs_range_s** %prange, align 8, !tbaa !5
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %40, i32 0, i32 1
  %41 = load float, float* %rmax, align 4, !tbaa !24
  %42 = load %struct.gs_range_s*, %struct.gs_range_s** %prange, align 8, !tbaa !5
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %42, i32 0, i32 0
  %43 = load float, float* %rmin, align 4, !tbaa !22
  %sub31 = fsub float %41, %43
  %div = fdiv float %conv, %sub31
  %conv32 = fpext float %div to double
  store double %conv32, double* %scale, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %if.else
  %44 = load i32, i32* %i, align 4, !tbaa !14
  %cmp34 = icmp slt i32 %44, 512
  br i1 %cmp34, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.33
  %45 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom37 = sext i32 %46 to i64
  %47 = load %struct.gx_cie_float_fixed_cache_s*, %struct.gx_cie_float_fixed_cache_s** %pcache, align 8, !tbaa !5
  %floats38 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %47, i32 0, i32 0
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats38, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 %idxprom37
  %48 = load float, float* %arrayidx39, align 4, !tbaa !15
  %49 = load %struct.gs_range_s*, %struct.gs_range_s** %prange, align 8, !tbaa !5
  %rmin40 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %49, i32 0, i32 0
  %50 = load float, float* %rmin40, align 4, !tbaa !22
  %sub41 = fsub float %48, %50
  %conv42 = fpext float %sub41 to double
  %51 = load double, double* %scale, align 8, !tbaa !1
  %mul = fmul double %conv42, %51
  %conv43 = fptrunc double %mul to float
  store float %conv43, float* %v, align 4, !tbaa !15
  %52 = bitcast i32* %itemp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  br label %do.body

do.body:                                          ; preds = %for.body.36
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %53 = load float, float* %v, align 4, !tbaa !15
  %mul44 = fmul float %53, 1.024000e+03
  %conv45 = fptosi float %mul44 to i32
  store i32 %conv45, i32* %itemp, align 4, !tbaa !14
  %54 = load i32, i32* %n, align 4, !tbaa !14
  %shl = shl i32 %54, 10
  %cmp46 = icmp uge i32 %conv45, %shl
  br i1 %cmp46, label %cond.true, label %cond.false.53

cond.true:                                        ; preds = %do.end
  %55 = load i32, i32* %itemp, align 4, !tbaa !14
  %cmp48 = icmp slt i32 %55, 0
  br i1 %cmp48, label %cond.true.50, label %cond.false

cond.true.50:                                     ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %56 = load i32, i32* %n, align 4, !tbaa !14
  %shl51 = shl i32 %56, 10
  %sub52 = sub nsw i32 %shl51, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.50
  %cond = phi i32 [ 0, %cond.true.50 ], [ %sub52, %cond.false ]
  br label %cond.end.54

cond.false.53:                                    ; preds = %do.end
  %57 = load i32, i32* %itemp, align 4, !tbaa !14
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.end
  %cond55 = phi i32 [ %cond, %cond.end ], [ %57, %cond.false.53 ]
  %58 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom56 = sext i32 %58 to i64
  %59 = load %struct.gx_cie_float_fixed_cache_s*, %struct.gx_cie_float_fixed_cache_s** %pcache, align 8, !tbaa !5
  %fixeds57 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %59, i32 0, i32 1
  %ints = bitcast %union.if_* %fixeds57 to %struct.cie_cache_ints_s*
  %values58 = getelementptr inbounds %struct.cie_cache_ints_s, %struct.cie_cache_ints_s* %ints, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [512 x i32], [512 x i32]* %values58, i32 0, i64 %idxprom56
  store i32 %cond55, i32* %arrayidx59, align 4, !tbaa !14
  %60 = bitcast i32* %itemp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.54
  %62 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  %63 = load %struct.gx_cie_float_fixed_cache_s*, %struct.gx_cie_float_fixed_cache_s** %pcache, align 8, !tbaa !5
  %fixeds60 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %63, i32 0, i32 1
  %ints61 = bitcast %union.if_* %fixeds60 to %struct.cie_cache_ints_s*
  %params62 = getelementptr inbounds %struct.cie_cache_ints_s, %struct.cie_cache_ints_s* %ints61, i32 0, i32 0
  %64 = load %struct.gx_cie_float_fixed_cache_s*, %struct.gx_cie_float_fixed_cache_s** %pcache, align 8, !tbaa !5
  %floats63 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %64, i32 0, i32 0
  %params64 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats63, i32 0, i32 0
  %65 = bitcast %struct.cie_cache_params_s* %params62 to i8*
  %66 = bitcast %struct.cie_cache_params_s* %params64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 40, i32 8, i1 false), !tbaa.struct !118
  %67 = load %struct.gx_cie_float_fixed_cache_s*, %struct.gx_cie_float_fixed_cache_s** %pcache, align 8, !tbaa !5
  %fixeds65 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %67, i32 0, i32 1
  %ints66 = bitcast %union.if_* %fixeds65 to %struct.cie_cache_ints_s*
  %params67 = getelementptr inbounds %struct.cie_cache_ints_s, %struct.cie_cache_ints_s* %ints66, i32 0, i32 0
  %is_identity68 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params67, i32 0, i32 0
  store i32 0, i32* %is_identity68, align 4, !tbaa !119
  %68 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.gs_range_s** %prange to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  br label %if.end.69

if.end.69:                                        ; preds = %for.end, %if.then.20
  %72 = bitcast %struct.gx_cie_float_fixed_cache_s** %pcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69
  %73 = load i32, i32* %c, align 4, !tbaa !14
  %inc71 = add nsw i32 %73, 1
  store i32 %inc71, i32* %c, align 4, !tbaa !14
  br label %for.cond

for.end.72:                                       ; preds = %for.cond
  %74 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches73 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %74, i32 0, i32 22
  %EncodeABC74 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches73, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC74, i32 0, i64 0
  %floats76 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx75, i32 0, i32 0
  %params77 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats76, i32 0, i32 0
  %factor = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params77, i32 0, i32 2
  %75 = load double, double* %factor, align 8, !tbaa !121
  store double %75, double* %f, align 8, !tbaa !1
  %76 = load double, double* %f, align 8, !tbaa !1
  %77 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixABCEncode78 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %77, i32 0, i32 17
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABCEncode78, i32 0, i32 0
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu, i32 0, i32 0
  %78 = load float, float* %u, align 4, !tbaa !123
  %conv79 = fpext float %78 to double
  %mul80 = fmul double %conv79, %76
  %conv81 = fptrunc double %mul80 to float
  store float %conv81, float* %u, align 4, !tbaa !123
  %79 = load double, double* %f, align 8, !tbaa !1
  %80 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixABCEncode82 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %80, i32 0, i32 17
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABCEncode82, i32 0, i32 1
  %u83 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv, i32 0, i32 0
  %81 = load float, float* %u83, align 4, !tbaa !124
  %conv84 = fpext float %81 to double
  %mul85 = fmul double %conv84, %79
  %conv86 = fptrunc double %mul85 to float
  store float %conv86, float* %u83, align 4, !tbaa !124
  %82 = load double, double* %f, align 8, !tbaa !1
  %83 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixABCEncode87 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %83, i32 0, i32 17
  %cw = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABCEncode87, i32 0, i32 2
  %u88 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw, i32 0, i32 0
  %84 = load float, float* %u88, align 4, !tbaa !125
  %conv89 = fpext float %84 to double
  %mul90 = fmul double %conv89, %82
  %conv91 = fptrunc double %mul90 to float
  store float %conv91, float* %u88, align 4, !tbaa !125
  %85 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches92 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %85, i32 0, i32 22
  %EncodeABC93 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches92, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC93, i32 0, i64 0
  %floats95 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx94, i32 0, i32 0
  %params96 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats95, i32 0, i32 0
  %base = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params96, i32 0, i32 1
  %86 = load double, double* %base, align 8, !tbaa !126
  %87 = load double, double* %f, align 8, !tbaa !1
  %mul97 = fmul double %86, %87
  %conv98 = fptrunc double %mul97 to float
  %88 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %EncodeABC_base = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %88, i32 0, i32 18
  %arrayidx99 = getelementptr inbounds [3 x float], [3 x float]* %EncodeABC_base, i32 0, i64 0
  store float %conv98, float* %arrayidx99, align 4, !tbaa !15
  %89 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches100 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %89, i32 0, i32 22
  %EncodeABC101 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches100, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC101, i32 0, i64 1
  %floats103 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx102, i32 0, i32 0
  %params104 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats103, i32 0, i32 0
  %factor105 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params104, i32 0, i32 2
  %90 = load double, double* %factor105, align 8, !tbaa !121
  store double %90, double* %f, align 8, !tbaa !1
  %91 = load double, double* %f, align 8, !tbaa !1
  %92 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixABCEncode106 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %92, i32 0, i32 17
  %cu107 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABCEncode106, i32 0, i32 0
  %v108 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu107, i32 0, i32 1
  %93 = load float, float* %v108, align 4, !tbaa !127
  %conv109 = fpext float %93 to double
  %mul110 = fmul double %conv109, %91
  %conv111 = fptrunc double %mul110 to float
  store float %conv111, float* %v108, align 4, !tbaa !127
  %94 = load double, double* %f, align 8, !tbaa !1
  %95 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixABCEncode112 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %95, i32 0, i32 17
  %cv113 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABCEncode112, i32 0, i32 1
  %v114 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv113, i32 0, i32 1
  %96 = load float, float* %v114, align 4, !tbaa !128
  %conv115 = fpext float %96 to double
  %mul116 = fmul double %conv115, %94
  %conv117 = fptrunc double %mul116 to float
  store float %conv117, float* %v114, align 4, !tbaa !128
  %97 = load double, double* %f, align 8, !tbaa !1
  %98 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixABCEncode118 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %98, i32 0, i32 17
  %cw119 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABCEncode118, i32 0, i32 2
  %v120 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw119, i32 0, i32 1
  %99 = load float, float* %v120, align 4, !tbaa !129
  %conv121 = fpext float %99 to double
  %mul122 = fmul double %conv121, %97
  %conv123 = fptrunc double %mul122 to float
  store float %conv123, float* %v120, align 4, !tbaa !129
  %100 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches124 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %100, i32 0, i32 22
  %EncodeABC125 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches124, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC125, i32 0, i64 1
  %floats127 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx126, i32 0, i32 0
  %params128 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats127, i32 0, i32 0
  %base129 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params128, i32 0, i32 1
  %101 = load double, double* %base129, align 8, !tbaa !126
  %102 = load double, double* %f, align 8, !tbaa !1
  %mul130 = fmul double %101, %102
  %conv131 = fptrunc double %mul130 to float
  %103 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %EncodeABC_base132 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %103, i32 0, i32 18
  %arrayidx133 = getelementptr inbounds [3 x float], [3 x float]* %EncodeABC_base132, i32 0, i64 1
  store float %conv131, float* %arrayidx133, align 4, !tbaa !15
  %104 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches134 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %104, i32 0, i32 22
  %EncodeABC135 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches134, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC135, i32 0, i64 2
  %floats137 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx136, i32 0, i32 0
  %params138 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats137, i32 0, i32 0
  %factor139 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params138, i32 0, i32 2
  %105 = load double, double* %factor139, align 8, !tbaa !121
  store double %105, double* %f, align 8, !tbaa !1
  %106 = load double, double* %f, align 8, !tbaa !1
  %107 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixABCEncode140 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %107, i32 0, i32 17
  %cu141 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABCEncode140, i32 0, i32 0
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu141, i32 0, i32 2
  %108 = load float, float* %w, align 4, !tbaa !130
  %conv142 = fpext float %108 to double
  %mul143 = fmul double %conv142, %106
  %conv144 = fptrunc double %mul143 to float
  store float %conv144, float* %w, align 4, !tbaa !130
  %109 = load double, double* %f, align 8, !tbaa !1
  %110 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixABCEncode145 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %110, i32 0, i32 17
  %cv146 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABCEncode145, i32 0, i32 1
  %w147 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv146, i32 0, i32 2
  %111 = load float, float* %w147, align 4, !tbaa !131
  %conv148 = fpext float %111 to double
  %mul149 = fmul double %conv148, %109
  %conv150 = fptrunc double %mul149 to float
  store float %conv150, float* %w147, align 4, !tbaa !131
  %112 = load double, double* %f, align 8, !tbaa !1
  %113 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixABCEncode151 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %113, i32 0, i32 17
  %cw152 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABCEncode151, i32 0, i32 2
  %w153 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw152, i32 0, i32 2
  %114 = load float, float* %w153, align 4, !tbaa !132
  %conv154 = fpext float %114 to double
  %mul155 = fmul double %conv154, %112
  %conv156 = fptrunc double %mul155 to float
  store float %conv156, float* %w153, align 4, !tbaa !132
  %115 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches157 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %115, i32 0, i32 22
  %EncodeABC158 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches157, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC158, i32 0, i64 2
  %floats160 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx159, i32 0, i32 0
  %params161 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats160, i32 0, i32 0
  %base162 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params161, i32 0, i32 1
  %116 = load double, double* %base162, align 8, !tbaa !126
  %117 = load double, double* %f, align 8, !tbaa !1
  %mul163 = fmul double %116, %117
  %conv164 = fptrunc double %mul163 to float
  %118 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %EncodeABC_base165 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %118, i32 0, i32 18
  %arrayidx166 = getelementptr inbounds [3 x float], [3 x float]* %EncodeABC_base165, i32 0, i64 2
  store float %conv164, float* %arrayidx166, align 4, !tbaa !15
  %119 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixABCEncode167 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %119, i32 0, i32 17
  %is_identity168 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABCEncode167, i32 0, i32 3
  store i32 0, i32* %is_identity168, align 4, !tbaa !133
  %120 = bitcast double* %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches169 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %122, i32 0, i32 22
  %EncodeLMN170 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches169, i32 0, i32 0
  %123 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixABCEncode171 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %123, i32 0, i32 17
  %call172 = call i32 @cie_cache_mult3(%struct.gx_cie_vector_cache3_s* %EncodeLMN170, %struct.gs_matrix3_s* %MatrixABCEncode171, double 1.000000e-03) #7
  %124 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %status173 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %124, i32 0, i32 0
  store i32 3, i32* %status173, align 4, !tbaa !113
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.72, %if.then.2, %if.then
  %125 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = load i32, i32* %retval
  ret i32 %126
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define %struct.gs_cie_render_s* @gs_currentcolorrendering(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_render = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 42
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render, align 8, !tbaa !78
  ret %struct.gs_cie_render_s* %1
}

; Function Attrs: nounwind uwtable
define %struct.gx_cie_joint_caches_s* @gx_unshare_cie_caches(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca %struct.gx_cie_joint_caches_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pjc = alloca %struct.gx_cie_joint_caches_s*, align 8
  %new = alloca %struct.gx_cie_joint_caches_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gx_cie_joint_caches_s** %pjc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_joint_caches = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 48
  %2 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !134
  store %struct.gx_cie_joint_caches_s* %2, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_joint_caches1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 48
  %4 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches1, align 8, !tbaa !134
  %cmp = icmp eq %struct.gx_cie_joint_caches_s* %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_joint_caches2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 48
  %6 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches2, align 8, !tbaa !134
  %rc = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %6, i32 0, i32 4
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %7 = load i64, i64* %ref_count, align 8, !tbaa !135
  %cmp3 = icmp sgt i64 %7, 1
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_joint_caches5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 48
  %9 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches5, align 8, !tbaa !134
  %rc6 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %9, i32 0, i32 4
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc6, i32 0, i32 1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !136
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %memory7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !137
  %cmp8 = icmp ne %struct.gs_memory_s* %10, %12
  br i1 %cmp8, label %if.then, label %if.end.39

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %do.body
  %13 = bitcast %struct.gx_cie_joint_caches_s** %new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  br label %do.body.9

do.body.9:                                        ; preds = %if.then
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %memory10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !137
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %16 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !138
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %memory11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 1
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !137
  %call = call i8* %16(%struct.gs_memory_s* %18, %struct.gs_memory_struct_type_s* @st_joint_caches, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)) #7
  %19 = bitcast i8* %call to %struct.gx_cie_joint_caches_s*
  store %struct.gx_cie_joint_caches_s* %19, %struct.gx_cie_joint_caches_s** %new, align 8, !tbaa !5
  %cmp12 = icmp eq %struct.gx_cie_joint_caches_s* %19, null
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body.9
  store %struct.gx_cie_joint_caches_s* null, %struct.gx_cie_joint_caches_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body.9
  br label %do.body.14

do.body.14:                                       ; preds = %if.else
  %20 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %new, align 8, !tbaa !5
  %rc15 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %20, i32 0, i32 4
  %ref_count16 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc15, i32 0, i32 0
  store i64 1, i64* %ref_count16, align 8, !tbaa !135
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %memory17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 1
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !137
  %23 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %new, align 8, !tbaa !5
  %rc18 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %23, i32 0, i32 4
  %memory19 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 1
  store %struct.gs_memory_s* %22, %struct.gs_memory_s** %memory19, align 8, !tbaa !136
  %24 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %new, align 8, !tbaa !5
  %rc20 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %24, i32 0, i32 4
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc20, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !141
  br label %do.body.21

do.body.21:                                       ; preds = %do.body.14
  br label %do.cond

do.cond:                                          ; preds = %do.body.21
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.end
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end

if.end:                                           ; preds = %do.end.23
  br label %do.cond.24

do.cond.24:                                       ; preds = %if.end
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_joint_caches26 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 48
  %26 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches26, align 8, !tbaa !134
  %tobool = icmp ne %struct.gx_cie_joint_caches_s* %26, null
  br i1 %tobool, label %if.then.27, label %if.end.37

if.then.27:                                       ; preds = %do.end.25
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.body.28
  br label %do.cond.30

do.cond.30:                                       ; preds = %do.body.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_joint_caches32 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %27, i32 0, i32 48
  %28 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches32, align 8, !tbaa !134
  %rc33 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %28, i32 0, i32 4
  %ref_count34 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc33, i32 0, i32 0
  %29 = load i64, i64* %ref_count34, align 8, !tbaa !135
  %add = add nsw i64 %29, -1
  store i64 %add, i64* %ref_count34, align 8, !tbaa !135
  br label %do.cond.35

do.cond.35:                                       ; preds = %do.end.31
  br label %do.end.36

do.end.36:                                        ; preds = %do.cond.35
  br label %if.end.37

if.end.37:                                        ; preds = %do.end.36, %do.end.25
  %30 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %new, align 8, !tbaa !5
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_joint_caches38 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 48
  store %struct.gx_cie_joint_caches_s* %30, %struct.gx_cie_joint_caches_s** %cie_joint_caches38, align 8, !tbaa !134
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %if.then.13
  %32 = bitcast %struct.gx_cie_joint_caches_s** %new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.47 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.39

if.end.39:                                        ; preds = %cleanup.cont, %lor.lhs.false.4
  br label %do.cond.40

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_joint_caches42 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %33, i32 0, i32 48
  %34 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches42, align 8, !tbaa !134
  %35 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %cmp43 = icmp ne %struct.gx_cie_joint_caches_s* %34, %35
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %do.end.41
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_joint_caches45 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 48
  %37 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches45, align 8, !tbaa !134
  store %struct.gx_cie_joint_caches_s* %37, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %38 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %render_id = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %38, i32 0, i32 1
  store i64 0, i64* %render_id, align 8, !tbaa !142
  %39 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %cspace_id = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %39, i32 0, i32 0
  store i64 0, i64* %cspace_id, align 8, !tbaa !143
  %40 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %status = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %40, i32 0, i32 3
  store i32 0, i32* %status, align 4, !tbaa !54
  %41 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %id_status = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %41, i32 0, i32 2
  store i32 0, i32* %id_status, align 4, !tbaa !144
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %do.end.41
  %42 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  store %struct.gx_cie_joint_caches_s* %42, %struct.gx_cie_joint_caches_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

cleanup.47:                                       ; preds = %if.end.46, %cleanup
  %43 = bitcast %struct.gx_cie_joint_caches_s** %pjc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %retval
  ret %struct.gx_cie_joint_caches_s* %44
}

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.gx_cie_joint_caches_s* @gx_currentciecaches(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %cie_joint_caches = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 48
  %1 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !134
  ret %struct.gx_cie_joint_caches_s* %1
}

; Function Attrs: nounwind readnone
declare double @floor(double) #5

; Function Attrs: nounwind readnone
declare double @ceil(double) #5

; Function Attrs: nounwind
declare double @frexp(double, i32*) #6

; Function Attrs: nounwind
declare double @ldexp(double, i32) #6

; Function Attrs: nounwind uwtable
define i32 @gs_cie_render_init(%struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %retval = alloca i32, align 4
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %PQR_inverse = alloca %struct.gs_matrix3_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_matrix3_s* %PQR_inverse to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %status = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 0
  %2 = load i32, i32* %status, align 4, !tbaa !113
  %cmp = icmp uge i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %3, i32 0, i32 8
  call void @cie_matrix_init(%struct.gs_matrix3_s* %MatrixLMN) #7
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.cond.2

do.cond.2:                                        ; preds = %do.body.1
  br label %do.end.3

do.end.3:                                         ; preds = %do.cond.2
  %4 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %4, i32 0, i32 11
  call void @cie_matrix_init(%struct.gs_matrix3_s* %MatrixABC) #7
  br label %do.body.4

do.body.4:                                        ; preds = %do.end.3
  br label %do.cond.5

do.cond.5:                                        ; preds = %do.body.4
  br label %do.end.6

do.end.6:                                         ; preds = %do.cond.5
  %5 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %5, i32 0, i32 5
  call void @cie_matrix_init(%struct.gs_matrix3_s* %MatrixPQR) #7
  %6 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixPQR7 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %6, i32 0, i32 5
  call void @cie_invert3(%struct.gs_matrix3_s* %MatrixPQR7, %struct.gs_matrix3_s* %PQR_inverse) #7
  %7 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixLMN8 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %7, i32 0, i32 8
  %8 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixPQR_inverse_LMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %8, i32 0, i32 19
  call void @cie_matrix_mult3(%struct.gs_matrix3_s* %MatrixLMN8, %struct.gs_matrix3_s* %PQR_inverse, %struct.gs_matrix3_s* %MatrixPQR_inverse_LMN) #7
  %9 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %RangePQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %9, i32 0, i32 6
  %10 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixPQR_inverse_LMN9 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %10, i32 0, i32 19
  %11 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %DomainLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %11, i32 0, i32 15
  call void @cie_transform_range3(%struct.gs_range3_s* %RangePQR, %struct.gs_matrix3_s* %MatrixPQR_inverse_LMN9, %struct.gs_range3_s* %DomainLMN) #7
  %12 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %RangeLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %12, i32 0, i32 10
  %13 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixABC10 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %13, i32 0, i32 11
  %14 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %DomainABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %14, i32 0, i32 16
  call void @cie_transform_range3(%struct.gs_range3_s* %RangeLMN, %struct.gs_matrix3_s* %MatrixABC10, %struct.gs_range3_s* %DomainABC) #7
  %15 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %points = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %15, i32 0, i32 4
  %WhitePoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points, i32 0, i32 0
  %16 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixPQR11 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %16, i32 0, i32 5
  %17 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %wdpqr = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %17, i32 0, i32 20
  call void @cie_mult3(%struct.gs_vector3_s* %WhitePoint, %struct.gs_matrix3_s* %MatrixPQR11, %struct.gs_vector3_s* %wdpqr) #7
  %18 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %points12 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %18, i32 0, i32 4
  %BlackPoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points12, i32 0, i32 1
  %19 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixPQR13 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %19, i32 0, i32 5
  %20 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %bdpqr = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %20, i32 0, i32 21
  call void @cie_mult3(%struct.gs_vector3_s* %BlackPoint, %struct.gs_matrix3_s* %MatrixPQR13, %struct.gs_vector3_s* %bdpqr) #7
  %21 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %status14 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %21, i32 0, i32 0
  store i32 1, i32* %status14, align 4, !tbaa !113
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.6, %if.then
  %22 = bitcast %struct.gs_matrix3_s* %PQR_inverse to i8*
  call void @llvm.lifetime.end(i64 40, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal void @cie_invert3(%struct.gs_matrix3_s* %in, %struct.gs_matrix3_s* %out) #0 {
entry:
  %in.addr = alloca %struct.gs_matrix3_s*, align 8
  %out.addr = alloca %struct.gs_matrix3_s*, align 8
  %coA = alloca double, align 8
  %coB = alloca double, align 8
  %coC = alloca double, align 8
  %det = alloca double, align 8
  store %struct.gs_matrix3_s* %in, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  store %struct.gs_matrix3_s* %out, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %0 = bitcast double* %coA to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %1, i32 0, i32 1
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv, i32 0, i32 1
  %2 = load float, float* %v, align 4, !tbaa !35
  %3 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cw = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %3, i32 0, i32 2
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw, i32 0, i32 2
  %4 = load float, float* %w, align 4, !tbaa !38
  %mul = fmul float %2, %4
  %5 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cw1 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %5, i32 0, i32 2
  %v2 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw1, i32 0, i32 1
  %6 = load float, float* %v2, align 4, !tbaa !40
  %7 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cv3 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %7, i32 0, i32 1
  %w4 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv3, i32 0, i32 2
  %8 = load float, float* %w4, align 4, !tbaa !37
  %mul5 = fmul float %6, %8
  %sub = fsub float %mul, %mul5
  %conv = fpext float %sub to double
  store double %conv, double* %coA, align 8, !tbaa !1
  %9 = bitcast double* %coB to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cw6 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %10, i32 0, i32 2
  %v7 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw6, i32 0, i32 1
  %11 = load float, float* %v7, align 4, !tbaa !40
  %12 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %12, i32 0, i32 0
  %w8 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu, i32 0, i32 2
  %13 = load float, float* %w8, align 4, !tbaa !34
  %mul9 = fmul float %11, %13
  %14 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cu10 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %14, i32 0, i32 0
  %v11 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu10, i32 0, i32 1
  %15 = load float, float* %v11, align 4, !tbaa !33
  %16 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cw12 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %16, i32 0, i32 2
  %w13 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw12, i32 0, i32 2
  %17 = load float, float* %w13, align 4, !tbaa !38
  %mul14 = fmul float %15, %17
  %sub15 = fsub float %mul9, %mul14
  %conv16 = fpext float %sub15 to double
  store double %conv16, double* %coB, align 8, !tbaa !1
  %18 = bitcast double* %coC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cu17 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %19, i32 0, i32 0
  %v18 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu17, i32 0, i32 1
  %20 = load float, float* %v18, align 4, !tbaa !33
  %21 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cv19 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %21, i32 0, i32 1
  %w20 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv19, i32 0, i32 2
  %22 = load float, float* %w20, align 4, !tbaa !37
  %mul21 = fmul float %20, %22
  %23 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cv22 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %23, i32 0, i32 1
  %v23 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv22, i32 0, i32 1
  %24 = load float, float* %v23, align 4, !tbaa !35
  %25 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cu24 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %25, i32 0, i32 0
  %w25 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu24, i32 0, i32 2
  %26 = load float, float* %w25, align 4, !tbaa !34
  %mul26 = fmul float %24, %26
  %sub27 = fsub float %mul21, %mul26
  %conv28 = fpext float %sub27 to double
  store double %conv28, double* %coC, align 8, !tbaa !1
  %27 = bitcast double* %det to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cu29 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %28, i32 0, i32 0
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu29, i32 0, i32 0
  %29 = load float, float* %u, align 4, !tbaa !30
  %conv30 = fpext float %29 to double
  %30 = load double, double* %coA, align 8, !tbaa !1
  %mul31 = fmul double %conv30, %30
  %31 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cv32 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %31, i32 0, i32 1
  %u33 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv32, i32 0, i32 0
  %32 = load float, float* %u33, align 4, !tbaa !36
  %conv34 = fpext float %32 to double
  %33 = load double, double* %coB, align 8, !tbaa !1
  %mul35 = fmul double %conv34, %33
  %add = fadd double %mul31, %mul35
  %34 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cw36 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %34, i32 0, i32 2
  %u37 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw36, i32 0, i32 0
  %35 = load float, float* %u37, align 4, !tbaa !39
  %conv38 = fpext float %35 to double
  %36 = load double, double* %coC, align 8, !tbaa !1
  %mul39 = fmul double %conv38, %36
  %add40 = fadd double %add, %mul39
  store double %add40, double* %det, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %37 = load double, double* %coA, align 8, !tbaa !1
  %38 = load double, double* %det, align 8, !tbaa !1
  %div = fdiv double %37, %38
  %conv41 = fptrunc double %div to float
  %39 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cu42 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %39, i32 0, i32 0
  %u43 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu42, i32 0, i32 0
  store float %conv41, float* %u43, align 4, !tbaa !30
  %40 = load double, double* %coB, align 8, !tbaa !1
  %41 = load double, double* %det, align 8, !tbaa !1
  %div44 = fdiv double %40, %41
  %conv45 = fptrunc double %div44 to float
  %42 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cu46 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %42, i32 0, i32 0
  %v47 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu46, i32 0, i32 1
  store float %conv45, float* %v47, align 4, !tbaa !33
  %43 = load double, double* %coC, align 8, !tbaa !1
  %44 = load double, double* %det, align 8, !tbaa !1
  %div48 = fdiv double %43, %44
  %conv49 = fptrunc double %div48 to float
  %45 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cu50 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %45, i32 0, i32 0
  %w51 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu50, i32 0, i32 2
  store float %conv49, float* %w51, align 4, !tbaa !34
  %46 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cw52 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %46, i32 0, i32 2
  %u53 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw52, i32 0, i32 0
  %47 = load float, float* %u53, align 4, !tbaa !39
  %48 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cv54 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %48, i32 0, i32 1
  %w55 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv54, i32 0, i32 2
  %49 = load float, float* %w55, align 4, !tbaa !37
  %mul56 = fmul float %47, %49
  %50 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cv57 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %50, i32 0, i32 1
  %u58 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv57, i32 0, i32 0
  %51 = load float, float* %u58, align 4, !tbaa !36
  %52 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cw59 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %52, i32 0, i32 2
  %w60 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw59, i32 0, i32 2
  %53 = load float, float* %w60, align 4, !tbaa !38
  %mul61 = fmul float %51, %53
  %sub62 = fsub float %mul56, %mul61
  %conv63 = fpext float %sub62 to double
  %54 = load double, double* %det, align 8, !tbaa !1
  %div64 = fdiv double %conv63, %54
  %conv65 = fptrunc double %div64 to float
  %55 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cv66 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %55, i32 0, i32 1
  %u67 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv66, i32 0, i32 0
  store float %conv65, float* %u67, align 4, !tbaa !36
  %56 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cu68 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %56, i32 0, i32 0
  %u69 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu68, i32 0, i32 0
  %57 = load float, float* %u69, align 4, !tbaa !30
  %58 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cw70 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %58, i32 0, i32 2
  %w71 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw70, i32 0, i32 2
  %59 = load float, float* %w71, align 4, !tbaa !38
  %mul72 = fmul float %57, %59
  %60 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cw73 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %60, i32 0, i32 2
  %u74 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw73, i32 0, i32 0
  %61 = load float, float* %u74, align 4, !tbaa !39
  %62 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cu75 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %62, i32 0, i32 0
  %w76 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu75, i32 0, i32 2
  %63 = load float, float* %w76, align 4, !tbaa !34
  %mul77 = fmul float %61, %63
  %sub78 = fsub float %mul72, %mul77
  %conv79 = fpext float %sub78 to double
  %64 = load double, double* %det, align 8, !tbaa !1
  %div80 = fdiv double %conv79, %64
  %conv81 = fptrunc double %div80 to float
  %65 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cv82 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %65, i32 0, i32 1
  %v83 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv82, i32 0, i32 1
  store float %conv81, float* %v83, align 4, !tbaa !35
  %66 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cv84 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %66, i32 0, i32 1
  %u85 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv84, i32 0, i32 0
  %67 = load float, float* %u85, align 4, !tbaa !36
  %68 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cu86 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %68, i32 0, i32 0
  %w87 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu86, i32 0, i32 2
  %69 = load float, float* %w87, align 4, !tbaa !34
  %mul88 = fmul float %67, %69
  %70 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cu89 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %70, i32 0, i32 0
  %u90 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu89, i32 0, i32 0
  %71 = load float, float* %u90, align 4, !tbaa !30
  %72 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cv91 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %72, i32 0, i32 1
  %w92 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv91, i32 0, i32 2
  %73 = load float, float* %w92, align 4, !tbaa !37
  %mul93 = fmul float %71, %73
  %sub94 = fsub float %mul88, %mul93
  %conv95 = fpext float %sub94 to double
  %74 = load double, double* %det, align 8, !tbaa !1
  %div96 = fdiv double %conv95, %74
  %conv97 = fptrunc double %div96 to float
  %75 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cv98 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %75, i32 0, i32 1
  %w99 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv98, i32 0, i32 2
  store float %conv97, float* %w99, align 4, !tbaa !37
  %76 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cv100 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %76, i32 0, i32 1
  %u101 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv100, i32 0, i32 0
  %77 = load float, float* %u101, align 4, !tbaa !36
  %78 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cw102 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %78, i32 0, i32 2
  %v103 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw102, i32 0, i32 1
  %79 = load float, float* %v103, align 4, !tbaa !40
  %mul104 = fmul float %77, %79
  %80 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cw105 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %80, i32 0, i32 2
  %u106 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw105, i32 0, i32 0
  %81 = load float, float* %u106, align 4, !tbaa !39
  %82 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cv107 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %82, i32 0, i32 1
  %v108 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv107, i32 0, i32 1
  %83 = load float, float* %v108, align 4, !tbaa !35
  %mul109 = fmul float %81, %83
  %sub110 = fsub float %mul104, %mul109
  %conv111 = fpext float %sub110 to double
  %84 = load double, double* %det, align 8, !tbaa !1
  %div112 = fdiv double %conv111, %84
  %conv113 = fptrunc double %div112 to float
  %85 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cw114 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %85, i32 0, i32 2
  %u115 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw114, i32 0, i32 0
  store float %conv113, float* %u115, align 4, !tbaa !39
  %86 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cw116 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %86, i32 0, i32 2
  %u117 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw116, i32 0, i32 0
  %87 = load float, float* %u117, align 4, !tbaa !39
  %88 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cu118 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %88, i32 0, i32 0
  %v119 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu118, i32 0, i32 1
  %89 = load float, float* %v119, align 4, !tbaa !33
  %mul120 = fmul float %87, %89
  %90 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cu121 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %90, i32 0, i32 0
  %u122 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu121, i32 0, i32 0
  %91 = load float, float* %u122, align 4, !tbaa !30
  %92 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cw123 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %92, i32 0, i32 2
  %v124 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw123, i32 0, i32 1
  %93 = load float, float* %v124, align 4, !tbaa !40
  %mul125 = fmul float %91, %93
  %sub126 = fsub float %mul120, %mul125
  %conv127 = fpext float %sub126 to double
  %94 = load double, double* %det, align 8, !tbaa !1
  %div128 = fdiv double %conv127, %94
  %conv129 = fptrunc double %div128 to float
  %95 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cw130 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %95, i32 0, i32 2
  %v131 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw130, i32 0, i32 1
  store float %conv129, float* %v131, align 4, !tbaa !40
  %96 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cu132 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %96, i32 0, i32 0
  %u133 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu132, i32 0, i32 0
  %97 = load float, float* %u133, align 4, !tbaa !30
  %98 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cv134 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %98, i32 0, i32 1
  %v135 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv134, i32 0, i32 1
  %99 = load float, float* %v135, align 4, !tbaa !35
  %mul136 = fmul float %97, %99
  %100 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cv137 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %100, i32 0, i32 1
  %u138 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv137, i32 0, i32 0
  %101 = load float, float* %u138, align 4, !tbaa !36
  %102 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cu139 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %102, i32 0, i32 0
  %v140 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu139, i32 0, i32 1
  %103 = load float, float* %v140, align 4, !tbaa !33
  %mul141 = fmul float %101, %103
  %sub142 = fsub float %mul136, %mul141
  %conv143 = fpext float %sub142 to double
  %104 = load double, double* %det, align 8, !tbaa !1
  %div144 = fdiv double %conv143, %104
  %conv145 = fptrunc double %div144 to float
  %105 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cw146 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %105, i32 0, i32 2
  %w147 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw146, i32 0, i32 2
  store float %conv145, float* %w147, align 4, !tbaa !38
  br label %do.body.148

do.body.148:                                      ; preds = %do.end
  br label %do.cond.149

do.cond.149:                                      ; preds = %do.body.148
  br label %do.end.150

do.end.150:                                       ; preds = %do.cond.149
  %106 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %is_identity = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %106, i32 0, i32 3
  %107 = load i32, i32* %is_identity, align 4, !tbaa !41
  %108 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %is_identity151 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %108, i32 0, i32 3
  store i32 %107, i32* %is_identity151, align 4, !tbaa !41
  %109 = bitcast double* %det to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast double* %coC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast double* %coB to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast double* %coA to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @cie_matrix_mult3(%struct.gs_matrix3_s* %ma, %struct.gs_matrix3_s* %mb, %struct.gs_matrix3_s* %mc) #0 {
entry:
  %ma.addr = alloca %struct.gs_matrix3_s*, align 8
  %mb.addr = alloca %struct.gs_matrix3_s*, align 8
  %mc.addr = alloca %struct.gs_matrix3_s*, align 8
  %mprod = alloca %struct.gs_matrix3_s, align 4
  %mp = alloca %struct.gs_matrix3_s*, align 8
  store %struct.gs_matrix3_s* %ma, %struct.gs_matrix3_s** %ma.addr, align 8, !tbaa !5
  store %struct.gs_matrix3_s* %mb, %struct.gs_matrix3_s** %mb.addr, align 8, !tbaa !5
  store %struct.gs_matrix3_s* %mc, %struct.gs_matrix3_s** %mc.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_matrix3_s* %mprod to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = bitcast %struct.gs_matrix3_s** %mp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mc.addr, align 8, !tbaa !5
  %3 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %ma.addr, align 8, !tbaa !5
  %cmp = icmp eq %struct.gs_matrix3_s* %2, %3
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mc.addr, align 8, !tbaa !5
  %5 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mb.addr, align 8, !tbaa !5
  %cmp1 = icmp eq %struct.gs_matrix3_s* %4, %5
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mc.addr, align 8, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_matrix3_s* [ %mprod, %cond.true ], [ %6, %cond.false ]
  store %struct.gs_matrix3_s* %cond, %struct.gs_matrix3_s** %mp, align 8, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %cond.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  br label %do.cond.3

do.cond.3:                                        ; preds = %do.body.2
  br label %do.end.4

do.end.4:                                         ; preds = %do.cond.3
  %7 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mb.addr, align 8, !tbaa !5
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %7, i32 0, i32 0
  %8 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %ma.addr, align 8, !tbaa !5
  %9 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mp, align 8, !tbaa !5
  %cu5 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %9, i32 0, i32 0
  call void @cie_mult3(%struct.gs_vector3_s* %cu, %struct.gs_matrix3_s* %8, %struct.gs_vector3_s* %cu5) #7
  %10 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mb.addr, align 8, !tbaa !5
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %10, i32 0, i32 1
  %11 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %ma.addr, align 8, !tbaa !5
  %12 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mp, align 8, !tbaa !5
  %cv6 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %12, i32 0, i32 1
  call void @cie_mult3(%struct.gs_vector3_s* %cv, %struct.gs_matrix3_s* %11, %struct.gs_vector3_s* %cv6) #7
  %13 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mb.addr, align 8, !tbaa !5
  %cw = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %13, i32 0, i32 2
  %14 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %ma.addr, align 8, !tbaa !5
  %15 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mp, align 8, !tbaa !5
  %cw7 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %15, i32 0, i32 2
  call void @cie_mult3(%struct.gs_vector3_s* %cw, %struct.gs_matrix3_s* %14, %struct.gs_vector3_s* %cw7) #7
  %16 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mp, align 8, !tbaa !5
  call void @cie_matrix_init(%struct.gs_matrix3_s* %16) #7
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.4
  br label %do.cond.9

do.cond.9:                                        ; preds = %do.body.8
  br label %do.end.10

do.end.10:                                        ; preds = %do.cond.9
  %17 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mp, align 8, !tbaa !5
  %18 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mc.addr, align 8, !tbaa !5
  %cmp11 = icmp ne %struct.gs_matrix3_s* %17, %18
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.10
  %19 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mc.addr, align 8, !tbaa !5
  %20 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mp, align 8, !tbaa !5
  %21 = bitcast %struct.gs_matrix3_s* %19 to i8*
  %22 = bitcast %struct.gs_matrix3_s* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 40, i32 4, i1 false), !tbaa.struct !114
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.10
  %23 = bitcast %struct.gs_matrix3_s** %mp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gs_matrix3_s* %mprod to i8*
  call void @llvm.lifetime.end(i64 40, i8* %24) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cie_transform_range3(%struct.gs_range3_s* %in, %struct.gs_matrix3_s* %mat, %struct.gs_range3_s* %out) #0 {
entry:
  %in.addr = alloca %struct.gs_range3_s*, align 8
  %mat.addr = alloca %struct.gs_matrix3_s*, align 8
  %out.addr = alloca %struct.gs_range3_s*, align 8
  store %struct.gs_range3_s* %in, %struct.gs_range3_s** %in.addr, align 8, !tbaa !5
  store %struct.gs_matrix3_s* %mat, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  store %struct.gs_range3_s* %out, %struct.gs_range3_s** %out.addr, align 8, !tbaa !5
  %0 = load %struct.gs_range3_s*, %struct.gs_range3_s** %in.addr, align 8, !tbaa !5
  %1 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %1, i32 0, i32 0
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu, i32 0, i32 0
  %2 = load float, float* %u, align 4, !tbaa !30
  %conv = fpext float %2 to double
  %3 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %3, i32 0, i32 1
  %u1 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv, i32 0, i32 0
  %4 = load float, float* %u1, align 4, !tbaa !36
  %conv2 = fpext float %4 to double
  %5 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cw = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %5, i32 0, i32 2
  %u3 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw, i32 0, i32 0
  %6 = load float, float* %u3, align 4, !tbaa !39
  %conv4 = fpext float %6 to double
  %7 = load %struct.gs_range3_s*, %struct.gs_range3_s** %out.addr, align 8, !tbaa !5
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %7, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  call void @cie_transform_range(%struct.gs_range3_s* %0, double %conv, double %conv2, double %conv4, %struct.gs_range_s* %arrayidx) #7
  %8 = load %struct.gs_range3_s*, %struct.gs_range3_s** %in.addr, align 8, !tbaa !5
  %9 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cu5 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %9, i32 0, i32 0
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu5, i32 0, i32 1
  %10 = load float, float* %v, align 4, !tbaa !33
  %conv6 = fpext float %10 to double
  %11 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cv7 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %11, i32 0, i32 1
  %v8 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv7, i32 0, i32 1
  %12 = load float, float* %v8, align 4, !tbaa !35
  %conv9 = fpext float %12 to double
  %13 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cw10 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %13, i32 0, i32 2
  %v11 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw10, i32 0, i32 1
  %14 = load float, float* %v11, align 4, !tbaa !40
  %conv12 = fpext float %14 to double
  %15 = load %struct.gs_range3_s*, %struct.gs_range3_s** %out.addr, align 8, !tbaa !5
  %ranges13 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %15, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges13, i32 0, i64 1
  call void @cie_transform_range(%struct.gs_range3_s* %8, double %conv6, double %conv9, double %conv12, %struct.gs_range_s* %arrayidx14) #7
  %16 = load %struct.gs_range3_s*, %struct.gs_range3_s** %in.addr, align 8, !tbaa !5
  %17 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cu15 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %17, i32 0, i32 0
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu15, i32 0, i32 2
  %18 = load float, float* %w, align 4, !tbaa !34
  %conv16 = fpext float %18 to double
  %19 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cv17 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %19, i32 0, i32 1
  %w18 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv17, i32 0, i32 2
  %20 = load float, float* %w18, align 4, !tbaa !37
  %conv19 = fpext float %20 to double
  %21 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cw20 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %21, i32 0, i32 2
  %w21 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw20, i32 0, i32 2
  %22 = load float, float* %w21, align 4, !tbaa !38
  %conv22 = fpext float %22 to double
  %23 = load %struct.gs_range3_s*, %struct.gs_range3_s** %out.addr, align 8, !tbaa !5
  %ranges23 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %23, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges23, i32 0, i64 2
  call void @cie_transform_range(%struct.gs_range3_s* %16, double %conv16, double %conv19, double %conv22, %struct.gs_range_s* %arrayidx24) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @cie_mult3(%struct.gs_vector3_s* %in, %struct.gs_matrix3_s* %mat, %struct.gs_vector3_s* %out) #0 {
entry:
  %in.addr = alloca %struct.gs_vector3_s*, align 8
  %mat.addr = alloca %struct.gs_matrix3_s*, align 8
  %out.addr = alloca %struct.gs_vector3_s*, align 8
  %u = alloca float, align 4
  %v = alloca float, align 4
  %w = alloca float, align 4
  store %struct.gs_vector3_s* %in, %struct.gs_vector3_s** %in.addr, align 8, !tbaa !5
  store %struct.gs_matrix3_s* %mat, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  store %struct.gs_vector3_s* %out, %struct.gs_vector3_s** %out.addr, align 8, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %0 = bitcast float* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %in.addr, align 8, !tbaa !5
  %u3 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %1, i32 0, i32 0
  %2 = load float, float* %u3, align 4, !tbaa !68
  store float %2, float* %u, align 4, !tbaa !15
  %3 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %in.addr, align 8, !tbaa !5
  %v4 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %4, i32 0, i32 1
  %5 = load float, float* %v4, align 4, !tbaa !69
  store float %5, float* %v, align 4, !tbaa !15
  %6 = bitcast float* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %in.addr, align 8, !tbaa !5
  %w5 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %7, i32 0, i32 2
  %8 = load float, float* %w5, align 4, !tbaa !70
  store float %8, float* %w, align 4, !tbaa !15
  %9 = load float, float* %u, align 4, !tbaa !15
  %10 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %10, i32 0, i32 0
  %u6 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu, i32 0, i32 0
  %11 = load float, float* %u6, align 4, !tbaa !30
  %mul = fmul float %9, %11
  %12 = load float, float* %v, align 4, !tbaa !15
  %13 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %13, i32 0, i32 1
  %u7 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv, i32 0, i32 0
  %14 = load float, float* %u7, align 4, !tbaa !36
  %mul8 = fmul float %12, %14
  %add = fadd float %mul, %mul8
  %15 = load float, float* %w, align 4, !tbaa !15
  %16 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cw = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %16, i32 0, i32 2
  %u9 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw, i32 0, i32 0
  %17 = load float, float* %u9, align 4, !tbaa !39
  %mul10 = fmul float %15, %17
  %add11 = fadd float %add, %mul10
  %18 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %out.addr, align 8, !tbaa !5
  %u12 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %18, i32 0, i32 0
  store float %add11, float* %u12, align 4, !tbaa !68
  %19 = load float, float* %u, align 4, !tbaa !15
  %20 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cu13 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %20, i32 0, i32 0
  %v14 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu13, i32 0, i32 1
  %21 = load float, float* %v14, align 4, !tbaa !33
  %mul15 = fmul float %19, %21
  %22 = load float, float* %v, align 4, !tbaa !15
  %23 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cv16 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %23, i32 0, i32 1
  %v17 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv16, i32 0, i32 1
  %24 = load float, float* %v17, align 4, !tbaa !35
  %mul18 = fmul float %22, %24
  %add19 = fadd float %mul15, %mul18
  %25 = load float, float* %w, align 4, !tbaa !15
  %26 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cw20 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %26, i32 0, i32 2
  %v21 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw20, i32 0, i32 1
  %27 = load float, float* %v21, align 4, !tbaa !40
  %mul22 = fmul float %25, %27
  %add23 = fadd float %add19, %mul22
  %28 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %out.addr, align 8, !tbaa !5
  %v24 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %28, i32 0, i32 1
  store float %add23, float* %v24, align 4, !tbaa !69
  %29 = load float, float* %u, align 4, !tbaa !15
  %30 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cu25 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %30, i32 0, i32 0
  %w26 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu25, i32 0, i32 2
  %31 = load float, float* %w26, align 4, !tbaa !34
  %mul27 = fmul float %29, %31
  %32 = load float, float* %v, align 4, !tbaa !15
  %33 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cv28 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %33, i32 0, i32 1
  %w29 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv28, i32 0, i32 2
  %34 = load float, float* %w29, align 4, !tbaa !37
  %mul30 = fmul float %32, %34
  %add31 = fadd float %mul27, %mul30
  %35 = load float, float* %w, align 4, !tbaa !15
  %36 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !5
  %cw32 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %36, i32 0, i32 2
  %w33 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw32, i32 0, i32 2
  %37 = load float, float* %w33, align 4, !tbaa !38
  %mul34 = fmul float %35, %37
  %add35 = fadd float %add31, %mul34
  %38 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %out.addr, align 8, !tbaa !5
  %w36 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %38, i32 0, i32 2
  store float %add35, float* %w36, align 4, !tbaa !70
  %39 = bitcast float* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast float* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.2
  br label %do.end.38

do.end.38:                                        ; preds = %do.body.37
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_cie_render_sample(%struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %retval = alloca i32, align 4
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %j = alloca i32, align 4
  %pcf = alloca %struct.cie_cache_floats_s*, align 8
  %i = alloca i32, align 4
  %lp = alloca %struct.gs_sample_loop_params_s, align 4
  %v = alloca float, align 4
  %j44 = alloca i32, align 4
  %pcf50 = alloca %struct.cie_cache_floats_s*, align 8
  %i55 = alloca i32, align 4
  %lp56 = alloca %struct.gs_sample_loop_params_s, align 4
  %v66 = alloca float, align 4
  %i112 = alloca i32, align 4
  %j113 = alloca i32, align 4
  %m = alloca i32, align 4
  %lp117 = alloca %struct.gs_sample_loop_params_s, align 4
  %is_identity118 = alloca i32, align 4
  %value = alloca i8, align 1
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %status = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 0
  %2 = load i32, i32* %status, align 4, !tbaa !113
  %cmp = icmp uge i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %call = call i32 @gs_cie_render_init(%struct.gs_cie_render_s* %3) #7
  store i32 %call, i32* %code, align 4, !tbaa !14
  %4 = load i32, i32* %code, align 4, !tbaa !14
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* %code, align 4, !tbaa !14
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %6 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %do.body
  %7 = load i32, i32* %j, align 4, !tbaa !14
  %conv = sext i32 %7 to i64
  %cmp4 = icmp ult i64 %conv, 3
  br i1 %cmp4, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %8 = bitcast %struct.cie_cache_floats_s** %pcf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %10, i32 0, i32 22
  %EncodeLMN = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches, i32 0, i32 0
  %caches6 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %EncodeLMN, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches6, i32 0, i64 %idxprom
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 0
  store %struct.cie_cache_floats_s* %floats, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.start(i64 12, i8* %12) #1
  %13 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %13, i32 0, i32 0
  %14 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %DomainLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %15, i32 0, i32 15
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %DomainLMN, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom7
  call void @gs_cie_cache_init(%struct.cie_cache_params_s* %params, %struct.gs_sample_loop_params_s* %lp, %struct.gs_range_s* %arrayidx8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)) #7
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !14
  %N = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %17 = load i32, i32* %N, align 4, !tbaa !25
  %cmp10 = icmp sle i32 %16, %17
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %18 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %N13 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %19 = load i32, i32* %N13, align 4, !tbaa !25
  %20 = load i32, i32* %i, align 4, !tbaa !14
  %sub = sub nsw i32 %19, %20
  %conv14 = sitofp i32 %sub to float
  %A = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 0
  %21 = load float, float* %A, align 4, !tbaa !27
  %mul = fmul float %conv14, %21
  %22 = load i32, i32* %i, align 4, !tbaa !14
  %conv15 = sitofp i32 %22 to float
  %B = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 1
  %23 = load float, float* %B, align 4, !tbaa !28
  %mul16 = fmul float %conv15, %23
  %add = fadd float %mul, %mul16
  %N17 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %24 = load i32, i32* %N17, align 4, !tbaa !25
  %conv18 = sitofp i32 %24 to float
  %div = fdiv float %add, %conv18
  store float %div, float* %v, align 4, !tbaa !15
  %25 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom19 = sext i32 %25 to i64
  %26 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %EncodeLMN20 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %26, i32 0, i32 9
  %procs = getelementptr inbounds %struct.gs_cie_render_proc3_s, %struct.gs_cie_render_proc3_s* %EncodeLMN20, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x float (double, %struct.gs_cie_render_s*)*], [3 x float (double, %struct.gs_cie_render_s*)*]* %procs, i32 0, i64 %idxprom19
  %27 = load float (double, %struct.gs_cie_render_s*)*, float (double, %struct.gs_cie_render_s*)** %arrayidx21, align 8, !tbaa !5
  %28 = load float, float* %v, align 4, !tbaa !15
  %conv22 = fpext float %28 to double
  %29 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %call23 = call float %27(double %conv22, %struct.gs_cie_render_s* %29) #7
  %30 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom24 = sext i32 %30 to i64
  %31 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %31, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 %idxprom24
  store float %call23, float* %arrayidx25, align 4, !tbaa !15
  br label %do.body.26

do.body.26:                                       ; preds = %for.body.12
  br label %do.cond

do.cond:                                          ; preds = %do.body.26
  br label %do.end

do.end:                                           ; preds = %do.cond
  %32 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %33 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %34 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom27 = sext i32 %34 to i64
  %35 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %EncodeLMN28 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %35, i32 0, i32 9
  %procs29 = getelementptr inbounds %struct.gs_cie_render_proc3_s, %struct.gs_cie_render_proc3_s* %EncodeLMN28, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x float (double, %struct.gs_cie_render_s*)*], [3 x float (double, %struct.gs_cie_render_s*)*]* %procs29, i32 0, i64 %idxprom27
  %36 = load float (double, %struct.gs_cie_render_s*)*, float (double, %struct.gs_cie_render_s*)** %arrayidx30, align 8, !tbaa !5
  %37 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom31 = sext i32 %37 to i64
  %arrayidx32 = getelementptr inbounds [3 x float (double, %struct.gs_cie_render_s*)*], [3 x float (double, %struct.gs_cie_render_s*)*]* getelementptr inbounds (%struct.gs_cie_render_proc3_s, %struct.gs_cie_render_proc3_s* @Encode_default, i32 0, i32 0), i32 0, i64 %idxprom31
  %38 = load float (double, %struct.gs_cie_render_s*)*, float (double, %struct.gs_cie_render_s*)** %arrayidx32, align 8, !tbaa !5
  %cmp33 = icmp eq float (double, %struct.gs_cie_render_s*)* %36, %38
  %conv34 = zext i1 %cmp33 to i32
  %39 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf, align 8, !tbaa !5
  %params35 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %39, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params35, i32 0, i32 0
  store i32 %conv34, i32* %is_identity, align 4, !tbaa !29
  %40 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.end(i64 12, i8* %40) #1
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast %struct.cie_cache_floats_s** %pcf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end
  %43 = load i32, i32* %j, align 4, !tbaa !14
  %inc37 = add nsw i32 %43, 1
  store i32 %inc37, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  %44 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  br label %do.cond.39

do.cond.39:                                       ; preds = %for.end.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  %45 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches41 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %45, i32 0, i32 22
  %EncodeLMN42 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches41, i32 0, i32 0
  call void @cache3_set_linear(%struct.gx_cie_vector_cache3_s* %EncodeLMN42) #7
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.40
  %46 = bitcast i32* %j44 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  store i32 0, i32* %j44, align 4, !tbaa !14
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.104, %do.body.43
  %47 = load i32, i32* %j44, align 4, !tbaa !14
  %conv46 = sext i32 %47 to i64
  %cmp47 = icmp ult i64 %conv46, 3
  br i1 %cmp47, label %for.body.49, label %for.end.106

for.body.49:                                      ; preds = %for.cond.45
  %48 = bitcast %struct.cie_cache_floats_s** %pcf50 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load i32, i32* %j44, align 4, !tbaa !14
  %idxprom51 = sext i32 %49 to i64
  %50 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches52 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %50, i32 0, i32 22
  %EncodeABC = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches52, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC, i32 0, i64 %idxprom51
  %floats54 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx53, i32 0, i32 0
  store %struct.cie_cache_floats_s* %floats54, %struct.cie_cache_floats_s** %pcf50, align 8, !tbaa !5
  %51 = bitcast i32* %i55 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = bitcast %struct.gs_sample_loop_params_s* %lp56 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %52) #1
  %53 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf50, align 8, !tbaa !5
  %params57 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %53, i32 0, i32 0
  %54 = load i32, i32* %j44, align 4, !tbaa !14
  %idxprom58 = sext i32 %54 to i64
  %55 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %DomainABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %55, i32 0, i32 16
  %ranges59 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %DomainABC, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges59, i32 0, i64 %idxprom58
  call void @gs_cie_cache_init(%struct.cie_cache_params_s* %params57, %struct.gs_sample_loop_params_s* %lp56, %struct.gs_range_s* %arrayidx60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0)) #7
  store i32 0, i32* %i55, align 4, !tbaa !14
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.91, %for.body.49
  %56 = load i32, i32* %i55, align 4, !tbaa !14
  %N62 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp56, i32 0, i32 2
  %57 = load i32, i32* %N62, align 4, !tbaa !25
  %cmp63 = icmp sle i32 %56, %57
  br i1 %cmp63, label %for.body.65, label %for.end.93

for.body.65:                                      ; preds = %for.cond.61
  %58 = bitcast float* %v66 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %N67 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp56, i32 0, i32 2
  %59 = load i32, i32* %N67, align 4, !tbaa !25
  %60 = load i32, i32* %i55, align 4, !tbaa !14
  %sub68 = sub nsw i32 %59, %60
  %conv69 = sitofp i32 %sub68 to float
  %A70 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp56, i32 0, i32 0
  %61 = load float, float* %A70, align 4, !tbaa !27
  %mul71 = fmul float %conv69, %61
  %62 = load i32, i32* %i55, align 4, !tbaa !14
  %conv72 = sitofp i32 %62 to float
  %B73 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp56, i32 0, i32 1
  %63 = load float, float* %B73, align 4, !tbaa !28
  %mul74 = fmul float %conv72, %63
  %add75 = fadd float %mul71, %mul74
  %N76 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp56, i32 0, i32 2
  %64 = load i32, i32* %N76, align 4, !tbaa !25
  %conv77 = sitofp i32 %64 to float
  %div78 = fdiv float %add75, %conv77
  store float %div78, float* %v66, align 4, !tbaa !15
  %65 = load i32, i32* %j44, align 4, !tbaa !14
  %idxprom79 = sext i32 %65 to i64
  %66 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %EncodeABC80 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %66, i32 0, i32 12
  %procs81 = getelementptr inbounds %struct.gs_cie_render_proc3_s, %struct.gs_cie_render_proc3_s* %EncodeABC80, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x float (double, %struct.gs_cie_render_s*)*], [3 x float (double, %struct.gs_cie_render_s*)*]* %procs81, i32 0, i64 %idxprom79
  %67 = load float (double, %struct.gs_cie_render_s*)*, float (double, %struct.gs_cie_render_s*)** %arrayidx82, align 8, !tbaa !5
  %68 = load float, float* %v66, align 4, !tbaa !15
  %conv83 = fpext float %68 to double
  %69 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %call84 = call float %67(double %conv83, %struct.gs_cie_render_s* %69) #7
  %70 = load i32, i32* %i55, align 4, !tbaa !14
  %idxprom85 = sext i32 %70 to i64
  %71 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf50, align 8, !tbaa !5
  %values86 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %71, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [512 x float], [512 x float]* %values86, i32 0, i64 %idxprom85
  store float %call84, float* %arrayidx87, align 4, !tbaa !15
  br label %do.body.88

do.body.88:                                       ; preds = %for.body.65
  br label %do.cond.89

do.cond.89:                                       ; preds = %do.body.88
  br label %do.end.90

do.end.90:                                        ; preds = %do.cond.89
  %72 = bitcast float* %v66 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  br label %for.inc.91

for.inc.91:                                       ; preds = %do.end.90
  %73 = load i32, i32* %i55, align 4, !tbaa !14
  %inc92 = add nsw i32 %73, 1
  store i32 %inc92, i32* %i55, align 4, !tbaa !14
  br label %for.cond.61

for.end.93:                                       ; preds = %for.cond.61
  %74 = load i32, i32* %j44, align 4, !tbaa !14
  %idxprom94 = sext i32 %74 to i64
  %75 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %EncodeABC95 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %75, i32 0, i32 12
  %procs96 = getelementptr inbounds %struct.gs_cie_render_proc3_s, %struct.gs_cie_render_proc3_s* %EncodeABC95, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [3 x float (double, %struct.gs_cie_render_s*)*], [3 x float (double, %struct.gs_cie_render_s*)*]* %procs96, i32 0, i64 %idxprom94
  %76 = load float (double, %struct.gs_cie_render_s*)*, float (double, %struct.gs_cie_render_s*)** %arrayidx97, align 8, !tbaa !5
  %77 = load i32, i32* %j44, align 4, !tbaa !14
  %idxprom98 = sext i32 %77 to i64
  %arrayidx99 = getelementptr inbounds [3 x float (double, %struct.gs_cie_render_s*)*], [3 x float (double, %struct.gs_cie_render_s*)*]* getelementptr inbounds (%struct.gs_cie_render_proc3_s, %struct.gs_cie_render_proc3_s* @Encode_default, i32 0, i32 0), i32 0, i64 %idxprom98
  %78 = load float (double, %struct.gs_cie_render_s*)*, float (double, %struct.gs_cie_render_s*)** %arrayidx99, align 8, !tbaa !5
  %cmp100 = icmp eq float (double, %struct.gs_cie_render_s*)* %76, %78
  %conv101 = zext i1 %cmp100 to i32
  %79 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf50, align 8, !tbaa !5
  %params102 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %79, i32 0, i32 0
  %is_identity103 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params102, i32 0, i32 0
  store i32 %conv101, i32* %is_identity103, align 4, !tbaa !29
  %80 = bitcast %struct.gs_sample_loop_params_s* %lp56 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %80) #1
  %81 = bitcast i32* %i55 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast %struct.cie_cache_floats_s** %pcf50 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.end.93
  %83 = load i32, i32* %j44, align 4, !tbaa !14
  %inc105 = add nsw i32 %83, 1
  store i32 %inc105, i32* %j44, align 4, !tbaa !14
  br label %for.cond.45

for.end.106:                                      ; preds = %for.cond.45
  %84 = bitcast i32* %j44 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  br label %do.cond.107

do.cond.107:                                      ; preds = %for.end.106
  br label %do.end.108

do.end.108:                                       ; preds = %do.cond.107
  %85 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %RenderTable = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %85, i32 0, i32 14
  %lookup = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable, i32 0, i32 0
  %table = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup, i32 0, i32 3
  %86 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !115
  %cmp109 = icmp ne %struct.gs_const_string_s* %86, null
  br i1 %cmp109, label %if.then.111, label %if.end.171

if.then.111:                                      ; preds = %do.end.108
  %87 = bitcast i32* %i112 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = bitcast i32* %j113 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  %89 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  %90 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %RenderTable114 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %90, i32 0, i32 14
  %lookup115 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable114, i32 0, i32 0
  %m116 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup115, i32 0, i32 2
  %91 = load i32, i32* %m116, align 4, !tbaa !145
  store i32 %91, i32* %m, align 4, !tbaa !14
  %92 = bitcast %struct.gs_sample_loop_params_s* %lp117 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %92) #1
  %93 = bitcast i32* %is_identity118 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #1
  store i32 1, i32* %is_identity118, align 4, !tbaa !14
  store i32 0, i32* %j113, align 4, !tbaa !14
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.135, %if.then.111
  %94 = load i32, i32* %j113, align 4, !tbaa !14
  %95 = load i32, i32* %m, align 4, !tbaa !14
  %cmp120 = icmp slt i32 %94, %95
  br i1 %cmp120, label %for.body.122, label %for.end.137

for.body.122:                                     ; preds = %for.cond.119
  %96 = load i32, i32* %j113, align 4, !tbaa !14
  %idxprom123 = sext i32 %96 to i64
  %97 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches124 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %97, i32 0, i32 22
  %RenderTableT = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches124, i32 0, i32 2
  %arrayidx125 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %RenderTableT, i32 0, i64 %idxprom123
  %fracs = bitcast %union.gx_cie_scalar_cache_s* %arrayidx125 to %struct.cie_cache_fracs_s*
  %params126 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs, i32 0, i32 0
  call void @gs_cie_cache_init(%struct.cie_cache_params_s* %params126, %struct.gs_sample_loop_params_s* %lp117, %struct.gs_range_s* getelementptr inbounds (%struct.gs_range3_s, %struct.gs_range3_s* @Range3_default, i32 0, i32 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)) #7
  %98 = load i32, i32* %j113, align 4, !tbaa !14
  %idxprom127 = sext i32 %98 to i64
  %99 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %RenderTable128 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %99, i32 0, i32 14
  %T = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable128, i32 0, i32 1
  %procs129 = getelementptr inbounds %struct.gs_cie_render_table_procs_s, %struct.gs_cie_render_table_procs_s* %T, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [4 x i16 (i8, %struct.gs_cie_render_s*)*], [4 x i16 (i8, %struct.gs_cie_render_s*)*]* %procs129, i32 0, i64 %idxprom127
  %100 = load i16 (i8, %struct.gs_cie_render_s*)*, i16 (i8, %struct.gs_cie_render_s*)** %arrayidx130, align 8, !tbaa !5
  %101 = load i32, i32* %j113, align 4, !tbaa !14
  %idxprom131 = sext i32 %101 to i64
  %arrayidx132 = getelementptr inbounds [4 x i16 (i8, %struct.gs_cie_render_s*)*], [4 x i16 (i8, %struct.gs_cie_render_s*)*]* getelementptr inbounds (%struct.gs_cie_render_table_procs_s, %struct.gs_cie_render_table_procs_s* @RenderTableT_default, i32 0, i32 0), i32 0, i64 %idxprom131
  %102 = load i16 (i8, %struct.gs_cie_render_s*)*, i16 (i8, %struct.gs_cie_render_s*)** %arrayidx132, align 8, !tbaa !5
  %cmp133 = icmp eq i16 (i8, %struct.gs_cie_render_s*)* %100, %102
  %conv134 = zext i1 %cmp133 to i32
  %103 = load i32, i32* %is_identity118, align 4, !tbaa !14
  %and = and i32 %103, %conv134
  store i32 %and, i32* %is_identity118, align 4, !tbaa !14
  br label %for.inc.135

for.inc.135:                                      ; preds = %for.body.122
  %104 = load i32, i32* %j113, align 4, !tbaa !14
  %inc136 = add nsw i32 %104, 1
  store i32 %inc136, i32* %j113, align 4, !tbaa !14
  br label %for.cond.119

for.end.137:                                      ; preds = %for.cond.119
  %105 = load i32, i32* %is_identity118, align 4, !tbaa !14
  %106 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches138 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %106, i32 0, i32 22
  %RenderTableT_is_identity = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches138, i32 0, i32 3
  store i32 %105, i32* %RenderTableT_is_identity, align 4, !tbaa !146
  store i32 0, i32* %i112, align 4, !tbaa !14
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.168, %for.end.137
  %107 = load i32, i32* %i112, align 4, !tbaa !14
  %cmp140 = icmp slt i32 %107, 512
  br i1 %cmp140, label %for.body.142, label %for.end.170

for.body.142:                                     ; preds = %for.cond.139
  call void @llvm.lifetime.start(i64 1, i8* %value) #1
  %108 = load i32, i32* %i112, align 4, !tbaa !14
  %shr = ashr i32 %108, 1
  %conv143 = trunc i32 %shr to i8
  store i8 %conv143, i8* %value, align 1, !tbaa !147
  store i32 0, i32* %j113, align 4, !tbaa !14
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.165, %for.body.142
  %109 = load i32, i32* %j113, align 4, !tbaa !14
  %110 = load i32, i32* %m, align 4, !tbaa !14
  %cmp145 = icmp slt i32 %109, %110
  br i1 %cmp145, label %for.body.147, label %for.end.167

for.body.147:                                     ; preds = %for.cond.144
  %111 = load i32, i32* %j113, align 4, !tbaa !14
  %idxprom148 = sext i32 %111 to i64
  %112 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %RenderTable149 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %112, i32 0, i32 14
  %T150 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable149, i32 0, i32 1
  %procs151 = getelementptr inbounds %struct.gs_cie_render_table_procs_s, %struct.gs_cie_render_table_procs_s* %T150, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [4 x i16 (i8, %struct.gs_cie_render_s*)*], [4 x i16 (i8, %struct.gs_cie_render_s*)*]* %procs151, i32 0, i64 %idxprom148
  %113 = load i16 (i8, %struct.gs_cie_render_s*)*, i16 (i8, %struct.gs_cie_render_s*)** %arrayidx152, align 8, !tbaa !5
  %114 = load i8, i8* %value, align 1, !tbaa !147
  %115 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %call153 = call signext i16 %113(i8 zeroext %114, %struct.gs_cie_render_s* %115) #7
  %116 = load i32, i32* %i112, align 4, !tbaa !14
  %idxprom154 = sext i32 %116 to i64
  %117 = load i32, i32* %j113, align 4, !tbaa !14
  %idxprom155 = sext i32 %117 to i64
  %118 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches156 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %118, i32 0, i32 22
  %RenderTableT157 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches156, i32 0, i32 2
  %arrayidx158 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %RenderTableT157, i32 0, i64 %idxprom155
  %fracs159 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx158 to %struct.cie_cache_fracs_s*
  %values160 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs159, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [512 x i16], [512 x i16]* %values160, i32 0, i64 %idxprom154
  store i16 %call153, i16* %arrayidx161, align 2, !tbaa !148
  br label %do.body.162

do.body.162:                                      ; preds = %for.body.147
  br label %do.cond.163

do.cond.163:                                      ; preds = %do.body.162
  br label %do.end.164

do.end.164:                                       ; preds = %do.cond.163
  br label %for.inc.165

for.inc.165:                                      ; preds = %do.end.164
  %119 = load i32, i32* %j113, align 4, !tbaa !14
  %inc166 = add nsw i32 %119, 1
  store i32 %inc166, i32* %j113, align 4, !tbaa !14
  br label %for.cond.144

for.end.167:                                      ; preds = %for.cond.144
  call void @llvm.lifetime.end(i64 1, i8* %value) #1
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.end.167
  %120 = load i32, i32* %i112, align 4, !tbaa !14
  %inc169 = add nsw i32 %120, 1
  store i32 %inc169, i32* %i112, align 4, !tbaa !14
  br label %for.cond.139

for.end.170:                                      ; preds = %for.cond.139
  %121 = bitcast i32* %is_identity118 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast %struct.gs_sample_loop_params_s* %lp117 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %122) #1
  %123 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %j113 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %i112 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  br label %if.end.171

if.end.171:                                       ; preds = %for.end.170, %do.end.108
  %126 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %status172 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %126, i32 0, i32 0
  store i32 2, i32* %status172, align 4, !tbaa !113
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.171, %if.then.2, %if.then
  %127 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = load i32, i32* %retval
  ret i32 %128
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @cie_cache_restrict(%struct.cie_cache_floats_s* %pcache, %struct.gs_range_s* %prange) #0 {
entry:
  %pcache.addr = alloca %struct.cie_cache_floats_s*, align 8
  %prange.addr = alloca %struct.gs_range_s*, align 8
  %i = alloca i32, align 4
  %v = alloca float, align 4
  store %struct.cie_cache_floats_s* %pcache, %struct.cie_cache_floats_s** %pcache.addr, align 8, !tbaa !5
  store %struct.gs_range_s* %prange, %struct.gs_range_s** %prange.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !14
  %cmp = icmp slt i32 %1, 512
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache.addr, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 %idxprom
  %5 = load float, float* %arrayidx, align 4, !tbaa !15
  store float %5, float* %v, align 4, !tbaa !15
  %6 = load float, float* %v, align 4, !tbaa !15
  %7 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !5
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %7, i32 0, i32 0
  %8 = load float, float* %rmin, align 4, !tbaa !22
  %cmp1 = fcmp olt float %6, %8
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !5
  %rmin2 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %9, i32 0, i32 0
  %10 = load float, float* %rmin2, align 4, !tbaa !22
  %11 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache.addr, align 8, !tbaa !5
  %values4 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %12, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [512 x float], [512 x float]* %values4, i32 0, i64 %idxprom3
  store float %10, float* %arrayidx5, align 4, !tbaa !15
  br label %if.end.12

if.else:                                          ; preds = %for.body
  %13 = load float, float* %v, align 4, !tbaa !15
  %14 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !5
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %14, i32 0, i32 1
  %15 = load float, float* %rmax, align 4, !tbaa !24
  %cmp6 = fcmp ogt float %13, %15
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %16 = load %struct.gs_range_s*, %struct.gs_range_s** %prange.addr, align 8, !tbaa !5
  %rmax8 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %16, i32 0, i32 1
  %17 = load float, float* %rmax8, align 4, !tbaa !24
  %18 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcache.addr, align 8, !tbaa !5
  %values10 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %19, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [512 x float], [512 x float]* %values10, i32 0, i64 %idxprom9
  store float %17, float* %arrayidx11, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %20 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %21 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_cie_cache_to_fracs(%struct.cie_cache_floats_s* %pfloats, %struct.cie_cache_fracs_s* %pfracs) #0 {
entry:
  %pfloats.addr = alloca %struct.cie_cache_floats_s*, align 8
  %pfracs.addr = alloca %struct.cie_cache_fracs_s*, align 8
  %i = alloca i32, align 4
  store %struct.cie_cache_floats_s* %pfloats, %struct.cie_cache_floats_s** %pfloats.addr, align 8, !tbaa !5
  store %struct.cie_cache_fracs_s* %pfracs, %struct.cie_cache_fracs_s** %pfracs.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !14
  %cmp = icmp slt i32 %1, 512
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pfloats.addr, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4, !tbaa !15
  %conv = fpext float %4 to double
  %add = fadd double %conv, 0x3EF0010010010010
  %mul = fmul double %add, 3.276000e+04
  %conv1 = fptosi double %mul to i16
  %5 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.cie_cache_fracs_s*, %struct.cie_cache_fracs_s** %pfracs.addr, align 8, !tbaa !5
  %values3 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [512 x i16], [512 x i16]* %values3, i32 0, i64 %idxprom2
  store i16 %conv1, i16* %arrayidx4, align 2, !tbaa !148
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.cie_cache_fracs_s*, %struct.cie_cache_fracs_s** %pfracs.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %8, i32 0, i32 0
  %9 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pfloats.addr, align 8, !tbaa !5
  %params5 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %9, i32 0, i32 0
  %10 = bitcast %struct.cie_cache_params_s* %params to i8*
  %11 = bitcast %struct.cie_cache_params_s* %params5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 40, i32 8, i1 false), !tbaa.struct !118
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gs_cie_common_s* @gs_cie_cs_common(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ignore_pabc = alloca %struct.gs_cie_abc_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_cie_abc_s** %ignore_pabc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !5
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx, i32 0, i32 0
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !149
  %call = call %struct.gs_cie_common_s* @cie_cs_common_abc(%struct.gs_color_space_s* %2, %struct.gs_cie_abc_s** %ignore_pabc) #7
  %3 = bitcast %struct.gs_cie_abc_s** %ignore_pabc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3) #1
  ret %struct.gs_cie_common_s* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_cie_common_s* @cie_cs_common_abc(%struct.gs_color_space_s* %pcs_orig, %struct.gs_cie_abc_s** %ppabc) #0 {
entry:
  %retval = alloca %struct.gs_cie_common_s*, align 8
  %pcs_orig.addr = alloca %struct.gs_color_space_s*, align 8
  %ppabc.addr = alloca %struct.gs_cie_abc_s**, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs_orig, %struct.gs_color_space_s** %pcs_orig.addr, align 8, !tbaa !5
  store %struct.gs_cie_abc_s** %ppabc, %struct.gs_cie_abc_s*** %ppabc.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_orig.addr, align 8, !tbaa !5
  store %struct.gs_color_space_s* %1, %struct.gs_color_space_s** %pcs, align 8, !tbaa !5
  %2 = load %struct.gs_cie_abc_s**, %struct.gs_cie_abc_s*** %ppabc.addr, align 8, !tbaa !5
  store %struct.gs_cie_abc_s* null, %struct.gs_cie_abc_s** %2, align 8, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 0
  %4 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !16
  %index = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %4, i32 0, i32 0
  %5 = load i32, i32* %index, align 4, !tbaa !150
  switch i32 %5, label %sw.default [
    i32 6, label %sw.bb
    i32 5, label %sw.bb.3
    i32 7, label %sw.bb.8
    i32 8, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 7
  %def = bitcast %union.anon* %params to %struct.gs_cie_def_s**
  %7 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !5
  %8 = bitcast %struct.gs_cie_def_s* %7 to %struct.gs_cie_abc_s*
  %9 = load %struct.gs_cie_abc_s**, %struct.gs_cie_abc_s*** %ppabc.addr, align 8, !tbaa !5
  store %struct.gs_cie_abc_s* %8, %struct.gs_cie_abc_s** %9, align 8, !tbaa !5
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !5
  %params1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %10, i32 0, i32 7
  %def2 = bitcast %union.anon* %params1 to %struct.gs_cie_def_s**
  %11 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def2, align 8, !tbaa !5
  %common = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %11, i32 0, i32 0
  store %struct.gs_cie_common_s* %common, %struct.gs_cie_common_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.3:                                          ; preds = %do.body
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !5
  %params4 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %12, i32 0, i32 7
  %defg = bitcast %union.anon* %params4 to %struct.gs_cie_defg_s**
  %13 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !5
  %14 = bitcast %struct.gs_cie_defg_s* %13 to %struct.gs_cie_abc_s*
  %15 = load %struct.gs_cie_abc_s**, %struct.gs_cie_abc_s*** %ppabc.addr, align 8, !tbaa !5
  store %struct.gs_cie_abc_s* %14, %struct.gs_cie_abc_s** %15, align 8, !tbaa !5
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !5
  %params5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 7
  %defg6 = bitcast %union.anon* %params5 to %struct.gs_cie_defg_s**
  %17 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg6, align 8, !tbaa !5
  %common7 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %17, i32 0, i32 0
  store %struct.gs_cie_common_s* %common7, %struct.gs_cie_common_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.8:                                          ; preds = %do.body
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !5
  %params9 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 7
  %abc = bitcast %union.anon* %params9 to %struct.gs_cie_abc_s**
  %19 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !5
  %20 = load %struct.gs_cie_abc_s**, %struct.gs_cie_abc_s*** %ppabc.addr, align 8, !tbaa !5
  store %struct.gs_cie_abc_s* %19, %struct.gs_cie_abc_s** %20, align 8, !tbaa !5
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !5
  %params10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %21, i32 0, i32 7
  %abc11 = bitcast %union.anon* %params10 to %struct.gs_cie_abc_s**
  %22 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc11, align 8, !tbaa !5
  %common12 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %22, i32 0, i32 0
  store %struct.gs_cie_common_s* %common12, %struct.gs_cie_common_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.13:                                         ; preds = %do.body
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !5
  %params14 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 7
  %a = bitcast %union.anon* %params14 to %struct.gs_cie_a_s**
  %24 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !5
  %common15 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %24, i32 0, i32 0
  store %struct.gs_cie_common_s* %common15, %struct.gs_cie_common_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %do.body
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !5
  %call = call %struct.gs_color_space_s* @gs_cspace_base_space(%struct.gs_color_space_s* %25) #7
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %pcs, align 8, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !5
  %cmp = icmp ne %struct.gs_color_space_s* %26, null
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store %struct.gs_cie_common_s* null, %struct.gs_cie_common_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb.13, %sw.bb.8, %sw.bb.3, %sw.bb
  %27 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %retval
  ret %struct.gs_cie_common_s* %28
}

; Function Attrs: nounwind uwtable
define i32 @gs_cie_jc_complete(%struct.gs_imager_state_s* %pis, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pabc = alloca %struct.gs_cie_abc_s*, align 8
  %common = alloca %struct.gs_cie_common_s*, align 8
  %pcrd = alloca %struct.gs_cie_render_s*, align 8
  %pjc = alloca %struct.gx_cie_joint_caches_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_cie_abc_s** %pabc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_cie_common_s** %common to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %call = call %struct.gs_cie_common_s* @cie_cs_common_abc(%struct.gs_color_space_s* %2, %struct.gs_cie_abc_s** %pabc) #7
  store %struct.gs_cie_common_s* %call, %struct.gs_cie_common_s** %common, align 8, !tbaa !5
  %3 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %cie_render = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 42
  %5 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render, align 8, !tbaa !151
  store %struct.gs_cie_render_s* %5, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !5
  %6 = bitcast %struct.gx_cie_joint_caches_s** %pjc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %7, i32 0, i32 48
  %8 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !153
  store %struct.gx_cie_joint_caches_s* %8, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %9 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %cspace_id = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %9, i32 0, i32 0
  %10 = load i64, i64* %cspace_id, align 8, !tbaa !143
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %id = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 2
  %12 = load i64, i64* %id, align 8, !tbaa !154
  %cmp = icmp eq i64 %10, %12
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %render_id = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %13, i32 0, i32 1
  %14 = load i64, i64* %render_id, align 8, !tbaa !142
  %15 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !5
  %id1 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %15, i32 0, i32 2
  %16 = load i64, i64* %id1, align 8, !tbaa !92
  %cmp2 = icmp eq i64 %14, %16
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %id_status = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %17, i32 0, i32 2
  %18 = load i32, i32* %id_status, align 4, !tbaa !144
  %19 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %status = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %19, i32 0, i32 3
  store i32 %18, i32* %status, align 4, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %20 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %status3 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %20, i32 0, i32 3
  %21 = load i32, i32* %status3, align 4, !tbaa !54
  switch i32 %21, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.8
    i32 2, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %24 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %common, align 8, !tbaa !5
  %25 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !5
  %call4 = call i32 @cie_joint_caches_init(%struct.gx_cie_joint_caches_s* %23, %struct.gs_cie_common_s* %24, %struct.gs_cie_render_s* %25) #7
  store i32 %call4, i32* %code, align 4, !tbaa !14
  %26 = load i32, i32* %code, align 4, !tbaa !14
  %cmp5 = icmp slt i32 %26, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %sw.bb
  %27 = load i32, i32* %code, align 4, !tbaa !14
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %sw.bb
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.bb.8

sw.bb.8:                                          ; preds = %if.end, %cleanup.cont
  %29 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %30 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %common, align 8, !tbaa !5
  %31 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc, align 8, !tbaa !5
  %32 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !5
  call void @cie_joint_caches_complete(%struct.gx_cie_joint_caches_s* %29, %struct.gs_cie_common_s* %30, %struct.gs_cie_abc_s* %31, %struct.gs_cie_render_s* %32) #7
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %id9 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %33, i32 0, i32 2
  %34 = load i64, i64* %id9, align 8, !tbaa !154
  %35 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %cspace_id10 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %35, i32 0, i32 0
  store i64 %34, i64* %cspace_id10, align 8, !tbaa !143
  %36 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !5
  %id11 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %36, i32 0, i32 2
  %37 = load i64, i64* %id11, align 8, !tbaa !92
  %38 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %render_id12 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %38, i32 0, i32 1
  store i64 %37, i64* %render_id12, align 8, !tbaa !142
  %39 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %status13 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %39, i32 0, i32 3
  store i32 2, i32* %status13, align 4, !tbaa !54
  %40 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %id_status14 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %40, i32 0, i32 2
  store i32 2, i32* %id_status14, align 4, !tbaa !144
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.8, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15

cleanup.15:                                       ; preds = %sw.epilog, %cleanup
  %41 = bitcast %struct.gx_cie_joint_caches_s** %pjc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.gs_cie_common_s** %common to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct.gs_cie_abc_s** %pabc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @cie_joint_caches_init(%struct.gx_cie_joint_caches_s* %pjc, %struct.gs_cie_common_s* %pcie, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %retval = alloca i32, align 4
  %pjc.addr = alloca %struct.gx_cie_joint_caches_s*, align 8
  %pcie.addr = alloca %struct.gs_cie_common_s*, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %is_identity = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %lp = alloca %struct.gs_sample_loop_params_s, align 4
  %in = alloca float, align 4
  %out = alloca float, align 4
  %code = alloca i32, align 4
  store %struct.gx_cie_joint_caches_s* %pjc, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  store %struct.gs_cie_common_s* %pcie, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %0 = bitcast i32* %is_identity to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %3 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %4 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %call = call i32 @gs_cie_compute_points_sd(%struct.gx_cie_joint_caches_s* %2, %struct.gs_cie_common_s* %3, %struct.gs_cie_render_s* %4) #7
  %5 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %TransformPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %5, i32 0, i32 7
  %proc = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR, i32 0, i32 0
  %6 = load i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)** %proc, align 8, !tbaa !155
  %7 = load i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)** getelementptr inbounds (%struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* @TransformPQR_from_cache, i32 0, i32 0), align 8, !tbaa !156
  %cmp = icmp eq i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)* %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %TransformPQR1 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %8, i32 0, i32 7
  %proc2 = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR1, i32 0, i32 0
  %9 = load i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)** %proc2, align 8, !tbaa !155
  %10 = load i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)** getelementptr inbounds (%struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* @TransformPQR_default, i32 0, i32 0), align 8, !tbaa !156
  %cmp3 = icmp eq i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)* %9, %10
  %conv = zext i1 %cmp3 to i32
  store i32 %conv, i32* %is_identity, align 4, !tbaa !14
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc.47, %if.end
  %11 = load i32, i32* %j, align 4, !tbaa !14
  %cmp4 = icmp slt i32 %11, 3
  br i1 %cmp4, label %for.body, label %for.end.49

for.body:                                         ; preds = %for.cond
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.start(i64 12, i8* %13) #1
  %14 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %TransformPQR6 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %15, i32 0, i32 11
  %caches = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %TransformPQR6, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches, i32 0, i64 %idxprom
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 0
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 0
  %16 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom7 = sext i32 %16 to i64
  %17 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %RangePQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %17, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangePQR, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom7
  call void @gs_cie_cache_init(%struct.cie_cache_params_s* %params, %struct.gs_sample_loop_params_s* %lp, %struct.gs_range_s* %arrayidx8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)) #7
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !14
  %N = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %19 = load i32, i32* %N, align 4, !tbaa !25
  %cmp10 = icmp sle i32 %18, %19
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %20 = bitcast float* %in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %N13 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %21 = load i32, i32* %N13, align 4, !tbaa !25
  %22 = load i32, i32* %i, align 4, !tbaa !14
  %sub = sub nsw i32 %21, %22
  %conv14 = sitofp i32 %sub to float
  %A = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 0
  %23 = load float, float* %A, align 4, !tbaa !27
  %mul = fmul float %conv14, %23
  %24 = load i32, i32* %i, align 4, !tbaa !14
  %conv15 = sitofp i32 %24 to float
  %B = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 1
  %25 = load float, float* %B, align 4, !tbaa !28
  %mul16 = fmul float %conv15, %25
  %add = fadd float %mul, %mul16
  %N17 = getelementptr inbounds %struct.gs_sample_loop_params_s, %struct.gs_sample_loop_params_s* %lp, i32 0, i32 2
  %26 = load i32, i32* %N17, align 4, !tbaa !25
  %conv18 = sitofp i32 %26 to float
  %div = fdiv float %add, %conv18
  store float %div, float* %in, align 4, !tbaa !15
  %27 = bitcast float* %out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %TransformPQR19 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %29, i32 0, i32 7
  %proc20 = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR19, i32 0, i32 0
  %30 = load i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)** %proc20, align 8, !tbaa !155
  %31 = load i32, i32* %j, align 4, !tbaa !14
  %32 = load float, float* %in, align 4, !tbaa !15
  %conv21 = fpext float %32 to double
  %33 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %points_sd = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %33, i32 0, i32 9
  %34 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %call22 = call i32 %30(i32 %31, double %conv21, %struct.gs_cie_wbsd_s* %points_sd, %struct.gs_cie_render_s* %34, float* %out) #7
  store i32 %call22, i32* %code, align 4, !tbaa !14
  %35 = load i32, i32* %code, align 4, !tbaa !14
  %cmp23 = icmp slt i32 %35, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body.12
  %36 = load i32, i32* %code, align 4, !tbaa !14
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %for.body.12
  %37 = load float, float* %out, align 4, !tbaa !15
  %38 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom27 = sext i32 %38 to i64
  %39 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom28 = sext i32 %39 to i64
  %40 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %TransformPQR29 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %40, i32 0, i32 11
  %caches30 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %TransformPQR29, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches30, i32 0, i64 %idxprom28
  %floats32 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx31, i32 0, i32 0
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats32, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 %idxprom27
  store float %37, float* %arrayidx33, align 4, !tbaa !15
  br label %do.body

do.body:                                          ; preds = %if.end.26
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.25
  %41 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast float* %out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast float* %in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.43 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %44 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %45 = load i32, i32* %is_identity, align 4, !tbaa !14
  %46 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom36 = sext i32 %46 to i64
  %47 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %TransformPQR37 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %47, i32 0, i32 11
  %caches38 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %TransformPQR37, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches38, i32 0, i64 %idxprom36
  %floats40 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx39, i32 0, i32 0
  %params41 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats40, i32 0, i32 0
  %is_identity42 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params41, i32 0, i32 0
  store i32 %45, i32* %is_identity42, align 4, !tbaa !67
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.43

cleanup.43:                                       ; preds = %for.end, %cleanup
  %48 = bitcast %struct.gs_sample_loop_params_s* %lp to i8*
  call void @llvm.lifetime.end(i64 12, i8* %48) #1
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %cleanup.dest.45 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.45, label %cleanup.50 [
    i32 0, label %cleanup.cont.46
  ]

cleanup.cont.46:                                  ; preds = %cleanup.43
  br label %for.inc.47

for.inc.47:                                       ; preds = %cleanup.cont.46
  %50 = load i32, i32* %j, align 4, !tbaa !14
  %inc48 = add nsw i32 %50, 1
  store i32 %inc48, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.end.49:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50

cleanup.50:                                       ; preds = %for.end.49, %cleanup.43, %if.then
  %51 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %is_identity to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @cie_joint_caches_complete(%struct.gx_cie_joint_caches_s* %pjc, %struct.gs_cie_common_s* %pcie, %struct.gs_cie_abc_s* %pabc, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %pjc.addr = alloca %struct.gx_cie_joint_caches_s*, align 8
  %pcie.addr = alloca %struct.gs_cie_common_s*, align 8
  %pabc.addr = alloca %struct.gs_cie_abc_s*, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %mat3 = alloca %struct.gs_matrix3_s, align 4
  %mat2 = alloca %struct.gs_matrix3_s, align 4
  %MatrixLMN_PQR = alloca %struct.gs_matrix3_s, align 4
  %j = alloca i32, align 4
  %mat1 = alloca %struct.gs_matrix3_s, align 4
  store %struct.gx_cie_joint_caches_s* %pjc, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  store %struct.gs_cie_common_s* %pcie, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  store %struct.gs_cie_abc_s* %pabc, %struct.gs_cie_abc_s** %pabc.addr, align 8, !tbaa !5
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_matrix3_s* %mat3 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = bitcast %struct.gs_matrix3_s* %mat2 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %1) #1
  %2 = bitcast %struct.gs_matrix3_s* %MatrixLMN_PQR to i8*
  call void @llvm.lifetime.start(i64 40, i8* %2) #1
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %remap_finish = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %4, i32 0, i32 5
  store i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)* @gx_cie_real_remap_finish, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)** %remap_finish, align 8, !tbaa !157
  %5 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %5, i32 0, i32 22
  %EncodeLMN = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches, i32 0, i32 0
  %caches1 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %EncodeLMN, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches1, i32 0, i64 0
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 0
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params, i32 0, i32 0
  %6 = load i32, i32* %is_identity, align 4, !tbaa !67
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches2 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %7, i32 0, i32 22
  %EncodeLMN3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches2, i32 0, i32 0
  %caches4 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %EncodeLMN3, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches4, i32 0, i64 1
  %floats6 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx5, i32 0, i32 0
  %params7 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats6, i32 0, i32 0
  %is_identity8 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params7, i32 0, i32 0
  %8 = load i32, i32* %is_identity8, align 4, !tbaa !67
  %tobool9 = icmp ne i32 %8, 0
  br i1 %tobool9, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %9 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %caches11 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %9, i32 0, i32 22
  %EncodeLMN12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches11, i32 0, i32 0
  %caches13 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %EncodeLMN12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches13, i32 0, i64 2
  %floats15 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx14, i32 0, i32 0
  %params16 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats15, i32 0, i32 0
  %is_identity17 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params16, i32 0, i32 0
  %10 = load i32, i32* %is_identity17, align 4, !tbaa !67
  %tobool18 = icmp ne i32 %10, 0
  br i1 %tobool18, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.10
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixABCEncode = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %11, i32 0, i32 17
  %12 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixPQR_inverse_LMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %12, i32 0, i32 19
  call void @cie_matrix_mult3(%struct.gs_matrix3_s* %MatrixABCEncode, %struct.gs_matrix3_s* %MatrixPQR_inverse_LMN, %struct.gs_matrix3_s* %mat3) #7
  %13 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %skipEncodeLMN = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %13, i32 0, i32 12
  store i32 1, i32* %skipEncodeLMN, align 4, !tbaa !158
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.10, %land.lhs.true, %entry
  br label %do.body.19

do.body.19:                                       ; preds = %if.else
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.body.19
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  %14 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixPQR_inverse_LMN22 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %14, i32 0, i32 19
  %15 = bitcast %struct.gs_matrix3_s* %mat3 to i8*
  %16 = bitcast %struct.gs_matrix3_s* %MatrixPQR_inverse_LMN22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 40, i32 4, i1 false), !tbaa.struct !114
  %17 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %skipEncodeLMN23 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %17, i32 0, i32 12
  store i32 0, i32* %skipEncodeLMN23, align 4, !tbaa !158
  br label %if.end

if.end:                                           ; preds = %do.end.21, %do.end
  %18 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %TransformPQR = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %18, i32 0, i32 11
  call void @cache3_set_linear(%struct.gx_cie_vector_cache3_s* %TransformPQR) #7
  %19 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %19, i32 0, i32 5
  %20 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %MatrixLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %20, i32 0, i32 4
  call void @cie_matrix_mult3(%struct.gs_matrix3_s* %MatrixPQR, %struct.gs_matrix3_s* %MatrixLMN, %struct.gs_matrix3_s* %MatrixLMN_PQR) #7
  %21 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %TransformPQR24 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %21, i32 0, i32 11
  %caches25 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %TransformPQR24, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches25, i32 0, i64 0
  %floats27 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx26, i32 0, i32 0
  %params28 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats27, i32 0, i32 0
  %is_identity29 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params28, i32 0, i32 0
  %22 = load i32, i32* %is_identity29, align 4, !tbaa !67
  %23 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %TransformPQR30 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %23, i32 0, i32 11
  %caches31 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %TransformPQR30, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches31, i32 0, i64 1
  %floats33 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx32, i32 0, i32 0
  %params34 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats33, i32 0, i32 0
  %is_identity35 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params34, i32 0, i32 0
  %24 = load i32, i32* %is_identity35, align 4, !tbaa !67
  %and = and i32 %22, %24
  %25 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %TransformPQR36 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %25, i32 0, i32 11
  %caches37 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %TransformPQR36, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches37, i32 0, i64 2
  %floats39 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx38, i32 0, i32 0
  %params40 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats39, i32 0, i32 0
  %is_identity41 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params40, i32 0, i32 0
  %26 = load i32, i32* %is_identity41, align 4, !tbaa !67
  %and42 = and i32 %and, %26
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.48

if.then.44:                                       ; preds = %if.end
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.44
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.body.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  call void @cie_matrix_mult3(%struct.gs_matrix3_s* %mat3, %struct.gs_matrix3_s* %MatrixLMN_PQR, %struct.gs_matrix3_s* %mat2) #7
  %27 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %skipPQR = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %27, i32 0, i32 10
  store i32 1, i32* %skipPQR, align 4, !tbaa !159
  br label %if.end.60

if.else.48:                                       ; preds = %if.end
  br label %do.body.49

do.body.49:                                       ; preds = %if.else.48
  br label %do.cond.50

do.cond.50:                                       ; preds = %do.body.49
  br label %do.end.51

do.end.51:                                        ; preds = %do.cond.50
  %28 = bitcast %struct.gs_matrix3_s* %mat2 to i8*
  %29 = bitcast %struct.gs_matrix3_s* %MatrixLMN_PQR to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 40, i32 4, i1 false), !tbaa.struct !114
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.51
  %30 = load i32, i32* %j, align 4, !tbaa !14
  %cmp = icmp slt i32 %30, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %TransformPQR52 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %32, i32 0, i32 11
  %caches53 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %TransformPQR52, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches53, i32 0, i64 %idxprom
  %floats55 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx54, i32 0, i32 0
  %33 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom56 = sext i32 %33 to i64
  %34 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %RangePQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %34, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangePQR, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom56
  call void @cie_cache_restrict(%struct.cie_cache_floats_s* %floats55, %struct.gs_range_s* %arrayidx57) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %j, align 4, !tbaa !14
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %TransformPQR58 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %36, i32 0, i32 11
  %call = call i32 @cie_cache_mult3(%struct.gx_cie_vector_cache3_s* %TransformPQR58, %struct.gs_matrix3_s* %mat3, double 1.000000e-03) #7
  %37 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %skipPQR59 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %37, i32 0, i32 10
  store i32 0, i32* %skipPQR59, align 4, !tbaa !159
  br label %if.end.60

if.end.60:                                        ; preds = %for.end, %do.end.47
  %38 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %caches61 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %38, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches61, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i64 0
  %floats63 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx62 to %struct.cie_cache_floats_s*
  %params64 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats63, i32 0, i32 0
  %is_identity65 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params64, i32 0, i32 0
  %39 = load i32, i32* %is_identity65, align 4, !tbaa !29
  %40 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %caches66 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %40, i32 0, i32 6
  %DecodeLMN67 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches66, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN67, i32 0, i64 1
  %floats69 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx68 to %struct.cie_cache_floats_s*
  %params70 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats69, i32 0, i32 0
  %is_identity71 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params70, i32 0, i32 0
  %41 = load i32, i32* %is_identity71, align 4, !tbaa !29
  %and72 = and i32 %39, %41
  %42 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %caches73 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %42, i32 0, i32 6
  %DecodeLMN74 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches73, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN74, i32 0, i64 2
  %floats76 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx75 to %struct.cie_cache_floats_s*
  %params77 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats76, i32 0, i32 0
  %is_identity78 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params77, i32 0, i32 0
  %43 = load i32, i32* %is_identity78, align 4, !tbaa !29
  %and79 = and i32 %and72, %43
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.then.81, label %if.else.131

if.then.81:                                       ; preds = %if.end.60
  br label %do.body.82

do.body.82:                                       ; preds = %if.then.81
  br label %do.cond.83

do.cond.83:                                       ; preds = %do.body.82
  br label %do.end.84

do.end.84:                                        ; preds = %do.cond.83
  %44 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc.addr, align 8, !tbaa !5
  %tobool85 = icmp ne %struct.gs_cie_abc_s* %44, null
  br i1 %tobool85, label %if.else.108, label %if.then.86

if.then.86:                                       ; preds = %do.end.84
  %is_identity87 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %mat2, i32 0, i32 3
  %45 = load i32, i32* %is_identity87, align 4, !tbaa !41
  %46 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %skipDecodeLMN = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %46, i32 0, i32 7
  store i32 %45, i32* %skipDecodeLMN, align 4, !tbaa !160
  %47 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %skipDecodeABC = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %47, i32 0, i32 6
  store i32 0, i32* %skipDecodeABC, align 4, !tbaa !161
  %48 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %skipDecodeLMN88 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %48, i32 0, i32 7
  %49 = load i32, i32* %skipDecodeLMN88, align 4, !tbaa !160
  %tobool89 = icmp ne i32 %49, 0
  br i1 %tobool89, label %if.end.107, label %if.then.90

if.then.90:                                       ; preds = %if.then.86
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.103, %if.then.90
  %50 = load i32, i32* %j, align 4, !tbaa !14
  %cmp92 = icmp slt i32 %50, 3
  br i1 %cmp92, label %for.body.93, label %for.end.105

for.body.93:                                      ; preds = %for.cond.91
  %51 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom94 = sext i32 %51 to i64
  %52 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %DecodeLMN95 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %52, i32 0, i32 8
  %caches96 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeLMN95, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches96, i32 0, i64 %idxprom94
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %mat2, i32 0, i32 0
  %53 = load i32, i32* %j, align 4, !tbaa !14
  %idx.ext = sext i32 %53 to i64
  %add.ptr = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu, i64 %idx.ext
  %54 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom98 = sext i32 %54 to i64
  %55 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %caches99 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %55, i32 0, i32 6
  %DecodeLMN100 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches99, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN100, i32 0, i64 %idxprom98
  %floats102 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx101 to %struct.cie_cache_floats_s*
  call void @cie_cache_mult(%struct.gx_cie_vector_cache_s* %arrayidx97, %struct.gs_vector3_s* %add.ptr, %struct.cie_cache_floats_s* %floats102, double 1.000000e-03) #7
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.93
  %56 = load i32, i32* %j, align 4, !tbaa !14
  %inc104 = add nsw i32 %56, 1
  store i32 %inc104, i32* %j, align 4, !tbaa !14
  br label %for.cond.91

for.end.105:                                      ; preds = %for.cond.91
  %57 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %DecodeLMN106 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %57, i32 0, i32 8
  call void @cie_cache3_set_interpolation(%struct.gx_cie_vector_cache3_s* %DecodeLMN106) #7
  br label %if.end.107

if.end.107:                                       ; preds = %for.end.105, %if.then.86
  br label %if.end.130

if.else.108:                                      ; preds = %do.end.84
  %58 = bitcast %struct.gs_matrix3_s* %mat1 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %58) #1
  %59 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc.addr, align 8, !tbaa !5
  %MatrixABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %59, i32 0, i32 4
  call void @cie_matrix_mult3(%struct.gs_matrix3_s* %mat2, %struct.gs_matrix3_s* %MatrixABC, %struct.gs_matrix3_s* %mat1) #7
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.124, %if.else.108
  %60 = load i32, i32* %j, align 4, !tbaa !14
  %cmp110 = icmp slt i32 %60, 3
  br i1 %cmp110, label %for.body.111, label %for.end.126

for.body.111:                                     ; preds = %for.cond.109
  %61 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom112 = sext i32 %61 to i64
  %62 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %DecodeLMN113 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %62, i32 0, i32 8
  %caches114 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeLMN113, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches114, i32 0, i64 %idxprom112
  %cu116 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %mat1, i32 0, i32 0
  %63 = load i32, i32* %j, align 4, !tbaa !14
  %idx.ext117 = sext i32 %63 to i64
  %add.ptr118 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu116, i64 %idx.ext117
  %64 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom119 = sext i32 %64 to i64
  %65 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc.addr, align 8, !tbaa !5
  %caches120 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %65, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches120, i32 0, i32 1
  %caches121 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches121, i32 0, i64 %idxprom119
  %floats123 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx122, i32 0, i32 0
  call void @cie_cache_mult(%struct.gx_cie_vector_cache_s* %arrayidx115, %struct.gs_vector3_s* %add.ptr118, %struct.cie_cache_floats_s* %floats123, double 1.000000e-03) #7
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.body.111
  %66 = load i32, i32* %j, align 4, !tbaa !14
  %inc125 = add nsw i32 %66, 1
  store i32 %inc125, i32* %j, align 4, !tbaa !14
  br label %for.cond.109

for.end.126:                                      ; preds = %for.cond.109
  %67 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %DecodeLMN127 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %67, i32 0, i32 8
  call void @cie_cache3_set_interpolation(%struct.gx_cie_vector_cache3_s* %DecodeLMN127) #7
  %68 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %skipDecodeLMN128 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %68, i32 0, i32 7
  store i32 0, i32* %skipDecodeLMN128, align 4, !tbaa !160
  %69 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %skipDecodeABC129 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %69, i32 0, i32 6
  store i32 1, i32* %skipDecodeABC129, align 4, !tbaa !161
  %70 = bitcast %struct.gs_matrix3_s* %mat1 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %70) #1
  br label %if.end.130

if.end.130:                                       ; preds = %for.end.126, %if.end.107
  br label %if.end.159

if.else.131:                                      ; preds = %if.end.60
  br label %do.body.132

do.body.132:                                      ; preds = %if.else.131
  br label %do.cond.133

do.cond.133:                                      ; preds = %do.body.132
  br label %do.end.134

do.end.134:                                       ; preds = %do.cond.133
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.150, %do.end.134
  %71 = load i32, i32* %j, align 4, !tbaa !14
  %cmp136 = icmp slt i32 %71, 3
  br i1 %cmp136, label %for.body.137, label %for.end.152

for.body.137:                                     ; preds = %for.cond.135
  %72 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom138 = sext i32 %72 to i64
  %73 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %DecodeLMN139 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %73, i32 0, i32 8
  %caches140 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeLMN139, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches140, i32 0, i64 %idxprom138
  %cu142 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %mat2, i32 0, i32 0
  %74 = load i32, i32* %j, align 4, !tbaa !14
  %idx.ext143 = sext i32 %74 to i64
  %add.ptr144 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu142, i64 %idx.ext143
  %75 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom145 = sext i32 %75 to i64
  %76 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %caches146 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %76, i32 0, i32 6
  %DecodeLMN147 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches146, i32 0, i32 0
  %arrayidx148 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN147, i32 0, i64 %idxprom145
  %floats149 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx148 to %struct.cie_cache_floats_s*
  call void @cie_cache_mult(%struct.gx_cie_vector_cache_s* %arrayidx141, %struct.gs_vector3_s* %add.ptr144, %struct.cie_cache_floats_s* %floats149, double 1.000000e-03) #7
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.body.137
  %77 = load i32, i32* %j, align 4, !tbaa !14
  %inc151 = add nsw i32 %77, 1
  store i32 %inc151, i32* %j, align 4, !tbaa !14
  br label %for.cond.135

for.end.152:                                      ; preds = %for.cond.135
  %78 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %DecodeLMN153 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %78, i32 0, i32 8
  call void @cie_cache3_set_interpolation(%struct.gx_cie_vector_cache3_s* %DecodeLMN153) #7
  %79 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %skipDecodeLMN154 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %79, i32 0, i32 7
  store i32 0, i32* %skipDecodeLMN154, align 4, !tbaa !160
  %80 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc.addr, align 8, !tbaa !5
  %cmp155 = icmp ne %struct.gs_cie_abc_s* %80, null
  br i1 %cmp155, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end.152
  %81 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc.addr, align 8, !tbaa !5
  %caches156 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %81, i32 0, i32 5
  %skipABC = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches156, i32 0, i32 0
  %82 = load i32, i32* %skipABC, align 4, !tbaa !44
  %tobool157 = icmp ne i32 %82, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end.152
  %83 = phi i1 [ false, %for.end.152 ], [ %tobool157, %land.rhs ]
  %land.ext = zext i1 %83 to i32
  %84 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %skipDecodeABC158 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %84, i32 0, i32 6
  store i32 %land.ext, i32* %skipDecodeABC158, align 4, !tbaa !161
  br label %if.end.159

if.end.159:                                       ; preds = %land.end, %if.end.130
  %85 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast %struct.gs_matrix3_s* %MatrixLMN_PQR to i8*
  call void @llvm.lifetime.end(i64 40, i8* %86) #1
  %87 = bitcast %struct.gs_matrix3_s* %mat2 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %87) #1
  %88 = bitcast %struct.gs_matrix3_s* %mat3 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %88) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_cie_compute_points_sd(%struct.gx_cie_joint_caches_s* %pjc, %struct.gs_cie_common_s* %pcie, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %pjc.addr = alloca %struct.gx_cie_joint_caches_s*, align 8
  %pcie.addr = alloca %struct.gs_cie_common_s*, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %pwbsd = alloca %struct.gs_cie_wbsd_s*, align 8
  store %struct.gx_cie_joint_caches_s* %pjc, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  store %struct.gs_cie_common_s* %pcie, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_cie_wbsd_s** %pwbsd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc.addr, align 8, !tbaa !5
  %points_sd = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %1, i32 0, i32 9
  store %struct.gs_cie_wbsd_s* %points_sd, %struct.gs_cie_wbsd_s** %pwbsd, align 8, !tbaa !5
  %2 = load %struct.gs_cie_wbsd_s*, %struct.gs_cie_wbsd_s** %pwbsd, align 8, !tbaa !5
  %ws = getelementptr inbounds %struct.gs_cie_wbsd_s, %struct.gs_cie_wbsd_s* %2, i32 0, i32 0
  %xyz = getelementptr inbounds %struct.anon, %struct.anon* %ws, i32 0, i32 0
  %3 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %points = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %3, i32 0, i32 5
  %WhitePoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points, i32 0, i32 0
  %4 = bitcast %struct.gs_vector3_s* %xyz to i8*
  %5 = bitcast %struct.gs_vector3_s* %WhitePoint to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 12, i32 4, i1 false), !tbaa.struct !162
  %6 = load %struct.gs_cie_wbsd_s*, %struct.gs_cie_wbsd_s** %pwbsd, align 8, !tbaa !5
  %ws1 = getelementptr inbounds %struct.gs_cie_wbsd_s, %struct.gs_cie_wbsd_s* %6, i32 0, i32 0
  %xyz2 = getelementptr inbounds %struct.anon, %struct.anon* %ws1, i32 0, i32 0
  %7 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %7, i32 0, i32 5
  %8 = load %struct.gs_cie_wbsd_s*, %struct.gs_cie_wbsd_s** %pwbsd, align 8, !tbaa !5
  %ws3 = getelementptr inbounds %struct.gs_cie_wbsd_s, %struct.gs_cie_wbsd_s* %8, i32 0, i32 0
  %pqr = getelementptr inbounds %struct.anon, %struct.anon* %ws3, i32 0, i32 1
  call void @cie_mult3(%struct.gs_vector3_s* %xyz2, %struct.gs_matrix3_s* %MatrixPQR, %struct.gs_vector3_s* %pqr) #7
  %9 = load %struct.gs_cie_wbsd_s*, %struct.gs_cie_wbsd_s** %pwbsd, align 8, !tbaa !5
  %bs = getelementptr inbounds %struct.gs_cie_wbsd_s, %struct.gs_cie_wbsd_s* %9, i32 0, i32 1
  %xyz4 = getelementptr inbounds %struct.anon, %struct.anon* %bs, i32 0, i32 0
  %10 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !5
  %points5 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %10, i32 0, i32 5
  %BlackPoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points5, i32 0, i32 1
  %11 = bitcast %struct.gs_vector3_s* %xyz4 to i8*
  %12 = bitcast %struct.gs_vector3_s* %BlackPoint to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 12, i32 4, i1 false), !tbaa.struct !162
  %13 = load %struct.gs_cie_wbsd_s*, %struct.gs_cie_wbsd_s** %pwbsd, align 8, !tbaa !5
  %bs6 = getelementptr inbounds %struct.gs_cie_wbsd_s, %struct.gs_cie_wbsd_s* %13, i32 0, i32 1
  %xyz7 = getelementptr inbounds %struct.anon, %struct.anon* %bs6, i32 0, i32 0
  %14 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %MatrixPQR8 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %14, i32 0, i32 5
  %15 = load %struct.gs_cie_wbsd_s*, %struct.gs_cie_wbsd_s** %pwbsd, align 8, !tbaa !5
  %bs9 = getelementptr inbounds %struct.gs_cie_wbsd_s, %struct.gs_cie_wbsd_s* %15, i32 0, i32 1
  %pqr10 = getelementptr inbounds %struct.anon, %struct.anon* %bs9, i32 0, i32 1
  call void @cie_mult3(%struct.gs_vector3_s* %xyz7, %struct.gs_matrix3_s* %MatrixPQR8, %struct.gs_vector3_s* %pqr10) #7
  %16 = load %struct.gs_cie_wbsd_s*, %struct.gs_cie_wbsd_s** %pwbsd, align 8, !tbaa !5
  %wd = getelementptr inbounds %struct.gs_cie_wbsd_s, %struct.gs_cie_wbsd_s* %16, i32 0, i32 2
  %xyz11 = getelementptr inbounds %struct.anon, %struct.anon* %wd, i32 0, i32 0
  %17 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %points12 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %17, i32 0, i32 4
  %WhitePoint13 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points12, i32 0, i32 0
  %18 = bitcast %struct.gs_vector3_s* %xyz11 to i8*
  %19 = bitcast %struct.gs_vector3_s* %WhitePoint13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 12, i32 4, i1 false), !tbaa.struct !162
  %20 = load %struct.gs_cie_wbsd_s*, %struct.gs_cie_wbsd_s** %pwbsd, align 8, !tbaa !5
  %wd14 = getelementptr inbounds %struct.gs_cie_wbsd_s, %struct.gs_cie_wbsd_s* %20, i32 0, i32 2
  %pqr15 = getelementptr inbounds %struct.anon, %struct.anon* %wd14, i32 0, i32 1
  %21 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %wdpqr = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %21, i32 0, i32 20
  %22 = bitcast %struct.gs_vector3_s* %pqr15 to i8*
  %23 = bitcast %struct.gs_vector3_s* %wdpqr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 12, i32 4, i1 false), !tbaa.struct !162
  %24 = load %struct.gs_cie_wbsd_s*, %struct.gs_cie_wbsd_s** %pwbsd, align 8, !tbaa !5
  %bd = getelementptr inbounds %struct.gs_cie_wbsd_s, %struct.gs_cie_wbsd_s* %24, i32 0, i32 3
  %xyz16 = getelementptr inbounds %struct.anon, %struct.anon* %bd, i32 0, i32 0
  %25 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %points17 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %25, i32 0, i32 4
  %BlackPoint18 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points17, i32 0, i32 1
  %26 = bitcast %struct.gs_vector3_s* %xyz16 to i8*
  %27 = bitcast %struct.gs_vector3_s* %BlackPoint18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 12, i32 4, i1 false), !tbaa.struct !162
  %28 = load %struct.gs_cie_wbsd_s*, %struct.gs_cie_wbsd_s** %pwbsd, align 8, !tbaa !5
  %bd19 = getelementptr inbounds %struct.gs_cie_wbsd_s, %struct.gs_cie_wbsd_s* %28, i32 0, i32 3
  %pqr20 = getelementptr inbounds %struct.anon, %struct.anon* %bd19, i32 0, i32 1
  %29 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !5
  %bdpqr = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %29, i32 0, i32 21
  %30 = bitcast %struct.gs_vector3_s* %pqr20 to i8*
  %31 = bitcast %struct.gs_vector3_s* %bdpqr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 12, i32 4, i1 false), !tbaa.struct !162
  %32 = bitcast %struct.gs_cie_wbsd_s** %pwbsd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_cie_to_xyz_alloc(%struct.gs_imager_state_s** %ppis, %struct.gs_color_space_s* %pcs, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppis.addr = alloca %struct.gs_imager_state_s**, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %pjc = alloca %struct.gx_cie_joint_caches_s*, align 8
  %pabc = alloca %struct.gs_cie_abc_s*, align 8
  %pcie = alloca %struct.gs_cie_common_s*, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s** %ppis, %struct.gs_imager_state_s*** %ppis.addr, align 8, !tbaa !5
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !138
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_imager_state, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0)) #7
  %4 = bitcast i8* %call to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %4, %struct.gs_imager_state_s** %pis, align 8, !tbaa !5
  %5 = bitcast %struct.gx_cie_joint_caches_s** %pjc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.gs_cie_abc_s** %pabc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.gs_cie_common_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %call1 = call %struct.gs_cie_common_s* @cie_cs_common_abc(%struct.gs_color_space_s* %8, %struct.gs_cie_abc_s** %pabc) #7
  store %struct.gs_cie_common_s* %call1, %struct.gs_cie_common_s** %pcie, align 8, !tbaa !5
  %9 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !5
  %cmp = icmp eq %struct.gs_imager_state_s* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !5
  %12 = bitcast %struct.gs_imager_state_s* %11 to i8*
  %call2 = call i8* @memset(i8* %12, i32 0, i64 1616) #9
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %14, i32 0, i32 1
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %memory, align 8, !tbaa !163
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !5
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %call3 = call i32 @gs_imager_state_initialize(%struct.gs_imager_state_s* %15, %struct.gs_memory_s* %16) #7
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %alloc_struct5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 8
  %18 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct5, align 8, !tbaa !138
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %call6 = call i8* %18(%struct.gs_memory_s* %19, %struct.gs_memory_struct_type_s* @st_joint_caches, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0)) #7
  %20 = bitcast i8* %call6 to %struct.gx_cie_joint_caches_s*
  store %struct.gx_cie_joint_caches_s* %20, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %21 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %cmp7 = icmp eq %struct.gx_cie_joint_caches_s* %21, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 2
  %23 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !164
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !5
  %26 = bitcast %struct.gs_imager_state_s* %25 to i8*
  call void %23(%struct.gs_memory_s* %24, i8* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0)) #7
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %27 = load i32, i32* %j, align 4, !tbaa !14
  %cmp11 = icmp slt i32 %27, 3
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %DecodeLMN = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %29, i32 0, i32 8
  %caches = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeLMN, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches, i32 0, i64 %idxprom
  %30 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie, align 8, !tbaa !5
  %MatrixLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %30, i32 0, i32 4
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixLMN, i32 0, i32 0
  %31 = load i32, i32* %j, align 4, !tbaa !14
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu, i64 %idx.ext
  %32 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom12 = sext i32 %32 to i64
  %33 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie, align 8, !tbaa !5
  %caches13 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %33, i32 0, i32 6
  %DecodeLMN14 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches13, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN14, i32 0, i64 %idxprom12
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx15 to %struct.cie_cache_floats_s*
  call void @cie_cache_mult(%struct.gx_cie_vector_cache_s* %arrayidx, %struct.gs_vector3_s* %add.ptr, %struct.cie_cache_floats_s* %floats, double 1.000000e-03) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %j, align 4, !tbaa !14
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %DecodeLMN16 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %35, i32 0, i32 8
  call void @cie_cache3_set_interpolation(%struct.gx_cie_vector_cache3_s* %DecodeLMN16) #7
  %36 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %skipDecodeLMN = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %36, i32 0, i32 7
  store i32 0, i32* %skipDecodeLMN, align 4, !tbaa !160
  %37 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc, align 8, !tbaa !5
  %cmp17 = icmp ne %struct.gs_cie_abc_s* %37, null
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end
  %38 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pabc, align 8, !tbaa !5
  %caches18 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %38, i32 0, i32 5
  %skipABC = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches18, i32 0, i32 0
  %39 = load i32, i32* %skipABC, align 4, !tbaa !44
  %tobool = icmp ne i32 %39, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end
  %40 = phi i1 [ false, %for.end ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %40 to i32
  %41 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %skipDecodeABC = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %41, i32 0, i32 6
  store i32 %land.ext, i32* %skipDecodeABC, align 4, !tbaa !161
  %42 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %remap_finish = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %42, i32 0, i32 5
  store i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)* @gx_cie_xyz_remap_finish, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)** %remap_finish, align 8, !tbaa !157
  %43 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %id = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %43, i32 0, i32 2
  %44 = load i64, i64* %id, align 8, !tbaa !154
  %45 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %cspace_id = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %45, i32 0, i32 0
  store i64 %44, i64* %cspace_id, align 8, !tbaa !143
  %46 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %status = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %46, i32 0, i32 3
  store i32 2, i32* %status, align 4, !tbaa !54
  %47 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !5
  %48 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !5
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %48, i32 0, i32 48
  store %struct.gx_cie_joint_caches_s* %47, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !153
  %49 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !5
  %cie_to_xyz = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %49, i32 0, i32 43
  store i32 1, i32* %cie_to_xyz, align 4, !tbaa !165
  %50 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !5
  %51 = load %struct.gs_imager_state_s**, %struct.gs_imager_state_s*** %ppis.addr, align 8, !tbaa !5
  store %struct.gs_imager_state_s* %50, %struct.gs_imager_state_s** %51, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then.8, %if.then
  %52 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.gs_cie_common_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.gs_cie_abc_s** %pabc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast %struct.gx_cie_joint_caches_s** %pjc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #6

declare i32 @gs_imager_state_initialize(%struct.gs_imager_state_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal void @cie_cache3_set_interpolation(%struct.gx_cie_vector_cache3_s* %pvc) #0 {
entry:
  %pvc.addr = alloca %struct.gx_cie_vector_cache3_s*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca %struct.cie_interpolation_range_s*, align 8
  %rmin = alloca float, align 4
  %rmax = alloca float, align 4
  store %struct.gx_cie_vector_cache3_s* %pvc, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %entry
  %2 = load i32, i32* %j, align 4, !tbaa !14
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  %3 = bitcast %struct.cie_interpolation_range_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %caches = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches, i32 0, i64 0
  %vecs = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 1
  %params = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs, i32 0, i32 0
  %interpolation_ranges = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params, i32 0, i32 3
  %arrayidx1 = getelementptr inbounds [3 x %struct.cie_interpolation_range_s], [3 x %struct.cie_interpolation_range_s]* %interpolation_ranges, i32 0, i64 %idxprom
  store %struct.cie_interpolation_range_s* %arrayidx1, %struct.cie_interpolation_range_s** %p, align 8, !tbaa !5
  %6 = bitcast float* %rmin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.cie_interpolation_range_s*, %struct.cie_interpolation_range_s** %p, align 8, !tbaa !5
  %rmin2 = getelementptr inbounds %struct.cie_interpolation_range_s, %struct.cie_interpolation_range_s* %7, i32 0, i32 0
  %8 = load float, float* %rmin2, align 4, !tbaa !166
  store float %8, float* %rmin, align 4, !tbaa !15
  %9 = bitcast float* %rmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.cie_interpolation_range_s*, %struct.cie_interpolation_range_s** %p, align 8, !tbaa !5
  %rmax3 = getelementptr inbounds %struct.cie_interpolation_range_s, %struct.cie_interpolation_range_s* %10, i32 0, i32 1
  %11 = load float, float* %rmax3, align 4, !tbaa !168
  store float %11, float* %rmax, align 4, !tbaa !15
  store i32 1, i32* %k, align 4, !tbaa !14
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %k, align 4, !tbaa !14
  %cmp5 = icmp slt i32 %12, 3
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %13 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom7 = sext i32 %13 to i64
  %14 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %caches9 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %15, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches9, i32 0, i64 %idxprom8
  %vecs11 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx10, i32 0, i32 1
  %params12 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs11, i32 0, i32 0
  %interpolation_ranges13 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params12, i32 0, i32 3
  %arrayidx14 = getelementptr inbounds [3 x %struct.cie_interpolation_range_s], [3 x %struct.cie_interpolation_range_s]* %interpolation_ranges13, i32 0, i64 %idxprom7
  store %struct.cie_interpolation_range_s* %arrayidx14, %struct.cie_interpolation_range_s** %p, align 8, !tbaa !5
  %16 = load float, float* %rmin, align 4, !tbaa !15
  %17 = load %struct.cie_interpolation_range_s*, %struct.cie_interpolation_range_s** %p, align 8, !tbaa !5
  %rmin15 = getelementptr inbounds %struct.cie_interpolation_range_s, %struct.cie_interpolation_range_s* %17, i32 0, i32 0
  %18 = load float, float* %rmin15, align 4, !tbaa !166
  %cmp16 = fcmp olt float %16, %18
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.6
  %19 = load float, float* %rmin, align 4, !tbaa !15
  br label %cond.end

cond.false:                                       ; preds = %for.body.6
  %20 = load %struct.cie_interpolation_range_s*, %struct.cie_interpolation_range_s** %p, align 8, !tbaa !5
  %rmin17 = getelementptr inbounds %struct.cie_interpolation_range_s, %struct.cie_interpolation_range_s* %20, i32 0, i32 0
  %21 = load float, float* %rmin17, align 4, !tbaa !166
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %19, %cond.true ], [ %21, %cond.false ]
  store float %cond, float* %rmin, align 4, !tbaa !15
  %22 = load float, float* %rmax, align 4, !tbaa !15
  %23 = load %struct.cie_interpolation_range_s*, %struct.cie_interpolation_range_s** %p, align 8, !tbaa !5
  %rmax18 = getelementptr inbounds %struct.cie_interpolation_range_s, %struct.cie_interpolation_range_s* %23, i32 0, i32 1
  %24 = load float, float* %rmax18, align 4, !tbaa !168
  %cmp19 = fcmp ogt float %22, %24
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.end
  %25 = load float, float* %rmax, align 4, !tbaa !15
  br label %cond.end.23

cond.false.21:                                    ; preds = %cond.end
  %26 = load %struct.cie_interpolation_range_s*, %struct.cie_interpolation_range_s** %p, align 8, !tbaa !5
  %rmax22 = getelementptr inbounds %struct.cie_interpolation_range_s, %struct.cie_interpolation_range_s* %26, i32 0, i32 1
  %27 = load float, float* %rmax22, align 4, !tbaa !168
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.21, %cond.true.20
  %cond24 = phi float [ %25, %cond.true.20 ], [ %27, %cond.false.21 ]
  store float %cond24, float* %rmax, align 4, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %cond.end.23
  %28 = load i32, i32* %k, align 4, !tbaa !14
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %k, align 4, !tbaa !14
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %29 = load float, float* %rmin, align 4, !tbaa !15
  %30 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom25 = sext i32 %30 to i64
  %31 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %interpolation_ranges26 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %31, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [3 x %struct.cie_interpolation_range_s], [3 x %struct.cie_interpolation_range_s]* %interpolation_ranges26, i32 0, i64 %idxprom25
  %rmin28 = getelementptr inbounds %struct.cie_interpolation_range_s, %struct.cie_interpolation_range_s* %arrayidx27, i32 0, i32 0
  store float %29, float* %rmin28, align 4, !tbaa !166
  %32 = load float, float* %rmax, align 4, !tbaa !15
  %33 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom29 = sext i32 %33 to i64
  %34 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pvc.addr, align 8, !tbaa !5
  %interpolation_ranges30 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %34, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [3 x %struct.cie_interpolation_range_s], [3 x %struct.cie_interpolation_range_s]* %interpolation_ranges30, i32 0, i64 %idxprom29
  %rmax32 = getelementptr inbounds %struct.cie_interpolation_range_s, %struct.cie_interpolation_range_s* %arrayidx31, i32 0, i32 1
  store float %32, float* %rmax32, align 4, !tbaa !168
  br label %do.body

do.body:                                          ; preds = %for.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %35 = bitcast float* %rmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast float* %rmin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.cie_interpolation_range_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %for.inc.33

for.inc.33:                                       ; preds = %do.end
  %38 = load i32, i32* %j, align 4, !tbaa !14
  %inc34 = add nsw i32 %38, 1
  store i32 %inc34, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  %39 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  ret void
}

declare i32 @gx_cie_xyz_remap_finish(<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*) #2

; Function Attrs: nounwind uwtable
define void @gx_cie_to_xyz_free(%struct.gs_imager_state_s* %pis) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !163
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %4 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !164
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %6, i32 0, i32 48
  %7 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !153
  %8 = bitcast %struct.gx_cie_joint_caches_s* %7 to i8*
  call void %4(%struct.gs_memory_s* %5, i8* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0)) #7
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_link_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 36
  %10 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !169
  %cmp = icmp ne %struct.gsicc_link_cache_s* %10, null
  br i1 %cmp, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_link_cache1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %11, i32 0, i32 36
  %12 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache1, align 8, !tbaa !169
  %tobool = icmp ne %struct.gsicc_link_cache_s* %12, null
  br i1 %tobool, label %if.then.2, label %if.end.29

if.then.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_link_cache5 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 36
  %14 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache5, align 8, !tbaa !169
  %rc = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %14, i32 0, i32 2
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %15 = load i64, i64* %ref_count, align 8, !tbaa !170
  %add = add nsw i64 %15, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !170
  br label %do.cond.6

do.cond.6:                                        ; preds = %do.end
  br label %do.end.7

do.end.7:                                         ; preds = %do.cond.6
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_link_cache8 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %16, i32 0, i32 36
  %17 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache8, align 8, !tbaa !169
  %rc9 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %17, i32 0, i32 2
  %ref_count10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 0
  %18 = load i64, i64* %ref_count10, align 8, !tbaa !170
  %tobool11 = icmp ne i64 %18, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %do.end.7
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.body.13
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.body.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_link_cache17 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %19, i32 0, i32 36
  %20 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache17, align 8, !tbaa !169
  %rc18 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %20, i32 0, i32 2
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 2
  %21 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !172
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_link_cache19 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %22, i32 0, i32 36
  %23 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache19, align 8, !tbaa !169
  %rc20 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %23, i32 0, i32 2
  %memory21 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc20, i32 0, i32 1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !173
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_link_cache22 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %25, i32 0, i32 36
  %26 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache22, align 8, !tbaa !169
  %27 = bitcast %struct.gsicc_link_cache_s* %26 to i8*
  call void %21(%struct.gs_memory_s* %24, i8* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0)) #7
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.end.16
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  %28 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_link_cache25 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %28, i32 0, i32 36
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %icc_link_cache25, align 8, !tbaa !169
  br label %if.end

if.else:                                          ; preds = %do.end.7
  br label %do.body.26

do.body.26:                                       ; preds = %if.else
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.body.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  br label %if.end

if.end:                                           ; preds = %do.end.28, %do.end.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %do.body
  br label %do.cond.30

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %entry
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %29, i32 0, i32 35
  %30 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !174
  %cmp33 = icmp ne %struct.gsicc_manager_s* %30, null
  br i1 %cmp33, label %if.then.34, label %if.end.76

if.then.34:                                       ; preds = %if.end.32
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_manager36 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %31, i32 0, i32 35
  %32 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager36, align 8, !tbaa !174
  %tobool37 = icmp ne %struct.gsicc_manager_s* %32, null
  br i1 %tobool37, label %if.then.38, label %if.end.73

if.then.38:                                       ; preds = %do.body.35
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.body.39
  br label %do.cond.41

do.cond.41:                                       ; preds = %do.body.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_manager43 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 35
  %34 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager43, align 8, !tbaa !174
  %rc44 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %34, i32 0, i32 11
  %ref_count45 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc44, i32 0, i32 0
  %35 = load i64, i64* %ref_count45, align 8, !tbaa !175
  %add46 = add nsw i64 %35, -1
  store i64 %add46, i64* %ref_count45, align 8, !tbaa !175
  br label %do.cond.47

do.cond.47:                                       ; preds = %do.end.42
  br label %do.end.48

do.end.48:                                        ; preds = %do.cond.47
  %36 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_manager49 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %36, i32 0, i32 35
  %37 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager49, align 8, !tbaa !174
  %rc50 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %37, i32 0, i32 11
  %ref_count51 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc50, i32 0, i32 0
  %38 = load i64, i64* %ref_count51, align 8, !tbaa !175
  %tobool52 = icmp ne i64 %38, 0
  br i1 %tobool52, label %if.else.68, label %if.then.53

if.then.53:                                       ; preds = %do.end.48
  br label %do.body.54

do.body.54:                                       ; preds = %if.then.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.body.54
  br label %do.cond.56

do.cond.56:                                       ; preds = %do.body.55
  br label %do.end.57

do.end.57:                                        ; preds = %do.cond.56
  %39 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_manager58 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %39, i32 0, i32 35
  %40 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager58, align 8, !tbaa !174
  %rc59 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %40, i32 0, i32 11
  %free60 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc59, i32 0, i32 2
  %41 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free60, align 8, !tbaa !177
  %42 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_manager61 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %42, i32 0, i32 35
  %43 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager61, align 8, !tbaa !174
  %rc62 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %43, i32 0, i32 11
  %memory63 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc62, i32 0, i32 1
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory63, align 8, !tbaa !178
  %45 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_manager64 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %45, i32 0, i32 35
  %46 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager64, align 8, !tbaa !174
  %47 = bitcast %struct.gsicc_manager_s* %46 to i8*
  call void %41(%struct.gs_memory_s* %44, i8* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0)) #7
  br label %do.cond.65

do.cond.65:                                       ; preds = %do.end.57
  br label %do.end.66

do.end.66:                                        ; preds = %do.cond.65
  %48 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_manager67 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %48, i32 0, i32 35
  store %struct.gsicc_manager_s* null, %struct.gsicc_manager_s** %icc_manager67, align 8, !tbaa !174
  br label %if.end.72

if.else.68:                                       ; preds = %do.end.48
  br label %do.body.69

do.body.69:                                       ; preds = %if.else.68
  br label %do.cond.70

do.cond.70:                                       ; preds = %do.body.69
  br label %do.end.71

do.end.71:                                        ; preds = %do.cond.70
  br label %if.end.72

if.end.72:                                        ; preds = %do.end.71, %do.end.66
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %do.body.35
  br label %do.cond.74

do.cond.74:                                       ; preds = %if.end.73
  br label %do.end.75

do.end.75:                                        ; preds = %do.cond.74
  br label %if.end.76

if.end.76:                                        ; preds = %do.end.75, %if.end.32
  %49 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_profile_cache = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %49, i32 0, i32 37
  %50 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache, align 8, !tbaa !179
  %cmp77 = icmp ne %struct.gsicc_profile_cache_s* %50, null
  br i1 %cmp77, label %if.then.78, label %if.end.120

if.then.78:                                       ; preds = %if.end.76
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  %51 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_profile_cache80 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %51, i32 0, i32 37
  %52 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache80, align 8, !tbaa !179
  %tobool81 = icmp ne %struct.gsicc_profile_cache_s* %52, null
  br i1 %tobool81, label %if.then.82, label %if.end.117

if.then.82:                                       ; preds = %do.body.79
  br label %do.body.83

do.body.83:                                       ; preds = %if.then.82
  br label %do.body.84

do.body.84:                                       ; preds = %do.body.83
  br label %do.cond.85

do.cond.85:                                       ; preds = %do.body.84
  br label %do.end.86

do.end.86:                                        ; preds = %do.cond.85
  %53 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_profile_cache87 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %53, i32 0, i32 37
  %54 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache87, align 8, !tbaa !179
  %rc88 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %54, i32 0, i32 2
  %ref_count89 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc88, i32 0, i32 0
  %55 = load i64, i64* %ref_count89, align 8, !tbaa !180
  %add90 = add nsw i64 %55, -1
  store i64 %add90, i64* %ref_count89, align 8, !tbaa !180
  br label %do.cond.91

do.cond.91:                                       ; preds = %do.end.86
  br label %do.end.92

do.end.92:                                        ; preds = %do.cond.91
  %56 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_profile_cache93 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %56, i32 0, i32 37
  %57 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache93, align 8, !tbaa !179
  %rc94 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %57, i32 0, i32 2
  %ref_count95 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc94, i32 0, i32 0
  %58 = load i64, i64* %ref_count95, align 8, !tbaa !180
  %tobool96 = icmp ne i64 %58, 0
  br i1 %tobool96, label %if.else.112, label %if.then.97

if.then.97:                                       ; preds = %do.end.92
  br label %do.body.98

do.body.98:                                       ; preds = %if.then.97
  br label %do.body.99

do.body.99:                                       ; preds = %do.body.98
  br label %do.cond.100

do.cond.100:                                      ; preds = %do.body.99
  br label %do.end.101

do.end.101:                                       ; preds = %do.cond.100
  %59 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_profile_cache102 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %59, i32 0, i32 37
  %60 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache102, align 8, !tbaa !179
  %rc103 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %60, i32 0, i32 2
  %free104 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc103, i32 0, i32 2
  %61 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free104, align 8, !tbaa !182
  %62 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_profile_cache105 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %62, i32 0, i32 37
  %63 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache105, align 8, !tbaa !179
  %rc106 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %63, i32 0, i32 2
  %memory107 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc106, i32 0, i32 1
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory107, align 8, !tbaa !183
  %65 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_profile_cache108 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %65, i32 0, i32 37
  %66 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache108, align 8, !tbaa !179
  %67 = bitcast %struct.gsicc_profile_cache_s* %66 to i8*
  call void %61(%struct.gs_memory_s* %64, i8* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0)) #7
  br label %do.cond.109

do.cond.109:                                      ; preds = %do.end.101
  br label %do.end.110

do.end.110:                                       ; preds = %do.cond.109
  %68 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %icc_profile_cache111 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %68, i32 0, i32 37
  store %struct.gsicc_profile_cache_s* null, %struct.gsicc_profile_cache_s** %icc_profile_cache111, align 8, !tbaa !179
  br label %if.end.116

if.else.112:                                      ; preds = %do.end.92
  br label %do.body.113

do.body.113:                                      ; preds = %if.else.112
  br label %do.cond.114

do.cond.114:                                      ; preds = %do.body.113
  br label %do.end.115

do.end.115:                                       ; preds = %do.cond.114
  br label %if.end.116

if.end.116:                                       ; preds = %do.end.115, %do.end.110
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %do.body.79
  br label %do.cond.118

do.cond.118:                                      ; preds = %if.end.117
  br label %do.end.119

do.end.119:                                       ; preds = %do.cond.118
  br label %if.end.120

if.end.120:                                       ; preds = %do.end.119, %if.end.76
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %procs121 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 1
  %free_object122 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs121, i32 0, i32 2
  %70 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object122, align 8, !tbaa !164
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %72 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !5
  %73 = bitcast %struct.gs_imager_state_s* %72 to i8*
  call void %70(%struct.gs_memory_s* %71, i8* %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0)) #7
  %74 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @cie_matrix_transpose3(%struct.gs_matrix3_s* %in, %struct.gs_matrix3_s* %out) #0 {
entry:
  %in.addr = alloca %struct.gs_matrix3_s*, align 8
  %out.addr = alloca %struct.gs_matrix3_s*, align 8
  store %struct.gs_matrix3_s* %in, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  store %struct.gs_matrix3_s* %out, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %0 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %0, i32 0, i32 0
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu, i32 0, i32 0
  %1 = load float, float* %u, align 4, !tbaa !30
  %2 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cu1 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %2, i32 0, i32 0
  %u2 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu1, i32 0, i32 0
  store float %1, float* %u2, align 4, !tbaa !30
  %3 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %3, i32 0, i32 1
  %u3 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv, i32 0, i32 0
  %4 = load float, float* %u3, align 4, !tbaa !36
  %5 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cu4 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %5, i32 0, i32 0
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu4, i32 0, i32 1
  store float %4, float* %v, align 4, !tbaa !33
  %6 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cw = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %6, i32 0, i32 2
  %u5 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw, i32 0, i32 0
  %7 = load float, float* %u5, align 4, !tbaa !39
  %8 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cu6 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %8, i32 0, i32 0
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu6, i32 0, i32 2
  store float %7, float* %w, align 4, !tbaa !34
  %9 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cu7 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %9, i32 0, i32 0
  %v8 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu7, i32 0, i32 1
  %10 = load float, float* %v8, align 4, !tbaa !33
  %11 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cv9 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %11, i32 0, i32 1
  %u10 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv9, i32 0, i32 0
  store float %10, float* %u10, align 4, !tbaa !36
  %12 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cv11 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %12, i32 0, i32 1
  %v12 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv11, i32 0, i32 1
  %13 = load float, float* %v12, align 4, !tbaa !35
  %14 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cv13 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %14, i32 0, i32 1
  %v14 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv13, i32 0, i32 1
  store float %13, float* %v14, align 4, !tbaa !35
  %15 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cw15 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %15, i32 0, i32 2
  %v16 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw15, i32 0, i32 1
  %16 = load float, float* %v16, align 4, !tbaa !40
  %17 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cv17 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %17, i32 0, i32 1
  %w18 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv17, i32 0, i32 2
  store float %16, float* %w18, align 4, !tbaa !37
  %18 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cu19 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %18, i32 0, i32 0
  %w20 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu19, i32 0, i32 2
  %19 = load float, float* %w20, align 4, !tbaa !34
  %20 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cw21 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %20, i32 0, i32 2
  %u22 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw21, i32 0, i32 0
  store float %19, float* %u22, align 4, !tbaa !39
  %21 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cv23 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %21, i32 0, i32 1
  %w24 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv23, i32 0, i32 2
  %22 = load float, float* %w24, align 4, !tbaa !37
  %23 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cw25 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %23, i32 0, i32 2
  %v26 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw25, i32 0, i32 1
  store float %22, float* %v26, align 4, !tbaa !40
  %24 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %in.addr, align 8, !tbaa !5
  %cw27 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %24, i32 0, i32 2
  %w28 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw27, i32 0, i32 2
  %25 = load float, float* %w28, align 4, !tbaa !38
  %26 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %out.addr, align 8, !tbaa !5
  %cw29 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %26, i32 0, i32 2
  %w30 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw29, i32 0, i32 2
  store float %25, float* %w30, align 4, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_color_space_needs_cie_caches(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %0, i32 0, i32 0
  %1 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !16
  %index = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %1, i32 0, i32 0
  %2 = load i32, i32* %index, align 4, !tbaa !150
  switch i32 %2, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 12, label %sw.bb.1
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 9, label %sw.bb.2
    i32 10, label %sw.bb.2
    i32 11, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry, %entry, %entry, %entry, %entry
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !5
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 3
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !184
  %call = call i32 @gx_color_space_needs_cie_caches(%struct.gs_color_space_s* %4) #7
  store i32 %call, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @cache_is_linear(%struct.cie_linear_params_s* %params, %struct.cie_cache_floats_s* %pcf) #0 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca %struct.cie_linear_params_s*, align 8
  %pcf.addr = alloca %struct.cie_cache_floats_s*, align 8
  %origin = alloca double, align 8
  %diff = alloca double, align 8
  %scale = alloca double, align 8
  %i = alloca i32, align 4
  %test = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cie_linear_params_s* %params, %struct.cie_linear_params_s** %params.addr, align 8, !tbaa !5
  store %struct.cie_cache_floats_s* %pcf, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %0 = bitcast double* %origin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !15
  %conv = fpext float %2 to double
  store double %conv, double* %origin, align 8, !tbaa !1
  %3 = bitcast double* %diff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %values1 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [512 x float], [512 x float]* %values1, i32 0, i64 511
  %5 = load float, float* %arrayidx2, align 4, !tbaa !15
  %conv3 = fpext float %5 to double
  %6 = load double, double* %origin, align 8, !tbaa !1
  %sub = fsub double %conv3, %6
  store double %sub, double* %diff, align 8, !tbaa !1
  %7 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load double, double* %diff, align 8, !tbaa !1
  %div = fdiv double %8, 5.110000e+02
  store double %div, double* %scale, align 8, !tbaa !1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast double* %test to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load double, double* %origin, align 8, !tbaa !1
  %12 = load double, double* %scale, align 8, !tbaa !1
  %add = fadd double %11, %12
  store double %add, double* %test, align 8, !tbaa !1
  store i32 1, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4, !tbaa !14
  %conv4 = sext i32 %13 to i64
  %cmp = icmp ult i64 %conv4, 511
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %values6 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %15, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [512 x float], [512 x float]* %values6, i32 0, i64 %idxprom
  %16 = load float, float* %arrayidx7, align 4, !tbaa !15
  %conv8 = fpext float %16 to double
  %17 = load double, double* %test, align 8, !tbaa !1
  %sub9 = fsub double %conv8, %17
  %call = call double @fabs(double %sub9) #8
  %cmp10 = fcmp oge double %call, 9.765625e-04
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load %struct.cie_linear_params_s*, %struct.cie_linear_params_s** %params.addr, align 8, !tbaa !5
  %is_linear = getelementptr inbounds %struct.cie_linear_params_s, %struct.cie_linear_params_s* %18, i32 0, i32 0
  store i32 0, i32* %is_linear, align 4, !tbaa !185
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  %20 = load double, double* %scale, align 8, !tbaa !1
  %21 = load double, double* %test, align 8, !tbaa !1
  %add12 = fadd double %21, %20
  store double %add12, double* %test, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load double, double* %origin, align 8, !tbaa !1
  %23 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %params13 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %23, i32 0, i32 0
  %base = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params13, i32 0, i32 1
  %24 = load double, double* %base, align 8, !tbaa !7
  %sub14 = fsub double %22, %24
  %conv15 = fptrunc double %sub14 to float
  %25 = load %struct.cie_linear_params_s*, %struct.cie_linear_params_s** %params.addr, align 8, !tbaa !5
  %origin16 = getelementptr inbounds %struct.cie_linear_params_s, %struct.cie_linear_params_s* %25, i32 0, i32 2
  store float %conv15, float* %origin16, align 4, !tbaa !186
  %26 = load double, double* %diff, align 8, !tbaa !1
  %27 = load %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s** %pcf.addr, align 8, !tbaa !5
  %params17 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %27, i32 0, i32 0
  %factor = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params17, i32 0, i32 2
  %28 = load double, double* %factor, align 8, !tbaa !13
  %mul = fmul double %26, %28
  %div18 = fdiv double %mul, 5.110000e+02
  %conv19 = fptrunc double %div18 to float
  %29 = load %struct.cie_linear_params_s*, %struct.cie_linear_params_s** %params.addr, align 8, !tbaa !5
  %scale20 = getelementptr inbounds %struct.cie_linear_params_s, %struct.cie_linear_params_s* %29, i32 0, i32 1
  store float %conv19, float* %scale20, align 4, !tbaa !187
  %30 = load %struct.cie_linear_params_s*, %struct.cie_linear_params_s** %params.addr, align 8, !tbaa !5
  %is_linear21 = getelementptr inbounds %struct.cie_linear_params_s, %struct.cie_linear_params_s* %30, i32 0, i32 0
  store i32 1, i32* %is_linear21, align 4, !tbaa !185
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %31 = bitcast double* %test to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast double* %diff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast double* %origin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind uwtable
define internal void @cie_cache_set_interpolation(%struct.gx_cie_vector_cache_s* %pcache, double %threshold) #0 {
entry:
  %pcache.addr = alloca %struct.gx_cie_vector_cache_s*, align 8
  %threshold.addr = alloca double, align 8
  %base = alloca float, align 4
  %factor = alloca float, align 4
  %temp = alloca [3 x %struct.cie_cache_range_temp_s], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.gx_cie_vector_cache_s* %pcache, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  store double %threshold, double* %threshold.addr, align 8, !tbaa !1
  %0 = bitcast float* %base to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %vecs = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %1, i32 0, i32 1
  %params = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs, i32 0, i32 0
  %base1 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params, i32 0, i32 0
  %2 = load float, float* %base1, align 4, !tbaa !71
  store float %2, float* %base, align 4, !tbaa !15
  %3 = bitcast float* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %vecs2 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %4, i32 0, i32 1
  %params3 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs2, i32 0, i32 0
  %factor4 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params3, i32 0, i32 1
  %5 = load float, float* %factor4, align 4, !tbaa !72
  store float %5, float* %factor, align 4, !tbaa !15
  %6 = bitcast [3 x %struct.cie_cache_range_temp_s]* %temp to i8*
  call void @llvm.lifetime.start(i64 36, i8* %6) #1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %j, align 4, !tbaa !14
  %cmp = icmp slt i32 %9, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.cie_cache_range_temp_s], [3 x %struct.cie_cache_range_temp_s]* %temp, i32 0, i64 %idxprom
  %imin = getelementptr inbounds %struct.cie_cache_range_temp_s, %struct.cie_cache_range_temp_s* %arrayidx, i32 0, i32 1
  store i32 512, i32* %imin, align 4, !tbaa !188
  %11 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [3 x %struct.cie_cache_range_temp_s], [3 x %struct.cie_cache_range_temp_s]* %temp, i32 0, i64 %idxprom5
  %imax = getelementptr inbounds %struct.cie_cache_range_temp_s, %struct.cie_cache_range_temp_s* %arrayidx6, i32 0, i32 2
  store i32 -1, i32* %imax, align 4, !tbaa !190
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %j, align 4, !tbaa !14
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %vecs7 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %13, i32 0, i32 1
  %values = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs7, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values, i32 0, i64 0
  %u = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %arrayidx8, i32 0, i32 0
  %14 = load float, float* %u, align 4, !tbaa !74
  %arrayidx9 = getelementptr inbounds [3 x %struct.cie_cache_range_temp_s], [3 x %struct.cie_cache_range_temp_s]* %temp, i32 0, i64 0
  %prev = getelementptr inbounds %struct.cie_cache_range_temp_s, %struct.cie_cache_range_temp_s* %arrayidx9, i32 0, i32 0
  store float %14, float* %prev, align 4, !tbaa !191
  %15 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %vecs10 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %15, i32 0, i32 1
  %values11 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs10, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values11, i32 0, i64 0
  %v = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %arrayidx12, i32 0, i32 1
  %16 = load float, float* %v, align 4, !tbaa !76
  %arrayidx13 = getelementptr inbounds [3 x %struct.cie_cache_range_temp_s], [3 x %struct.cie_cache_range_temp_s]* %temp, i32 0, i64 1
  %prev14 = getelementptr inbounds %struct.cie_cache_range_temp_s, %struct.cie_cache_range_temp_s* %arrayidx13, i32 0, i32 0
  store float %16, float* %prev14, align 4, !tbaa !191
  %17 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %vecs15 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %17, i32 0, i32 1
  %values16 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs15, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values16, i32 0, i64 0
  %w = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %arrayidx17, i32 0, i32 2
  %18 = load float, float* %w, align 4, !tbaa !77
  %arrayidx18 = getelementptr inbounds [3 x %struct.cie_cache_range_temp_s], [3 x %struct.cie_cache_range_temp_s]* %temp, i32 0, i64 2
  %prev19 = getelementptr inbounds %struct.cie_cache_range_temp_s, %struct.cie_cache_range_temp_s* %arrayidx18, i32 0, i32 0
  store float %18, float* %prev19, align 4, !tbaa !191
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.41, %for.end
  %19 = load i32, i32* %i, align 4, !tbaa !14
  %cmp21 = icmp slt i32 %19, 512
  br i1 %cmp21, label %for.body.22, label %for.end.43

for.body.22:                                      ; preds = %for.cond.20
  %arrayidx23 = getelementptr inbounds [3 x %struct.cie_cache_range_temp_s], [3 x %struct.cie_cache_range_temp_s]* %temp, i32 0, i64 0
  %20 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom24 = sext i32 %20 to i64
  %21 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %vecs25 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %21, i32 0, i32 1
  %values26 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs25, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values26, i32 0, i64 %idxprom24
  %u28 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %arrayidx27, i32 0, i32 0
  %22 = load float, float* %u28, align 4, !tbaa !74
  %23 = load i32, i32* %i, align 4, !tbaa !14
  %24 = load double, double* %threshold.addr, align 8, !tbaa !1
  call void @check_interpolation_required(%struct.cie_cache_range_temp_s* %arrayidx23, float %22, i32 %23, double %24) #7
  %arrayidx29 = getelementptr inbounds [3 x %struct.cie_cache_range_temp_s], [3 x %struct.cie_cache_range_temp_s]* %temp, i32 0, i64 1
  %25 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom30 = sext i32 %25 to i64
  %26 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %vecs31 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %26, i32 0, i32 1
  %values32 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs31, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values32, i32 0, i64 %idxprom30
  %v34 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %arrayidx33, i32 0, i32 1
  %27 = load float, float* %v34, align 4, !tbaa !76
  %28 = load i32, i32* %i, align 4, !tbaa !14
  %29 = load double, double* %threshold.addr, align 8, !tbaa !1
  call void @check_interpolation_required(%struct.cie_cache_range_temp_s* %arrayidx29, float %27, i32 %28, double %29) #7
  %arrayidx35 = getelementptr inbounds [3 x %struct.cie_cache_range_temp_s], [3 x %struct.cie_cache_range_temp_s]* %temp, i32 0, i64 2
  %30 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom36 = sext i32 %30 to i64
  %31 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %vecs37 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %31, i32 0, i32 1
  %values38 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs37, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values38, i32 0, i64 %idxprom36
  %w40 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %arrayidx39, i32 0, i32 2
  %32 = load float, float* %w40, align 4, !tbaa !77
  %33 = load i32, i32* %i, align 4, !tbaa !14
  %34 = load double, double* %threshold.addr, align 8, !tbaa !1
  call void @check_interpolation_required(%struct.cie_cache_range_temp_s* %arrayidx35, float %32, i32 %33, double %34) #7
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.22
  %35 = load i32, i32* %i, align 4, !tbaa !14
  %inc42 = add nsw i32 %35, 1
  store i32 %inc42, i32* %i, align 4, !tbaa !14
  br label %for.cond.20

for.end.43:                                       ; preds = %for.cond.20
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.69, %for.end.43
  %36 = load i32, i32* %j, align 4, !tbaa !14
  %cmp45 = icmp slt i32 %36, 3
  br i1 %cmp45, label %for.body.46, label %for.end.71

for.body.46:                                      ; preds = %for.cond.44
  %37 = load float, float* %base, align 4, !tbaa !15
  %38 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom47 = sext i32 %38 to i64
  %arrayidx48 = getelementptr inbounds [3 x %struct.cie_cache_range_temp_s], [3 x %struct.cie_cache_range_temp_s]* %temp, i32 0, i64 %idxprom47
  %imin49 = getelementptr inbounds %struct.cie_cache_range_temp_s, %struct.cie_cache_range_temp_s* %arrayidx48, i32 0, i32 1
  %39 = load i32, i32* %imin49, align 4, !tbaa !188
  %conv = sitofp i32 %39 to double
  %40 = load float, float* %factor, align 4, !tbaa !15
  %conv50 = fpext float %40 to double
  %div = fdiv double %conv, %conv50
  %conv51 = fptrunc double %div to float
  %add = fadd float %37, %conv51
  %41 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom52 = sext i32 %41 to i64
  %42 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %vecs53 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %42, i32 0, i32 1
  %params54 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs53, i32 0, i32 0
  %interpolation_ranges = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params54, i32 0, i32 3
  %arrayidx55 = getelementptr inbounds [3 x %struct.cie_interpolation_range_s], [3 x %struct.cie_interpolation_range_s]* %interpolation_ranges, i32 0, i64 %idxprom52
  %rmin = getelementptr inbounds %struct.cie_interpolation_range_s, %struct.cie_interpolation_range_s* %arrayidx55, i32 0, i32 0
  store float %add, float* %rmin, align 4, !tbaa !166
  %43 = load float, float* %base, align 4, !tbaa !15
  %44 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom56 = sext i32 %44 to i64
  %arrayidx57 = getelementptr inbounds [3 x %struct.cie_cache_range_temp_s], [3 x %struct.cie_cache_range_temp_s]* %temp, i32 0, i64 %idxprom56
  %imax58 = getelementptr inbounds %struct.cie_cache_range_temp_s, %struct.cie_cache_range_temp_s* %arrayidx57, i32 0, i32 2
  %45 = load i32, i32* %imax58, align 4, !tbaa !190
  %conv59 = sitofp i32 %45 to double
  %46 = load float, float* %factor, align 4, !tbaa !15
  %conv60 = fpext float %46 to double
  %div61 = fdiv double %conv59, %conv60
  %conv62 = fptrunc double %div61 to float
  %add63 = fadd float %43, %conv62
  %47 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom64 = sext i32 %47 to i64
  %48 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %pcache.addr, align 8, !tbaa !5
  %vecs65 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %48, i32 0, i32 1
  %params66 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs65, i32 0, i32 0
  %interpolation_ranges67 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params66, i32 0, i32 3
  %arrayidx68 = getelementptr inbounds [3 x %struct.cie_interpolation_range_s], [3 x %struct.cie_interpolation_range_s]* %interpolation_ranges67, i32 0, i64 %idxprom64
  %rmax = getelementptr inbounds %struct.cie_interpolation_range_s, %struct.cie_interpolation_range_s* %arrayidx68, i32 0, i32 1
  store float %add63, float* %rmax, align 4, !tbaa !168
  br label %do.body

do.body:                                          ; preds = %for.body.46
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc.69

for.inc.69:                                       ; preds = %do.end
  %49 = load i32, i32* %j, align 4, !tbaa !14
  %inc70 = add nsw i32 %49, 1
  store i32 %inc70, i32* %j, align 4, !tbaa !14
  br label %for.cond.44

for.end.71:                                       ; preds = %for.cond.44
  %50 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast [3 x %struct.cie_cache_range_temp_s]* %temp to i8*
  call void @llvm.lifetime.end(i64 36, i8* %52) #1
  %53 = bitcast float* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast float* %base to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @check_interpolation_required(%struct.cie_cache_range_temp_s* %pccr, float %cur, i32 %i, double %threshold) #3 {
entry:
  %pccr.addr = alloca %struct.cie_cache_range_temp_s*, align 8
  %cur.addr = alloca float, align 4
  %i.addr = alloca i32, align 4
  %threshold.addr = alloca double, align 8
  %prev = alloca float, align 4
  store %struct.cie_cache_range_temp_s* %pccr, %struct.cie_cache_range_temp_s** %pccr.addr, align 8, !tbaa !5
  store float %cur, float* %cur.addr, align 4, !tbaa !15
  store i32 %i, i32* %i.addr, align 4, !tbaa !14
  store double %threshold, double* %threshold.addr, align 8, !tbaa !1
  %0 = bitcast float* %prev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cie_cache_range_temp_s*, %struct.cie_cache_range_temp_s** %pccr.addr, align 8, !tbaa !5
  %prev1 = getelementptr inbounds %struct.cie_cache_range_temp_s, %struct.cie_cache_range_temp_s* %1, i32 0, i32 0
  %2 = load float, float* %prev1, align 4, !tbaa !191
  store float %2, float* %prev, align 4, !tbaa !15
  %3 = load float, float* %cur.addr, align 4, !tbaa !15
  %4 = load float, float* %prev, align 4, !tbaa !15
  %sub = fsub float %3, %4
  %conv = fpext float %sub to double
  %call = call double @fabs(double %conv) #8
  %5 = load double, double* %threshold.addr, align 8, !tbaa !1
  %6 = load float, float* %prev, align 4, !tbaa !15
  %conv2 = fpext float %6 to double
  %call3 = call double @fabs(double %conv2) #8
  %7 = load float, float* %cur.addr, align 4, !tbaa !15
  %conv4 = fpext float %7 to double
  %call5 = call double @fabs(double %conv4) #8
  %cmp = fcmp olt double %call3, %call5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load float, float* %prev, align 4, !tbaa !15
  %conv7 = fpext float %8 to double
  %call8 = call double @fabs(double %conv7) #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load float, float* %cur.addr, align 4, !tbaa !15
  %conv9 = fpext float %9 to double
  %call10 = call double @fabs(double %conv9) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call8, %cond.true ], [ %call10, %cond.false ]
  %mul = fmul double %5, %cond
  %cmp11 = fcmp ogt double %call, %mul
  br i1 %cmp11, label %if.then, label %if.end.24

if.then:                                          ; preds = %cond.end
  %10 = load i32, i32* %i.addr, align 4, !tbaa !14
  %sub13 = sub nsw i32 %10, 1
  %11 = load %struct.cie_cache_range_temp_s*, %struct.cie_cache_range_temp_s** %pccr.addr, align 8, !tbaa !5
  %imin = getelementptr inbounds %struct.cie_cache_range_temp_s, %struct.cie_cache_range_temp_s* %11, i32 0, i32 1
  %12 = load i32, i32* %imin, align 4, !tbaa !188
  %cmp14 = icmp slt i32 %sub13, %12
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then
  %13 = load i32, i32* %i.addr, align 4, !tbaa !14
  %sub17 = sub nsw i32 %13, 1
  %14 = load %struct.cie_cache_range_temp_s*, %struct.cie_cache_range_temp_s** %pccr.addr, align 8, !tbaa !5
  %imin18 = getelementptr inbounds %struct.cie_cache_range_temp_s, %struct.cie_cache_range_temp_s* %14, i32 0, i32 1
  store i32 %sub17, i32* %imin18, align 4, !tbaa !188
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then
  %15 = load i32, i32* %i.addr, align 4, !tbaa !14
  %16 = load %struct.cie_cache_range_temp_s*, %struct.cie_cache_range_temp_s** %pccr.addr, align 8, !tbaa !5
  %imax = getelementptr inbounds %struct.cie_cache_range_temp_s, %struct.cie_cache_range_temp_s* %16, i32 0, i32 2
  %17 = load i32, i32* %imax, align 4, !tbaa !190
  %cmp19 = icmp sgt i32 %15, %17
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end
  %18 = load i32, i32* %i.addr, align 4, !tbaa !14
  %19 = load %struct.cie_cache_range_temp_s*, %struct.cie_cache_range_temp_s** %pccr.addr, align 8, !tbaa !5
  %imax22 = getelementptr inbounds %struct.cie_cache_range_temp_s, %struct.cie_cache_range_temp_s* %19, i32 0, i32 2
  store i32 %18, i32* %imax22, align 4, !tbaa !190
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %cond.end
  %20 = load float, float* %cur.addr, align 4, !tbaa !15
  %21 = load %struct.cie_cache_range_temp_s*, %struct.cie_cache_range_temp_s** %pccr.addr, align 8, !tbaa !5
  %prev25 = getelementptr inbounds %struct.cie_cache_range_temp_s, %struct.cie_cache_range_temp_s* %21, i32 0, i32 0
  store float %20, float* %prev25, align 4, !tbaa !191
  %22 = bitcast float* %prev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  ret void
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal void @cie_transform_range(%struct.gs_range3_s* %in, double %mu, double %mv, double %mw, %struct.gs_range_s* %out) #0 {
entry:
  %in.addr = alloca %struct.gs_range3_s*, align 8
  %mu.addr = alloca double, align 8
  %mv.addr = alloca double, align 8
  %mw.addr = alloca double, align 8
  %out.addr = alloca %struct.gs_range_s*, align 8
  %umin = alloca float, align 4
  %umax = alloca float, align 4
  %vmin = alloca float, align 4
  %vmax = alloca float, align 4
  %wmin = alloca float, align 4
  %wmax = alloca float, align 4
  %temp = alloca float, align 4
  store %struct.gs_range3_s* %in, %struct.gs_range3_s** %in.addr, align 8, !tbaa !5
  store double %mu, double* %mu.addr, align 8, !tbaa !1
  store double %mv, double* %mv.addr, align 8, !tbaa !1
  store double %mw, double* %mw.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %out, %struct.gs_range_s** %out.addr, align 8, !tbaa !5
  %0 = bitcast float* %umin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %mu.addr, align 8, !tbaa !1
  %2 = load %struct.gs_range3_s*, %struct.gs_range3_s** %in.addr, align 8, !tbaa !5
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx, i32 0, i32 0
  %3 = load float, float* %rmin, align 4, !tbaa !22
  %conv = fpext float %3 to double
  %mul = fmul double %1, %conv
  %conv1 = fptrunc double %mul to float
  store float %conv1, float* %umin, align 4, !tbaa !15
  %4 = bitcast float* %umax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load double, double* %mu.addr, align 8, !tbaa !1
  %6 = load %struct.gs_range3_s*, %struct.gs_range3_s** %in.addr, align 8, !tbaa !5
  %ranges2 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %6, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges2, i32 0, i64 0
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx3, i32 0, i32 1
  %7 = load float, float* %rmax, align 4, !tbaa !24
  %conv4 = fpext float %7 to double
  %mul5 = fmul double %5, %conv4
  %conv6 = fptrunc double %mul5 to float
  store float %conv6, float* %umax, align 4, !tbaa !15
  %8 = bitcast float* %vmin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load double, double* %mv.addr, align 8, !tbaa !1
  %10 = load %struct.gs_range3_s*, %struct.gs_range3_s** %in.addr, align 8, !tbaa !5
  %ranges7 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %10, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges7, i32 0, i64 1
  %rmin9 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx8, i32 0, i32 0
  %11 = load float, float* %rmin9, align 4, !tbaa !22
  %conv10 = fpext float %11 to double
  %mul11 = fmul double %9, %conv10
  %conv12 = fptrunc double %mul11 to float
  store float %conv12, float* %vmin, align 4, !tbaa !15
  %12 = bitcast float* %vmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load double, double* %mv.addr, align 8, !tbaa !1
  %14 = load %struct.gs_range3_s*, %struct.gs_range3_s** %in.addr, align 8, !tbaa !5
  %ranges13 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %14, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges13, i32 0, i64 1
  %rmax15 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx14, i32 0, i32 1
  %15 = load float, float* %rmax15, align 4, !tbaa !24
  %conv16 = fpext float %15 to double
  %mul17 = fmul double %13, %conv16
  %conv18 = fptrunc double %mul17 to float
  store float %conv18, float* %vmax, align 4, !tbaa !15
  %16 = bitcast float* %wmin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load double, double* %mw.addr, align 8, !tbaa !1
  %18 = load %struct.gs_range3_s*, %struct.gs_range3_s** %in.addr, align 8, !tbaa !5
  %ranges19 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges19, i32 0, i64 2
  %rmin21 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx20, i32 0, i32 0
  %19 = load float, float* %rmin21, align 4, !tbaa !22
  %conv22 = fpext float %19 to double
  %mul23 = fmul double %17, %conv22
  %conv24 = fptrunc double %mul23 to float
  store float %conv24, float* %wmin, align 4, !tbaa !15
  %20 = bitcast float* %wmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load double, double* %mw.addr, align 8, !tbaa !1
  %22 = load %struct.gs_range3_s*, %struct.gs_range3_s** %in.addr, align 8, !tbaa !5
  %ranges25 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %22, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges25, i32 0, i64 2
  %rmax27 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx26, i32 0, i32 1
  %23 = load float, float* %rmax27, align 4, !tbaa !24
  %conv28 = fpext float %23 to double
  %mul29 = fmul double %21, %conv28
  %conv30 = fptrunc double %mul29 to float
  store float %conv30, float* %wmax, align 4, !tbaa !15
  %24 = bitcast float* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load float, float* %umin, align 4, !tbaa !15
  %26 = load float, float* %umax, align 4, !tbaa !15
  %cmp = fcmp ogt float %25, %26
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %27 = load float, float* %umin, align 4, !tbaa !15
  store float %27, float* %temp, align 4, !tbaa !15
  %28 = load float, float* %umax, align 4, !tbaa !15
  store float %28, float* %umin, align 4, !tbaa !15
  %29 = load float, float* %temp, align 4, !tbaa !15
  store float %29, float* %umax, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %30 = load float, float* %vmin, align 4, !tbaa !15
  %31 = load float, float* %vmax, align 4, !tbaa !15
  %cmp32 = fcmp ogt float %30, %31
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end
  %32 = load float, float* %vmin, align 4, !tbaa !15
  store float %32, float* %temp, align 4, !tbaa !15
  %33 = load float, float* %vmax, align 4, !tbaa !15
  store float %33, float* %vmin, align 4, !tbaa !15
  %34 = load float, float* %temp, align 4, !tbaa !15
  store float %34, float* %vmax, align 4, !tbaa !15
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end
  %35 = load float, float* %wmin, align 4, !tbaa !15
  %36 = load float, float* %wmax, align 4, !tbaa !15
  %cmp36 = fcmp ogt float %35, %36
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  %37 = load float, float* %wmin, align 4, !tbaa !15
  store float %37, float* %temp, align 4, !tbaa !15
  %38 = load float, float* %wmax, align 4, !tbaa !15
  store float %38, float* %wmin, align 4, !tbaa !15
  %39 = load float, float* %temp, align 4, !tbaa !15
  store float %39, float* %wmax, align 4, !tbaa !15
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.35
  %40 = load float, float* %umin, align 4, !tbaa !15
  %41 = load float, float* %vmin, align 4, !tbaa !15
  %add = fadd float %40, %41
  %42 = load float, float* %wmin, align 4, !tbaa !15
  %add40 = fadd float %add, %42
  %43 = load %struct.gs_range_s*, %struct.gs_range_s** %out.addr, align 8, !tbaa !5
  %rmin41 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %43, i32 0, i32 0
  store float %add40, float* %rmin41, align 4, !tbaa !22
  %44 = load float, float* %umax, align 4, !tbaa !15
  %45 = load float, float* %vmax, align 4, !tbaa !15
  %add42 = fadd float %44, %45
  %46 = load float, float* %wmax, align 4, !tbaa !15
  %add43 = fadd float %add42, %46
  %47 = load %struct.gs_range_s*, %struct.gs_range_s** %out.addr, align 8, !tbaa !5
  %rmax44 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %47, i32 0, i32 1
  store float %add43, float* %rmax44, align 4, !tbaa !24
  %48 = bitcast float* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast float* %wmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast float* %wmin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast float* %vmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast float* %vmin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast float* %umax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast float* %umin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  ret void
}

declare %struct.gs_color_space_s* @gs_cspace_base_space(%struct.gs_color_space_s*) #2

declare i32 @gx_cie_real_remap_finish(<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind readnone }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"double", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !2, i64 8}
!8 = !{!"cie_cache_floats_s", !9, i64 0, !3, i64 40}
!9 = !{!"cie_cache_params_s", !10, i64 0, !2, i64 8, !2, i64 16, !11, i64 24}
!10 = !{!"int", !3, i64 0}
!11 = !{!"cie_linear_params_s", !10, i64 0, !12, i64 4, !12, i64 8}
!12 = !{!"float", !3, i64 0}
!13 = !{!8, !2, i64 16}
!14 = !{!10, !10, i64 0}
!15 = !{!12, !12, i64 0}
!16 = !{!17, !6, i64 0}
!17 = !{!"gs_color_space_s", !6, i64 0, !18, i64 8, !19, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !3, i64 72}
!18 = !{!"rc_header_s", !19, i64 0, !6, i64 8, !6, i64 16}
!19 = !{!"long", !3, i64 0}
!20 = !{!21, !6, i64 40}
!21 = !{!"gs_color_space_type_s", !3, i64 0, !10, i64 4, !10, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128}
!22 = !{!23, !12, i64 0}
!23 = !{!"gs_range_s", !12, i64 0, !12, i64 4}
!24 = !{!23, !12, i64 4}
!25 = !{!26, !10, i64 8}
!26 = !{!"gs_sample_loop_params_s", !12, i64 0, !12, i64 4, !10, i64 8}
!27 = !{!26, !12, i64 0}
!28 = !{!26, !12, i64 4}
!29 = !{!8, !10, i64 0}
!30 = !{!31, !12, i64 0}
!31 = !{!"gs_matrix3_s", !32, i64 0, !32, i64 12, !32, i64 24, !10, i64 36}
!32 = !{!"gs_vector3_s", !12, i64 0, !12, i64 4, !12, i64 8}
!33 = !{!31, !12, i64 4}
!34 = !{!31, !12, i64 8}
!35 = !{!31, !12, i64 16}
!36 = !{!31, !12, i64 12}
!37 = !{!31, !12, i64 20}
!38 = !{!31, !12, i64 32}
!39 = !{!31, !12, i64 24}
!40 = !{!31, !12, i64 28}
!41 = !{!31, !10, i64 36}
!42 = !{!9, !2, i64 8}
!43 = !{!9, !2, i64 16}
!44 = !{!45, !10, i64 6504}
!45 = !{!"gs_cie_abc_s", !46, i64 0, !18, i64 6392, !47, i64 6416, !51, i64 6440, !31, i64 6464, !52, i64 6504}
!46 = !{!"gs_cie_common_s", !6, i64 0, !6, i64 8, !47, i64 16, !48, i64 40, !31, i64 64, !49, i64 104, !50, i64 128}
!47 = !{!"gs_range3_s", !3, i64 0}
!48 = !{!"gs_cie_common_proc3_s", !3, i64 0}
!49 = !{!"gs_cie_wb_s", !32, i64 0, !32, i64 12}
!50 = !{!"", !3, i64 0}
!51 = !{!"gs_cie_abc_proc3_s", !3, i64 0}
!52 = !{!"", !10, i64 0, !53, i64 8}
!53 = !{!"gx_cie_vector_cache3_s", !3, i64 0, !3, i64 24816}
!54 = !{!55, !3, i64 20}
!55 = !{!"gx_cie_joint_caches_s", !19, i64 0, !19, i64 8, !3, i64 16, !3, i64 20, !18, i64 24, !6, i64 48, !10, i64 56, !10, i64 60, !53, i64 64, !56, i64 24904, !10, i64 25000, !53, i64 25008, !10, i64 49848}
!56 = !{!"gs_cie_wbsd_s", !57, i64 0, !57, i64 24, !57, i64 48, !57, i64 72}
!57 = !{!"", !32, i64 0, !32, i64 12}
!58 = !{!59, !6, i64 6424}
!59 = !{!"gs_cie_a_s", !46, i64 0, !18, i64 6392, !23, i64 6416, !6, i64 6424, !32, i64 6432, !60, i64 6448}
!60 = !{!"", !61, i64 0}
!61 = !{!"gx_cie_vector_cache_s", !8, i64 0, !62, i64 2088}
!62 = !{!"cie_cache_vectors_s", !63, i64 0, !3, i64 36}
!63 = !{!"cie_vector_cache_params_s", !12, i64 0, !12, i64 4, !12, i64 8, !3, i64 12}
!64 = !{!8, !10, i64 24}
!65 = !{!8, !12, i64 32}
!66 = !{!8, !12, i64 28}
!67 = !{!61, !10, i64 0}
!68 = !{!32, !12, i64 0}
!69 = !{!32, !12, i64 4}
!70 = !{!32, !12, i64 8}
!71 = !{!61, !12, i64 2088}
!72 = !{!61, !12, i64 2092}
!73 = !{!61, !12, i64 2096}
!74 = !{!75, !12, i64 0}
!75 = !{!"cie_cached_vector3_s", !12, i64 0, !12, i64 4, !12, i64 8}
!76 = !{!75, !12, i64 4}
!77 = !{!75, !12, i64 8}
!78 = !{!79, !6, i64 400}
!79 = !{!"gs_state_s", !10, i64 0, !6, i64 8, !6, i64 16, !80, i64 24, !10, i64 128, !83, i64 132, !10, i64 168, !84, i64 176, !84, i64 192, !10, i64 208, !10, i64 212, !85, i64 216, !3, i64 220, !86, i64 224, !86, i64 228, !87, i64 232, !19, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !6, i64 264, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !12, i64 296, !88, i64 300, !10, i64 308, !10, i64 312, !10, i64 316, !12, i64 320, !10, i64 324, !10, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !3, i64 376, !6, i64 392, !6, i64 400, !10, i64 408, !6, i64 416, !6, i64 424, !89, i64 432, !3, i64 496, !6, i64 1008, !6, i64 1016, !90, i64 1024, !6, i64 1304, !6, i64 1312, !6, i64 1320, !6, i64 1328, !90, i64 1336, !6, i64 1616, !81, i64 1624, !10, i64 1648, !81, i64 1652, !10, i64 1676, !6, i64 1680, !6, i64 1688, !6, i64 1696, !6, i64 1704, !19, i64 1712, !19, i64 1720, !6, i64 1728, !10, i64 1736, !3, i64 1744, !6, i64 1792, !6, i64 1800, !83, i64 1808, !10, i64 1844, !3, i64 1848, !3, i64 1852, !6, i64 1856, !10, i64 1864, !6, i64 1872, !6, i64 1880, !91, i64 1888}
!80 = !{!"gx_line_params_s", !12, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !10, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !10, i64 36, !81, i64 40, !82, i64 64}
!81 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!82 = !{!"gx_dash_params_s", !6, i64 0, !10, i64 8, !12, i64 12, !10, i64 16, !12, i64 20, !10, i64 24, !10, i64 28, !12, i64 32}
!83 = !{!"gs_matrix_fixed_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !10, i64 24, !10, i64 28, !10, i64 32}
!84 = !{!"gs_point_s", !2, i64 0, !2, i64 8}
!85 = !{!"short", !3, i64 0}
!86 = !{!"gs_transparency_source_s", !12, i64 0}
!87 = !{!"gs_xstate_trans_flags", !10, i64 0, !10, i64 4}
!88 = !{!"gs_fixed_point_s", !10, i64 0, !10, i64 4}
!89 = !{!"gx_transfer_s", !10, i64 0, !6, i64 8, !10, i64 16, !6, i64 24, !10, i64 32, !6, i64 40, !10, i64 48, !6, i64 56}
!90 = !{!"gs_devicen_color_map_s", !10, i64 0, !3, i64 4, !10, i64 8, !10, i64 12, !19, i64 16, !3, i64 24}
!91 = !{!"gs_state_client_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!92 = !{!93, !19, i64 32}
!93 = !{!"gs_cie_render_s", !3, i64 0, !18, i64 8, !19, i64 32, !6, i64 40, !49, i64 48, !31, i64 72, !47, i64 112, !94, i64 136, !31, i64 176, !96, i64 216, !47, i64 240, !31, i64 264, !96, i64 304, !47, i64 328, !97, i64 352, !47, i64 416, !47, i64 440, !31, i64 464, !3, i64 504, !31, i64 516, !32, i64 556, !32, i64 568, !100, i64 584}
!94 = !{!"gs_cie_transform_proc3_s", !6, i64 0, !6, i64 8, !95, i64 16, !6, i64 32}
!95 = !{!"gs_const_string_s", !6, i64 0, !10, i64 8}
!96 = !{!"gs_cie_render_proc3_s", !3, i64 0}
!97 = !{!"gs_cie_render_table_s", !98, i64 0, !99, i64 32}
!98 = !{!"gx_color_lookup_table_s", !10, i64 0, !3, i64 4, !10, i64 20, !6, i64 24}
!99 = !{!"gs_cie_render_table_procs_s", !3, i64 0}
!100 = !{!"", !53, i64 0, !3, i64 24840, !3, i64 37368, !10, i64 45720}
!101 = !{!93, !19, i64 8}
!102 = !{!93, !6, i64 24}
!103 = !{!93, !6, i64 16}
!104 = !{!105, !6, i64 16}
!105 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!106 = !{!107, !6, i64 0}
!107 = !{!"gx_device_color_s", !6, i64 0, !3, i64 8, !108, i64 352, !10, i64 360, !109, i64 368, !111, i64 632}
!108 = !{!"gs_int_point_s", !10, i64 0, !10, i64 4}
!109 = !{!"gs_client_color_s", !6, i64 0, !110, i64 8}
!110 = !{!"gs_paint_color_s", !3, i64 0}
!111 = !{!"_mask", !112, i64 0, !19, i64 8, !6, i64 16}
!112 = !{!"mp_", !10, i64 0, !10, i64 4}
!113 = !{!93, !3, i64 0}
!114 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !15, i64 20, i64 4, !15, i64 24, i64 4, !15, i64 28, i64 4, !15, i64 32, i64 4, !15, i64 36, i64 4, !14}
!115 = !{!93, !6, i64 376}
!116 = !{!117, !10, i64 0}
!117 = !{!"cie_cache_fracs_s", !9, i64 0, !3, i64 40}
!118 = !{i64 0, i64 4, !14, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !14, i64 28, i64 4, !15, i64 32, i64 4, !15}
!119 = !{!120, !10, i64 0}
!120 = !{!"cie_cache_ints_s", !9, i64 0, !3, i64 40}
!121 = !{!122, !2, i64 16}
!122 = !{!"gx_cie_float_fixed_cache_s", !8, i64 0, !3, i64 2088}
!123 = !{!93, !12, i64 464}
!124 = !{!93, !12, i64 476}
!125 = !{!93, !12, i64 488}
!126 = !{!122, !2, i64 8}
!127 = !{!93, !12, i64 468}
!128 = !{!93, !12, i64 480}
!129 = !{!93, !12, i64 492}
!130 = !{!93, !12, i64 472}
!131 = !{!93, !12, i64 484}
!132 = !{!93, !12, i64 496}
!133 = !{!93, !10, i64 500}
!134 = !{!79, !6, i64 1008}
!135 = !{!55, !19, i64 24}
!136 = !{!55, !6, i64 32}
!137 = !{!79, !6, i64 8}
!138 = !{!139, !6, i64 72}
!139 = !{!"gs_memory_s", !6, i64 0, !140, i64 8, !6, i64 192, !6, i64 200, !6, i64 208}
!140 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176}
!141 = !{!55, !6, i64 40}
!142 = !{!55, !19, i64 8}
!143 = !{!55, !19, i64 0}
!144 = !{!55, !3, i64 16}
!145 = !{!93, !10, i64 372}
!146 = !{!93, !10, i64 46304}
!147 = !{!3, !3, i64 0}
!148 = !{!85, !85, i64 0}
!149 = !{!105, !6, i64 0}
!150 = !{!21, !3, i64 0}
!151 = !{!152, !6, i64 400}
!152 = !{!"gs_imager_state_s", !10, i64 0, !6, i64 8, !6, i64 16, !80, i64 24, !10, i64 128, !83, i64 132, !10, i64 168, !84, i64 176, !84, i64 192, !10, i64 208, !10, i64 212, !85, i64 216, !3, i64 220, !86, i64 224, !86, i64 228, !87, i64 232, !19, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !6, i64 264, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !12, i64 296, !88, i64 300, !10, i64 308, !10, i64 312, !10, i64 316, !12, i64 320, !10, i64 324, !10, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !3, i64 376, !6, i64 392, !6, i64 400, !10, i64 408, !6, i64 416, !6, i64 424, !89, i64 432, !3, i64 496, !6, i64 1008, !6, i64 1016, !90, i64 1024, !6, i64 1304, !6, i64 1312, !6, i64 1320, !6, i64 1328, !90, i64 1336}
!153 = !{!152, !6, i64 1008}
!154 = !{!17, !19, i64 32}
!155 = !{!93, !6, i64 136}
!156 = !{!94, !6, i64 0}
!157 = !{!55, !6, i64 48}
!158 = !{!55, !10, i64 49848}
!159 = !{!55, !10, i64 25000}
!160 = !{!55, !10, i64 60}
!161 = !{!55, !10, i64 56}
!162 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15}
!163 = !{!152, !6, i64 8}
!164 = !{!139, !6, i64 24}
!165 = !{!152, !10, i64 408}
!166 = !{!167, !12, i64 0}
!167 = !{!"cie_interpolation_range_s", !12, i64 0, !12, i64 4}
!168 = !{!167, !12, i64 4}
!169 = !{!152, !6, i64 344}
!170 = !{!171, !19, i64 16}
!171 = !{!"gsicc_link_cache_s", !6, i64 0, !10, i64 8, !18, i64 16, !6, i64 40, !6, i64 48, !6, i64 56, !10, i64 64}
!172 = !{!171, !6, i64 32}
!173 = !{!171, !6, i64 24}
!174 = !{!152, !6, i64 336}
!175 = !{!176, !19, i64 88}
!176 = !{!"gsicc_manager_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !10, i64 64, !6, i64 72, !6, i64 80, !18, i64 88}
!177 = !{!176, !6, i64 104}
!178 = !{!176, !6, i64 96}
!179 = !{!152, !6, i64 352}
!180 = !{!181, !19, i64 16}
!181 = !{!"gsicc_profile_cache_s", !6, i64 0, !10, i64 8, !18, i64 16, !6, i64 40}
!182 = !{!181, !6, i64 32}
!183 = !{!181, !6, i64 24}
!184 = !{!17, !6, i64 40}
!185 = !{!11, !10, i64 0}
!186 = !{!11, !12, i64 8}
!187 = !{!11, !12, i64 4}
!188 = !{!189, !10, i64 4}
!189 = !{!"cie_cache_range_temp_s", !12, i64 0, !10, i64 4, !10, i64 8}
!190 = !{!189, !10, i64 8}
!191 = !{!189, !12, i64 0}
