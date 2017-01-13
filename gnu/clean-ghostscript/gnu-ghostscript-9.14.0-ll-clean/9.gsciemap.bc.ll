; ModuleID = './gsciemap.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_range_s = type { float, float }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, {}*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
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
%struct.gs_state_s = type opaque
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
%struct.gx_device_color_type_s = type opaque
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
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon, %struct.anon, %struct.anon, %struct.anon }
%struct.anon = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
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
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gs_cie_defg_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.2, %struct.gs_range4_s, %struct.gs_cie_defg_proc4_s, %struct.gs_range4_s, %struct.gx_color_lookup_table_s, %struct.anon.3 }
%struct.gs_cie_common_s = type { i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i8*, %struct.gs_range3_s, %struct.gs_cie_common_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_wb_s, %struct.anon.1 }
%struct.gs_cie_common_proc3_s = type { [3 x float (double, %struct.gs_cie_common_s*)*] }
%struct.anon.1 = type { [3 x %union.gx_cie_scalar_cache_s] }
%struct.gs_cie_abc_proc3_s = type { [3 x float (double, %struct.gs_cie_abc_s*)*] }
%struct.gs_cie_abc_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.6 }
%struct.anon.6 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.anon.2 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.gs_cie_defg_proc4_s = type { [4 x float (double, %struct.gs_cie_defg_s*)*] }
%struct.gs_range4_s = type { [4 x %struct.gs_range_s] }
%struct.anon.3 = type { [4 x %union.gx_cie_scalar_cache_s] }
%struct.gs_cie_def_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.4, %struct.gs_range3_s, %struct.gs_cie_def_proc3_s, %struct.gs_range3_s, %struct.gx_color_lookup_table_s, %struct.anon.5 }
%struct.anon.4 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.gs_cie_def_proc3_s = type { [3 x float (double, %struct.gs_cie_def_s*)*] }
%struct.anon.5 = type { [3 x %union.gx_cie_scalar_cache_s] }
%struct.gs_cie_a_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range_s, float (double, %struct.gs_cie_a_s*)*, %struct.gs_vector3_s, %struct.anon.7 }
%struct.anon.7 = type { %struct.gx_cie_vector_cache_s }
%struct.cie_cache_fracs_s = type { %struct.cie_cache_params_s, [512 x i16] }

@__func__.gx_remap_CIEDEFG = private unnamed_addr constant [17 x i8] c"gx_remap_CIEDEFG\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"./base/gsciemap.c\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to create ICC profile from CIEDEFG\00", align 1
@__func__.gx_concretize_CIEDEFG = private unnamed_addr constant [22 x i8] c"gx_concretize_CIEDEFG\00", align 1
@__func__.gx_remap_CIEDEF = private unnamed_addr constant [16 x i8] c"gx_remap_CIEDEF\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to build ICC profile from CIEDEF\00", align 1
@__func__.gx_concretize_CIEDEF = private unnamed_addr constant [21 x i8] c"gx_concretize_CIEDEF\00", align 1
@__func__.gx_remap_CIEABC = private unnamed_addr constant [16 x i8] c"gx_remap_CIEABC\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to create ICC profile from CIEABC\00", align 1
@__func__.gx_concretize_CIEABC = private unnamed_addr constant [21 x i8] c"gx_concretize_CIEABC\00", align 1
@__func__.gx_remap_CIEA = private unnamed_addr constant [14 x i8] c"gx_remap_CIEA\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to create ICC profile from CIEA\00", align 1
@__func__.gx_concretize_CIEA = private unnamed_addr constant [19 x i8] c"gx_concretize_CIEA\00", align 1
@__func__.gx_ciedefg_to_icc = private unnamed_addr constant [18 x i8] c"gx_ciedefg_to_icc\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to build ICC color space\00", align 1
@__func__.gx_ciedef_to_icc = private unnamed_addr constant [17 x i8] c"gx_ciedef_to_icc\00", align 1
@__func__.gx_cieabc_to_icc = private unnamed_addr constant [17 x i8] c"gx_cieabc_to_icc\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to create ICC profile\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Failed to build ICC profile from CIEABC\00", align 1
@__func__.gx_ciea_to_icc = private unnamed_addr constant [15 x i8] c"gx_ciea_to_icc\00", align 1

; Function Attrs: nounwind uwtable
define i32 @check_range(%struct.gs_range_s* %ranges, i32 %num_colorants) #0 {
entry:
  %retval = alloca i32, align 4
  %ranges.addr = alloca %struct.gs_range_s*, align 8
  %num_colorants.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_range_s* %ranges, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  store i32 %num_colorants, i32* %num_colorants.addr, align 4, !tbaa !5
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4, !tbaa !5
  %2 = load i32, i32* %num_colorants.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %4, i64 %idxprom
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx, i32 0, i32 0
  %5 = load float, float* %rmin, align 4, !tbaa !7
  %cmp1 = fcmp une float %5, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %6 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %7, i64 %idxprom2
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx3, i32 0, i32 1
  %8 = load float, float* %rmax, align 4, !tbaa !10
  %cmp4 = fcmp une float %8, 1.000000e+00
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %9 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.5, %if.then
  %10 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @check_cie_range(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %0) #4
  switch i32 %call, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb.2
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %defg = bitcast %union.anon* %params to %struct.gs_cie_defg_s**
  %2 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !1
  %RangeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %2, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %call1 = call i32 @check_range(%struct.gs_range_s* %arrayidx, i32 4) #4
  store i32 %call1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 7
  %def = bitcast %union.anon* %params3 to %struct.gs_cie_def_s**
  %4 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !1
  %RangeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %4, i32 0, i32 6
  %ranges4 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges4, i32 0, i64 0
  %call6 = call i32 @check_range(%struct.gs_range_s* %arrayidx5, i32 3) #4
  store i32 %call6, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 7
  %abc = bitcast %union.anon* %params8 to %struct.gs_cie_abc_s**
  %6 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  %RangeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %6, i32 0, i32 2
  %ranges9 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges9, i32 0, i64 0
  %call11 = call i32 @check_range(%struct.gs_range_s* %arrayidx10, i32 3) #4
  store i32 %call11, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params13 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 7
  %a = bitcast %union.anon* %params13 to %struct.gs_cie_a_s**
  %8 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  %RangeA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %8, i32 0, i32 2
  %call14 = call i32 @check_range(%struct.gs_range_s* %RangeA, i32 1) #4
  store i32 %call14, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.12, %sw.bb.7, %sw.bb.2, %sw.bb
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

; Function Attrs: nounwind uwtable
define %struct.gs_range_s* @get_cie_range(%struct.gs_color_space_s* %pcs) #0 {
entry:
  %retval = alloca %struct.gs_range_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %0) #4
  switch i32 %call, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb.1
    i32 7, label %sw.bb.5
    i32 8, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %defg = bitcast %union.anon* %params to %struct.gs_cie_defg_s**
  %2 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !1
  %RangeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %2, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  store %struct.gs_range_s* %arrayidx, %struct.gs_range_s** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %3, i32 0, i32 7
  %def = bitcast %union.anon* %params2 to %struct.gs_cie_def_s**
  %4 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !1
  %RangeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %4, i32 0, i32 6
  %ranges3 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges3, i32 0, i64 0
  store %struct.gs_range_s* %arrayidx4, %struct.gs_range_s** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 7
  %abc = bitcast %union.anon* %params6 to %struct.gs_cie_abc_s**
  %6 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  %RangeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %6, i32 0, i32 2
  %ranges7 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges7, i32 0, i64 0
  store %struct.gs_range_s* %arrayidx8, %struct.gs_range_s** %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 7
  %a = bitcast %union.anon* %params10 to %struct.gs_cie_a_s**
  %8 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  %RangeA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %8, i32 0, i32 2
  store %struct.gs_range_s* %RangeA, %struct.gs_range_s** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.gs_range_s* null, %struct.gs_range_s** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.9, %sw.bb.5, %sw.bb.1, %sw.bb
  %9 = load %struct.gs_range_s*, %struct.gs_range_s** %retval
  ret %struct.gs_range_s* %9
}

; Function Attrs: nounwind uwtable
define i32 @rescale_cie_colors(%struct.gs_color_space_s* %pcs, %struct.gs_client_color_s* %cc) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %cc.addr = alloca %struct.gs_client_color_s*, align 8
  %num = alloca i32, align 4
  %k = alloca i32, align 4
  %ranges = alloca %struct.gs_range_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %cc, %struct.gs_client_color_s** %cc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_range_s** %ranges to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @check_cie_range(%struct.gs_color_space_s* %3) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %4) #4
  switch i32 %call1, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb.3
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.then
  store i32 4, i32* %num, align 4, !tbaa !5
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 7
  %defg = bitcast %union.anon* %params to %struct.gs_cie_defg_s**
  %6 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !1
  %RangeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %6, i32 0, i32 6
  %ranges2 = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges2, i32 0, i64 0
  store %struct.gs_range_s* %arrayidx, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.then
  store i32 3, i32* %num, align 4, !tbaa !5
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 7
  %def = bitcast %union.anon* %params4 to %struct.gs_cie_def_s**
  %8 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !1
  %RangeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %8, i32 0, i32 6
  %ranges5 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges5, i32 0, i64 0
  store %struct.gs_range_s* %arrayidx6, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  store i32 3, i32* %num, align 4, !tbaa !5
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %9, i32 0, i32 7
  %abc = bitcast %union.anon* %params8 to %struct.gs_cie_abc_s**
  %10 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  %RangeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %10, i32 0, i32 2
  %ranges9 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges9, i32 0, i64 0
  store %struct.gs_range_s* %arrayidx10, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then
  store i32 1, i32* %num, align 4, !tbaa !5
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 7
  %a = bitcast %union.anon* %params12 to %struct.gs_cie_a_s**
  %12 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  %RangeA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %12, i32 0, i32 2
  store %struct.gs_range_s* %RangeA, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.11, %sw.bb.7, %sw.bb.3, %sw.bb
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %13 = load i32, i32* %k, align 4, !tbaa !5
  %14 = load i32, i32* %num, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %cc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %16, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %17 = load float, float* %arrayidx13, align 4, !tbaa !11
  %18 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %19, i64 %idxprom14
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx15, i32 0, i32 0
  %20 = load float, float* %rmin, align 4, !tbaa !7
  %sub = fsub float %17, %20
  %21 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom16 = sext i32 %21 to i64
  %22 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %22, i64 %idxprom16
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx17, i32 0, i32 1
  %23 = load float, float* %rmax, align 4, !tbaa !10
  %24 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom18 = sext i32 %24 to i64
  %25 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %25, i64 %idxprom18
  %rmin20 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx19, i32 0, i32 0
  %26 = load float, float* %rmin20, align 4, !tbaa !7
  %sub21 = fsub float %23, %26
  %div = fdiv float %sub, %sub21
  %27 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom22 = sext i32 %27 to i64
  %28 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %cc.addr, align 8, !tbaa !1
  %paint23 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %28, i32 0, i32 1
  %values24 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint23, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [64 x float], [64 x float]* %values24, i32 0, i64 %idxprom22
  store float %div, float* %arrayidx25, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end, %sw.default
  %30 = bitcast %struct.gs_range_s** %ranges to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @gx_cie_check_rendering(%struct.gs_color_space_s* %pcs, i16* %pconc, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %1 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @gx_cie_check_rendering_inline(%struct.gs_color_space_s* %0, i16* %1, %struct.gs_imager_state_s* %2) #4
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @gx_cie_check_rendering_inline(%struct.gs_color_space_s* %pcs, i16* %pconc, %struct.gs_imager_state_s* %pis) #3 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_render = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %0, i32 0, i32 42
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render, align 8, !tbaa !12
  %cmp = icmp eq %struct.gs_cie_render_s* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_to_xyz = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 43
  %3 = load i32, i32* %cie_to_xyz, align 4, !tbaa !27
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 2
  store i16 0, i16* %arrayidx, align 2, !tbaa !28
  %5 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 0, i16* %arrayidx1, align 2, !tbaa !28
  %6 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 0
  store i16 0, i16* %arrayidx2, align 2, !tbaa !28
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %7, i32 0, i32 48
  %8 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !29
  %status = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %8, i32 0, i32 3
  %9 = load i32, i32* %status, align 4, !tbaa !30
  %cmp3 = icmp eq i32 %9, 2
  br i1 %cmp3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.end
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches5 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 48
  %11 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches5, align 8, !tbaa !29
  %cspace_id = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %11, i32 0, i32 0
  %12 = load i64, i64* %cspace_id, align 8, !tbaa !37
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 2
  %14 = load i64, i64* %id, align 8, !tbaa !38
  %cmp6 = icmp ne i64 %12, %14
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.then.4
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches8 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %15, i32 0, i32 48
  %16 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches8, align 8, !tbaa !29
  %status9 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %16, i32 0, i32 3
  store i32 0, i32* %status9, align 4, !tbaa !30
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.then.4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches12 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %17, i32 0, i32 48
  %18 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches12, align 8, !tbaa !29
  %status13 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %18, i32 0, i32 3
  %19 = load i32, i32* %status13, align 4, !tbaa !30
  %cmp14 = icmp ne i32 %19, 2
  br i1 %cmp14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.11
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_cie_jc_complete(%struct.gs_imager_state_s* %21, %struct.gs_color_space_s* %22) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %23, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.15
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.then.15
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.19

if.end.19:                                        ; preds = %cleanup.cont, %if.end.11
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %cleanup, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @gx_remap_CIEDEFG(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs_in, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs_in.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %pcs_icc = alloca %struct.gs_color_space_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %scale_pc = alloca %struct.gs_client_color_s, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs_in, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !40
  %0 = bitcast %struct.gs_color_space_s** %pcs_icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_client_color_s* %scale_pc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %3) #1
  %4 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %5, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 4
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !41
  %cmp = icmp eq %struct.gs_color_space_s* %7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 0
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !43
  %call = call i32 @gx_ciedefg_to_icc(%struct.gs_color_space_s** %pcs_icc, %struct.gs_color_space_s* %8, %struct.gs_memory_s* %11) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %12, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %call3 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gx_remap_CIEDEFG, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 281, i32 1, i32 %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.5

if.else:                                          ; preds = %do.end
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent4 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 4
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent4, align 8, !tbaa !41
  store %struct.gs_color_space_s* %15, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 7
  %defg = bitcast %union.anon* %params to %struct.gs_cie_defg_s**
  %17 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !1
  %RangeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %17, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %call6 = call i32 @check_range(%struct.gs_range_s* %arrayidx, i32 4) #4
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 0
  %19 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !46
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %19, i32 0, i32 10
  %20 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !47
  %21 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %23 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %26 = load i32, i32* %select.addr, align 4, !tbaa !40
  %call8 = call i32 %20(%struct.gs_client_color_s* %21, %struct.gs_color_space_s* %22, %struct.gx_device_color_s* %23, %struct.gs_imager_state_s* %24, %struct.gx_device_s* %25, i32 %26) #4
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %27, i32 0, i32 7
  %defg11 = bitcast %union.anon* %params10 to %struct.gs_cie_defg_s**
  %28 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg11, align 8, !tbaa !1
  %RangeDEFG12 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %28, i32 0, i32 6
  %ranges13 = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges13, i32 0, i64 0
  %29 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  call void @rescale_input_color(%struct.gs_range_s* %arrayidx14, i32 4, %struct.gs_client_color_s* %29, %struct.gs_client_color_s* %scale_pc) #4
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %type15 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %30, i32 0, i32 0
  %31 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type15, align 8, !tbaa !46
  %remap_color16 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %31, i32 0, i32 10
  %32 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color16, align 8, !tbaa !47
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %34 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %37 = load i32, i32* %select.addr, align 4, !tbaa !40
  %call17 = call i32 %32(%struct.gs_client_color_s* %scale_pc, %struct.gs_color_space_s* %33, %struct.gx_device_color_s* %34, %struct.gs_imager_state_s* %35, %struct.gx_device_s* %36, i32 %37) #4
  store i32 %call17, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %38, 4
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %40, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %41 = load float, float* %arrayidx19, align 4, !tbaa !11
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %42 to i64
  %43 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %43, i32 0, i32 4
  %paint21 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 1
  %values22 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint21, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [64 x float], [64 x float]* %values22, i32 0, i64 %idxprom20
  store float %41, float* %arrayidx23, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %45, i32 0, i32 3
  store i32 1, i32* %ccolor_valid, align 4, !tbaa !49
  %46 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.7
  %47 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.gs_client_color_s* %scale_pc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %48) #1
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast %struct.gs_color_space_s** %pcs_icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_ciedefg_to_icc(%struct.gs_color_space_s** %ppcs_icc, %struct.gs_color_space_s* %pcs, %struct.gs_memory_s* %memory) #0 {
entry:
  %ppcs_icc.addr = alloca %struct.gs_color_space_s**, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %palt_cs = alloca %struct.gs_color_space_s*, align 8
  %abc_caches = alloca %struct.gx_cie_vector_cache_s*, align 8
  %lmn_caches = alloca %union.gx_cie_scalar_cache_s*, align 8
  %defg_caches = alloca %union.gx_cie_scalar_cache_s*, align 8
  store %struct.gs_color_space_s** %ppcs_icc, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast %struct.gs_color_space_s** %palt_cs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 3
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !56
  store %struct.gs_color_space_s* %3, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  %4 = bitcast %struct.gx_cie_vector_cache_s** %abc_caches to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 7
  %abc = bitcast %union.anon* %params to %struct.gs_cie_abc_s**
  %6 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %6, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.6, %struct.anon.6* %caches, i32 0, i32 1
  %caches1 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches1, i32 0, i64 0
  store %struct.gx_cie_vector_cache_s* %arrayidx, %struct.gx_cie_vector_cache_s** %abc_caches, align 8, !tbaa !1
  %7 = bitcast %union.gx_cie_scalar_cache_s** %lmn_caches to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 7
  %abc3 = bitcast %union.anon* %params2 to %struct.gs_cie_abc_s**
  %9 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc3, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %9, i32 0, i32 0
  %caches4 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon.1, %struct.anon.1* %caches4, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i64 0
  store %union.gx_cie_scalar_cache_s* %arrayidx5, %union.gx_cie_scalar_cache_s** %lmn_caches, align 8, !tbaa !1
  %10 = bitcast %union.gx_cie_scalar_cache_s** %defg_caches to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 7
  %defg = bitcast %union.anon* %params6 to %struct.gs_cie_defg_s**
  %12 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !1
  %caches_defg = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %12, i32 0, i32 10
  %DecodeDEFG = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches_defg, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG, i32 0, i64 0
  store %union.gx_cie_scalar_cache_s* %arrayidx7, %union.gx_cie_scalar_cache_s** %defg_caches, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 0
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !43
  %call = call i32 @gs_cspace_build_ICC(%struct.gs_color_space_s** %13, i8* null, %struct.gs_memory_s* %15) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %call8 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gx_ciedefg_to_icc, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 245, i32 1, i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  %19 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %19, align 8, !tbaa !1
  %base_space9 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %20, i32 0, i32 3
  store %struct.gs_color_space_s* %18, %struct.gs_color_space_s** %base_space9, align 8, !tbaa !56
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  call void @rc_increment_cs(%struct.gs_color_space_s* %21) #4
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call10 = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* null, %struct.gs_memory_s* %22, i8* null, i32 0) #4
  %23 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %23, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %24, i32 0, i32 6
  store %struct.cmm_profile_s* %call10, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !57
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %26 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %26, align 8, !tbaa !1
  %cmm_icc_profile_data11 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %27, i32 0, i32 6
  %28 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data11, align 8, !tbaa !57
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %28, i32 0, i32 14
  %29 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %29, align 8, !tbaa !1
  %cmm_icc_profile_data12 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %30, i32 0, i32 6
  %31 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data12, align 8, !tbaa !57
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %31, i32 0, i32 11
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %33 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches, align 8, !tbaa !1
  %34 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches, align 8, !tbaa !1
  %35 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %defg_caches, align 8, !tbaa !1
  %call13 = call i32 @gsicc_create_fromdefg(%struct.gs_color_space_s* %25, i8** %buffer, i32* %buffer_size, %struct.gs_memory_s* %32, %struct.gx_cie_vector_cache_s* %33, %union.gx_cie_scalar_cache_s* %34, %union.gx_cie_scalar_cache_s* %35) #4
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %36, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %call16 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gx_ciedefg_to_icc, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 254, i32 1, i32 %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end
  %38 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %39 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %38, align 8, !tbaa !1
  %cmm_icc_profile_data18 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %39, i32 0, i32 6
  %40 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data18, align 8, !tbaa !57
  call void @gsicc_init_profile_info(%struct.cmm_profile_s* %40) #4
  %41 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %42 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %41, align 8, !tbaa !1
  %cmm_icc_profile_data19 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %42, i32 0, i32 6
  %43 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data19, align 8, !tbaa !57
  %default_match = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %43, i32 0, i32 4
  store i32 16, i32* %default_match, align 4, !tbaa !58
  %44 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %45 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %44, align 8, !tbaa !1
  %46 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %46, i32 0, i32 4
  store %struct.gs_color_space_s* %45, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !41
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %icc_equivalent20 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %47, i32 0, i32 4
  %48 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent20, align 8, !tbaa !41
  %cmm_icc_profile_data21 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %48, i32 0, i32 6
  %49 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data21, align 8, !tbaa !57
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %49, i32 0, i32 5
  store i32 3, i32* %data_cs, align 4, !tbaa !62
  %50 = bitcast %union.gx_cie_scalar_cache_s** %defg_caches to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast %union.gx_cie_scalar_cache_s** %lmn_caches to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast %struct.gx_cie_vector_cache_s** %abc_caches to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast %struct.gs_color_space_s** %palt_cs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  ret i32 0
}

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @rescale_input_color(%struct.gs_range_s* %ranges, i32 %num_colorants, %struct.gs_client_color_s* %src, %struct.gs_client_color_s* %des) #0 {
entry:
  %ranges.addr = alloca %struct.gs_range_s*, align 8
  %num_colorants.addr = alloca i32, align 4
  %src.addr = alloca %struct.gs_client_color_s*, align 8
  %des.addr = alloca %struct.gs_client_color_s*, align 8
  %k = alloca i32, align 4
  store %struct.gs_range_s* %ranges, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  store i32 %num_colorants, i32* %num_colorants.addr, align 4, !tbaa !5
  store %struct.gs_client_color_s* %src, %struct.gs_client_color_s** %src.addr, align 8, !tbaa !1
  store %struct.gs_client_color_s* %des, %struct.gs_client_color_s** %des.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4, !tbaa !5
  %2 = load i32, i32* %num_colorants.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %src.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %4, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %5 = load float, float* %arrayidx, align 4, !tbaa !11
  %6 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %7, i64 %idxprom1
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx2, i32 0, i32 0
  %8 = load float, float* %rmin, align 4, !tbaa !7
  %sub = fsub float %5, %8
  %9 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %10, i64 %idxprom3
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx4, i32 0, i32 1
  %11 = load float, float* %rmax, align 4, !tbaa !10
  %12 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %13, i64 %idxprom5
  %rmin7 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx6, i32 0, i32 0
  %14 = load float, float* %rmin7, align 4, !tbaa !7
  %sub8 = fsub float %11, %14
  %div = fdiv float %sub, %sub8
  %15 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %des.addr, align 8, !tbaa !1
  %paint10 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %16, i32 0, i32 1
  %values11 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [64 x float], [64 x float]* %values11, i32 0, i64 %idxprom9
  store float %div, float* %arrayidx12, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_concretize_CIEDEFG(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs_in, i16* %pconc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs_in.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %pcs_icc = alloca %struct.gs_color_space_s*, align 8
  %scale_pc = alloca %struct.gs_client_color_s, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs_in, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_color_space_s** %pcs_icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gs_client_color_s* %scale_pc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %2) #1
  %3 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %4, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 4
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !41
  %cmp = icmp eq %struct.gs_color_space_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 0
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !43
  %call = call i32 @gx_ciedefg_to_icc(%struct.gs_color_space_s** %pcs_icc, %struct.gs_color_space_s* %7, %struct.gs_memory_s* %10) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %11, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %call3 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gx_concretize_CIEDEFG, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 320, i32 1, i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.5

if.else:                                          ; preds = %do.end
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent4 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 4
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent4, align 8, !tbaa !41
  store %struct.gs_color_space_s* %14, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 7
  %defg = bitcast %union.anon* %params to %struct.gs_cie_defg_s**
  %16 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !1
  %RangeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %16, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %call6 = call i32 @check_range(%struct.gs_range_s* %arrayidx, i32 4) #4
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 0
  %18 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !46
  %concretize_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %18, i32 0, i32 8
  %19 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color, align 8, !tbaa !63
  %20 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %22 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call8 = call i32 %19(%struct.gs_client_color_s* %20, %struct.gs_color_space_s* %21, i16* %22, %struct.gs_imager_state_s* %23, %struct.gx_device_s* %24) #4
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %25, i32 0, i32 7
  %defg11 = bitcast %union.anon* %params10 to %struct.gs_cie_defg_s**
  %26 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg11, align 8, !tbaa !1
  %RangeDEFG12 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %26, i32 0, i32 6
  %ranges13 = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges13, i32 0, i64 0
  %27 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  call void @rescale_input_color(%struct.gs_range_s* %arrayidx14, i32 4, %struct.gs_client_color_s* %27, %struct.gs_client_color_s* %scale_pc) #4
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %type15 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %28, i32 0, i32 0
  %29 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type15, align 8, !tbaa !46
  %concretize_color16 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %29, i32 0, i32 8
  %30 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color16, align 8, !tbaa !63
  %31 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %33 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call17 = call i32 %30(%struct.gs_client_color_s* %31, %struct.gs_color_space_s* %32, i16* %33, %struct.gs_imager_state_s* %34, %struct.gx_device_s* %35) #4
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.7
  %36 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.gs_client_color_s* %scale_pc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %37) #1
  %38 = bitcast %struct.gs_color_space_s** %pcs_icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define i32 @gx_psconcretize_CIEA(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, i16* %pconc, float* %cie_xyz, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %cie_xyz.addr = alloca float*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcie = alloca %struct.gs_cie_a_s*, align 8
  %a1 = alloca float, align 4
  %vlmn = alloca %struct.cie_cached_vector3_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vlmn.coerce = alloca { <2 x float>, float }
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store float* %cie_xyz, float** %cie_xyz.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_a_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %a = bitcast %union.anon* %params to %struct.gs_cie_a_s**
  %2 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  store %struct.gs_cie_a_s* %2, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %3 = bitcast float* %a1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %4, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %5 = load float, float* %arrayidx, align 4, !tbaa !11
  store float %5, float* %a1, align 4, !tbaa !11
  %6 = bitcast %struct.cie_cached_vector3_s* %vlmn to i8*
  call void @llvm.lifetime.start(i64 12, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %9 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @gx_cie_check_rendering_inline(%struct.gs_color_space_s* %8, i16* %9, %struct.gs_imager_state_s* %10) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %13, 1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %14 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %14, i32 0, i32 48
  %15 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !29
  %skipDecodeABC = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %15, i32 0, i32 6
  %16 = load i32, i32* %skipDecodeABC, align 4, !tbaa !64
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %if.end.4
  %17 = load float, float* %a1, align 4, !tbaa !11
  %18 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %18, i32 0, i32 5
  %DecodeA = getelementptr inbounds %struct.anon.7, %struct.anon.7* %caches, i32 0, i32 0
  %vecs = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %DecodeA, i32 0, i32 1
  %params6 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs, i32 0, i32 0
  %base = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params6, i32 0, i32 0
  %19 = load float, float* %base, align 4, !tbaa !65
  %cmp7 = fcmp ole float %17, %19
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  br label %cond.end.25

cond.false:                                       ; preds = %if.then.5
  %20 = load float, float* %a1, align 4, !tbaa !11
  %21 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %caches8 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %21, i32 0, i32 5
  %DecodeA9 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %caches8, i32 0, i32 0
  %vecs10 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %DecodeA9, i32 0, i32 1
  %params11 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs10, i32 0, i32 0
  %limit = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params11, i32 0, i32 2
  %22 = load float, float* %limit, align 4, !tbaa !72
  %cmp12 = fcmp oge float %20, %22
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.false
  br label %cond.end

cond.false.14:                                    ; preds = %cond.false
  %23 = load float, float* %a1, align 4, !tbaa !11
  %24 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %caches15 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %24, i32 0, i32 5
  %DecodeA16 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %caches15, i32 0, i32 0
  %vecs17 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %DecodeA16, i32 0, i32 1
  %params18 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs17, i32 0, i32 0
  %base19 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params18, i32 0, i32 0
  %25 = load float, float* %base19, align 4, !tbaa !65
  %sub = fsub float %23, %25
  %26 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %caches20 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %26, i32 0, i32 5
  %DecodeA21 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %caches20, i32 0, i32 0
  %vecs22 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %DecodeA21, i32 0, i32 1
  %params23 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs22, i32 0, i32 0
  %factor = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params23, i32 0, i32 1
  %27 = load float, float* %factor, align 4, !tbaa !73
  %mul = fmul float %sub, %27
  %mul24 = fmul float %mul, 1.000000e+00
  %conv = fptosi float %mul24 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.14, %cond.true.13
  %cond = phi i32 [ 511, %cond.true.13 ], [ %conv, %cond.false.14 ]
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end, %cond.true
  %cond26 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %conv27 = sitofp i32 %cond26 to float
  %conv28 = fptosi float %conv27 to i32
  %idxprom = sext i32 %conv28 to i64
  %28 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %caches29 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %28, i32 0, i32 5
  %DecodeA30 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %caches29, i32 0, i32 0
  %vecs31 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %DecodeA30, i32 0, i32 1
  %values32 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs31, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values32, i32 0, i64 %idxprom
  %29 = bitcast %struct.cie_cached_vector3_s* %vlmn to i8*
  %30 = bitcast %struct.cie_cached_vector3_s* %arrayidx33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 12, i32 4, i1 false), !tbaa.struct !74
  br label %if.end.34

if.else:                                          ; preds = %if.end.4
  %31 = load float, float* %a1, align 4, !tbaa !11
  %w = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vlmn, i32 0, i32 2
  store float %31, float* %w, align 4, !tbaa !75
  %v = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vlmn, i32 0, i32 1
  store float %31, float* %v, align 4, !tbaa !77
  %u = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vlmn, i32 0, i32 0
  store float %31, float* %u, align 4, !tbaa !78
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %cond.end.25
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches35 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %32, i32 0, i32 48
  %33 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches35, align 8, !tbaa !29
  %remap_finish = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %33, i32 0, i32 5
  %34 = load i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)** %remap_finish, align 8, !tbaa !79
  %35 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %36 = load float*, float** %cie_xyz.addr, align 8, !tbaa !1
  %37 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %38 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %39 = bitcast { <2 x float>, float }* %vlmn.coerce to i8*
  %40 = bitcast %struct.cie_cached_vector3_s* %vlmn to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 12, i32 0, i1 false)
  %41 = getelementptr { <2 x float>, float }, { <2 x float>, float }* %vlmn.coerce, i32 0, i32 0
  %42 = load <2 x float>, <2 x float>* %41, align 1
  %43 = getelementptr { <2 x float>, float }, { <2 x float>, float }* %vlmn.coerce, i32 0, i32 1
  %44 = load float, float* %43, align 1
  %call36 = call i32 %34(<2 x float> %42, float %44, i16* %35, float* %36, %struct.gs_imager_state_s* %37, %struct.gs_color_space_s* %38) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.3, %if.then
  %45 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast %struct.cie_cached_vector3_s* %vlmn to i8*
  call void @llvm.lifetime.end(i64 12, i8* %46) #1
  %47 = bitcast float* %a1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.gs_cie_a_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @gx_psconcretize_CIEABC(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, i16* %pconc, float* %cie_xyz, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %cie_xyz.addr = alloca float*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcie = alloca %struct.gs_cie_abc_s*, align 8
  %vec3 = alloca %struct.cie_cached_vector3_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vec3.coerce = alloca { <2 x float>, float }
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store float* %cie_xyz, float** %cie_xyz.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_abc_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %abc = bitcast %union.anon* %params to %struct.gs_cie_abc_s**
  %2 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  store %struct.gs_cie_abc_s* %2, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %3 = bitcast %struct.cie_cached_vector3_s* %vec3 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %6 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @gx_cie_check_rendering_inline(%struct.gs_color_space_s* %5, i16* %6, %struct.gs_imager_state_s* %7) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %10, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %11 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %11, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %12 = load float, float* %arrayidx, align 4, !tbaa !11
  %u = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vec3, i32 0, i32 0
  store float %12, float* %u, align 4, !tbaa !78
  %13 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint4 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %13, i32 0, i32 1
  %values5 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [64 x float], [64 x float]* %values5, i32 0, i64 1
  %14 = load float, float* %arrayidx6, align 4, !tbaa !11
  %v = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vec3, i32 0, i32 1
  store float %14, float* %v, align 4, !tbaa !77
  %15 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint7 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %15, i32 0, i32 1
  %values8 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint7, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [64 x float], [64 x float]* %values8, i32 0, i64 2
  %16 = load float, float* %arrayidx9, align 4, !tbaa !11
  %w = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vec3, i32 0, i32 2
  store float %16, float* %w, align 4, !tbaa !75
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %17, i32 0, i32 48
  %18 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !29
  %skipDecodeABC = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %18, i32 0, i32 6
  %19 = load i32, i32* %skipDecodeABC, align 4, !tbaa !64
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.3
  %20 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %20, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.6, %struct.anon.6* %caches, i32 0, i32 1
  call void @cie_lookup_mult3(%struct.cie_cached_vector3_s* %vec3, %struct.gx_cie_vector_cache3_s* %DecodeABC) #4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.3
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches12 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %21, i32 0, i32 48
  %22 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches12, align 8, !tbaa !29
  %remap_finish = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %22, i32 0, i32 5
  %23 = load i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)** %remap_finish, align 8, !tbaa !79
  %24 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %25 = load float*, float** %cie_xyz.addr, align 8, !tbaa !1
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %28 = bitcast { <2 x float>, float }* %vec3.coerce to i8*
  %29 = bitcast %struct.cie_cached_vector3_s* %vec3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 12, i32 0, i1 false)
  %30 = getelementptr { <2 x float>, float }, { <2 x float>, float }* %vec3.coerce, i32 0, i32 0
  %31 = load <2 x float>, <2 x float>* %30, align 1
  %32 = getelementptr { <2 x float>, float }, { <2 x float>, float }* %vec3.coerce, i32 0, i32 1
  %33 = load float, float* %32, align 1
  %call13 = call i32 %23(<2 x float> %31, float %33, i16* %24, float* %25, %struct.gs_imager_state_s* %26, %struct.gs_color_space_s* %27) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.2, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.cie_cached_vector3_s* %vec3 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %35) #1
  %36 = bitcast %struct.gs_cie_abc_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal void @cie_lookup_mult3(%struct.cie_cached_vector3_s* %pvec, %struct.gx_cie_vector_cache3_s* %pc) #0 {
entry:
  %pvec.addr = alloca %struct.cie_cached_vector3_s*, align 8
  %pc.addr = alloca %struct.gx_cie_vector_cache3_s*, align 8
  %u = alloca float, align 4
  %v = alloca float, align 4
  %w = alloca float, align 4
  %ftemp = alloca float, align 4
  %i = alloca float, align 4
  %p = alloca %struct.cie_cached_vector3_s*, align 8
  %p1 = alloca %struct.cie_cached_vector3_s*, align 8
  %p79 = alloca %struct.cie_cached_vector3_s*, align 8
  %i147 = alloca float, align 4
  %p188 = alloca %struct.cie_cached_vector3_s*, align 8
  %p1198 = alloca %struct.cie_cached_vector3_s*, align 8
  %p249 = alloca %struct.cie_cached_vector3_s*, align 8
  %i321 = alloca float, align 4
  %p362 = alloca %struct.cie_cached_vector3_s*, align 8
  %p1372 = alloca %struct.cie_cached_vector3_s*, align 8
  %p423 = alloca %struct.cie_cached_vector3_s*, align 8
  store %struct.cie_cached_vector3_s* %pvec, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  store %struct.gx_cie_vector_cache3_s* %pc, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %0 = bitcast float* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast float* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast float* %ftemp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %u1 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %4, i32 0, i32 0
  %5 = load float, float* %u1, align 4, !tbaa !78
  %6 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %interpolation_ranges = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x %struct.cie_interpolation_range_s], [3 x %struct.cie_interpolation_range_s]* %interpolation_ranges, i32 0, i64 0
  %rmin = getelementptr inbounds %struct.cie_interpolation_range_s, %struct.cie_interpolation_range_s* %arrayidx, i32 0, i32 0
  %7 = load float, float* %rmin, align 4, !tbaa !80
  %cmp = fcmp oge float %5, %7
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %u2 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %8, i32 0, i32 0
  %9 = load float, float* %u2, align 4, !tbaa !78
  %10 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %interpolation_ranges3 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %10, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [3 x %struct.cie_interpolation_range_s], [3 x %struct.cie_interpolation_range_s]* %interpolation_ranges3, i32 0, i64 0
  %rmax = getelementptr inbounds %struct.cie_interpolation_range_s, %struct.cie_interpolation_range_s* %arrayidx4, i32 0, i32 1
  %11 = load float, float* %rmax, align 4, !tbaa !82
  %cmp5 = fcmp olt float %9, %11
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = bitcast float* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %u6 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %13, i32 0, i32 0
  %14 = load float, float* %u6, align 4, !tbaa !78
  %15 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %15, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches, i32 0, i64 0
  %vecs = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx7, i32 0, i32 1
  %params = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs, i32 0, i32 0
  %base = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params, i32 0, i32 0
  %16 = load float, float* %base, align 4, !tbaa !65
  %cmp8 = fcmp ole float %14, %16
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end.28

cond.false:                                       ; preds = %if.then
  %17 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %u9 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %17, i32 0, i32 0
  %18 = load float, float* %u9, align 4, !tbaa !78
  %19 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches10 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %19, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches10, i32 0, i64 0
  %vecs12 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx11, i32 0, i32 1
  %params13 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs12, i32 0, i32 0
  %limit = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params13, i32 0, i32 2
  %20 = load float, float* %limit, align 4, !tbaa !72
  %cmp14 = fcmp oge float %18, %20
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false
  br label %cond.end

cond.false.16:                                    ; preds = %cond.false
  %21 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %u17 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %21, i32 0, i32 0
  %22 = load float, float* %u17, align 4, !tbaa !78
  %23 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches18 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %23, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches18, i32 0, i64 0
  %vecs20 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx19, i32 0, i32 1
  %params21 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs20, i32 0, i32 0
  %base22 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params21, i32 0, i32 0
  %24 = load float, float* %base22, align 4, !tbaa !65
  %sub = fsub float %22, %24
  %25 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches23 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %25, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches23, i32 0, i64 0
  %vecs25 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx24, i32 0, i32 1
  %params26 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs25, i32 0, i32 0
  %factor = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params26, i32 0, i32 1
  %26 = load float, float* %factor, align 4, !tbaa !73
  %mul = fmul float %sub, %26
  %mul27 = fmul float %mul, 1.024000e+03
  %conv = fptosi float %mul27 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.15
  %cond = phi i32 [ 523264, %cond.true.15 ], [ %conv, %cond.false.16 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end, %cond.true
  %cond29 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %conv30 = sitofp i32 %cond29 to float
  store float %conv30, float* %i, align 4, !tbaa !11
  %27 = bitcast %struct.cie_cached_vector3_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load float, float* %i, align 4, !tbaa !11
  %conv31 = fpext float %28 to double
  %mul32 = fmul double %conv31, 9.765625e-04
  %conv33 = fptosi double %mul32 to i32
  %idxprom = sext i32 %conv33 to i64
  %29 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches34 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %29, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches34, i32 0, i64 0
  %vecs36 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx35, i32 0, i32 1
  %values = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs36, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values, i32 0, i64 %idxprom
  store %struct.cie_cached_vector3_s* %arrayidx37, %struct.cie_cached_vector3_s** %p, align 8, !tbaa !1
  %30 = bitcast %struct.cie_cached_vector3_s** %p1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load float, float* %i, align 4, !tbaa !11
  %cmp38 = fcmp oge float %31, 5.232640e+05
  br i1 %cmp38, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %cond.end.28
  %32 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p, align 8, !tbaa !1
  br label %cond.end.42

cond.false.41:                                    ; preds = %cond.end.28
  %33 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %33, i64 1
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.40
  %cond43 = phi %struct.cie_cached_vector3_s* [ %32, %cond.true.40 ], [ %add.ptr, %cond.false.41 ]
  store %struct.cie_cached_vector3_s* %cond43, %struct.cie_cached_vector3_s** %p1, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %cond.end.42
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p, align 8, !tbaa !1
  %u44 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %34, i32 0, i32 0
  %35 = load float, float* %u44, align 4, !tbaa !78
  %36 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p1, align 8, !tbaa !1
  %u45 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %36, i32 0, i32 0
  %37 = load float, float* %u45, align 4, !tbaa !78
  %38 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p, align 8, !tbaa !1
  %u46 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %38, i32 0, i32 0
  %39 = load float, float* %u46, align 4, !tbaa !78
  %sub47 = fsub float %37, %39
  %40 = load float, float* %i, align 4, !tbaa !11
  %conv48 = fpext float %40 to double
  %mul49 = fmul double %conv48, 9.765625e-04
  %conv50 = fptrunc double %mul49 to float
  store float %conv50, float* %ftemp, align 4, !tbaa !11
  %41 = load float, float* %ftemp, align 4, !tbaa !11
  %42 = load float, float* %ftemp, align 4, !tbaa !11
  %conv51 = fptosi float %42 to i32
  %conv52 = sitofp i32 %conv51 to float
  %sub53 = fsub float %41, %conv52
  %mul54 = fmul float %sub47, %sub53
  %add = fadd float %35, %mul54
  store float %add, float* %u, align 4, !tbaa !11
  %43 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p, align 8, !tbaa !1
  %v55 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %43, i32 0, i32 1
  %44 = load float, float* %v55, align 4, !tbaa !77
  %45 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p1, align 8, !tbaa !1
  %v56 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %45, i32 0, i32 1
  %46 = load float, float* %v56, align 4, !tbaa !77
  %47 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p, align 8, !tbaa !1
  %v57 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %47, i32 0, i32 1
  %48 = load float, float* %v57, align 4, !tbaa !77
  %sub58 = fsub float %46, %48
  %49 = load float, float* %i, align 4, !tbaa !11
  %conv59 = fpext float %49 to double
  %mul60 = fmul double %conv59, 9.765625e-04
  %conv61 = fptrunc double %mul60 to float
  store float %conv61, float* %ftemp, align 4, !tbaa !11
  %50 = load float, float* %ftemp, align 4, !tbaa !11
  %51 = load float, float* %ftemp, align 4, !tbaa !11
  %conv62 = fptosi float %51 to i32
  %conv63 = sitofp i32 %conv62 to float
  %sub64 = fsub float %50, %conv63
  %mul65 = fmul float %sub58, %sub64
  %add66 = fadd float %44, %mul65
  store float %add66, float* %v, align 4, !tbaa !11
  %52 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p, align 8, !tbaa !1
  %w67 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %52, i32 0, i32 2
  %53 = load float, float* %w67, align 4, !tbaa !75
  %54 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p1, align 8, !tbaa !1
  %w68 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %54, i32 0, i32 2
  %55 = load float, float* %w68, align 4, !tbaa !75
  %56 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p, align 8, !tbaa !1
  %w69 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %56, i32 0, i32 2
  %57 = load float, float* %w69, align 4, !tbaa !75
  %sub70 = fsub float %55, %57
  %58 = load float, float* %i, align 4, !tbaa !11
  %conv71 = fpext float %58 to double
  %mul72 = fmul double %conv71, 9.765625e-04
  %conv73 = fptrunc double %mul72 to float
  store float %conv73, float* %ftemp, align 4, !tbaa !11
  %59 = load float, float* %ftemp, align 4, !tbaa !11
  %60 = load float, float* %ftemp, align 4, !tbaa !11
  %conv74 = fptosi float %60 to i32
  %conv75 = sitofp i32 %conv74 to float
  %sub76 = fsub float %59, %conv75
  %mul77 = fmul float %sub70, %sub76
  %add78 = fadd float %53, %mul77
  store float %add78, float* %w, align 4, !tbaa !11
  %61 = bitcast %struct.cie_cached_vector3_s** %p1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast %struct.cie_cached_vector3_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast float* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %64 = bitcast %struct.cie_cached_vector3_s** %p79 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %u80 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %65, i32 0, i32 0
  %66 = load float, float* %u80, align 4, !tbaa !78
  %67 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches81 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %67, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches81, i32 0, i64 0
  %vecs83 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx82, i32 0, i32 1
  %params84 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs83, i32 0, i32 0
  %base85 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params84, i32 0, i32 0
  %68 = load float, float* %base85, align 4, !tbaa !65
  %cmp86 = fcmp ole float %66, %68
  br i1 %cmp86, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %if.else
  br label %cond.end.117

cond.false.89:                                    ; preds = %if.else
  %69 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %u90 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %69, i32 0, i32 0
  %70 = load float, float* %u90, align 4, !tbaa !78
  %71 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches91 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %71, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches91, i32 0, i64 0
  %vecs93 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx92, i32 0, i32 1
  %params94 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs93, i32 0, i32 0
  %limit95 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params94, i32 0, i32 2
  %72 = load float, float* %limit95, align 4, !tbaa !72
  %cmp96 = fcmp oge float %70, %72
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %cond.false.89
  br label %cond.end.115

cond.false.99:                                    ; preds = %cond.false.89
  %73 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %u100 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %73, i32 0, i32 0
  %74 = load float, float* %u100, align 4, !tbaa !78
  %75 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches101 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %75, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches101, i32 0, i64 0
  %vecs103 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx102, i32 0, i32 1
  %params104 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs103, i32 0, i32 0
  %base105 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params104, i32 0, i32 0
  %76 = load float, float* %base105, align 4, !tbaa !65
  %sub106 = fsub float %74, %76
  %77 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches107 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %77, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches107, i32 0, i64 0
  %vecs109 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx108, i32 0, i32 1
  %params110 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs109, i32 0, i32 0
  %factor111 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params110, i32 0, i32 1
  %78 = load float, float* %factor111, align 4, !tbaa !73
  %mul112 = fmul float %sub106, %78
  %mul113 = fmul float %mul112, 1.000000e+00
  %conv114 = fptosi float %mul113 to i32
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.99, %cond.true.98
  %cond116 = phi i32 [ 511, %cond.true.98 ], [ %conv114, %cond.false.99 ]
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.end.115, %cond.true.88
  %cond118 = phi i32 [ 0, %cond.true.88 ], [ %cond116, %cond.end.115 ]
  %conv119 = sitofp i32 %cond118 to float
  %conv120 = fptosi float %conv119 to i32
  %idxprom121 = sext i32 %conv120 to i64
  %79 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches122 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %79, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches122, i32 0, i64 0
  %vecs124 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx123, i32 0, i32 1
  %values125 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs124, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values125, i32 0, i64 %idxprom121
  store %struct.cie_cached_vector3_s* %arrayidx126, %struct.cie_cached_vector3_s** %p79, align 8, !tbaa !1
  br label %do.body.127

do.body.127:                                      ; preds = %cond.end.117
  br label %do.cond.128

do.cond.128:                                      ; preds = %do.body.127
  br label %do.end.129

do.end.129:                                       ; preds = %do.cond.128
  %80 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p79, align 8, !tbaa !1
  %u130 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %80, i32 0, i32 0
  %81 = load float, float* %u130, align 4, !tbaa !78
  store float %81, float* %u, align 4, !tbaa !11
  %82 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p79, align 8, !tbaa !1
  %v131 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %82, i32 0, i32 1
  %83 = load float, float* %v131, align 4, !tbaa !77
  store float %83, float* %v, align 4, !tbaa !11
  %84 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p79, align 8, !tbaa !1
  %w132 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %84, i32 0, i32 2
  %85 = load float, float* %w132, align 4, !tbaa !75
  store float %85, float* %w, align 4, !tbaa !11
  %86 = bitcast %struct.cie_cached_vector3_s** %p79 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  br label %if.end

if.end:                                           ; preds = %do.end.129, %do.end
  %87 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %v133 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %87, i32 0, i32 1
  %88 = load float, float* %v133, align 4, !tbaa !77
  %89 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %interpolation_ranges134 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %89, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [3 x %struct.cie_interpolation_range_s], [3 x %struct.cie_interpolation_range_s]* %interpolation_ranges134, i32 0, i64 1
  %rmin136 = getelementptr inbounds %struct.cie_interpolation_range_s, %struct.cie_interpolation_range_s* %arrayidx135, i32 0, i32 0
  %90 = load float, float* %rmin136, align 4, !tbaa !80
  %cmp137 = fcmp oge float %88, %90
  br i1 %cmp137, label %land.lhs.true.139, label %if.else.248

land.lhs.true.139:                                ; preds = %if.end
  %91 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %v140 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %91, i32 0, i32 1
  %92 = load float, float* %v140, align 4, !tbaa !77
  %93 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %interpolation_ranges141 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %93, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [3 x %struct.cie_interpolation_range_s], [3 x %struct.cie_interpolation_range_s]* %interpolation_ranges141, i32 0, i64 1
  %rmax143 = getelementptr inbounds %struct.cie_interpolation_range_s, %struct.cie_interpolation_range_s* %arrayidx142, i32 0, i32 1
  %94 = load float, float* %rmax143, align 4, !tbaa !82
  %cmp144 = fcmp olt float %92, %94
  br i1 %cmp144, label %if.then.146, label %if.else.248

if.then.146:                                      ; preds = %land.lhs.true.139
  %95 = bitcast float* %i147 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #1
  %96 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %v148 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %96, i32 0, i32 1
  %97 = load float, float* %v148, align 4, !tbaa !77
  %98 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches149 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %98, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches149, i32 0, i64 1
  %vecs151 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx150, i32 0, i32 1
  %params152 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs151, i32 0, i32 0
  %base153 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params152, i32 0, i32 0
  %99 = load float, float* %base153, align 4, !tbaa !65
  %cmp154 = fcmp ole float %97, %99
  br i1 %cmp154, label %cond.true.156, label %cond.false.157

cond.true.156:                                    ; preds = %if.then.146
  br label %cond.end.185

cond.false.157:                                   ; preds = %if.then.146
  %100 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %v158 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %100, i32 0, i32 1
  %101 = load float, float* %v158, align 4, !tbaa !77
  %102 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches159 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %102, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches159, i32 0, i64 1
  %vecs161 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx160, i32 0, i32 1
  %params162 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs161, i32 0, i32 0
  %limit163 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params162, i32 0, i32 2
  %103 = load float, float* %limit163, align 4, !tbaa !72
  %cmp164 = fcmp oge float %101, %103
  br i1 %cmp164, label %cond.true.166, label %cond.false.167

cond.true.166:                                    ; preds = %cond.false.157
  br label %cond.end.183

cond.false.167:                                   ; preds = %cond.false.157
  %104 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %v168 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %104, i32 0, i32 1
  %105 = load float, float* %v168, align 4, !tbaa !77
  %106 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches169 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %106, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches169, i32 0, i64 1
  %vecs171 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx170, i32 0, i32 1
  %params172 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs171, i32 0, i32 0
  %base173 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params172, i32 0, i32 0
  %107 = load float, float* %base173, align 4, !tbaa !65
  %sub174 = fsub float %105, %107
  %108 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches175 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %108, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches175, i32 0, i64 1
  %vecs177 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx176, i32 0, i32 1
  %params178 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs177, i32 0, i32 0
  %factor179 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params178, i32 0, i32 1
  %109 = load float, float* %factor179, align 4, !tbaa !73
  %mul180 = fmul float %sub174, %109
  %mul181 = fmul float %mul180, 1.024000e+03
  %conv182 = fptosi float %mul181 to i32
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.167, %cond.true.166
  %cond184 = phi i32 [ 523264, %cond.true.166 ], [ %conv182, %cond.false.167 ]
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.end.183, %cond.true.156
  %cond186 = phi i32 [ 0, %cond.true.156 ], [ %cond184, %cond.end.183 ]
  %conv187 = sitofp i32 %cond186 to float
  store float %conv187, float* %i147, align 4, !tbaa !11
  %110 = bitcast %struct.cie_cached_vector3_s** %p188 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  %111 = load float, float* %i147, align 4, !tbaa !11
  %conv189 = fpext float %111 to double
  %mul190 = fmul double %conv189, 9.765625e-04
  %conv191 = fptosi double %mul190 to i32
  %idxprom192 = sext i32 %conv191 to i64
  %112 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches193 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %112, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches193, i32 0, i64 1
  %vecs195 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx194, i32 0, i32 1
  %values196 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs195, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values196, i32 0, i64 %idxprom192
  store %struct.cie_cached_vector3_s* %arrayidx197, %struct.cie_cached_vector3_s** %p188, align 8, !tbaa !1
  %113 = bitcast %struct.cie_cached_vector3_s** %p1198 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %113) #1
  %114 = load float, float* %i147, align 4, !tbaa !11
  %cmp199 = fcmp oge float %114, 5.232640e+05
  br i1 %cmp199, label %cond.true.201, label %cond.false.202

cond.true.201:                                    ; preds = %cond.end.185
  %115 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p188, align 8, !tbaa !1
  br label %cond.end.204

cond.false.202:                                   ; preds = %cond.end.185
  %116 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p188, align 8, !tbaa !1
  %add.ptr203 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %116, i64 1
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.202, %cond.true.201
  %cond205 = phi %struct.cie_cached_vector3_s* [ %115, %cond.true.201 ], [ %add.ptr203, %cond.false.202 ]
  store %struct.cie_cached_vector3_s* %cond205, %struct.cie_cached_vector3_s** %p1198, align 8, !tbaa !1
  br label %do.body.206

do.body.206:                                      ; preds = %cond.end.204
  br label %do.cond.207

do.cond.207:                                      ; preds = %do.body.206
  br label %do.end.208

do.end.208:                                       ; preds = %do.cond.207
  %117 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p188, align 8, !tbaa !1
  %u209 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %117, i32 0, i32 0
  %118 = load float, float* %u209, align 4, !tbaa !78
  %119 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p1198, align 8, !tbaa !1
  %u210 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %119, i32 0, i32 0
  %120 = load float, float* %u210, align 4, !tbaa !78
  %121 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p188, align 8, !tbaa !1
  %u211 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %121, i32 0, i32 0
  %122 = load float, float* %u211, align 4, !tbaa !78
  %sub212 = fsub float %120, %122
  %123 = load float, float* %i147, align 4, !tbaa !11
  %conv213 = fpext float %123 to double
  %mul214 = fmul double %conv213, 9.765625e-04
  %conv215 = fptrunc double %mul214 to float
  store float %conv215, float* %ftemp, align 4, !tbaa !11
  %124 = load float, float* %ftemp, align 4, !tbaa !11
  %125 = load float, float* %ftemp, align 4, !tbaa !11
  %conv216 = fptosi float %125 to i32
  %conv217 = sitofp i32 %conv216 to float
  %sub218 = fsub float %124, %conv217
  %mul219 = fmul float %sub212, %sub218
  %add220 = fadd float %118, %mul219
  %126 = load float, float* %u, align 4, !tbaa !11
  %add221 = fadd float %126, %add220
  store float %add221, float* %u, align 4, !tbaa !11
  %127 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p188, align 8, !tbaa !1
  %v222 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %127, i32 0, i32 1
  %128 = load float, float* %v222, align 4, !tbaa !77
  %129 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p1198, align 8, !tbaa !1
  %v223 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %129, i32 0, i32 1
  %130 = load float, float* %v223, align 4, !tbaa !77
  %131 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p188, align 8, !tbaa !1
  %v224 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %131, i32 0, i32 1
  %132 = load float, float* %v224, align 4, !tbaa !77
  %sub225 = fsub float %130, %132
  %133 = load float, float* %i147, align 4, !tbaa !11
  %conv226 = fpext float %133 to double
  %mul227 = fmul double %conv226, 9.765625e-04
  %conv228 = fptrunc double %mul227 to float
  store float %conv228, float* %ftemp, align 4, !tbaa !11
  %134 = load float, float* %ftemp, align 4, !tbaa !11
  %135 = load float, float* %ftemp, align 4, !tbaa !11
  %conv229 = fptosi float %135 to i32
  %conv230 = sitofp i32 %conv229 to float
  %sub231 = fsub float %134, %conv230
  %mul232 = fmul float %sub225, %sub231
  %add233 = fadd float %128, %mul232
  %136 = load float, float* %v, align 4, !tbaa !11
  %add234 = fadd float %136, %add233
  store float %add234, float* %v, align 4, !tbaa !11
  %137 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p188, align 8, !tbaa !1
  %w235 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %137, i32 0, i32 2
  %138 = load float, float* %w235, align 4, !tbaa !75
  %139 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p1198, align 8, !tbaa !1
  %w236 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %139, i32 0, i32 2
  %140 = load float, float* %w236, align 4, !tbaa !75
  %141 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p188, align 8, !tbaa !1
  %w237 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %141, i32 0, i32 2
  %142 = load float, float* %w237, align 4, !tbaa !75
  %sub238 = fsub float %140, %142
  %143 = load float, float* %i147, align 4, !tbaa !11
  %conv239 = fpext float %143 to double
  %mul240 = fmul double %conv239, 9.765625e-04
  %conv241 = fptrunc double %mul240 to float
  store float %conv241, float* %ftemp, align 4, !tbaa !11
  %144 = load float, float* %ftemp, align 4, !tbaa !11
  %145 = load float, float* %ftemp, align 4, !tbaa !11
  %conv242 = fptosi float %145 to i32
  %conv243 = sitofp i32 %conv242 to float
  %sub244 = fsub float %144, %conv243
  %mul245 = fmul float %sub238, %sub244
  %add246 = fadd float %138, %mul245
  %146 = load float, float* %w, align 4, !tbaa !11
  %add247 = fadd float %146, %add246
  store float %add247, float* %w, align 4, !tbaa !11
  %147 = bitcast %struct.cie_cached_vector3_s** %p1198 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast %struct.cie_cached_vector3_s** %p188 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast float* %i147 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  br label %if.end.306

if.else.248:                                      ; preds = %land.lhs.true.139, %if.end
  %150 = bitcast %struct.cie_cached_vector3_s** %p249 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %150) #1
  %151 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %v250 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %151, i32 0, i32 1
  %152 = load float, float* %v250, align 4, !tbaa !77
  %153 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches251 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %153, i32 0, i32 0
  %arrayidx252 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches251, i32 0, i64 1
  %vecs253 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx252, i32 0, i32 1
  %params254 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs253, i32 0, i32 0
  %base255 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params254, i32 0, i32 0
  %154 = load float, float* %base255, align 4, !tbaa !65
  %cmp256 = fcmp ole float %152, %154
  br i1 %cmp256, label %cond.true.258, label %cond.false.259

cond.true.258:                                    ; preds = %if.else.248
  br label %cond.end.287

cond.false.259:                                   ; preds = %if.else.248
  %155 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %v260 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %155, i32 0, i32 1
  %156 = load float, float* %v260, align 4, !tbaa !77
  %157 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches261 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %157, i32 0, i32 0
  %arrayidx262 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches261, i32 0, i64 1
  %vecs263 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx262, i32 0, i32 1
  %params264 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs263, i32 0, i32 0
  %limit265 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params264, i32 0, i32 2
  %158 = load float, float* %limit265, align 4, !tbaa !72
  %cmp266 = fcmp oge float %156, %158
  br i1 %cmp266, label %cond.true.268, label %cond.false.269

cond.true.268:                                    ; preds = %cond.false.259
  br label %cond.end.285

cond.false.269:                                   ; preds = %cond.false.259
  %159 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %v270 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %159, i32 0, i32 1
  %160 = load float, float* %v270, align 4, !tbaa !77
  %161 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches271 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %161, i32 0, i32 0
  %arrayidx272 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches271, i32 0, i64 1
  %vecs273 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx272, i32 0, i32 1
  %params274 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs273, i32 0, i32 0
  %base275 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params274, i32 0, i32 0
  %162 = load float, float* %base275, align 4, !tbaa !65
  %sub276 = fsub float %160, %162
  %163 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches277 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %163, i32 0, i32 0
  %arrayidx278 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches277, i32 0, i64 1
  %vecs279 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx278, i32 0, i32 1
  %params280 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs279, i32 0, i32 0
  %factor281 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params280, i32 0, i32 1
  %164 = load float, float* %factor281, align 4, !tbaa !73
  %mul282 = fmul float %sub276, %164
  %mul283 = fmul float %mul282, 1.000000e+00
  %conv284 = fptosi float %mul283 to i32
  br label %cond.end.285

cond.end.285:                                     ; preds = %cond.false.269, %cond.true.268
  %cond286 = phi i32 [ 511, %cond.true.268 ], [ %conv284, %cond.false.269 ]
  br label %cond.end.287

cond.end.287:                                     ; preds = %cond.end.285, %cond.true.258
  %cond288 = phi i32 [ 0, %cond.true.258 ], [ %cond286, %cond.end.285 ]
  %conv289 = sitofp i32 %cond288 to float
  %conv290 = fptosi float %conv289 to i32
  %idxprom291 = sext i32 %conv290 to i64
  %165 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches292 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %165, i32 0, i32 0
  %arrayidx293 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches292, i32 0, i64 1
  %vecs294 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx293, i32 0, i32 1
  %values295 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs294, i32 0, i32 1
  %arrayidx296 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values295, i32 0, i64 %idxprom291
  store %struct.cie_cached_vector3_s* %arrayidx296, %struct.cie_cached_vector3_s** %p249, align 8, !tbaa !1
  br label %do.body.297

do.body.297:                                      ; preds = %cond.end.287
  br label %do.cond.298

do.cond.298:                                      ; preds = %do.body.297
  br label %do.end.299

do.end.299:                                       ; preds = %do.cond.298
  %166 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p249, align 8, !tbaa !1
  %u300 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %166, i32 0, i32 0
  %167 = load float, float* %u300, align 4, !tbaa !78
  %168 = load float, float* %u, align 4, !tbaa !11
  %add301 = fadd float %168, %167
  store float %add301, float* %u, align 4, !tbaa !11
  %169 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p249, align 8, !tbaa !1
  %v302 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %169, i32 0, i32 1
  %170 = load float, float* %v302, align 4, !tbaa !77
  %171 = load float, float* %v, align 4, !tbaa !11
  %add303 = fadd float %171, %170
  store float %add303, float* %v, align 4, !tbaa !11
  %172 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p249, align 8, !tbaa !1
  %w304 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %172, i32 0, i32 2
  %173 = load float, float* %w304, align 4, !tbaa !75
  %174 = load float, float* %w, align 4, !tbaa !11
  %add305 = fadd float %174, %173
  store float %add305, float* %w, align 4, !tbaa !11
  %175 = bitcast %struct.cie_cached_vector3_s** %p249 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  br label %if.end.306

if.end.306:                                       ; preds = %do.end.299, %do.end.208
  %176 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %w307 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %176, i32 0, i32 2
  %177 = load float, float* %w307, align 4, !tbaa !75
  %178 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %interpolation_ranges308 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %178, i32 0, i32 1
  %arrayidx309 = getelementptr inbounds [3 x %struct.cie_interpolation_range_s], [3 x %struct.cie_interpolation_range_s]* %interpolation_ranges308, i32 0, i64 2
  %rmin310 = getelementptr inbounds %struct.cie_interpolation_range_s, %struct.cie_interpolation_range_s* %arrayidx309, i32 0, i32 0
  %179 = load float, float* %rmin310, align 4, !tbaa !80
  %cmp311 = fcmp oge float %177, %179
  br i1 %cmp311, label %land.lhs.true.313, label %if.else.422

land.lhs.true.313:                                ; preds = %if.end.306
  %180 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %w314 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %180, i32 0, i32 2
  %181 = load float, float* %w314, align 4, !tbaa !75
  %182 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %interpolation_ranges315 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %182, i32 0, i32 1
  %arrayidx316 = getelementptr inbounds [3 x %struct.cie_interpolation_range_s], [3 x %struct.cie_interpolation_range_s]* %interpolation_ranges315, i32 0, i64 2
  %rmax317 = getelementptr inbounds %struct.cie_interpolation_range_s, %struct.cie_interpolation_range_s* %arrayidx316, i32 0, i32 1
  %183 = load float, float* %rmax317, align 4, !tbaa !82
  %cmp318 = fcmp olt float %181, %183
  br i1 %cmp318, label %if.then.320, label %if.else.422

if.then.320:                                      ; preds = %land.lhs.true.313
  %184 = bitcast float* %i321 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #1
  %185 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %w322 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %185, i32 0, i32 2
  %186 = load float, float* %w322, align 4, !tbaa !75
  %187 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches323 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %187, i32 0, i32 0
  %arrayidx324 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches323, i32 0, i64 2
  %vecs325 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx324, i32 0, i32 1
  %params326 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs325, i32 0, i32 0
  %base327 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params326, i32 0, i32 0
  %188 = load float, float* %base327, align 4, !tbaa !65
  %cmp328 = fcmp ole float %186, %188
  br i1 %cmp328, label %cond.true.330, label %cond.false.331

cond.true.330:                                    ; preds = %if.then.320
  br label %cond.end.359

cond.false.331:                                   ; preds = %if.then.320
  %189 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %w332 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %189, i32 0, i32 2
  %190 = load float, float* %w332, align 4, !tbaa !75
  %191 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches333 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %191, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches333, i32 0, i64 2
  %vecs335 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx334, i32 0, i32 1
  %params336 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs335, i32 0, i32 0
  %limit337 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params336, i32 0, i32 2
  %192 = load float, float* %limit337, align 4, !tbaa !72
  %cmp338 = fcmp oge float %190, %192
  br i1 %cmp338, label %cond.true.340, label %cond.false.341

cond.true.340:                                    ; preds = %cond.false.331
  br label %cond.end.357

cond.false.341:                                   ; preds = %cond.false.331
  %193 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %w342 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %193, i32 0, i32 2
  %194 = load float, float* %w342, align 4, !tbaa !75
  %195 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches343 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %195, i32 0, i32 0
  %arrayidx344 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches343, i32 0, i64 2
  %vecs345 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx344, i32 0, i32 1
  %params346 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs345, i32 0, i32 0
  %base347 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params346, i32 0, i32 0
  %196 = load float, float* %base347, align 4, !tbaa !65
  %sub348 = fsub float %194, %196
  %197 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches349 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %197, i32 0, i32 0
  %arrayidx350 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches349, i32 0, i64 2
  %vecs351 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx350, i32 0, i32 1
  %params352 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs351, i32 0, i32 0
  %factor353 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params352, i32 0, i32 1
  %198 = load float, float* %factor353, align 4, !tbaa !73
  %mul354 = fmul float %sub348, %198
  %mul355 = fmul float %mul354, 1.024000e+03
  %conv356 = fptosi float %mul355 to i32
  br label %cond.end.357

cond.end.357:                                     ; preds = %cond.false.341, %cond.true.340
  %cond358 = phi i32 [ 523264, %cond.true.340 ], [ %conv356, %cond.false.341 ]
  br label %cond.end.359

cond.end.359:                                     ; preds = %cond.end.357, %cond.true.330
  %cond360 = phi i32 [ 0, %cond.true.330 ], [ %cond358, %cond.end.357 ]
  %conv361 = sitofp i32 %cond360 to float
  store float %conv361, float* %i321, align 4, !tbaa !11
  %199 = bitcast %struct.cie_cached_vector3_s** %p362 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %199) #1
  %200 = load float, float* %i321, align 4, !tbaa !11
  %conv363 = fpext float %200 to double
  %mul364 = fmul double %conv363, 9.765625e-04
  %conv365 = fptosi double %mul364 to i32
  %idxprom366 = sext i32 %conv365 to i64
  %201 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches367 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %201, i32 0, i32 0
  %arrayidx368 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches367, i32 0, i64 2
  %vecs369 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx368, i32 0, i32 1
  %values370 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs369, i32 0, i32 1
  %arrayidx371 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values370, i32 0, i64 %idxprom366
  store %struct.cie_cached_vector3_s* %arrayidx371, %struct.cie_cached_vector3_s** %p362, align 8, !tbaa !1
  %202 = bitcast %struct.cie_cached_vector3_s** %p1372 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %202) #1
  %203 = load float, float* %i321, align 4, !tbaa !11
  %cmp373 = fcmp oge float %203, 5.232640e+05
  br i1 %cmp373, label %cond.true.375, label %cond.false.376

cond.true.375:                                    ; preds = %cond.end.359
  %204 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p362, align 8, !tbaa !1
  br label %cond.end.378

cond.false.376:                                   ; preds = %cond.end.359
  %205 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p362, align 8, !tbaa !1
  %add.ptr377 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %205, i64 1
  br label %cond.end.378

cond.end.378:                                     ; preds = %cond.false.376, %cond.true.375
  %cond379 = phi %struct.cie_cached_vector3_s* [ %204, %cond.true.375 ], [ %add.ptr377, %cond.false.376 ]
  store %struct.cie_cached_vector3_s* %cond379, %struct.cie_cached_vector3_s** %p1372, align 8, !tbaa !1
  br label %do.body.380

do.body.380:                                      ; preds = %cond.end.378
  br label %do.cond.381

do.cond.381:                                      ; preds = %do.body.380
  br label %do.end.382

do.end.382:                                       ; preds = %do.cond.381
  %206 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p362, align 8, !tbaa !1
  %u383 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %206, i32 0, i32 0
  %207 = load float, float* %u383, align 4, !tbaa !78
  %208 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p1372, align 8, !tbaa !1
  %u384 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %208, i32 0, i32 0
  %209 = load float, float* %u384, align 4, !tbaa !78
  %210 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p362, align 8, !tbaa !1
  %u385 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %210, i32 0, i32 0
  %211 = load float, float* %u385, align 4, !tbaa !78
  %sub386 = fsub float %209, %211
  %212 = load float, float* %i321, align 4, !tbaa !11
  %conv387 = fpext float %212 to double
  %mul388 = fmul double %conv387, 9.765625e-04
  %conv389 = fptrunc double %mul388 to float
  store float %conv389, float* %ftemp, align 4, !tbaa !11
  %213 = load float, float* %ftemp, align 4, !tbaa !11
  %214 = load float, float* %ftemp, align 4, !tbaa !11
  %conv390 = fptosi float %214 to i32
  %conv391 = sitofp i32 %conv390 to float
  %sub392 = fsub float %213, %conv391
  %mul393 = fmul float %sub386, %sub392
  %add394 = fadd float %207, %mul393
  %215 = load float, float* %u, align 4, !tbaa !11
  %add395 = fadd float %215, %add394
  store float %add395, float* %u, align 4, !tbaa !11
  %216 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p362, align 8, !tbaa !1
  %v396 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %216, i32 0, i32 1
  %217 = load float, float* %v396, align 4, !tbaa !77
  %218 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p1372, align 8, !tbaa !1
  %v397 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %218, i32 0, i32 1
  %219 = load float, float* %v397, align 4, !tbaa !77
  %220 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p362, align 8, !tbaa !1
  %v398 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %220, i32 0, i32 1
  %221 = load float, float* %v398, align 4, !tbaa !77
  %sub399 = fsub float %219, %221
  %222 = load float, float* %i321, align 4, !tbaa !11
  %conv400 = fpext float %222 to double
  %mul401 = fmul double %conv400, 9.765625e-04
  %conv402 = fptrunc double %mul401 to float
  store float %conv402, float* %ftemp, align 4, !tbaa !11
  %223 = load float, float* %ftemp, align 4, !tbaa !11
  %224 = load float, float* %ftemp, align 4, !tbaa !11
  %conv403 = fptosi float %224 to i32
  %conv404 = sitofp i32 %conv403 to float
  %sub405 = fsub float %223, %conv404
  %mul406 = fmul float %sub399, %sub405
  %add407 = fadd float %217, %mul406
  %225 = load float, float* %v, align 4, !tbaa !11
  %add408 = fadd float %225, %add407
  store float %add408, float* %v, align 4, !tbaa !11
  %226 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p362, align 8, !tbaa !1
  %w409 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %226, i32 0, i32 2
  %227 = load float, float* %w409, align 4, !tbaa !75
  %228 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p1372, align 8, !tbaa !1
  %w410 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %228, i32 0, i32 2
  %229 = load float, float* %w410, align 4, !tbaa !75
  %230 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p362, align 8, !tbaa !1
  %w411 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %230, i32 0, i32 2
  %231 = load float, float* %w411, align 4, !tbaa !75
  %sub412 = fsub float %229, %231
  %232 = load float, float* %i321, align 4, !tbaa !11
  %conv413 = fpext float %232 to double
  %mul414 = fmul double %conv413, 9.765625e-04
  %conv415 = fptrunc double %mul414 to float
  store float %conv415, float* %ftemp, align 4, !tbaa !11
  %233 = load float, float* %ftemp, align 4, !tbaa !11
  %234 = load float, float* %ftemp, align 4, !tbaa !11
  %conv416 = fptosi float %234 to i32
  %conv417 = sitofp i32 %conv416 to float
  %sub418 = fsub float %233, %conv417
  %mul419 = fmul float %sub412, %sub418
  %add420 = fadd float %227, %mul419
  %235 = load float, float* %w, align 4, !tbaa !11
  %add421 = fadd float %235, %add420
  store float %add421, float* %w, align 4, !tbaa !11
  %236 = bitcast %struct.cie_cached_vector3_s** %p1372 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #1
  %237 = bitcast %struct.cie_cached_vector3_s** %p362 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #1
  %238 = bitcast float* %i321 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  br label %if.end.480

if.else.422:                                      ; preds = %land.lhs.true.313, %if.end.306
  %239 = bitcast %struct.cie_cached_vector3_s** %p423 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %239) #1
  %240 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %w424 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %240, i32 0, i32 2
  %241 = load float, float* %w424, align 4, !tbaa !75
  %242 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches425 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %242, i32 0, i32 0
  %arrayidx426 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches425, i32 0, i64 2
  %vecs427 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx426, i32 0, i32 1
  %params428 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs427, i32 0, i32 0
  %base429 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params428, i32 0, i32 0
  %243 = load float, float* %base429, align 4, !tbaa !65
  %cmp430 = fcmp ole float %241, %243
  br i1 %cmp430, label %cond.true.432, label %cond.false.433

cond.true.432:                                    ; preds = %if.else.422
  br label %cond.end.461

cond.false.433:                                   ; preds = %if.else.422
  %244 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %w434 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %244, i32 0, i32 2
  %245 = load float, float* %w434, align 4, !tbaa !75
  %246 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches435 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %246, i32 0, i32 0
  %arrayidx436 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches435, i32 0, i64 2
  %vecs437 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx436, i32 0, i32 1
  %params438 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs437, i32 0, i32 0
  %limit439 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params438, i32 0, i32 2
  %247 = load float, float* %limit439, align 4, !tbaa !72
  %cmp440 = fcmp oge float %245, %247
  br i1 %cmp440, label %cond.true.442, label %cond.false.443

cond.true.442:                                    ; preds = %cond.false.433
  br label %cond.end.459

cond.false.443:                                   ; preds = %cond.false.433
  %248 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %w444 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %248, i32 0, i32 2
  %249 = load float, float* %w444, align 4, !tbaa !75
  %250 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches445 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %250, i32 0, i32 0
  %arrayidx446 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches445, i32 0, i64 2
  %vecs447 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx446, i32 0, i32 1
  %params448 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs447, i32 0, i32 0
  %base449 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params448, i32 0, i32 0
  %251 = load float, float* %base449, align 4, !tbaa !65
  %sub450 = fsub float %249, %251
  %252 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches451 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %252, i32 0, i32 0
  %arrayidx452 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches451, i32 0, i64 2
  %vecs453 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx452, i32 0, i32 1
  %params454 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs453, i32 0, i32 0
  %factor455 = getelementptr inbounds %struct.cie_vector_cache_params_s, %struct.cie_vector_cache_params_s* %params454, i32 0, i32 1
  %253 = load float, float* %factor455, align 4, !tbaa !73
  %mul456 = fmul float %sub450, %253
  %mul457 = fmul float %mul456, 1.000000e+00
  %conv458 = fptosi float %mul457 to i32
  br label %cond.end.459

cond.end.459:                                     ; preds = %cond.false.443, %cond.true.442
  %cond460 = phi i32 [ 511, %cond.true.442 ], [ %conv458, %cond.false.443 ]
  br label %cond.end.461

cond.end.461:                                     ; preds = %cond.end.459, %cond.true.432
  %cond462 = phi i32 [ 0, %cond.true.432 ], [ %cond460, %cond.end.459 ]
  %conv463 = sitofp i32 %cond462 to float
  %conv464 = fptosi float %conv463 to i32
  %idxprom465 = sext i32 %conv464 to i64
  %254 = load %struct.gx_cie_vector_cache3_s*, %struct.gx_cie_vector_cache3_s** %pc.addr, align 8, !tbaa !1
  %caches466 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %254, i32 0, i32 0
  %arrayidx467 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches466, i32 0, i64 2
  %vecs468 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx467, i32 0, i32 1
  %values469 = getelementptr inbounds %struct.cie_cache_vectors_s, %struct.cie_cache_vectors_s* %vecs468, i32 0, i32 1
  %arrayidx470 = getelementptr inbounds [512 x %struct.cie_cached_vector3_s], [512 x %struct.cie_cached_vector3_s]* %values469, i32 0, i64 %idxprom465
  store %struct.cie_cached_vector3_s* %arrayidx470, %struct.cie_cached_vector3_s** %p423, align 8, !tbaa !1
  br label %do.body.471

do.body.471:                                      ; preds = %cond.end.461
  br label %do.cond.472

do.cond.472:                                      ; preds = %do.body.471
  br label %do.end.473

do.end.473:                                       ; preds = %do.cond.472
  %255 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p423, align 8, !tbaa !1
  %u474 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %255, i32 0, i32 0
  %256 = load float, float* %u474, align 4, !tbaa !78
  %257 = load float, float* %u, align 4, !tbaa !11
  %add475 = fadd float %257, %256
  store float %add475, float* %u, align 4, !tbaa !11
  %258 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p423, align 8, !tbaa !1
  %v476 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %258, i32 0, i32 1
  %259 = load float, float* %v476, align 4, !tbaa !77
  %260 = load float, float* %v, align 4, !tbaa !11
  %add477 = fadd float %260, %259
  store float %add477, float* %v, align 4, !tbaa !11
  %261 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %p423, align 8, !tbaa !1
  %w478 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %261, i32 0, i32 2
  %262 = load float, float* %w478, align 4, !tbaa !75
  %263 = load float, float* %w, align 4, !tbaa !11
  %add479 = fadd float %263, %262
  store float %add479, float* %w, align 4, !tbaa !11
  %264 = bitcast %struct.cie_cached_vector3_s** %p423 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #1
  br label %if.end.480

if.end.480:                                       ; preds = %do.end.473, %do.end.382
  %265 = load float, float* %u, align 4, !tbaa !11
  %266 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %u481 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %266, i32 0, i32 0
  store float %265, float* %u481, align 4, !tbaa !78
  %267 = load float, float* %v, align 4, !tbaa !11
  %268 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %v482 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %268, i32 0, i32 1
  store float %267, float* %v482, align 4, !tbaa !77
  %269 = load float, float* %w, align 4, !tbaa !11
  %270 = load %struct.cie_cached_vector3_s*, %struct.cie_cached_vector3_s** %pvec.addr, align 8, !tbaa !1
  %w483 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %270, i32 0, i32 2
  store float %269, float* %w483, align 4, !tbaa !75
  %271 = bitcast float* %ftemp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %271) #1
  %272 = bitcast float* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #1
  %273 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #1
  %274 = bitcast float* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_psconcretize_CIEDEFG(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, i16* %pconc, float* %cie_xyz, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %cie_xyz.addr = alloca float*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcie = alloca %struct.gs_cie_defg_s*, align 8
  %i = alloca i32, align 4
  %hijk = alloca [4 x i32], align 16
  %abc = alloca [3 x i16], align 2
  %vec3 = alloca %struct.cie_cached_vector3_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %tdim = alloca i32, align 4
  %factor = alloca double, align 8
  %v0 = alloca double, align 8
  %rangeDEFG = alloca %struct.gs_range_s*, align 8
  %value = alloca double, align 8
  %vi = alloca i32, align 4
  %vf = alloca double, align 8
  %v = alloca double, align 8
  %vec3.coerce = alloca { <2 x float>, float }
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store float* %cie_xyz, float** %cie_xyz.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_defg_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %defg = bitcast %union.anon* %params to %struct.gs_cie_defg_s**
  %2 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !1
  store %struct.gs_cie_defg_s* %2, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [4 x i32]* %hijk to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast [3 x i16]* %abc to i8*
  call void @llvm.lifetime.start(i64 6, i8* %5) #1
  %6 = bitcast %struct.cie_cached_vector3_s* %vec3 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %9 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @gx_cie_check_rendering_inline(%struct.gs_color_space_s* %8, i16* %9, %struct.gs_imager_state_s* %10) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %13, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %14, 4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = bitcast i32* %tdim to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %17, i32 0, i32 9
  %dims = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %Table, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %sub = sub nsw i32 %18, 1
  store i32 %sub, i32* %tdim, align 4, !tbaa !5
  %19 = bitcast double* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %20 to i64
  %21 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %caches_defg = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %21, i32 0, i32 10
  %DecodeDEFG = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches_defg, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG, i32 0, i64 %idxprom5
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx6 to %struct.cie_cache_floats_s*
  %params7 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 0
  %factor8 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params7, i32 0, i32 2
  %22 = load double, double* %factor8, align 8, !tbaa !83
  store double %22, double* %factor, align 8, !tbaa !84
  %23 = bitcast double* %v0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %24 to i64
  %25 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %25, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom9
  %26 = load float, float* %arrayidx10, align 4, !tbaa !11
  %conv = fpext float %26 to double
  store double %conv, double* %v0, align 8, !tbaa !84
  %27 = bitcast %struct.gs_range_s** %rangeDEFG to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %28 to i64
  %29 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %RangeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %29, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom11
  store %struct.gs_range_s* %arrayidx12, %struct.gs_range_s** %rangeDEFG, align 8, !tbaa !1
  %30 = bitcast double* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load double, double* %v0, align 8, !tbaa !84
  %32 = load %struct.gs_range_s*, %struct.gs_range_s** %rangeDEFG, align 8, !tbaa !1
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %32, i32 0, i32 0
  %33 = load float, float* %rmin, align 4, !tbaa !7
  %conv13 = fpext float %33 to double
  %cmp14 = fcmp olt double %31, %conv13
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.28

cond.false:                                       ; preds = %for.body
  %34 = load double, double* %factor, align 8, !tbaa !84
  %35 = load double, double* %v0, align 8, !tbaa !84
  %36 = load %struct.gs_range_s*, %struct.gs_range_s** %rangeDEFG, align 8, !tbaa !1
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %36, i32 0, i32 1
  %37 = load float, float* %rmax, align 4, !tbaa !10
  %conv16 = fpext float %37 to double
  %cmp17 = fcmp ogt double %35, %conv16
  br i1 %cmp17, label %cond.true.19, label %cond.false.24

cond.true.19:                                     ; preds = %cond.false
  %38 = load %struct.gs_range_s*, %struct.gs_range_s** %rangeDEFG, align 8, !tbaa !1
  %rmax20 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %38, i32 0, i32 1
  %39 = load float, float* %rmax20, align 4, !tbaa !10
  %40 = load %struct.gs_range_s*, %struct.gs_range_s** %rangeDEFG, align 8, !tbaa !1
  %rmin21 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %40, i32 0, i32 0
  %41 = load float, float* %rmin21, align 4, !tbaa !7
  %sub22 = fsub float %39, %41
  %conv23 = fpext float %sub22 to double
  br label %cond.end

cond.false.24:                                    ; preds = %cond.false
  %42 = load double, double* %v0, align 8, !tbaa !84
  %43 = load %struct.gs_range_s*, %struct.gs_range_s** %rangeDEFG, align 8, !tbaa !1
  %rmin25 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %43, i32 0, i32 0
  %44 = load float, float* %rmin25, align 4, !tbaa !7
  %conv26 = fpext float %44 to double
  %sub27 = fsub double %42, %conv26
  br label %cond.end

cond.end:                                         ; preds = %cond.false.24, %cond.true.19
  %cond = phi double [ %conv23, %cond.true.19 ], [ %sub27, %cond.false.24 ]
  %mul = fmul double %34, %cond
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end, %cond.true
  %cond29 = phi double [ 0.000000e+00, %cond.true ], [ %mul, %cond.end ]
  store double %cond29, double* %value, align 8, !tbaa !84
  %45 = bitcast i32* %vi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load double, double* %value, align 8, !tbaa !84
  %conv30 = fptosi double %46 to i32
  store i32 %conv30, i32* %vi, align 4, !tbaa !5
  %47 = bitcast double* %vf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = load double, double* %value, align 8, !tbaa !84
  %49 = load i32, i32* %vi, align 4, !tbaa !5
  %conv31 = sitofp i32 %49 to double
  %sub32 = fsub double %48, %conv31
  store double %sub32, double* %vf, align 8, !tbaa !84
  %50 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = load i32, i32* %vi, align 4, !tbaa !5
  %idxprom33 = sext i32 %51 to i64
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %52 to i64
  %53 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %caches_defg35 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %53, i32 0, i32 10
  %DecodeDEFG36 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches_defg35, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG36, i32 0, i64 %idxprom34
  %floats38 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx37 to %struct.cie_cache_floats_s*
  %values39 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats38, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [512 x float], [512 x float]* %values39, i32 0, i64 %idxprom33
  %54 = load float, float* %arrayidx40, align 4, !tbaa !11
  %conv41 = fpext float %54 to double
  store double %conv41, double* %v, align 8, !tbaa !84
  %55 = load double, double* %vf, align 8, !tbaa !84
  %cmp42 = fcmp une double %55, 0.000000e+00
  br i1 %cmp42, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %cond.end.28
  %56 = load i32, i32* %vi, align 4, !tbaa !5
  %conv44 = sitofp i32 %56 to double
  %57 = load double, double* %factor, align 8, !tbaa !84
  %cmp45 = fcmp olt double %conv44, %57
  br i1 %cmp45, label %if.then.47, label %if.end.60

if.then.47:                                       ; preds = %land.lhs.true
  %58 = load double, double* %vf, align 8, !tbaa !84
  %59 = load i32, i32* %vi, align 4, !tbaa !5
  %add = add nsw i32 %59, 1
  %idxprom48 = sext i32 %add to i64
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %60 to i64
  %61 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %caches_defg50 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %61, i32 0, i32 10
  %DecodeDEFG51 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches_defg50, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG51, i32 0, i64 %idxprom49
  %floats53 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx52 to %struct.cie_cache_floats_s*
  %values54 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats53, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [512 x float], [512 x float]* %values54, i32 0, i64 %idxprom48
  %62 = load float, float* %arrayidx55, align 4, !tbaa !11
  %conv56 = fpext float %62 to double
  %63 = load double, double* %v, align 8, !tbaa !84
  %sub57 = fsub double %conv56, %63
  %mul58 = fmul double %58, %sub57
  %64 = load double, double* %v, align 8, !tbaa !84
  %add59 = fadd double %64, %mul58
  store double %add59, double* %v, align 8, !tbaa !84
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.47, %land.lhs.true, %cond.end.28
  %65 = load double, double* %v, align 8, !tbaa !84
  %cmp61 = fcmp olt double %65, 0.000000e+00
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %if.end.60
  br label %cond.end.73

cond.false.64:                                    ; preds = %if.end.60
  %66 = load double, double* %v, align 8, !tbaa !84
  %67 = load i32, i32* %tdim, align 4, !tbaa !5
  %conv65 = sitofp i32 %67 to double
  %cmp66 = fcmp ogt double %66, %conv65
  br i1 %cmp66, label %cond.true.68, label %cond.false.70

cond.true.68:                                     ; preds = %cond.false.64
  %68 = load i32, i32* %tdim, align 4, !tbaa !5
  %conv69 = sitofp i32 %68 to double
  br label %cond.end.71

cond.false.70:                                    ; preds = %cond.false.64
  %69 = load double, double* %v, align 8, !tbaa !84
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.68
  %cond72 = phi double [ %conv69, %cond.true.68 ], [ %69, %cond.false.70 ]
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end.71, %cond.true.63
  %cond74 = phi double [ 0.000000e+00, %cond.true.63 ], [ %cond72, %cond.end.71 ]
  store double %cond74, double* %v, align 8, !tbaa !84
  %70 = load double, double* %v, align 8, !tbaa !84
  %mul75 = fmul double %70, 2.560000e+02
  %conv76 = fptosi double %mul75 to i32
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom77 = sext i32 %71 to i64
  %arrayidx78 = getelementptr inbounds [4 x i32], [4 x i32]* %hijk, i32 0, i64 %idxprom77
  store i32 %conv76, i32* %arrayidx78, align 4, !tbaa !5
  %72 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast double* %vf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i32* %vi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast double* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.gs_range_s** %rangeDEFG to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast double* %v0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast double* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i32* %tdim to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.73
  %80 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %hijk, i32 0, i32 0
  %81 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %Table79 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %81, i32 0, i32 9
  %arraydecay80 = getelementptr inbounds [3 x i16], [3 x i16]* %abc, i32 0, i32 0
  call void @gx_color_interpolate_linear(i32* %arraydecay, %struct.gx_color_lookup_table_s* %Table79, i16* %arraydecay80) #4
  %82 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %RangeABC = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %82, i32 0, i32 2
  %ranges81 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges81, i32 0, i64 0
  %rmax83 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx82, i32 0, i32 1
  %83 = load float, float* %rmax83, align 4, !tbaa !10
  %84 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %RangeABC84 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %84, i32 0, i32 2
  %ranges85 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC84, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges85, i32 0, i64 0
  %rmin87 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx86, i32 0, i32 0
  %85 = load float, float* %rmin87, align 4, !tbaa !7
  %sub88 = fsub float %83, %85
  %arrayidx89 = getelementptr inbounds [3 x i16], [3 x i16]* %abc, i32 0, i64 0
  %86 = load i16, i16* %arrayidx89, align 2, !tbaa !28
  %conv90 = sext i16 %86 to i32
  %conv91 = sitofp i32 %conv90 to float
  %div = fdiv float %conv91, 3.276000e+04
  %mul92 = fmul float %sub88, %div
  %87 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %RangeABC93 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %87, i32 0, i32 2
  %ranges94 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC93, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges94, i32 0, i64 0
  %rmin96 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx95, i32 0, i32 0
  %88 = load float, float* %rmin96, align 4, !tbaa !7
  %add97 = fadd float %mul92, %88
  %u = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vec3, i32 0, i32 0
  store float %add97, float* %u, align 4, !tbaa !78
  %89 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %RangeABC98 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %89, i32 0, i32 2
  %ranges99 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC98, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges99, i32 0, i64 1
  %rmax101 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx100, i32 0, i32 1
  %90 = load float, float* %rmax101, align 4, !tbaa !10
  %91 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %RangeABC102 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %91, i32 0, i32 2
  %ranges103 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC102, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges103, i32 0, i64 1
  %rmin105 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx104, i32 0, i32 0
  %92 = load float, float* %rmin105, align 4, !tbaa !7
  %sub106 = fsub float %90, %92
  %arrayidx107 = getelementptr inbounds [3 x i16], [3 x i16]* %abc, i32 0, i64 1
  %93 = load i16, i16* %arrayidx107, align 2, !tbaa !28
  %conv108 = sext i16 %93 to i32
  %conv109 = sitofp i32 %conv108 to float
  %div110 = fdiv float %conv109, 3.276000e+04
  %mul111 = fmul float %sub106, %div110
  %94 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %RangeABC112 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %94, i32 0, i32 2
  %ranges113 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC112, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges113, i32 0, i64 1
  %rmin115 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx114, i32 0, i32 0
  %95 = load float, float* %rmin115, align 4, !tbaa !7
  %add116 = fadd float %mul111, %95
  %v117 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vec3, i32 0, i32 1
  store float %add116, float* %v117, align 4, !tbaa !77
  %96 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %RangeABC118 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %96, i32 0, i32 2
  %ranges119 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC118, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges119, i32 0, i64 2
  %rmax121 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx120, i32 0, i32 1
  %97 = load float, float* %rmax121, align 4, !tbaa !10
  %98 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %RangeABC122 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %98, i32 0, i32 2
  %ranges123 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC122, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges123, i32 0, i64 2
  %rmin125 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx124, i32 0, i32 0
  %99 = load float, float* %rmin125, align 4, !tbaa !7
  %sub126 = fsub float %97, %99
  %arrayidx127 = getelementptr inbounds [3 x i16], [3 x i16]* %abc, i32 0, i64 2
  %100 = load i16, i16* %arrayidx127, align 2, !tbaa !28
  %conv128 = sext i16 %100 to i32
  %conv129 = sitofp i32 %conv128 to float
  %div130 = fdiv float %conv129, 3.276000e+04
  %mul131 = fmul float %sub126, %div130
  %101 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %RangeABC132 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %101, i32 0, i32 2
  %ranges133 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges133, i32 0, i64 2
  %rmin135 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx134, i32 0, i32 0
  %102 = load float, float* %rmin135, align 4, !tbaa !7
  %add136 = fadd float %mul131, %102
  %w = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vec3, i32 0, i32 2
  store float %add136, float* %w, align 4, !tbaa !75
  %103 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %103, i32 0, i32 48
  %104 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !29
  %skipDecodeABC = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %104, i32 0, i32 6
  %105 = load i32, i32* %skipDecodeABC, align 4, !tbaa !64
  %tobool = icmp ne i32 %105, 0
  br i1 %tobool, label %if.end.138, label %if.then.137

if.then.137:                                      ; preds = %for.end
  %106 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %106, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.2, %struct.anon.2* %caches, i32 0, i32 1
  call void @cie_lookup_mult3(%struct.cie_cached_vector3_s* %vec3, %struct.gx_cie_vector_cache3_s* %DecodeABC) #4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %for.end
  %107 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches139 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %107, i32 0, i32 48
  %108 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches139, align 8, !tbaa !29
  %remap_finish = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %108, i32 0, i32 5
  %109 = load i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)** %remap_finish, align 8, !tbaa !79
  %110 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %111 = load float*, float** %cie_xyz.addr, align 8, !tbaa !1
  %112 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %113 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %114 = bitcast { <2 x float>, float }* %vec3.coerce to i8*
  %115 = bitcast %struct.cie_cached_vector3_s* %vec3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 12, i32 0, i1 false)
  %116 = getelementptr { <2 x float>, float }, { <2 x float>, float }* %vec3.coerce, i32 0, i32 0
  %117 = load <2 x float>, <2 x float>* %116, align 1
  %118 = getelementptr { <2 x float>, float }, { <2 x float>, float }* %vec3.coerce, i32 0, i32 1
  %119 = load float, float* %118, align 1
  %call140 = call i32 %109(<2 x float> %117, float %119, i16* %110, float* %111, %struct.gs_imager_state_s* %112, %struct.gs_color_space_s* %113) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.138, %if.then.2, %if.then
  %120 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast %struct.cie_cached_vector3_s* %vec3 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %121) #1
  %122 = bitcast [3 x i16]* %abc to i8*
  call void @llvm.lifetime.end(i64 6, i8* %122) #1
  %123 = bitcast [4 x i32]* %hijk to i8*
  call void @llvm.lifetime.end(i64 16, i8* %123) #1
  %124 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast %struct.gs_cie_defg_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = load i32, i32* %retval
  ret i32 %126
}

declare void @gx_color_interpolate_linear(i32*, %struct.gx_color_lookup_table_s*, i16*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_psconcretize_CIEDEF(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs, i16* %pconc, float* %cie_xyz, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %cie_xyz.addr = alloca float*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcie = alloca %struct.gs_cie_def_s*, align 8
  %i = alloca i32, align 4
  %hij = alloca [3 x i32], align 4
  %abc = alloca [3 x i16], align 2
  %vec3 = alloca %struct.cie_cached_vector3_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %tdim = alloca i32, align 4
  %factor = alloca double, align 8
  %v0 = alloca double, align 8
  %rangeDEF = alloca %struct.gs_range_s*, align 8
  %value = alloca double, align 8
  %vi = alloca i32, align 4
  %vf = alloca double, align 8
  %v = alloca double, align 8
  %vec3.coerce = alloca { <2 x float>, float }
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store float* %cie_xyz, float** %cie_xyz.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_def_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %def = bitcast %union.anon* %params to %struct.gs_cie_def_s**
  %2 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !1
  store %struct.gs_cie_def_s* %2, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [3 x i32]* %hij to i8*
  call void @llvm.lifetime.start(i64 12, i8* %4) #1
  %5 = bitcast [3 x i16]* %abc to i8*
  call void @llvm.lifetime.start(i64 6, i8* %5) #1
  %6 = bitcast %struct.cie_cached_vector3_s* %vec3 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %9 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @gx_cie_check_rendering_inline(%struct.gs_color_space_s* %8, i16* %9, %struct.gs_imager_state_s* %10) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %13, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %14, 3
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = bitcast i32* %tdim to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %17, i32 0, i32 9
  %dims = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %Table, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %sub = sub nsw i32 %18, 1
  store i32 %sub, i32* %tdim, align 4, !tbaa !5
  %19 = bitcast double* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %20 to i64
  %21 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %caches_def = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %21, i32 0, i32 10
  %DecodeDEF = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches_def, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF, i32 0, i64 %idxprom5
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx6 to %struct.cie_cache_floats_s*
  %params7 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 0
  %factor8 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params7, i32 0, i32 2
  %22 = load double, double* %factor8, align 8, !tbaa !83
  store double %22, double* %factor, align 8, !tbaa !84
  %23 = bitcast double* %v0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %24 to i64
  %25 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %25, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom9
  %26 = load float, float* %arrayidx10, align 4, !tbaa !11
  %conv = fpext float %26 to double
  store double %conv, double* %v0, align 8, !tbaa !84
  %27 = bitcast %struct.gs_range_s** %rangeDEF to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %28 to i64
  %29 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %RangeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %29, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom11
  store %struct.gs_range_s* %arrayidx12, %struct.gs_range_s** %rangeDEF, align 8, !tbaa !1
  %30 = bitcast double* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load double, double* %v0, align 8, !tbaa !84
  %32 = load %struct.gs_range_s*, %struct.gs_range_s** %rangeDEF, align 8, !tbaa !1
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %32, i32 0, i32 0
  %33 = load float, float* %rmin, align 4, !tbaa !7
  %conv13 = fpext float %33 to double
  %cmp14 = fcmp olt double %31, %conv13
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.28

cond.false:                                       ; preds = %for.body
  %34 = load double, double* %factor, align 8, !tbaa !84
  %35 = load double, double* %v0, align 8, !tbaa !84
  %36 = load %struct.gs_range_s*, %struct.gs_range_s** %rangeDEF, align 8, !tbaa !1
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %36, i32 0, i32 1
  %37 = load float, float* %rmax, align 4, !tbaa !10
  %conv16 = fpext float %37 to double
  %cmp17 = fcmp ogt double %35, %conv16
  br i1 %cmp17, label %cond.true.19, label %cond.false.24

cond.true.19:                                     ; preds = %cond.false
  %38 = load %struct.gs_range_s*, %struct.gs_range_s** %rangeDEF, align 8, !tbaa !1
  %rmax20 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %38, i32 0, i32 1
  %39 = load float, float* %rmax20, align 4, !tbaa !10
  %40 = load %struct.gs_range_s*, %struct.gs_range_s** %rangeDEF, align 8, !tbaa !1
  %rmin21 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %40, i32 0, i32 0
  %41 = load float, float* %rmin21, align 4, !tbaa !7
  %sub22 = fsub float %39, %41
  %conv23 = fpext float %sub22 to double
  br label %cond.end

cond.false.24:                                    ; preds = %cond.false
  %42 = load double, double* %v0, align 8, !tbaa !84
  %43 = load %struct.gs_range_s*, %struct.gs_range_s** %rangeDEF, align 8, !tbaa !1
  %rmin25 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %43, i32 0, i32 0
  %44 = load float, float* %rmin25, align 4, !tbaa !7
  %conv26 = fpext float %44 to double
  %sub27 = fsub double %42, %conv26
  br label %cond.end

cond.end:                                         ; preds = %cond.false.24, %cond.true.19
  %cond = phi double [ %conv23, %cond.true.19 ], [ %sub27, %cond.false.24 ]
  %mul = fmul double %34, %cond
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end, %cond.true
  %cond29 = phi double [ 0.000000e+00, %cond.true ], [ %mul, %cond.end ]
  store double %cond29, double* %value, align 8, !tbaa !84
  %45 = bitcast i32* %vi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load double, double* %value, align 8, !tbaa !84
  %conv30 = fptosi double %46 to i32
  store i32 %conv30, i32* %vi, align 4, !tbaa !5
  %47 = bitcast double* %vf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = load double, double* %value, align 8, !tbaa !84
  %49 = load i32, i32* %vi, align 4, !tbaa !5
  %conv31 = sitofp i32 %49 to double
  %sub32 = fsub double %48, %conv31
  store double %sub32, double* %vf, align 8, !tbaa !84
  %50 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = load i32, i32* %vi, align 4, !tbaa !5
  %idxprom33 = sext i32 %51 to i64
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %52 to i64
  %53 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %caches_def35 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %53, i32 0, i32 10
  %DecodeDEF36 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches_def35, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF36, i32 0, i64 %idxprom34
  %floats38 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx37 to %struct.cie_cache_floats_s*
  %values39 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats38, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [512 x float], [512 x float]* %values39, i32 0, i64 %idxprom33
  %54 = load float, float* %arrayidx40, align 4, !tbaa !11
  %conv41 = fpext float %54 to double
  store double %conv41, double* %v, align 8, !tbaa !84
  %55 = load double, double* %vf, align 8, !tbaa !84
  %cmp42 = fcmp une double %55, 0.000000e+00
  br i1 %cmp42, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %cond.end.28
  %56 = load i32, i32* %vi, align 4, !tbaa !5
  %conv44 = sitofp i32 %56 to double
  %57 = load double, double* %factor, align 8, !tbaa !84
  %cmp45 = fcmp olt double %conv44, %57
  br i1 %cmp45, label %if.then.47, label %if.end.60

if.then.47:                                       ; preds = %land.lhs.true
  %58 = load double, double* %vf, align 8, !tbaa !84
  %59 = load i32, i32* %vi, align 4, !tbaa !5
  %add = add nsw i32 %59, 1
  %idxprom48 = sext i32 %add to i64
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %60 to i64
  %61 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %caches_def50 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %61, i32 0, i32 10
  %DecodeDEF51 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches_def50, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF51, i32 0, i64 %idxprom49
  %floats53 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx52 to %struct.cie_cache_floats_s*
  %values54 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats53, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [512 x float], [512 x float]* %values54, i32 0, i64 %idxprom48
  %62 = load float, float* %arrayidx55, align 4, !tbaa !11
  %conv56 = fpext float %62 to double
  %63 = load double, double* %v, align 8, !tbaa !84
  %sub57 = fsub double %conv56, %63
  %mul58 = fmul double %58, %sub57
  %64 = load double, double* %v, align 8, !tbaa !84
  %add59 = fadd double %64, %mul58
  store double %add59, double* %v, align 8, !tbaa !84
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.47, %land.lhs.true, %cond.end.28
  %65 = load double, double* %v, align 8, !tbaa !84
  %cmp61 = fcmp olt double %65, 0.000000e+00
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %if.end.60
  br label %cond.end.73

cond.false.64:                                    ; preds = %if.end.60
  %66 = load double, double* %v, align 8, !tbaa !84
  %67 = load i32, i32* %tdim, align 4, !tbaa !5
  %conv65 = sitofp i32 %67 to double
  %cmp66 = fcmp ogt double %66, %conv65
  br i1 %cmp66, label %cond.true.68, label %cond.false.70

cond.true.68:                                     ; preds = %cond.false.64
  %68 = load i32, i32* %tdim, align 4, !tbaa !5
  %conv69 = sitofp i32 %68 to double
  br label %cond.end.71

cond.false.70:                                    ; preds = %cond.false.64
  %69 = load double, double* %v, align 8, !tbaa !84
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.68
  %cond72 = phi double [ %conv69, %cond.true.68 ], [ %69, %cond.false.70 ]
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end.71, %cond.true.63
  %cond74 = phi double [ 0.000000e+00, %cond.true.63 ], [ %cond72, %cond.end.71 ]
  store double %cond74, double* %v, align 8, !tbaa !84
  %70 = load double, double* %v, align 8, !tbaa !84
  %mul75 = fmul double %70, 2.560000e+02
  %conv76 = fptosi double %mul75 to i32
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom77 = sext i32 %71 to i64
  %arrayidx78 = getelementptr inbounds [3 x i32], [3 x i32]* %hij, i32 0, i64 %idxprom77
  store i32 %conv76, i32* %arrayidx78, align 4, !tbaa !5
  %72 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast double* %vf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i32* %vi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast double* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.gs_range_s** %rangeDEF to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast double* %v0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast double* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i32* %tdim to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.73
  %80 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %hij, i32 0, i32 0
  %81 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %Table79 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %81, i32 0, i32 9
  %arraydecay80 = getelementptr inbounds [3 x i16], [3 x i16]* %abc, i32 0, i32 0
  call void @gx_color_interpolate_linear(i32* %arraydecay, %struct.gx_color_lookup_table_s* %Table79, i16* %arraydecay80) #4
  %82 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %RangeABC = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %82, i32 0, i32 2
  %ranges81 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges81, i32 0, i64 0
  %rmax83 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx82, i32 0, i32 1
  %83 = load float, float* %rmax83, align 4, !tbaa !10
  %84 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %RangeABC84 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %84, i32 0, i32 2
  %ranges85 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC84, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges85, i32 0, i64 0
  %rmin87 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx86, i32 0, i32 0
  %85 = load float, float* %rmin87, align 4, !tbaa !7
  %sub88 = fsub float %83, %85
  %arrayidx89 = getelementptr inbounds [3 x i16], [3 x i16]* %abc, i32 0, i64 0
  %86 = load i16, i16* %arrayidx89, align 2, !tbaa !28
  %conv90 = sext i16 %86 to i32
  %conv91 = sitofp i32 %conv90 to float
  %div = fdiv float %conv91, 3.276000e+04
  %mul92 = fmul float %sub88, %div
  %87 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %RangeABC93 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %87, i32 0, i32 2
  %ranges94 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC93, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges94, i32 0, i64 0
  %rmin96 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx95, i32 0, i32 0
  %88 = load float, float* %rmin96, align 4, !tbaa !7
  %add97 = fadd float %mul92, %88
  %u = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vec3, i32 0, i32 0
  store float %add97, float* %u, align 4, !tbaa !78
  %89 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %RangeABC98 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %89, i32 0, i32 2
  %ranges99 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC98, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges99, i32 0, i64 1
  %rmax101 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx100, i32 0, i32 1
  %90 = load float, float* %rmax101, align 4, !tbaa !10
  %91 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %RangeABC102 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %91, i32 0, i32 2
  %ranges103 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC102, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges103, i32 0, i64 1
  %rmin105 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx104, i32 0, i32 0
  %92 = load float, float* %rmin105, align 4, !tbaa !7
  %sub106 = fsub float %90, %92
  %arrayidx107 = getelementptr inbounds [3 x i16], [3 x i16]* %abc, i32 0, i64 1
  %93 = load i16, i16* %arrayidx107, align 2, !tbaa !28
  %conv108 = sext i16 %93 to i32
  %conv109 = sitofp i32 %conv108 to float
  %div110 = fdiv float %conv109, 3.276000e+04
  %mul111 = fmul float %sub106, %div110
  %94 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %RangeABC112 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %94, i32 0, i32 2
  %ranges113 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC112, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges113, i32 0, i64 1
  %rmin115 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx114, i32 0, i32 0
  %95 = load float, float* %rmin115, align 4, !tbaa !7
  %add116 = fadd float %mul111, %95
  %v117 = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vec3, i32 0, i32 1
  store float %add116, float* %v117, align 4, !tbaa !77
  %96 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %RangeABC118 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %96, i32 0, i32 2
  %ranges119 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC118, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges119, i32 0, i64 2
  %rmax121 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx120, i32 0, i32 1
  %97 = load float, float* %rmax121, align 4, !tbaa !10
  %98 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %RangeABC122 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %98, i32 0, i32 2
  %ranges123 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC122, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges123, i32 0, i64 2
  %rmin125 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx124, i32 0, i32 0
  %99 = load float, float* %rmin125, align 4, !tbaa !7
  %sub126 = fsub float %97, %99
  %arrayidx127 = getelementptr inbounds [3 x i16], [3 x i16]* %abc, i32 0, i64 2
  %100 = load i16, i16* %arrayidx127, align 2, !tbaa !28
  %conv128 = sext i16 %100 to i32
  %conv129 = sitofp i32 %conv128 to float
  %div130 = fdiv float %conv129, 3.276000e+04
  %mul131 = fmul float %sub126, %div130
  %101 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %RangeABC132 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %101, i32 0, i32 2
  %ranges133 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges133, i32 0, i64 2
  %rmin135 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx134, i32 0, i32 0
  %102 = load float, float* %rmin135, align 4, !tbaa !7
  %add136 = fadd float %mul131, %102
  %w = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vec3, i32 0, i32 2
  store float %add136, float* %w, align 4, !tbaa !75
  %103 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %103, i32 0, i32 48
  %104 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !29
  %skipDecodeABC = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %104, i32 0, i32 6
  %105 = load i32, i32* %skipDecodeABC, align 4, !tbaa !64
  %tobool = icmp ne i32 %105, 0
  br i1 %tobool, label %if.end.138, label %if.then.137

if.then.137:                                      ; preds = %for.end
  %106 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %106, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches, i32 0, i32 1
  call void @cie_lookup_mult3(%struct.cie_cached_vector3_s* %vec3, %struct.gx_cie_vector_cache3_s* %DecodeABC) #4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %for.end
  %107 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches139 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %107, i32 0, i32 48
  %108 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches139, align 8, !tbaa !29
  %remap_finish = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %108, i32 0, i32 5
  %109 = load i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)** %remap_finish, align 8, !tbaa !79
  %110 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %111 = load float*, float** %cie_xyz.addr, align 8, !tbaa !1
  %112 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %113 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %114 = bitcast { <2 x float>, float }* %vec3.coerce to i8*
  %115 = bitcast %struct.cie_cached_vector3_s* %vec3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 12, i32 0, i1 false)
  %116 = getelementptr { <2 x float>, float }, { <2 x float>, float }* %vec3.coerce, i32 0, i32 0
  %117 = load <2 x float>, <2 x float>* %116, align 1
  %118 = getelementptr { <2 x float>, float }, { <2 x float>, float }* %vec3.coerce, i32 0, i32 1
  %119 = load float, float* %118, align 1
  %call140 = call i32 %109(<2 x float> %117, float %119, i16* %110, float* %111, %struct.gs_imager_state_s* %112, %struct.gs_color_space_s* %113) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.138, %if.then.2, %if.then
  %120 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast %struct.cie_cached_vector3_s* %vec3 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %121) #1
  %122 = bitcast [3 x i16]* %abc to i8*
  call void @llvm.lifetime.end(i64 6, i8* %122) #1
  %123 = bitcast [3 x i32]* %hij to i8*
  call void @llvm.lifetime.end(i64 12, i8* %123) #1
  %124 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast %struct.gs_cie_def_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = load i32, i32* %retval
  ret i32 %126
}

; Function Attrs: nounwind uwtable
define i32 @gx_remap_CIEDEF(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs_in, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs_in.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %pcs_icc = alloca %struct.gs_color_space_s*, align 8
  %scale_pc = alloca %struct.gs_client_color_s, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs_in, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !40
  %0 = bitcast %struct.gs_color_space_s** %pcs_icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_client_color_s* %scale_pc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %5, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 4
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !41
  %cmp = icmp eq %struct.gs_color_space_s* %7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 0
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !43
  %call = call i32 @gx_ciedef_to_icc(%struct.gs_color_space_s** %pcs_icc, %struct.gs_color_space_s* %8, %struct.gs_memory_s* %11) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %12, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %call3 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gx_remap_CIEDEF, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 561, i32 1, i32 %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.5

if.else:                                          ; preds = %do.end
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent4 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 4
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent4, align 8, !tbaa !41
  store %struct.gs_color_space_s* %15, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 7
  %def = bitcast %union.anon* %params to %struct.gs_cie_def_s**
  %17 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !1
  %RangeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %17, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %call6 = call i32 @check_range(%struct.gs_range_s* %arrayidx, i32 3) #4
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 0
  %19 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !46
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %19, i32 0, i32 10
  %20 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !47
  %21 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %23 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %26 = load i32, i32* %select.addr, align 4, !tbaa !40
  %call8 = call i32 %20(%struct.gs_client_color_s* %21, %struct.gs_color_space_s* %22, %struct.gx_device_color_s* %23, %struct.gs_imager_state_s* %24, %struct.gx_device_s* %25, i32 %26) #4
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %27, i32 0, i32 7
  %def11 = bitcast %union.anon* %params10 to %struct.gs_cie_def_s**
  %28 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def11, align 8, !tbaa !1
  %RangeDEF12 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %28, i32 0, i32 6
  %ranges13 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges13, i32 0, i64 0
  %29 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  call void @rescale_input_color(%struct.gs_range_s* %arrayidx14, i32 3, %struct.gs_client_color_s* %29, %struct.gs_client_color_s* %scale_pc) #4
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %type15 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %30, i32 0, i32 0
  %31 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type15, align 8, !tbaa !46
  %remap_color16 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %31, i32 0, i32 10
  %32 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color16, align 8, !tbaa !47
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %34 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %37 = load i32, i32* %select.addr, align 4, !tbaa !40
  %call17 = call i32 %32(%struct.gs_client_color_s* %scale_pc, %struct.gs_color_space_s* %33, %struct.gx_device_color_s* %34, %struct.gs_imager_state_s* %35, %struct.gx_device_s* %36, i32 %37) #4
  store i32 %call17, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %38, 3
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %40, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %41 = load float, float* %arrayidx19, align 4, !tbaa !11
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %42 to i64
  %43 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %43, i32 0, i32 4
  %paint21 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 1
  %values22 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint21, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [64 x float], [64 x float]* %values22, i32 0, i64 %idxprom20
  store float %41, float* %arrayidx23, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %45, i32 0, i32 3
  store i32 1, i32* %ccolor_valid, align 4, !tbaa !49
  %46 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.7
  %47 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.gs_client_color_s* %scale_pc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %50) #1
  %51 = bitcast %struct.gs_color_space_s** %pcs_icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_ciedef_to_icc(%struct.gs_color_space_s** %ppcs_icc, %struct.gs_color_space_s* %pcs, %struct.gs_memory_s* %memory) #0 {
entry:
  %ppcs_icc.addr = alloca %struct.gs_color_space_s**, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %palt_cs = alloca %struct.gs_color_space_s*, align 8
  %abc_caches = alloca %struct.gx_cie_vector_cache_s*, align 8
  %lmn_caches = alloca %union.gx_cie_scalar_cache_s*, align 8
  %def_caches = alloca %union.gx_cie_scalar_cache_s*, align 8
  store %struct.gs_color_space_s** %ppcs_icc, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_color_space_s** %palt_cs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 3
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !56
  store %struct.gs_color_space_s* %3, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  %4 = bitcast %struct.gx_cie_vector_cache_s** %abc_caches to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 7
  %abc = bitcast %union.anon* %params to %struct.gs_cie_abc_s**
  %6 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %6, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.6, %struct.anon.6* %caches, i32 0, i32 1
  %caches1 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches1, i32 0, i64 0
  store %struct.gx_cie_vector_cache_s* %arrayidx, %struct.gx_cie_vector_cache_s** %abc_caches, align 8, !tbaa !1
  %7 = bitcast %union.gx_cie_scalar_cache_s** %lmn_caches to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 7
  %abc3 = bitcast %union.anon* %params2 to %struct.gs_cie_abc_s**
  %9 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc3, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %9, i32 0, i32 0
  %caches4 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon.1, %struct.anon.1* %caches4, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i64 0
  store %union.gx_cie_scalar_cache_s* %arrayidx5, %union.gx_cie_scalar_cache_s** %lmn_caches, align 8, !tbaa !1
  %10 = bitcast %union.gx_cie_scalar_cache_s** %def_caches to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 7
  %def = bitcast %union.anon* %params6 to %struct.gs_cie_def_s**
  %12 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !1
  %caches_def = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %12, i32 0, i32 10
  %DecodeDEF = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches_def, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF, i32 0, i64 0
  store %union.gx_cie_scalar_cache_s* %arrayidx7, %union.gx_cie_scalar_cache_s** %def_caches, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 0
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !43
  %call = call i32 @gs_cspace_build_ICC(%struct.gs_color_space_s** %13, i8* null, %struct.gs_memory_s* %15) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %call8 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gx_ciedef_to_icc, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 524, i32 1, i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  %19 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %19, align 8, !tbaa !1
  %base_space9 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %20, i32 0, i32 3
  store %struct.gs_color_space_s* %18, %struct.gs_color_space_s** %base_space9, align 8, !tbaa !56
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  call void @rc_increment_cs(%struct.gs_color_space_s* %21) #4
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call10 = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* null, %struct.gs_memory_s* %22, i8* null, i32 0) #4
  %23 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %23, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %24, i32 0, i32 6
  store %struct.cmm_profile_s* %call10, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !57
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %26 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %26, align 8, !tbaa !1
  %cmm_icc_profile_data11 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %27, i32 0, i32 6
  %28 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data11, align 8, !tbaa !57
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %28, i32 0, i32 14
  %29 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %29, align 8, !tbaa !1
  %cmm_icc_profile_data12 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %30, i32 0, i32 6
  %31 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data12, align 8, !tbaa !57
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %31, i32 0, i32 11
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %33 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches, align 8, !tbaa !1
  %34 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches, align 8, !tbaa !1
  %35 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %def_caches, align 8, !tbaa !1
  %call13 = call i32 @gsicc_create_fromdef(%struct.gs_color_space_s* %25, i8** %buffer, i32* %buffer_size, %struct.gs_memory_s* %32, %struct.gx_cie_vector_cache_s* %33, %union.gx_cie_scalar_cache_s* %34, %union.gx_cie_scalar_cache_s* %35) #4
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %36, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %call16 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gx_ciedef_to_icc, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 533, i32 1, i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0)) #4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end
  %38 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %39 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %38, align 8, !tbaa !1
  %cmm_icc_profile_data18 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %39, i32 0, i32 6
  %40 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data18, align 8, !tbaa !57
  call void @gsicc_init_profile_info(%struct.cmm_profile_s* %40) #4
  %41 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %42 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %41, align 8, !tbaa !1
  %cmm_icc_profile_data19 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %42, i32 0, i32 6
  %43 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data19, align 8, !tbaa !57
  %default_match = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %43, i32 0, i32 4
  store i32 15, i32* %default_match, align 4, !tbaa !58
  %44 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %45 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %44, align 8, !tbaa !1
  %46 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %46, i32 0, i32 4
  store %struct.gs_color_space_s* %45, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !41
  %47 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %icc_equivalent20 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %47, i32 0, i32 4
  %48 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent20, align 8, !tbaa !41
  %cmm_icc_profile_data21 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %48, i32 0, i32 6
  %49 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data21, align 8, !tbaa !57
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %49, i32 0, i32 5
  store i32 0, i32* %data_cs, align 4, !tbaa !62
  %50 = bitcast %union.gx_cie_scalar_cache_s** %def_caches to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast %union.gx_cie_scalar_cache_s** %lmn_caches to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast %struct.gx_cie_vector_cache_s** %abc_caches to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast %struct.gs_color_space_s** %palt_cs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_concretize_CIEDEF(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs_in, i16* %pconc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs_in.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %pcs_icc = alloca %struct.gs_color_space_s*, align 8
  %scale_pc = alloca %struct.gs_client_color_s, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs_in, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast %struct.gs_color_space_s** %pcs_icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gs_client_color_s* %scale_pc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %2) #1
  %3 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %4, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 4
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !41
  %cmp = icmp eq %struct.gs_color_space_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 0
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !43
  %call = call i32 @gx_ciedef_to_icc(%struct.gs_color_space_s** %pcs_icc, %struct.gs_color_space_s* %7, %struct.gs_memory_s* %10) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %11, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %call3 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gx_concretize_CIEDEF, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 600, i32 1, i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.5

if.else:                                          ; preds = %do.end
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent4 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 4
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent4, align 8, !tbaa !41
  store %struct.gs_color_space_s* %14, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 7
  %def = bitcast %union.anon* %params to %struct.gs_cie_def_s**
  %16 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !1
  %RangeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %16, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %call6 = call i32 @check_range(%struct.gs_range_s* %arrayidx, i32 3) #4
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 0
  %18 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !46
  %concretize_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %18, i32 0, i32 8
  %19 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color, align 8, !tbaa !63
  %20 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %22 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call8 = call i32 %19(%struct.gs_client_color_s* %20, %struct.gs_color_space_s* %21, i16* %22, %struct.gs_imager_state_s* %23, %struct.gx_device_s* %24) #4
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %25, i32 0, i32 7
  %def11 = bitcast %union.anon* %params10 to %struct.gs_cie_def_s**
  %26 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def11, align 8, !tbaa !1
  %RangeDEF12 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %26, i32 0, i32 6
  %ranges13 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges13, i32 0, i64 0
  %27 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  call void @rescale_input_color(%struct.gs_range_s* %arrayidx14, i32 3, %struct.gs_client_color_s* %27, %struct.gs_client_color_s* %scale_pc) #4
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %type15 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %28, i32 0, i32 0
  %29 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type15, align 8, !tbaa !46
  %concretize_color16 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %29, i32 0, i32 8
  %30 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color16, align 8, !tbaa !63
  %31 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %32 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call17 = call i32 %30(%struct.gs_client_color_s* %scale_pc, %struct.gs_color_space_s* %31, i16* %32, %struct.gs_imager_state_s* %33, %struct.gx_device_s* %34) #4
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.7
  %35 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct.gs_client_color_s* %scale_pc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %36) #1
  %37 = bitcast %struct.gs_color_space_s** %pcs_icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @gx_remap_CIEABC(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs_in, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs_in.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %pcs_icc = alloca %struct.gs_color_space_s*, align 8
  %scale_pc = alloca %struct.gs_client_color_s, align 8
  %islab = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs_in, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !40
  %0 = bitcast %struct.gs_color_space_s** %pcs_icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_client_color_s* %scale_pc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %1) #1
  %2 = bitcast i32* %islab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %6, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %7, i32 0, i32 4
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !41
  %cmp = icmp eq %struct.gs_color_space_s* %8, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 0
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !43
  %call = call i32 @gx_cieabc_to_icc(%struct.gs_color_space_s** %pcs_icc, %struct.gs_color_space_s* %9, i32* %islab, %struct.gs_memory_s* %12) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %13, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %call3 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gx_remap_CIEABC, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 671, i32 1, i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.5

if.else:                                          ; preds = %do.end
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent4 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 4
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent4, align 8, !tbaa !41
  store %struct.gs_color_space_s* %16, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 7
  %abc = bitcast %union.anon* %params to %struct.gs_cie_abc_s**
  %18 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  %RangeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %18, i32 0, i32 2
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %call6 = call i32 @check_range(%struct.gs_range_s* %arrayidx, i32 3) #4
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 0
  %20 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !46
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %20, i32 0, i32 10
  %21 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !47
  %22 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %24 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %27 = load i32, i32* %select.addr, align 4, !tbaa !40
  %call8 = call i32 %21(%struct.gs_client_color_s* %22, %struct.gs_color_space_s* %23, %struct.gx_device_color_s* %24, %struct.gs_imager_state_s* %25, %struct.gx_device_s* %26, i32 %27) #4
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %28, i32 0, i32 7
  %abc11 = bitcast %union.anon* %params10 to %struct.gs_cie_abc_s**
  %29 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc11, align 8, !tbaa !1
  %RangeABC12 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %29, i32 0, i32 2
  %ranges13 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges13, i32 0, i64 0
  %30 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  call void @rescale_input_color(%struct.gs_range_s* %arrayidx14, i32 3, %struct.gs_client_color_s* %30, %struct.gs_client_color_s* %scale_pc) #4
  %31 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %type15 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %31, i32 0, i32 0
  %32 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type15, align 8, !tbaa !46
  %remap_color16 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %32, i32 0, i32 10
  %33 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color16, align 8, !tbaa !47
  %34 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %35 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %36 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %38 = load i32, i32* %select.addr, align 4, !tbaa !40
  %call17 = call i32 %33(%struct.gs_client_color_s* %scale_pc, %struct.gs_color_space_s* %34, %struct.gx_device_color_s* %35, %struct.gs_imager_state_s* %36, %struct.gx_device_s* %37, i32 %38) #4
  store i32 %call17, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %39, 3
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %40 to i64
  %41 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %41, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %42 = load float, float* %arrayidx19, align 4, !tbaa !11
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %43 to i64
  %44 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %44, i32 0, i32 4
  %paint21 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 1
  %values22 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint21, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [64 x float], [64 x float]* %values22, i32 0, i64 %idxprom20
  store float %42, float* %arrayidx23, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %46, i32 0, i32 3
  store i32 1, i32* %ccolor_valid, align 4, !tbaa !49
  %47 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.7
  %48 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %islab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast %struct.gs_client_color_s* %scale_pc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %52) #1
  %53 = bitcast %struct.gs_color_space_s** %pcs_icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_cieabc_to_icc(%struct.gs_color_space_s** %ppcs_icc, %struct.gs_color_space_s* %pcs, i32* %islab, %struct.gs_memory_s* %memory) #0 {
entry:
  %ppcs_icc.addr = alloca %struct.gs_color_space_s**, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %islab.addr = alloca i32*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %palt_cs = alloca %struct.gs_color_space_s*, align 8
  %abc_caches = alloca %struct.gx_cie_vector_cache_s*, align 8
  %lmn_caches = alloca %union.gx_cie_scalar_cache_s*, align 8
  store %struct.gs_color_space_s** %ppcs_icc, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i32* %islab, i32** %islab.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_color_space_s** %palt_cs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 3
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !56
  store %struct.gs_color_space_s* %3, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  %4 = bitcast %struct.gx_cie_vector_cache_s** %abc_caches to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 7
  %abc = bitcast %union.anon* %params to %struct.gs_cie_abc_s**
  %6 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %6, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.6, %struct.anon.6* %caches, i32 0, i32 1
  %caches1 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches1, i32 0, i64 0
  store %struct.gx_cie_vector_cache_s* %arrayidx, %struct.gx_cie_vector_cache_s** %abc_caches, align 8, !tbaa !1
  %7 = bitcast %union.gx_cie_scalar_cache_s** %lmn_caches to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 7
  %abc3 = bitcast %union.anon* %params2 to %struct.gs_cie_abc_s**
  %9 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc3, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %9, i32 0, i32 0
  %caches4 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon.1, %struct.anon.1* %caches4, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i64 0
  store %union.gx_cie_scalar_cache_s* %arrayidx5, %union.gx_cie_scalar_cache_s** %lmn_caches, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i32 @gs_cspace_build_ICC(%struct.gs_color_space_s** %10, i8* null, %struct.gs_memory_s* %11) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %call6 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gx_cieabc_to_icc, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 630, i32 1, i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  %15 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %15, align 8, !tbaa !1
  %base_space7 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 3
  store %struct.gs_color_space_s* %14, %struct.gs_color_space_s** %base_space7, align 8, !tbaa !56
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  call void @rc_increment_cs(%struct.gs_color_space_s* %17) #4
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call8 = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* null, %struct.gs_memory_s* %18, i8* null, i32 0) #4
  %19 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %19, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %20, i32 0, i32 6
  store %struct.cmm_profile_s* %call8, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !57
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %22 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %22, align 8, !tbaa !1
  %cmm_icc_profile_data9 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 6
  %24 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data9, align 8, !tbaa !57
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %24, i32 0, i32 14
  %25 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %25, align 8, !tbaa !1
  %cmm_icc_profile_data10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %26, i32 0, i32 6
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data10, align 8, !tbaa !57
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %27, i32 0, i32 11
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %29 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches, align 8, !tbaa !1
  %30 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches, align 8, !tbaa !1
  %31 = load i32*, i32** %islab.addr, align 8, !tbaa !1
  %call11 = call i32 @gsicc_create_fromabc(%struct.gs_color_space_s* %21, i8** %buffer, i32* %buffer_size, %struct.gs_memory_s* %28, %struct.gx_cie_vector_cache_s* %29, %union.gx_cie_scalar_cache_s* %30, i32* %31) #4
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %32, 0
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %call14 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gx_cieabc_to_icc, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 639, i32 1, i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0)) #4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end
  %34 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %35 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %34, align 8, !tbaa !1
  %cmm_icc_profile_data16 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %35, i32 0, i32 6
  %36 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data16, align 8, !tbaa !57
  call void @gsicc_init_profile_info(%struct.cmm_profile_s* %36) #4
  %37 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %38 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %37, align 8, !tbaa !1
  %cmm_icc_profile_data17 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %38, i32 0, i32 6
  %39 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data17, align 8, !tbaa !57
  %default_match = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %39, i32 0, i32 4
  store i32 14, i32* %default_match, align 4, !tbaa !58
  %40 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %41 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %40, align 8, !tbaa !1
  %42 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %42, i32 0, i32 4
  store %struct.gs_color_space_s* %41, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !41
  %43 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %icc_equivalent18 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %43, i32 0, i32 4
  %44 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent18, align 8, !tbaa !41
  %cmm_icc_profile_data19 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %44, i32 0, i32 6
  %45 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data19, align 8, !tbaa !57
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %45, i32 0, i32 5
  store i32 2, i32* %data_cs, align 4, !tbaa !62
  %46 = bitcast %union.gx_cie_scalar_cache_s** %lmn_caches to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast %struct.gx_cie_vector_cache_s** %abc_caches to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.gs_color_space_s** %palt_cs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_concretize_CIEABC(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs_in, i16* %pconc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs_in.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcs_icc = alloca %struct.gs_color_space_s*, align 8
  %scale_pc = alloca %struct.gs_client_color_s, align 8
  %islab = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs_in, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs_icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_client_color_s* %scale_pc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %1) #1
  %2 = bitcast i32* %islab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %4, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %6, i32 0, i32 4
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !41
  %cmp = icmp eq %struct.gs_color_space_s* %7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 0
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !43
  %call = call i32 @gx_cieabc_to_icc(%struct.gs_color_space_s** %pcs_icc, %struct.gs_color_space_s* %8, i32* %islab, %struct.gs_memory_s* %11) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %12, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %call3 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gx_concretize_CIEABC, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 711, i32 1, i32 %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.5

if.else:                                          ; preds = %do.end
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent4 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 4
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent4, align 8, !tbaa !41
  store %struct.gs_color_space_s* %15, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 7
  %abc = bitcast %union.anon* %params to %struct.gs_cie_abc_s**
  %17 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  %RangeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %17, i32 0, i32 2
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %call6 = call i32 @check_range(%struct.gs_range_s* %arrayidx, i32 3) #4
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 0
  %19 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !46
  %concretize_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %19, i32 0, i32 8
  %20 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color, align 8, !tbaa !63
  %21 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %23 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call8 = call i32 %20(%struct.gs_client_color_s* %21, %struct.gs_color_space_s* %22, i16* %23, %struct.gs_imager_state_s* %24, %struct.gx_device_s* %25) #4
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %26, i32 0, i32 7
  %abc11 = bitcast %union.anon* %params10 to %struct.gs_cie_abc_s**
  %27 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc11, align 8, !tbaa !1
  %RangeABC12 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %27, i32 0, i32 2
  %ranges13 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges13, i32 0, i64 0
  %28 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  call void @rescale_input_color(%struct.gs_range_s* %arrayidx14, i32 3, %struct.gs_client_color_s* %28, %struct.gs_client_color_s* %scale_pc) #4
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %type15 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %29, i32 0, i32 0
  %30 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type15, align 8, !tbaa !46
  %concretize_color16 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %30, i32 0, i32 8
  %31 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color16, align 8, !tbaa !63
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %33 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call17 = call i32 %31(%struct.gs_client_color_s* %scale_pc, %struct.gs_color_space_s* %32, i16* %33, %struct.gs_imager_state_s* %34, %struct.gx_device_s* %35) #4
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.7
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32* %islab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.gs_client_color_s* %scale_pc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %39) #1
  %40 = bitcast %struct.gs_color_space_s** %pcs_icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i32 @gx_remap_CIEA(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs_in, %struct.gx_device_color_s* %pdc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs_in.addr = alloca %struct.gs_color_space_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %select.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %pcs_icc = alloca %struct.gs_color_space_s*, align 8
  %scale_pc = alloca %struct.gs_client_color_s, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs_in, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !40
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_color_space_s** %pcs_icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gs_client_color_s* %scale_pc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %2) #1
  %3 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %4, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 4
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !41
  %cmp = icmp eq %struct.gs_color_space_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 0
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !43
  %call = call i32 @gx_ciea_to_icc(%struct.gs_color_space_s** %pcs_icc, %struct.gs_color_space_s* %7, %struct.gs_memory_s* %10) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %11, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %call3 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gx_remap_CIEA, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 775, i32 1, i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.5

if.else:                                          ; preds = %do.end
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent4 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 4
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent4, align 8, !tbaa !41
  store %struct.gs_color_space_s* %14, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 7
  %a = bitcast %union.anon* %params to %struct.gs_cie_a_s**
  %16 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  %RangeA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %16, i32 0, i32 2
  %call6 = call i32 @check_range(%struct.gs_range_s* %RangeA, i32 1) #4
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 0
  %18 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !46
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %18, i32 0, i32 10
  %19 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !47
  %20 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %22 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %25 = load i32, i32* %select.addr, align 4, !tbaa !40
  %call8 = call i32 %19(%struct.gs_client_color_s* %20, %struct.gs_color_space_s* %21, %struct.gx_device_color_s* %22, %struct.gs_imager_state_s* %23, %struct.gx_device_s* %24, i32 %25) #4
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %26, i32 0, i32 7
  %a11 = bitcast %union.anon* %params10 to %struct.gs_cie_a_s**
  %27 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a11, align 8, !tbaa !1
  %RangeA12 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %27, i32 0, i32 2
  %28 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  call void @rescale_input_color(%struct.gs_range_s* %RangeA12, i32 1, %struct.gs_client_color_s* %28, %struct.gs_client_color_s* %scale_pc) #4
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %type13 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %29, i32 0, i32 0
  %30 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type13, align 8, !tbaa !46
  %remap_color14 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %30, i32 0, i32 10
  %31 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color14, align 8, !tbaa !47
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %33 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %36 = load i32, i32* %select.addr, align 4, !tbaa !40
  %call15 = call i32 %31(%struct.gs_client_color_s* %scale_pc, %struct.gs_color_space_s* %32, %struct.gx_device_color_s* %33, %struct.gs_imager_state_s* %34, %struct.gx_device_s* %35, i32 %36) #4
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %37 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %37, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %38 = load float, float* %arrayidx, align 4, !tbaa !11
  %39 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %39, i32 0, i32 4
  %paint16 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 1
  %values17 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint16, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [64 x float], [64 x float]* %values17, i32 0, i64 0
  store float %38, float* %arrayidx18, align 4, !tbaa !11
  %40 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %40, i32 0, i32 3
  store i32 1, i32* %ccolor_valid, align 4, !tbaa !49
  %41 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.7
  %42 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.gs_client_color_s* %scale_pc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %43) #1
  %44 = bitcast %struct.gs_color_space_s** %pcs_icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_ciea_to_icc(%struct.gs_color_space_s** %ppcs_icc, %struct.gs_color_space_s* %pcs, %struct.gs_memory_s* %memory) #0 {
entry:
  %ppcs_icc.addr = alloca %struct.gs_color_space_s**, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %palt_cs = alloca %struct.gs_color_space_s*, align 8
  %a_cache = alloca %struct.gx_cie_vector_cache_s*, align 8
  %lmn_caches = alloca %union.gx_cie_scalar_cache_s*, align 8
  store %struct.gs_color_space_s** %ppcs_icc, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_color_space_s** %palt_cs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %2, i32 0, i32 3
  %3 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !56
  store %struct.gs_color_space_s* %3, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  %4 = bitcast %struct.gx_cie_vector_cache_s** %a_cache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 7
  %a = bitcast %union.anon* %params to %struct.gs_cie_a_s**
  %6 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %6, i32 0, i32 5
  %DecodeA = getelementptr inbounds %struct.anon.7, %struct.anon.7* %caches, i32 0, i32 0
  store %struct.gx_cie_vector_cache_s* %DecodeA, %struct.gx_cie_vector_cache_s** %a_cache, align 8, !tbaa !1
  %7 = bitcast %union.gx_cie_scalar_cache_s** %lmn_caches to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 7
  %a2 = bitcast %union.anon* %params1 to %struct.gs_cie_a_s**
  %9 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a2, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %9, i32 0, i32 0
  %caches3 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon.1, %struct.anon.1* %caches3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i64 0
  store %union.gx_cie_scalar_cache_s* %arrayidx, %union.gx_cie_scalar_cache_s** %lmn_caches, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i32 @gs_cspace_build_ICC(%struct.gs_color_space_s** %10, i8* null, %struct.gs_memory_s* %11) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %call4 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gx_ciea_to_icc, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 740, i32 1, i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  %15 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %15, align 8, !tbaa !1
  %base_space5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 3
  store %struct.gs_color_space_s* %14, %struct.gs_color_space_s** %base_space5, align 8, !tbaa !56
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  call void @rc_increment_cs(%struct.gs_color_space_s* %17) #4
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call6 = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* null, %struct.gs_memory_s* %18, i8* null, i32 0) #4
  %19 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %19, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %20, i32 0, i32 6
  store %struct.cmm_profile_s* %call6, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !57
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %22 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %22, align 8, !tbaa !1
  %cmm_icc_profile_data7 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 6
  %24 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data7, align 8, !tbaa !57
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %24, i32 0, i32 14
  %25 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %25, align 8, !tbaa !1
  %cmm_icc_profile_data8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %26, i32 0, i32 6
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data8, align 8, !tbaa !57
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %27, i32 0, i32 11
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %29 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %a_cache, align 8, !tbaa !1
  %30 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches, align 8, !tbaa !1
  %call9 = call i32 @gsicc_create_froma(%struct.gs_color_space_s* %21, i8** %buffer, i32* %buffer_size, %struct.gs_memory_s* %28, %struct.gx_cie_vector_cache_s* %29, %union.gx_cie_scalar_cache_s* %30) #4
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %31, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %call12 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gx_ciea_to_icc, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 749, i32 1, i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0)) #4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  %33 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %34 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %33, align 8, !tbaa !1
  %cmm_icc_profile_data14 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %34, i32 0, i32 6
  %35 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data14, align 8, !tbaa !57
  call void @gsicc_init_profile_info(%struct.cmm_profile_s* %35) #4
  %36 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %37 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %36, align 8, !tbaa !1
  %cmm_icc_profile_data15 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %37, i32 0, i32 6
  %38 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data15, align 8, !tbaa !57
  %default_match = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %38, i32 0, i32 4
  store i32 13, i32* %default_match, align 4, !tbaa !58
  %39 = load %struct.gs_color_space_s**, %struct.gs_color_space_s*** %ppcs_icc.addr, align 8, !tbaa !1
  %40 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %39, align 8, !tbaa !1
  %41 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %41, i32 0, i32 4
  store %struct.gs_color_space_s* %40, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !41
  %42 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %icc_equivalent16 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %42, i32 0, i32 4
  %43 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent16, align 8, !tbaa !41
  %cmm_icc_profile_data17 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %43, i32 0, i32 6
  %44 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data17, align 8, !tbaa !57
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %44, i32 0, i32 5
  store i32 1, i32* %data_cs, align 4, !tbaa !62
  %45 = bitcast %union.gx_cie_scalar_cache_s** %lmn_caches to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %struct.gx_cie_vector_cache_s** %a_cache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast %struct.gs_color_space_s** %palt_cs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_concretize_CIEA(%struct.gs_client_color_s* %pc, %struct.gs_color_space_s* %pcs_in, i16* %pconc, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %pc.addr = alloca %struct.gs_client_color_s*, align 8
  %pcs_in.addr = alloca %struct.gs_color_space_s*, align 8
  %pconc.addr = alloca i16*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %pcs_icc = alloca %struct.gs_color_space_s*, align 8
  %scale_pc = alloca %struct.gs_client_color_s, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_client_color_s* %pc, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs_in, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast %struct.gs_color_space_s** %pcs_icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gs_client_color_s* %scale_pc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %2) #1
  %3 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_in.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %4, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %5, i32 0, i32 4
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !41
  %cmp = icmp eq %struct.gs_color_space_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !42
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 0
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !43
  %call = call i32 @gx_ciea_to_icc(%struct.gs_color_space_s** %pcs_icc, %struct.gs_color_space_s* %7, %struct.gs_memory_s* %10) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %11, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %call3 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gx_concretize_CIEA, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 812, i32 1, i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.5

if.else:                                          ; preds = %do.end
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent4 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 4
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent4, align 8, !tbaa !41
  store %struct.gs_color_space_s* %14, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %15, i32 0, i32 7
  %a = bitcast %union.anon* %params to %struct.gs_cie_a_s**
  %16 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  %RangeA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %16, i32 0, i32 2
  %call6 = call i32 @check_range(%struct.gs_range_s* %RangeA, i32 1) #4
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %17, i32 0, i32 0
  %18 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !46
  %concretize_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %18, i32 0, i32 8
  %19 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color, align 8, !tbaa !63
  %20 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %22 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call8 = call i32 %19(%struct.gs_client_color_s* %20, %struct.gs_color_space_s* %21, i16* %22, %struct.gs_imager_state_s* %23, %struct.gx_device_s* %24) #4
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %25, i32 0, i32 7
  %a11 = bitcast %union.anon* %params10 to %struct.gs_cie_a_s**
  %26 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a11, align 8, !tbaa !1
  %RangeA12 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %26, i32 0, i32 2
  %27 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pc.addr, align 8, !tbaa !1
  call void @rescale_input_color(%struct.gs_range_s* %RangeA12, i32 1, %struct.gs_client_color_s* %27, %struct.gs_client_color_s* %scale_pc) #4
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %type13 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %28, i32 0, i32 0
  %29 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type13, align 8, !tbaa !46
  %concretize_color14 = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %29, i32 0, i32 8
  %30 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)** %concretize_color14, align 8, !tbaa !63
  %31 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs_icc, align 8, !tbaa !1
  %32 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call15 = call i32 %30(%struct.gs_client_color_s* %scale_pc, %struct.gs_color_space_s* %31, i16* %32, %struct.gs_imager_state_s* %33, %struct.gx_device_s* %34) #4
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.7
  %35 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct.gs_client_color_s* %scale_pc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %36) #1
  %37 = bitcast %struct.gs_color_space_s** %pcs_icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s* %pcs, i32* %islab, %struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %islab.addr = alloca i32*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %color_space_index = alloca i32, align 4
  %picc_cs = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i32* %islab, i32** %islab.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %color_space_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %1) #4
  store i32 %call, i32* %color_space_index, align 4, !tbaa !40
  %2 = bitcast %struct.gs_color_space_s** %picc_cs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32*, i32** %islab.addr, align 8, !tbaa !1
  store i32 0, i32* %3, align 4, !tbaa !5
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %4, i32 0, i32 4
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !41
  %cmp = icmp ne %struct.gs_color_space_s* %5, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %6) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, i32* %color_space_index, align 4, !tbaa !40
  switch i32 %7, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb.3
    i32 7, label %sw.bb.6
    i32 8, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.end
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 0
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !43
  %call2 = call i32 @gx_ciedefg_to_icc(%struct.gs_color_space_s** %picc_cs, %struct.gs_color_space_s* %8, %struct.gs_memory_s* %10) #4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 0
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory4, align 8, !tbaa !43
  %call5 = call i32 @gx_ciedef_to_icc(%struct.gs_color_space_s** %picc_cs, %struct.gs_color_space_s* %11, %struct.gs_memory_s* %13) #4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %15 = load i32*, i32** %islab.addr, align 8, !tbaa !1
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 0
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory7, align 8, !tbaa !43
  %call8 = call i32 @gx_cieabc_to_icc(%struct.gs_color_space_s** %picc_cs, %struct.gs_color_space_s* %14, i32* %15, %struct.gs_memory_s* %17) #4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 0
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory10, align 8, !tbaa !43
  %call11 = call i32 @gx_ciea_to_icc(%struct.gs_color_space_s** %picc_cs, %struct.gs_color_space_s* %18, %struct.gs_memory_s* %20) #4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.9, %sw.bb.6, %sw.bb.3, %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %21 = bitcast %struct.gs_color_space_s** %picc_cs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i32* %color_space_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_cie_remap_finish(<2 x float> %vec3.coerce0, float %vec3.coerce1, i16* %pconc, float* %cie_xyz, %struct.gs_imager_state_s* %pis, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %vec3 = alloca %struct.cie_cached_vector3_s, align 8
  %coerce = alloca { <2 x float>, float }, align 8
  %pconc.addr = alloca i16*, align 8
  %cie_xyz.addr = alloca float*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %vec3.coerce = alloca { <2 x float>, float }
  %0 = getelementptr { <2 x float>, float }, { <2 x float>, float }* %coerce, i32 0, i32 0
  store <2 x float> %vec3.coerce0, <2 x float>* %0
  %1 = getelementptr { <2 x float>, float }, { <2 x float>, float }* %coerce, i32 0, i32 1
  store float %vec3.coerce1, float* %1
  %2 = bitcast %struct.cie_cached_vector3_s* %vec3 to i8*
  %3 = bitcast { <2 x float>, float }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 12, i32 8, i1 false)
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store float* %cie_xyz, float** %cie_xyz.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 48
  %5 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !29
  %remap_finish = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %5, i32 0, i32 5
  %6 = load i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)** %remap_finish, align 8, !tbaa !79
  %7 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %8 = load float*, float** %cie_xyz.addr, align 8, !tbaa !1
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %11 = bitcast { <2 x float>, float }* %vec3.coerce to i8*
  %12 = bitcast %struct.cie_cached_vector3_s* %vec3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 12, i32 0, i1 false)
  %13 = getelementptr { <2 x float>, float }, { <2 x float>, float }* %vec3.coerce, i32 0, i32 0
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = getelementptr { <2 x float>, float }, { <2 x float>, float }* %vec3.coerce, i32 0, i32 1
  %16 = load float, float* %15, align 1
  %call = call i32 %6(<2 x float> %14, float %16, i16* %7, float* %8, %struct.gs_imager_state_s* %9, %struct.gs_color_space_s* %10) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_cie_real_remap_finish(<2 x float> %vec3.coerce0, float %vec3.coerce1, i16* %pconc, float* %xyz, %struct.gs_imager_state_s* %pis, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %retval = alloca i32, align 4
  %vec3 = alloca %struct.cie_cached_vector3_s, align 8
  %coerce = alloca { <2 x float>, float }, align 8
  %pconc.addr = alloca i16*, align 8
  %xyz.addr = alloca float*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pcrd = alloca %struct.gs_cie_render_s*, align 8
  %pjc = alloca %struct.gx_cie_joint_caches_s*, align 8
  %table = alloca %struct.gs_const_string_s*, align 8
  %tabc = alloca [3 x i32], align 4
  %cleanup.dest.slot = alloca i32
  %m = alloca i32, align 4
  %rfix = alloca [3 x i32], align 4
  %s = alloca i32, align 4
  %0 = getelementptr { <2 x float>, float }, { <2 x float>, float }* %coerce, i32 0, i32 0
  store <2 x float> %vec3.coerce0, <2 x float>* %0
  %1 = getelementptr { <2 x float>, float }, { <2 x float>, float }* %coerce, i32 0, i32 1
  store float %vec3.coerce1, float* %1
  %2 = bitcast %struct.cie_cached_vector3_s* %vec3 to i8*
  %3 = bitcast { <2 x float>, float }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 12, i32 8, i1 false)
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store float* %xyz, float** %xyz.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_render = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %5, i32 0, i32 42
  %6 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %cie_render, align 8, !tbaa !12
  store %struct.gs_cie_render_s* %6, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %7 = bitcast %struct.gx_cie_joint_caches_s** %pjc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %8, i32 0, i32 48
  %9 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !29
  store %struct.gx_cie_joint_caches_s* %9, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %10 = bitcast %struct.gs_const_string_s** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %RenderTable = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %11, i32 0, i32 14
  %lookup = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable, i32 0, i32 0
  %table1 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup, i32 0, i32 3
  %12 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table1, align 8, !tbaa !85
  store %struct.gs_const_string_s* %12, %struct.gs_const_string_s** %table, align 8, !tbaa !1
  %13 = bitcast [3 x i32]* %tabc to i8*
  call void @llvm.lifetime.start(i64 12, i8* %13) #1
  %14 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %skipDecodeLMN = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %14, i32 0, i32 7
  %15 = load i32, i32* %skipDecodeLMN, align 4, !tbaa !97
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %16 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %DecodeLMN = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %16, i32 0, i32 8
  call void @cie_lookup_mult3(%struct.cie_cached_vector3_s* %vec3, %struct.gx_cie_vector_cache3_s* %DecodeLMN) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %skipPQR = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %17, i32 0, i32 10
  %18 = load i32, i32* %skipPQR, align 4, !tbaa !98
  %tobool2 = icmp ne i32 %18, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %19 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %TransformPQR = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %19, i32 0, i32 11
  call void @cie_lookup_mult3(%struct.cie_cached_vector3_s* %vec3, %struct.gx_cie_vector_cache3_s* %TransformPQR) #4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %20 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %skipEncodeLMN = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %20, i32 0, i32 12
  %21 = load i32, i32* %skipEncodeLMN, align 4, !tbaa !99
  %tobool5 = icmp ne i32 %21, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  %22 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %22, i32 0, i32 22
  %EncodeLMN = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches, i32 0, i32 0
  call void @cie_lookup_mult3(%struct.cie_cached_vector3_s* %vec3, %struct.gx_cie_vector_cache3_s* %EncodeLMN) #4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %u = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vec3, i32 0, i32 0
  %23 = load float, float* %u, align 4, !tbaa !78
  %24 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %EncodeABC_base = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %24, i32 0, i32 18
  %arrayidx = getelementptr inbounds [3 x float], [3 x float]* %EncodeABC_base, i32 0, i64 0
  %25 = load float, float* %arrayidx, align 4, !tbaa !11
  %sub = fsub float %23, %25
  %mul = fmul float %sub, 1.024000e+03
  %conv = fptosi float %mul to i32
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 0
  store i32 %conv, i32* %arrayidx8, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 0
  %26 = load i32, i32* %arrayidx9, align 4, !tbaa !5
  %cmp = icmp ugt i32 %26, 523264
  br i1 %cmp, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %do.body
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 0
  %27 = load i32, i32* %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %27, 0
  %cond = select i1 %cmp13, i32 0, i32 523264
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 0
  store i32 %cond, i32* %arrayidx15, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.16
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.17

do.body.17:                                       ; preds = %do.end
  %v = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vec3, i32 0, i32 1
  %28 = load float, float* %v, align 4, !tbaa !77
  %29 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %EncodeABC_base18 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %29, i32 0, i32 18
  %arrayidx19 = getelementptr inbounds [3 x float], [3 x float]* %EncodeABC_base18, i32 0, i64 1
  %30 = load float, float* %arrayidx19, align 4, !tbaa !11
  %sub20 = fsub float %28, %30
  %mul21 = fmul float %sub20, 1.024000e+03
  %conv22 = fptosi float %mul21 to i32
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 1
  store i32 %conv22, i32* %arrayidx23, align 4, !tbaa !5
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 1
  %31 = load i32, i32* %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp ugt i32 %31, 523264
  br i1 %cmp25, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %do.body.17
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 1
  %32 = load i32, i32* %arrayidx28, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %32, 0
  %cond31 = select i1 %cmp29, i32 0, i32 523264
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 1
  store i32 %cond31, i32* %arrayidx32, align 4, !tbaa !5
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.27, %do.body.17
  br label %do.cond.34

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35

do.end.35:                                        ; preds = %do.cond.34
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.35
  %w = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vec3, i32 0, i32 2
  %33 = load float, float* %w, align 4, !tbaa !75
  %34 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %EncodeABC_base37 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %34, i32 0, i32 18
  %arrayidx38 = getelementptr inbounds [3 x float], [3 x float]* %EncodeABC_base37, i32 0, i64 2
  %35 = load float, float* %arrayidx38, align 4, !tbaa !11
  %sub39 = fsub float %33, %35
  %mul40 = fmul float %sub39, 1.024000e+03
  %conv41 = fptosi float %mul40 to i32
  %arrayidx42 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 2
  store i32 %conv41, i32* %arrayidx42, align 4, !tbaa !5
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 2
  %36 = load i32, i32* %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp ugt i32 %36, 523264
  br i1 %cmp44, label %if.then.46, label %if.end.52

if.then.46:                                       ; preds = %do.body.36
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 2
  %37 = load i32, i32* %arrayidx47, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %37, 0
  %cond50 = select i1 %cmp48, i32 0, i32 523264
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 2
  store i32 %cond50, i32* %arrayidx51, align 4, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.46, %do.body.36
  br label %do.cond.53

do.cond.53:                                       ; preds = %if.end.52
  br label %do.end.54

do.end.54:                                        ; preds = %do.cond.53
  %38 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !1
  %cmp55 = icmp eq %struct.gs_const_string_s* %38, null
  br i1 %cmp55, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %do.end.54
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 0
  %39 = load i32, i32* %arrayidx58, align 4, !tbaa !5
  %cmp59 = icmp sge i32 %39, 523264
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.57
  %40 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches61 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %40, i32 0, i32 22
  %EncodeABC = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches61, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC, i32 0, i64 0
  %fixeds = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx62, i32 0, i32 1
  %fracs = bitcast %union.if_* %fixeds to %struct.cie_cache_fracs_s*
  %values = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [512 x i16], [512 x i16]* %values, i32 0, i64 511
  %41 = load i16, i16* %arrayidx63, align 2, !tbaa !28
  %conv64 = sext i16 %41 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.57
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 0
  %42 = load i32, i32* %arrayidx65, align 4, !tbaa !5
  %shr = ashr i32 %42, 10
  %idxprom = sext i32 %shr to i64
  %43 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches66 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %43, i32 0, i32 22
  %EncodeABC67 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches66, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC67, i32 0, i64 0
  %fixeds69 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx68, i32 0, i32 1
  %fracs70 = bitcast %union.if_* %fixeds69 to %struct.cie_cache_fracs_s*
  %values71 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs70, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [512 x i16], [512 x i16]* %values71, i32 0, i64 %idxprom
  %44 = load i16, i16* %arrayidx72, align 2, !tbaa !28
  %conv73 = sext i16 %44 to i32
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 0
  %45 = load i32, i32* %arrayidx74, align 4, !tbaa !5
  %shr75 = ashr i32 %45, 10
  %add = add nsw i32 %shr75, 1
  %idxprom76 = sext i32 %add to i64
  %46 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches77 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %46, i32 0, i32 22
  %EncodeABC78 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches77, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC78, i32 0, i64 0
  %fixeds80 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx79, i32 0, i32 1
  %fracs81 = bitcast %union.if_* %fixeds80 to %struct.cie_cache_fracs_s*
  %values82 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs81, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [512 x i16], [512 x i16]* %values82, i32 0, i64 %idxprom76
  %47 = load i16, i16* %arrayidx83, align 2, !tbaa !28
  %conv84 = sext i16 %47 to i32
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 0
  %48 = load i32, i32* %arrayidx85, align 4, !tbaa !5
  %shr86 = ashr i32 %48, 10
  %idxprom87 = sext i32 %shr86 to i64
  %49 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches88 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %49, i32 0, i32 22
  %EncodeABC89 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches88, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC89, i32 0, i64 0
  %fixeds91 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx90, i32 0, i32 1
  %fracs92 = bitcast %union.if_* %fixeds91 to %struct.cie_cache_fracs_s*
  %values93 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs92, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [512 x i16], [512 x i16]* %values93, i32 0, i64 %idxprom87
  %50 = load i16, i16* %arrayidx94, align 2, !tbaa !28
  %conv95 = sext i16 %50 to i32
  %sub96 = sub nsw i32 %conv84, %conv95
  %conv97 = sext i32 %sub96 to i64
  %arrayidx98 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 0
  %51 = load i32, i32* %arrayidx98, align 4, !tbaa !5
  %and = and i32 %51, 1023
  %conv99 = sext i32 %and to i64
  %mul100 = mul nsw i64 %conv97, %conv99
  %shr101 = ashr i64 %mul100, 10
  %conv102 = trunc i64 %shr101 to i16
  %conv103 = sext i16 %conv102 to i32
  %add104 = add nsw i32 %conv73, %conv103
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond105 = phi i32 [ %conv64, %cond.true ], [ %add104, %cond.false ]
  %conv106 = trunc i32 %cond105 to i16
  %52 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i16, i16* %52, i64 0
  store i16 %conv106, i16* %arrayidx107, align 2, !tbaa !28
  %arrayidx108 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 1
  %53 = load i32, i32* %arrayidx108, align 4, !tbaa !5
  %cmp109 = icmp sge i32 %53, 523264
  br i1 %cmp109, label %cond.true.111, label %cond.false.120

cond.true.111:                                    ; preds = %cond.end
  %54 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches112 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %54, i32 0, i32 22
  %EncodeABC113 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches112, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC113, i32 0, i64 1
  %fixeds115 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx114, i32 0, i32 1
  %fracs116 = bitcast %union.if_* %fixeds115 to %struct.cie_cache_fracs_s*
  %values117 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs116, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [512 x i16], [512 x i16]* %values117, i32 0, i64 511
  %55 = load i16, i16* %arrayidx118, align 2, !tbaa !28
  %conv119 = sext i16 %55 to i32
  br label %cond.end.165

cond.false.120:                                   ; preds = %cond.end
  %arrayidx121 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 1
  %56 = load i32, i32* %arrayidx121, align 4, !tbaa !5
  %shr122 = ashr i32 %56, 10
  %idxprom123 = sext i32 %shr122 to i64
  %57 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches124 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %57, i32 0, i32 22
  %EncodeABC125 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches124, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC125, i32 0, i64 1
  %fixeds127 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx126, i32 0, i32 1
  %fracs128 = bitcast %union.if_* %fixeds127 to %struct.cie_cache_fracs_s*
  %values129 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs128, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [512 x i16], [512 x i16]* %values129, i32 0, i64 %idxprom123
  %58 = load i16, i16* %arrayidx130, align 2, !tbaa !28
  %conv131 = sext i16 %58 to i32
  %arrayidx132 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 1
  %59 = load i32, i32* %arrayidx132, align 4, !tbaa !5
  %shr133 = ashr i32 %59, 10
  %add134 = add nsw i32 %shr133, 1
  %idxprom135 = sext i32 %add134 to i64
  %60 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches136 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %60, i32 0, i32 22
  %EncodeABC137 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches136, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC137, i32 0, i64 1
  %fixeds139 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx138, i32 0, i32 1
  %fracs140 = bitcast %union.if_* %fixeds139 to %struct.cie_cache_fracs_s*
  %values141 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs140, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [512 x i16], [512 x i16]* %values141, i32 0, i64 %idxprom135
  %61 = load i16, i16* %arrayidx142, align 2, !tbaa !28
  %conv143 = sext i16 %61 to i32
  %arrayidx144 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 1
  %62 = load i32, i32* %arrayidx144, align 4, !tbaa !5
  %shr145 = ashr i32 %62, 10
  %idxprom146 = sext i32 %shr145 to i64
  %63 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches147 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %63, i32 0, i32 22
  %EncodeABC148 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches147, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC148, i32 0, i64 1
  %fixeds150 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx149, i32 0, i32 1
  %fracs151 = bitcast %union.if_* %fixeds150 to %struct.cie_cache_fracs_s*
  %values152 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs151, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [512 x i16], [512 x i16]* %values152, i32 0, i64 %idxprom146
  %64 = load i16, i16* %arrayidx153, align 2, !tbaa !28
  %conv154 = sext i16 %64 to i32
  %sub155 = sub nsw i32 %conv143, %conv154
  %conv156 = sext i32 %sub155 to i64
  %arrayidx157 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 1
  %65 = load i32, i32* %arrayidx157, align 4, !tbaa !5
  %and158 = and i32 %65, 1023
  %conv159 = sext i32 %and158 to i64
  %mul160 = mul nsw i64 %conv156, %conv159
  %shr161 = ashr i64 %mul160, 10
  %conv162 = trunc i64 %shr161 to i16
  %conv163 = sext i16 %conv162 to i32
  %add164 = add nsw i32 %conv131, %conv163
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.120, %cond.true.111
  %cond166 = phi i32 [ %conv119, %cond.true.111 ], [ %add164, %cond.false.120 ]
  %conv167 = trunc i32 %cond166 to i16
  %66 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds i16, i16* %66, i64 1
  store i16 %conv167, i16* %arrayidx168, align 2, !tbaa !28
  %arrayidx169 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 2
  %67 = load i32, i32* %arrayidx169, align 4, !tbaa !5
  %cmp170 = icmp sge i32 %67, 523264
  br i1 %cmp170, label %cond.true.172, label %cond.false.181

cond.true.172:                                    ; preds = %cond.end.165
  %68 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches173 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %68, i32 0, i32 22
  %EncodeABC174 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches173, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC174, i32 0, i64 2
  %fixeds176 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx175, i32 0, i32 1
  %fracs177 = bitcast %union.if_* %fixeds176 to %struct.cie_cache_fracs_s*
  %values178 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs177, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [512 x i16], [512 x i16]* %values178, i32 0, i64 511
  %69 = load i16, i16* %arrayidx179, align 2, !tbaa !28
  %conv180 = sext i16 %69 to i32
  br label %cond.end.226

cond.false.181:                                   ; preds = %cond.end.165
  %arrayidx182 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 2
  %70 = load i32, i32* %arrayidx182, align 4, !tbaa !5
  %shr183 = ashr i32 %70, 10
  %idxprom184 = sext i32 %shr183 to i64
  %71 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches185 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %71, i32 0, i32 22
  %EncodeABC186 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches185, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC186, i32 0, i64 2
  %fixeds188 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx187, i32 0, i32 1
  %fracs189 = bitcast %union.if_* %fixeds188 to %struct.cie_cache_fracs_s*
  %values190 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs189, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [512 x i16], [512 x i16]* %values190, i32 0, i64 %idxprom184
  %72 = load i16, i16* %arrayidx191, align 2, !tbaa !28
  %conv192 = sext i16 %72 to i32
  %arrayidx193 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 2
  %73 = load i32, i32* %arrayidx193, align 4, !tbaa !5
  %shr194 = ashr i32 %73, 10
  %add195 = add nsw i32 %shr194, 1
  %idxprom196 = sext i32 %add195 to i64
  %74 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches197 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %74, i32 0, i32 22
  %EncodeABC198 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches197, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC198, i32 0, i64 2
  %fixeds200 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx199, i32 0, i32 1
  %fracs201 = bitcast %union.if_* %fixeds200 to %struct.cie_cache_fracs_s*
  %values202 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs201, i32 0, i32 1
  %arrayidx203 = getelementptr inbounds [512 x i16], [512 x i16]* %values202, i32 0, i64 %idxprom196
  %75 = load i16, i16* %arrayidx203, align 2, !tbaa !28
  %conv204 = sext i16 %75 to i32
  %arrayidx205 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 2
  %76 = load i32, i32* %arrayidx205, align 4, !tbaa !5
  %shr206 = ashr i32 %76, 10
  %idxprom207 = sext i32 %shr206 to i64
  %77 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches208 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %77, i32 0, i32 22
  %EncodeABC209 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches208, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC209, i32 0, i64 2
  %fixeds211 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx210, i32 0, i32 1
  %fracs212 = bitcast %union.if_* %fixeds211 to %struct.cie_cache_fracs_s*
  %values213 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs212, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [512 x i16], [512 x i16]* %values213, i32 0, i64 %idxprom207
  %78 = load i16, i16* %arrayidx214, align 2, !tbaa !28
  %conv215 = sext i16 %78 to i32
  %sub216 = sub nsw i32 %conv204, %conv215
  %conv217 = sext i32 %sub216 to i64
  %arrayidx218 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 2
  %79 = load i32, i32* %arrayidx218, align 4, !tbaa !5
  %and219 = and i32 %79, 1023
  %conv220 = sext i32 %and219 to i64
  %mul221 = mul nsw i64 %conv217, %conv220
  %shr222 = ashr i64 %mul221, 10
  %conv223 = trunc i64 %shr222 to i16
  %conv224 = sext i16 %conv223 to i32
  %add225 = add nsw i32 %conv192, %conv224
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.false.181, %cond.true.172
  %cond227 = phi i32 [ %conv180, %cond.true.172 ], [ %add225, %cond.false.181 ]
  %conv228 = trunc i32 %cond227 to i16
  %80 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds i16, i16* %80, i64 2
  store i16 %conv228, i16* %arrayidx229, align 2, !tbaa !28
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.end.54
  %81 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %RenderTable230 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %82, i32 0, i32 14
  %lookup231 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable230, i32 0, i32 0
  %m232 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup231, i32 0, i32 2
  %83 = load i32, i32* %m232, align 4, !tbaa !100
  store i32 %83, i32* %m, align 4, !tbaa !5
  %84 = bitcast [3 x i32]* %rfix to i8*
  call void @llvm.lifetime.start(i64 12, i8* %84) #1
  %85 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #1
  store i32 -2, i32* %s, align 4, !tbaa !5
  %arrayidx233 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 0
  %86 = load i32, i32* %arrayidx233, align 4, !tbaa !5
  %cmp234 = icmp sge i32 %86, 523264
  br i1 %cmp234, label %cond.true.236, label %cond.false.243

cond.true.236:                                    ; preds = %if.else
  %87 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches237 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %87, i32 0, i32 22
  %EncodeABC238 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches237, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC238, i32 0, i64 0
  %fixeds240 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx239, i32 0, i32 1
  %ints = bitcast %union.if_* %fixeds240 to %struct.cie_cache_ints_s*
  %values241 = getelementptr inbounds %struct.cie_cache_ints_s, %struct.cie_cache_ints_s* %ints, i32 0, i32 1
  %arrayidx242 = getelementptr inbounds [512 x i32], [512 x i32]* %values241, i32 0, i64 511
  %88 = load i32, i32* %arrayidx242, align 4, !tbaa !5
  br label %cond.end.285

cond.false.243:                                   ; preds = %if.else
  %arrayidx244 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 0
  %89 = load i32, i32* %arrayidx244, align 4, !tbaa !5
  %shr245 = ashr i32 %89, 10
  %idxprom246 = sext i32 %shr245 to i64
  %90 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches247 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %90, i32 0, i32 22
  %EncodeABC248 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches247, i32 0, i32 1
  %arrayidx249 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC248, i32 0, i64 0
  %fixeds250 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx249, i32 0, i32 1
  %ints251 = bitcast %union.if_* %fixeds250 to %struct.cie_cache_ints_s*
  %values252 = getelementptr inbounds %struct.cie_cache_ints_s, %struct.cie_cache_ints_s* %ints251, i32 0, i32 1
  %arrayidx253 = getelementptr inbounds [512 x i32], [512 x i32]* %values252, i32 0, i64 %idxprom246
  %91 = load i32, i32* %arrayidx253, align 4, !tbaa !5
  %arrayidx254 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 0
  %92 = load i32, i32* %arrayidx254, align 4, !tbaa !5
  %shr255 = ashr i32 %92, 10
  %add256 = add nsw i32 %shr255, 1
  %idxprom257 = sext i32 %add256 to i64
  %93 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches258 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %93, i32 0, i32 22
  %EncodeABC259 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches258, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC259, i32 0, i64 0
  %fixeds261 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx260, i32 0, i32 1
  %ints262 = bitcast %union.if_* %fixeds261 to %struct.cie_cache_ints_s*
  %values263 = getelementptr inbounds %struct.cie_cache_ints_s, %struct.cie_cache_ints_s* %ints262, i32 0, i32 1
  %arrayidx264 = getelementptr inbounds [512 x i32], [512 x i32]* %values263, i32 0, i64 %idxprom257
  %94 = load i32, i32* %arrayidx264, align 4, !tbaa !5
  %arrayidx265 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 0
  %95 = load i32, i32* %arrayidx265, align 4, !tbaa !5
  %shr266 = ashr i32 %95, 10
  %idxprom267 = sext i32 %shr266 to i64
  %96 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches268 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %96, i32 0, i32 22
  %EncodeABC269 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches268, i32 0, i32 1
  %arrayidx270 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC269, i32 0, i64 0
  %fixeds271 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx270, i32 0, i32 1
  %ints272 = bitcast %union.if_* %fixeds271 to %struct.cie_cache_ints_s*
  %values273 = getelementptr inbounds %struct.cie_cache_ints_s, %struct.cie_cache_ints_s* %ints272, i32 0, i32 1
  %arrayidx274 = getelementptr inbounds [512 x i32], [512 x i32]* %values273, i32 0, i64 %idxprom267
  %97 = load i32, i32* %arrayidx274, align 4, !tbaa !5
  %sub275 = sub nsw i32 %94, %97
  %conv276 = sext i32 %sub275 to i64
  %arrayidx277 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 0
  %98 = load i32, i32* %arrayidx277, align 4, !tbaa !5
  %and278 = and i32 %98, 1023
  %conv279 = sext i32 %and278 to i64
  %mul280 = mul nsw i64 %conv276, %conv279
  %shr281 = ashr i64 %mul280, 10
  %conv282 = trunc i64 %shr281 to i16
  %conv283 = sext i16 %conv282 to i32
  %add284 = add nsw i32 %91, %conv283
  br label %cond.end.285

cond.end.285:                                     ; preds = %cond.false.243, %cond.true.236
  %cond286 = phi i32 [ %88, %cond.true.236 ], [ %add284, %cond.false.243 ]
  %shr287 = ashr i32 %cond286, 2
  %arrayidx288 = getelementptr inbounds [3 x i32], [3 x i32]* %rfix, i32 0, i64 0
  store i32 %shr287, i32* %arrayidx288, align 4, !tbaa !5
  %arrayidx289 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 1
  %99 = load i32, i32* %arrayidx289, align 4, !tbaa !5
  %cmp290 = icmp sge i32 %99, 523264
  br i1 %cmp290, label %cond.true.292, label %cond.false.300

cond.true.292:                                    ; preds = %cond.end.285
  %100 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches293 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %100, i32 0, i32 22
  %EncodeABC294 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches293, i32 0, i32 1
  %arrayidx295 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC294, i32 0, i64 1
  %fixeds296 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx295, i32 0, i32 1
  %ints297 = bitcast %union.if_* %fixeds296 to %struct.cie_cache_ints_s*
  %values298 = getelementptr inbounds %struct.cie_cache_ints_s, %struct.cie_cache_ints_s* %ints297, i32 0, i32 1
  %arrayidx299 = getelementptr inbounds [512 x i32], [512 x i32]* %values298, i32 0, i64 511
  %101 = load i32, i32* %arrayidx299, align 4, !tbaa !5
  br label %cond.end.342

cond.false.300:                                   ; preds = %cond.end.285
  %arrayidx301 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 1
  %102 = load i32, i32* %arrayidx301, align 4, !tbaa !5
  %shr302 = ashr i32 %102, 10
  %idxprom303 = sext i32 %shr302 to i64
  %103 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches304 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %103, i32 0, i32 22
  %EncodeABC305 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches304, i32 0, i32 1
  %arrayidx306 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC305, i32 0, i64 1
  %fixeds307 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx306, i32 0, i32 1
  %ints308 = bitcast %union.if_* %fixeds307 to %struct.cie_cache_ints_s*
  %values309 = getelementptr inbounds %struct.cie_cache_ints_s, %struct.cie_cache_ints_s* %ints308, i32 0, i32 1
  %arrayidx310 = getelementptr inbounds [512 x i32], [512 x i32]* %values309, i32 0, i64 %idxprom303
  %104 = load i32, i32* %arrayidx310, align 4, !tbaa !5
  %arrayidx311 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 1
  %105 = load i32, i32* %arrayidx311, align 4, !tbaa !5
  %shr312 = ashr i32 %105, 10
  %add313 = add nsw i32 %shr312, 1
  %idxprom314 = sext i32 %add313 to i64
  %106 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches315 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %106, i32 0, i32 22
  %EncodeABC316 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches315, i32 0, i32 1
  %arrayidx317 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC316, i32 0, i64 1
  %fixeds318 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx317, i32 0, i32 1
  %ints319 = bitcast %union.if_* %fixeds318 to %struct.cie_cache_ints_s*
  %values320 = getelementptr inbounds %struct.cie_cache_ints_s, %struct.cie_cache_ints_s* %ints319, i32 0, i32 1
  %arrayidx321 = getelementptr inbounds [512 x i32], [512 x i32]* %values320, i32 0, i64 %idxprom314
  %107 = load i32, i32* %arrayidx321, align 4, !tbaa !5
  %arrayidx322 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 1
  %108 = load i32, i32* %arrayidx322, align 4, !tbaa !5
  %shr323 = ashr i32 %108, 10
  %idxprom324 = sext i32 %shr323 to i64
  %109 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches325 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %109, i32 0, i32 22
  %EncodeABC326 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches325, i32 0, i32 1
  %arrayidx327 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC326, i32 0, i64 1
  %fixeds328 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx327, i32 0, i32 1
  %ints329 = bitcast %union.if_* %fixeds328 to %struct.cie_cache_ints_s*
  %values330 = getelementptr inbounds %struct.cie_cache_ints_s, %struct.cie_cache_ints_s* %ints329, i32 0, i32 1
  %arrayidx331 = getelementptr inbounds [512 x i32], [512 x i32]* %values330, i32 0, i64 %idxprom324
  %110 = load i32, i32* %arrayidx331, align 4, !tbaa !5
  %sub332 = sub nsw i32 %107, %110
  %conv333 = sext i32 %sub332 to i64
  %arrayidx334 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 1
  %111 = load i32, i32* %arrayidx334, align 4, !tbaa !5
  %and335 = and i32 %111, 1023
  %conv336 = sext i32 %and335 to i64
  %mul337 = mul nsw i64 %conv333, %conv336
  %shr338 = ashr i64 %mul337, 10
  %conv339 = trunc i64 %shr338 to i16
  %conv340 = sext i16 %conv339 to i32
  %add341 = add nsw i32 %104, %conv340
  br label %cond.end.342

cond.end.342:                                     ; preds = %cond.false.300, %cond.true.292
  %cond343 = phi i32 [ %101, %cond.true.292 ], [ %add341, %cond.false.300 ]
  %shr344 = ashr i32 %cond343, 2
  %arrayidx345 = getelementptr inbounds [3 x i32], [3 x i32]* %rfix, i32 0, i64 1
  store i32 %shr344, i32* %arrayidx345, align 4, !tbaa !5
  %arrayidx346 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 2
  %112 = load i32, i32* %arrayidx346, align 4, !tbaa !5
  %cmp347 = icmp sge i32 %112, 523264
  br i1 %cmp347, label %cond.true.349, label %cond.false.357

cond.true.349:                                    ; preds = %cond.end.342
  %113 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches350 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %113, i32 0, i32 22
  %EncodeABC351 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches350, i32 0, i32 1
  %arrayidx352 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC351, i32 0, i64 2
  %fixeds353 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx352, i32 0, i32 1
  %ints354 = bitcast %union.if_* %fixeds353 to %struct.cie_cache_ints_s*
  %values355 = getelementptr inbounds %struct.cie_cache_ints_s, %struct.cie_cache_ints_s* %ints354, i32 0, i32 1
  %arrayidx356 = getelementptr inbounds [512 x i32], [512 x i32]* %values355, i32 0, i64 511
  %114 = load i32, i32* %arrayidx356, align 4, !tbaa !5
  br label %cond.end.399

cond.false.357:                                   ; preds = %cond.end.342
  %arrayidx358 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 2
  %115 = load i32, i32* %arrayidx358, align 4, !tbaa !5
  %shr359 = ashr i32 %115, 10
  %idxprom360 = sext i32 %shr359 to i64
  %116 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches361 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %116, i32 0, i32 22
  %EncodeABC362 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches361, i32 0, i32 1
  %arrayidx363 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC362, i32 0, i64 2
  %fixeds364 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx363, i32 0, i32 1
  %ints365 = bitcast %union.if_* %fixeds364 to %struct.cie_cache_ints_s*
  %values366 = getelementptr inbounds %struct.cie_cache_ints_s, %struct.cie_cache_ints_s* %ints365, i32 0, i32 1
  %arrayidx367 = getelementptr inbounds [512 x i32], [512 x i32]* %values366, i32 0, i64 %idxprom360
  %117 = load i32, i32* %arrayidx367, align 4, !tbaa !5
  %arrayidx368 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 2
  %118 = load i32, i32* %arrayidx368, align 4, !tbaa !5
  %shr369 = ashr i32 %118, 10
  %add370 = add nsw i32 %shr369, 1
  %idxprom371 = sext i32 %add370 to i64
  %119 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches372 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %119, i32 0, i32 22
  %EncodeABC373 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches372, i32 0, i32 1
  %arrayidx374 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC373, i32 0, i64 2
  %fixeds375 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx374, i32 0, i32 1
  %ints376 = bitcast %union.if_* %fixeds375 to %struct.cie_cache_ints_s*
  %values377 = getelementptr inbounds %struct.cie_cache_ints_s, %struct.cie_cache_ints_s* %ints376, i32 0, i32 1
  %arrayidx378 = getelementptr inbounds [512 x i32], [512 x i32]* %values377, i32 0, i64 %idxprom371
  %120 = load i32, i32* %arrayidx378, align 4, !tbaa !5
  %arrayidx379 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 2
  %121 = load i32, i32* %arrayidx379, align 4, !tbaa !5
  %shr380 = ashr i32 %121, 10
  %idxprom381 = sext i32 %shr380 to i64
  %122 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches382 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %122, i32 0, i32 22
  %EncodeABC383 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches382, i32 0, i32 1
  %arrayidx384 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC383, i32 0, i64 2
  %fixeds385 = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx384, i32 0, i32 1
  %ints386 = bitcast %union.if_* %fixeds385 to %struct.cie_cache_ints_s*
  %values387 = getelementptr inbounds %struct.cie_cache_ints_s, %struct.cie_cache_ints_s* %ints386, i32 0, i32 1
  %arrayidx388 = getelementptr inbounds [512 x i32], [512 x i32]* %values387, i32 0, i64 %idxprom381
  %123 = load i32, i32* %arrayidx388, align 4, !tbaa !5
  %sub389 = sub nsw i32 %120, %123
  %conv390 = sext i32 %sub389 to i64
  %arrayidx391 = getelementptr inbounds [3 x i32], [3 x i32]* %tabc, i32 0, i64 2
  %124 = load i32, i32* %arrayidx391, align 4, !tbaa !5
  %and392 = and i32 %124, 1023
  %conv393 = sext i32 %and392 to i64
  %mul394 = mul nsw i64 %conv390, %conv393
  %shr395 = ashr i64 %mul394, 10
  %conv396 = trunc i64 %shr395 to i16
  %conv397 = sext i16 %conv396 to i32
  %add398 = add nsw i32 %117, %conv397
  br label %cond.end.399

cond.end.399:                                     ; preds = %cond.false.357, %cond.true.349
  %cond400 = phi i32 [ %114, %cond.true.349 ], [ %add398, %cond.false.357 ]
  %shr401 = ashr i32 %cond400, 2
  %arrayidx402 = getelementptr inbounds [3 x i32], [3 x i32]* %rfix, i32 0, i64 2
  store i32 %shr401, i32* %arrayidx402, align 4, !tbaa !5
  br label %do.body.403

do.body.403:                                      ; preds = %cond.end.399
  br label %do.cond.404

do.cond.404:                                      ; preds = %do.body.403
  br label %do.end.405

do.end.405:                                       ; preds = %do.cond.404
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %rfix, i32 0, i32 0
  %125 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %RenderTable406 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %125, i32 0, i32 14
  %lookup407 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable406, i32 0, i32 0
  %126 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  call void @gx_color_interpolate_linear(i32* %arraydecay, %struct.gx_color_lookup_table_s* %lookup407, i16* %126) #4
  br label %do.body.408

do.body.408:                                      ; preds = %do.end.405
  br label %do.cond.409

do.cond.409:                                      ; preds = %do.body.408
  br label %do.end.410

do.end.410:                                       ; preds = %do.cond.409
  %127 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches411 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %127, i32 0, i32 22
  %RenderTableT_is_identity = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches411, i32 0, i32 3
  %128 = load i32, i32* %RenderTableT_is_identity, align 4, !tbaa !101
  %tobool412 = icmp ne i32 %128, 0
  br i1 %tobool412, label %if.end.477, label %if.then.413

if.then.413:                                      ; preds = %do.end.410
  %129 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx414 = getelementptr inbounds i16, i16* %129, i64 0
  %130 = load i16, i16* %arrayidx414, align 2, !tbaa !28
  %conv415 = sext i16 %130 to i32
  %shr416 = ashr i32 %conv415, 12
  %131 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx417 = getelementptr inbounds i16, i16* %131, i64 0
  %132 = load i16, i16* %arrayidx417, align 2, !tbaa !28
  %conv418 = sext i16 %132 to i32
  %add419 = add nsw i32 %shr416, %conv418
  %shr420 = ashr i32 %add419, 6
  %idxprom421 = zext i32 %shr420 to i64
  %133 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches422 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %133, i32 0, i32 22
  %RenderTableT = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches422, i32 0, i32 2
  %arrayidx423 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %RenderTableT, i32 0, i64 0
  %fracs424 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx423 to %struct.cie_cache_fracs_s*
  %values425 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs424, i32 0, i32 1
  %arrayidx426 = getelementptr inbounds [512 x i16], [512 x i16]* %values425, i32 0, i64 %idxprom421
  %134 = load i16, i16* %arrayidx426, align 2, !tbaa !28
  %135 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx427 = getelementptr inbounds i16, i16* %135, i64 0
  store i16 %134, i16* %arrayidx427, align 2, !tbaa !28
  %136 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx428 = getelementptr inbounds i16, i16* %136, i64 1
  %137 = load i16, i16* %arrayidx428, align 2, !tbaa !28
  %conv429 = sext i16 %137 to i32
  %shr430 = ashr i32 %conv429, 12
  %138 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx431 = getelementptr inbounds i16, i16* %138, i64 1
  %139 = load i16, i16* %arrayidx431, align 2, !tbaa !28
  %conv432 = sext i16 %139 to i32
  %add433 = add nsw i32 %shr430, %conv432
  %shr434 = ashr i32 %add433, 6
  %idxprom435 = zext i32 %shr434 to i64
  %140 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches436 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %140, i32 0, i32 22
  %RenderTableT437 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches436, i32 0, i32 2
  %arrayidx438 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %RenderTableT437, i32 0, i64 1
  %fracs439 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx438 to %struct.cie_cache_fracs_s*
  %values440 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs439, i32 0, i32 1
  %arrayidx441 = getelementptr inbounds [512 x i16], [512 x i16]* %values440, i32 0, i64 %idxprom435
  %141 = load i16, i16* %arrayidx441, align 2, !tbaa !28
  %142 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx442 = getelementptr inbounds i16, i16* %142, i64 1
  store i16 %141, i16* %arrayidx442, align 2, !tbaa !28
  %143 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx443 = getelementptr inbounds i16, i16* %143, i64 2
  %144 = load i16, i16* %arrayidx443, align 2, !tbaa !28
  %conv444 = sext i16 %144 to i32
  %shr445 = ashr i32 %conv444, 12
  %145 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx446 = getelementptr inbounds i16, i16* %145, i64 2
  %146 = load i16, i16* %arrayidx446, align 2, !tbaa !28
  %conv447 = sext i16 %146 to i32
  %add448 = add nsw i32 %shr445, %conv447
  %shr449 = ashr i32 %add448, 6
  %idxprom450 = zext i32 %shr449 to i64
  %147 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches451 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %147, i32 0, i32 22
  %RenderTableT452 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches451, i32 0, i32 2
  %arrayidx453 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %RenderTableT452, i32 0, i64 2
  %fracs454 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx453 to %struct.cie_cache_fracs_s*
  %values455 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs454, i32 0, i32 1
  %arrayidx456 = getelementptr inbounds [512 x i16], [512 x i16]* %values455, i32 0, i64 %idxprom450
  %148 = load i16, i16* %arrayidx456, align 2, !tbaa !28
  %149 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx457 = getelementptr inbounds i16, i16* %149, i64 2
  store i16 %148, i16* %arrayidx457, align 2, !tbaa !28
  %150 = load i32, i32* %m, align 4, !tbaa !5
  %cmp458 = icmp sgt i32 %150, 3
  br i1 %cmp458, label %if.then.460, label %if.end.476

if.then.460:                                      ; preds = %if.then.413
  %151 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx461 = getelementptr inbounds i16, i16* %151, i64 3
  %152 = load i16, i16* %arrayidx461, align 2, !tbaa !28
  %conv462 = sext i16 %152 to i32
  %shr463 = ashr i32 %conv462, 12
  %153 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx464 = getelementptr inbounds i16, i16* %153, i64 3
  %154 = load i16, i16* %arrayidx464, align 2, !tbaa !28
  %conv465 = sext i16 %154 to i32
  %add466 = add nsw i32 %shr463, %conv465
  %shr467 = ashr i32 %add466, 6
  %idxprom468 = zext i32 %shr467 to i64
  %155 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %caches469 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %155, i32 0, i32 22
  %RenderTableT470 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches469, i32 0, i32 2
  %arrayidx471 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %RenderTableT470, i32 0, i64 3
  %fracs472 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx471 to %struct.cie_cache_fracs_s*
  %values473 = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs472, i32 0, i32 1
  %arrayidx474 = getelementptr inbounds [512 x i16], [512 x i16]* %values473, i32 0, i64 %idxprom468
  %156 = load i16, i16* %arrayidx474, align 2, !tbaa !28
  %157 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx475 = getelementptr inbounds i16, i16* %157, i64 3
  store i16 %156, i16* %arrayidx475, align 2, !tbaa !28
  br label %if.end.476

if.end.476:                                       ; preds = %if.then.460, %if.then.413
  br label %if.end.477

if.end.477:                                       ; preds = %if.end.476, %do.end.410
  %158 = load i32, i32* %m, align 4, !tbaa !5
  store i32 %158, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %159 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast [3 x i32]* %rfix to i8*
  call void @llvm.lifetime.end(i64 12, i8* %160) #1
  %161 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end.477, %cond.end.226
  %162 = bitcast [3 x i32]* %tabc to i8*
  call void @llvm.lifetime.end(i64 12, i8* %162) #1
  %163 = bitcast %struct.gs_const_string_s** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast %struct.gx_cie_joint_caches_s** %pjc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = load i32, i32* %retval
  ret i32 %166
}

; Function Attrs: nounwind uwtable
define i32 @gx_cie_xyz_remap_finish(<2 x float> %vec3.coerce0, float %vec3.coerce1, i16* %pconc, float* %xyz, %struct.gs_imager_state_s* %pis, %struct.gs_color_space_s* %pcs) #0 {
entry:
  %vec3 = alloca %struct.cie_cached_vector3_s, align 8
  %coerce = alloca { <2 x float>, float }, align 8
  %pconc.addr = alloca i16*, align 8
  %xyz.addr = alloca float*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pjc = alloca %struct.gx_cie_joint_caches_s*, align 8
  %0 = getelementptr { <2 x float>, float }, { <2 x float>, float }* %coerce, i32 0, i32 0
  store <2 x float> %vec3.coerce0, <2 x float>* %0
  %1 = getelementptr { <2 x float>, float }, { <2 x float>, float }* %coerce, i32 0, i32 1
  store float %vec3.coerce1, float* %1
  %2 = bitcast %struct.cie_cached_vector3_s* %vec3 to i8*
  %3 = bitcast { <2 x float>, float }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 12, i32 8, i1 false)
  store i16* %pconc, i16** %pconc.addr, align 8, !tbaa !1
  store float* %xyz, float** %xyz.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_cie_joint_caches_s** %pjc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cie_joint_caches = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %5, i32 0, i32 48
  %6 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !29
  store %struct.gx_cie_joint_caches_s* %6, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %7 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %skipDecodeLMN = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %7, i32 0, i32 7
  %8 = load i32, i32* %skipDecodeLMN, align 4, !tbaa !97
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %DecodeLMN = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %9, i32 0, i32 8
  call void @cie_lookup_mult3(%struct.cie_cached_vector3_s* %vec3, %struct.gx_cie_vector_cache3_s* %DecodeLMN) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %u = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vec3, i32 0, i32 0
  %10 = load float, float* %u, align 4, !tbaa !78
  %11 = load float*, float** %xyz.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %11, i64 0
  store float %10, float* %arrayidx, align 4, !tbaa !11
  %v = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vec3, i32 0, i32 1
  %12 = load float, float* %v, align 4, !tbaa !77
  %13 = load float*, float** %xyz.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds float, float* %13, i64 1
  store float %12, float* %arrayidx1, align 4, !tbaa !11
  %w = getelementptr inbounds %struct.cie_cached_vector3_s, %struct.cie_cached_vector3_s* %vec3, i32 0, i32 2
  %14 = load float, float* %w, align 4, !tbaa !75
  %15 = load float*, float** %xyz.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %15, i64 2
  store float %14, float* %arrayidx2, align 4, !tbaa !11
  %16 = load float*, float** %xyz.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds float, float* %16, i64 0
  %17 = load float, float* %arrayidx3, align 4, !tbaa !11
  %conv = fpext float %17 to double
  %call = call signext i16 @float2frac_clamp(double %conv) #4
  %18 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %18, i64 0
  store i16 %call, i16* %arrayidx4, align 2, !tbaa !28
  %19 = load float*, float** %xyz.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds float, float* %19, i64 1
  %20 = load float, float* %arrayidx5, align 4, !tbaa !11
  %conv6 = fpext float %20 to double
  %call7 = call signext i16 @float2frac_clamp(double %conv6) #4
  %21 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i16, i16* %21, i64 1
  store i16 %call7, i16* %arrayidx8, align 2, !tbaa !28
  %22 = load float*, float** %xyz.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds float, float* %22, i64 2
  %23 = load float, float* %arrayidx9, align 4, !tbaa !11
  %conv10 = fpext float %23 to double
  %call11 = call signext i16 @float2frac_clamp(double %conv10) #4
  %24 = load i16*, i16** %pconc.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %24, i64 2
  store i16 %call11, i16* %arrayidx12, align 2, !tbaa !28
  %25 = bitcast %struct.gx_cie_joint_caches_s** %pjc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal signext i16 @float2frac_clamp(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !84
  %0 = load double, double* %x.addr, align 8, !tbaa !84
  %cmp = fcmp ole double %0, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %1 = load double, double* %x.addr, align 8, !tbaa !84
  %cmp1 = fcmp oge double %1, 1.000000e+00
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8, !tbaa !84
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi double [ 1.000000e+00, %cond.true.2 ], [ %2, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi double [ 0.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %add = fadd double %cond5, 0x3EF0010010010010
  %mul = fmul double %add, 3.276000e+04
  %conv = fptosi double %mul to i16
  ret i16 %conv
}

declare i32 @gs_cie_jc_complete(%struct.gs_imager_state_s*, %struct.gs_color_space_s*) #2

declare i32 @gs_cspace_build_ICC(%struct.gs_color_space_s**, i8*, %struct.gs_memory_s*) #2

declare void @rc_increment_cs(%struct.gs_color_space_s*) #2

declare %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s*, %struct.gs_memory_s*, i8*, i32) #2

declare i32 @gsicc_create_fromdefg(%struct.gs_color_space_s*, i8**, i32*, %struct.gs_memory_s*, %struct.gx_cie_vector_cache_s*, %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s*) #2

declare void @gsicc_init_profile_info(%struct.cmm_profile_s*) #2

declare i32 @gsicc_create_fromdef(%struct.gs_color_space_s*, i8**, i32*, %struct.gs_memory_s*, %struct.gx_cie_vector_cache_s*, %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s*) #2

declare i32 @gsicc_create_fromabc(%struct.gs_color_space_s*, i8**, i32*, %struct.gs_memory_s*, %struct.gx_cie_vector_cache_s*, %union.gx_cie_scalar_cache_s*, i32*) #2

declare i32 @gsicc_create_froma(%struct.gs_color_space_s*, i8**, i32*, %struct.gs_memory_s*, %struct.gx_cie_vector_cache_s*, %union.gx_cie_scalar_cache_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !9, i64 0}
!8 = !{!"gs_range_s", !9, i64 0, !9, i64 4}
!9 = !{!"float", !3, i64 0}
!10 = !{!8, !9, i64 4}
!11 = !{!9, !9, i64 0}
!12 = !{!13, !2, i64 400}
!13 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !14, i64 24, !6, i64 128, !17, i64 132, !6, i64 168, !18, i64 176, !18, i64 192, !6, i64 208, !6, i64 212, !20, i64 216, !3, i64 220, !21, i64 224, !21, i64 228, !22, i64 232, !23, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !9, i64 296, !24, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !9, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !25, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !26, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !26, i64 1336}
!14 = !{!"gx_line_params_s", !9, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !6, i64 36, !15, i64 40, !16, i64 64}
!15 = !{!"gs_matrix_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!16 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !9, i64 12, !6, i64 16, !9, i64 20, !6, i64 24, !6, i64 28, !9, i64 32}
!17 = !{!"gs_matrix_fixed_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!18 = !{!"gs_point_s", !19, i64 0, !19, i64 8}
!19 = !{!"double", !3, i64 0}
!20 = !{!"short", !3, i64 0}
!21 = !{!"gs_transparency_source_s", !9, i64 0}
!22 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!23 = !{!"long", !3, i64 0}
!24 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!25 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!26 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !23, i64 16, !3, i64 24}
!27 = !{!13, !6, i64 408}
!28 = !{!20, !20, i64 0}
!29 = !{!13, !2, i64 1008}
!30 = !{!31, !3, i64 20}
!31 = !{!"gx_cie_joint_caches_s", !23, i64 0, !23, i64 8, !3, i64 16, !3, i64 20, !32, i64 24, !2, i64 48, !6, i64 56, !6, i64 60, !33, i64 64, !34, i64 24904, !6, i64 25000, !33, i64 25008, !6, i64 49848}
!32 = !{!"rc_header_s", !23, i64 0, !2, i64 8, !2, i64 16}
!33 = !{!"gx_cie_vector_cache3_s", !3, i64 0, !3, i64 24816}
!34 = !{!"gs_cie_wbsd_s", !35, i64 0, !35, i64 24, !35, i64 48, !35, i64 72}
!35 = !{!"", !36, i64 0, !36, i64 12}
!36 = !{!"gs_vector3_s", !9, i64 0, !9, i64 4, !9, i64 8}
!37 = !{!31, !23, i64 0}
!38 = !{!39, !23, i64 32}
!39 = !{!"gs_color_space_s", !2, i64 0, !32, i64 8, !23, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!40 = !{!3, !3, i64 0}
!41 = !{!39, !2, i64 48}
!42 = !{!13, !2, i64 8}
!43 = !{!44, !2, i64 0}
!44 = !{!"gs_memory_s", !2, i64 0, !45, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!45 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!46 = !{!39, !2, i64 0}
!47 = !{!48, !2, i64 72}
!48 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!49 = !{!50, !6, i64 360}
!50 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !51, i64 352, !6, i64 360, !52, i64 368, !54, i64 632}
!51 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!52 = !{!"gs_client_color_s", !2, i64 0, !53, i64 8}
!53 = !{!"gs_paint_color_s", !3, i64 0}
!54 = !{!"_mask", !55, i64 0, !23, i64 8, !2, i64 16}
!55 = !{!"mp_", !6, i64 0, !6, i64 4}
!56 = !{!39, !2, i64 40}
!57 = !{!39, !2, i64 64}
!58 = !{!59, !3, i64 12}
!59 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 16, !60, i64 20, !23, i64 144, !6, i64 152, !3, i64 156, !6, i64 216, !6, i64 220, !6, i64 224, !61, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !32, i64 288, !6, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!60 = !{!"gs_range_icc_s", !3, i64 0}
!61 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20}
!62 = !{!59, !3, i64 16}
!63 = !{!48, !2, i64 56}
!64 = !{!31, !6, i64 56}
!65 = !{!66, !9, i64 2088}
!66 = !{!"gx_cie_vector_cache_s", !67, i64 0, !70, i64 2088}
!67 = !{!"cie_cache_floats_s", !68, i64 0, !3, i64 40}
!68 = !{!"cie_cache_params_s", !6, i64 0, !19, i64 8, !19, i64 16, !69, i64 24}
!69 = !{!"cie_linear_params_s", !6, i64 0, !9, i64 4, !9, i64 8}
!70 = !{!"cie_cache_vectors_s", !71, i64 0, !3, i64 36}
!71 = !{!"cie_vector_cache_params_s", !9, i64 0, !9, i64 4, !9, i64 8, !3, i64 12}
!72 = !{!66, !9, i64 2096}
!73 = !{!66, !9, i64 2092}
!74 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11}
!75 = !{!76, !9, i64 8}
!76 = !{!"cie_cached_vector3_s", !9, i64 0, !9, i64 4, !9, i64 8}
!77 = !{!76, !9, i64 4}
!78 = !{!76, !9, i64 0}
!79 = !{!31, !2, i64 48}
!80 = !{!81, !9, i64 0}
!81 = !{!"cie_interpolation_range_s", !9, i64 0, !9, i64 4}
!82 = !{!81, !9, i64 4}
!83 = !{!67, !19, i64 16}
!84 = !{!19, !19, i64 0}
!85 = !{!86, !2, i64 376}
!86 = !{!"gs_cie_render_s", !3, i64 0, !32, i64 8, !23, i64 32, !2, i64 40, !87, i64 48, !88, i64 72, !89, i64 112, !90, i64 136, !88, i64 176, !92, i64 216, !89, i64 240, !88, i64 264, !92, i64 304, !89, i64 328, !93, i64 352, !89, i64 416, !89, i64 440, !88, i64 464, !3, i64 504, !88, i64 516, !36, i64 556, !36, i64 568, !96, i64 584}
!87 = !{!"gs_cie_wb_s", !36, i64 0, !36, i64 12}
!88 = !{!"gs_matrix3_s", !36, i64 0, !36, i64 12, !36, i64 24, !6, i64 36}
!89 = !{!"gs_range3_s", !3, i64 0}
!90 = !{!"gs_cie_transform_proc3_s", !2, i64 0, !2, i64 8, !91, i64 16, !2, i64 32}
!91 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!92 = !{!"gs_cie_render_proc3_s", !3, i64 0}
!93 = !{!"gs_cie_render_table_s", !94, i64 0, !95, i64 32}
!94 = !{!"gx_color_lookup_table_s", !6, i64 0, !3, i64 4, !6, i64 20, !2, i64 24}
!95 = !{!"gs_cie_render_table_procs_s", !3, i64 0}
!96 = !{!"", !33, i64 0, !3, i64 24840, !3, i64 37368, !6, i64 45720}
!97 = !{!31, !6, i64 60}
!98 = !{!31, !6, i64 25000}
!99 = !{!31, !6, i64 49848}
!100 = !{!86, !6, i64 372}
!101 = !{!86, !6, i64 46304}
