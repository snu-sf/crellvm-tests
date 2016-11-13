; ModuleID = './gsicc_profilecache.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
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
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_path_s = type opaque
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
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
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gs_halftone_s = type opaque
%struct.gx_device_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }

@st_profile_cache = internal constant %struct.gs_memory_struct_type_s { i32 48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @profile_list_reloc_ptrs to i8*) }, align 8
@.str = private unnamed_addr constant [23 x i8] c"gsicc_profilecache_new\00", align 1
@st_profile_entry = internal constant %struct.gs_memory_struct_type_s { i32 24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @profile_entry_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"gsicc_add_cs\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"gsicc_profile_cache\00", align 1
@profile_list_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @profile_list_enum_ptrs, i32 0, i32 0) }, align 8
@profile_list_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] zeroinitializer, align 2
@.str.3 = private unnamed_addr constant [28 x i8] c"rc_gsicc_profile_cache_free\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"gsicc_profile_entry\00", align 1
@profile_entry_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @profile_entry_enum_ptrs, i32 0, i32 0) }, align 8
@profile_entry_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 8 }], align 2
@.str.5 = private unnamed_addr constant [22 x i8] c"gsicc_remove_cs_entry\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gsicc_profile_cache_s* @gsicc_profilecache_new(%struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca %struct.gsicc_profile_cache_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %result = alloca %struct.gsicc_profile_cache_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_profile_cache_s** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 0
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %3 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !8
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory1, align 8, !tbaa !5
  %call = call i8* %3(%struct.gs_memory_s* %5, %struct.gs_memory_struct_type_s* @st_profile_cache, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #3
  %6 = bitcast i8* %call to %struct.gsicc_profile_cache_s*
  store %struct.gsicc_profile_cache_s* %6, %struct.gsicc_profile_cache_s** %result, align 8, !tbaa !1
  %7 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %result, align 8, !tbaa !1
  %cmp = icmp eq %struct.gsicc_profile_cache_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gsicc_profile_cache_s* null, %struct.gsicc_profile_cache_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %result, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %8, i32 0, i32 2
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !9
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %stable_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 0
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory2, align 8, !tbaa !5
  %11 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %result, align 8, !tbaa !1
  %rc3 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %11, i32 0, i32 2
  %memory4 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc3, i32 0, i32 1
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory4, align 8, !tbaa !14
  %12 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %result, align 8, !tbaa !1
  %rc5 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %12, i32 0, i32 2
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc5, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_gsicc_profile_cache_free, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !15
  br label %do.body.6

do.body.6:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.7

do.cond.7:                                        ; preds = %do.end
  br label %do.end.8

do.end.8:                                         ; preds = %do.cond.7
  %13 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %result, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %13, i32 0, i32 0
  store %struct.gsicc_profile_entry_s* null, %struct.gsicc_profile_entry_s** %head, align 8, !tbaa !16
  %14 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %result, align 8, !tbaa !1
  %num_entries = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %14, i32 0, i32 1
  store i32 0, i32* %num_entries, align 4, !tbaa !17
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %16 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %result, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %16, i32 0, i32 3
  store %struct.gs_memory_s* %15, %struct.gs_memory_s** %memory9, align 8, !tbaa !18
  %17 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %result, align 8, !tbaa !1
  store %struct.gsicc_profile_cache_s* %17, %struct.gsicc_profile_cache_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.8, %if.then
  %18 = bitcast %struct.gsicc_profile_cache_s** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %retval
  ret %struct.gsicc_profile_cache_s* %19
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @rc_gsicc_profile_cache_free(%struct.gs_memory_s* %mem, i8* %ptr_in, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr_in.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %profile_cache = alloca %struct.gsicc_profile_cache_s*, align 8
  %curr = alloca %struct.gsicc_profile_entry_s*, align 8
  %next = alloca %struct.gsicc_profile_entry_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr_in, i8** %ptr_in.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_profile_cache_s** %profile_cache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ptr_in.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gsicc_profile_cache_s*
  store %struct.gsicc_profile_cache_s* %2, %struct.gsicc_profile_cache_s** %profile_cache, align 8, !tbaa !1
  %3 = bitcast %struct.gsicc_profile_entry_s** %curr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %profile_cache, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %4, i32 0, i32 0
  %5 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %head, align 8, !tbaa !16
  store %struct.gsicc_profile_entry_s* %5, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %6 = bitcast %struct.gsicc_profile_entry_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  br label %while.cond

while.cond:                                       ; preds = %do.end.29, %entry
  %7 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gsicc_profile_entry_s* %7, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %next1 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %8, i32 0, i32 1
  %9 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %next1, align 8, !tbaa !19
  store %struct.gsicc_profile_entry_s* %9, %struct.gsicc_profile_entry_s** %next, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %while.body
  %10 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %10, i32 0, i32 0
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !21
  %tobool = icmp ne %struct.gs_color_space_s* %11, null
  br i1 %tobool, label %if.then, label %if.end.27

if.then:                                          ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  br label %do.body.3

do.body.3:                                        ; preds = %do.body.2
  br label %do.cond

do.cond:                                          ; preds = %do.body.3
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %color_space4 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %12, i32 0, i32 0
  %13 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space4, align 8, !tbaa !21
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %13, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %14 = load i64, i64* %ref_count, align 8, !tbaa !22
  %add = add nsw i64 %14, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !22
  br label %do.cond.5

do.cond.5:                                        ; preds = %do.end
  br label %do.end.6

do.end.6:                                         ; preds = %do.cond.5
  %15 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %color_space7 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %15, i32 0, i32 0
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space7, align 8, !tbaa !21
  %rc8 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %16, i32 0, i32 1
  %ref_count9 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc8, i32 0, i32 0
  %17 = load i64, i64* %ref_count9, align 8, !tbaa !22
  %tobool10 = icmp ne i64 %17, 0
  br i1 %tobool10, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %do.end.6
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  br label %do.body.13

do.body.13:                                       ; preds = %do.body.12
  br label %do.cond.14

do.cond.14:                                       ; preds = %do.body.13
  br label %do.end.15

do.end.15:                                        ; preds = %do.cond.14
  %18 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %color_space16 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %18, i32 0, i32 0
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space16, align 8, !tbaa !21
  %rc17 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc17, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !24
  %21 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %color_space18 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %21, i32 0, i32 0
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space18, align 8, !tbaa !21
  %rc19 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %22, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc19, i32 0, i32 1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %24 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %color_space20 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %24, i32 0, i32 0
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space20, align 8, !tbaa !21
  %26 = bitcast %struct.gs_color_space_s* %25 to i8*
  call void %20(%struct.gs_memory_s* %23, i8* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)) #3
  br label %do.cond.21

do.cond.21:                                       ; preds = %do.end.15
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  %27 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %color_space23 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %27, i32 0, i32 0
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %color_space23, align 8, !tbaa !21
  br label %if.end

if.else:                                          ; preds = %do.end.6
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
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 0
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !26
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 0
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory30, align 8, !tbaa !5
  %33 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %34 = bitcast %struct.gsicc_profile_entry_s* %33 to i8*
  call void %30(%struct.gs_memory_s* %32, i8* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)) #3
  %35 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %profile_cache, align 8, !tbaa !1
  %num_entries = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %35, i32 0, i32 1
  %36 = load i32, i32* %num_entries, align 4, !tbaa !17
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %num_entries, align 4, !tbaa !17
  %37 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %next, align 8, !tbaa !1
  store %struct.gsicc_profile_entry_s* %37, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory31 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 0
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory31, align 8, !tbaa !5
  %procs32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %free_object33 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs32, i32 0, i32 2
  %40 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object33, align 8, !tbaa !26
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 0
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory34, align 8, !tbaa !5
  %43 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %profile_cache, align 8, !tbaa !1
  %44 = bitcast %struct.gsicc_profile_cache_s* %43 to i8*
  call void %40(%struct.gs_memory_s* %42, i8* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)) #3
  %45 = bitcast %struct.gsicc_profile_entry_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %struct.gsicc_profile_entry_s** %curr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast %struct.gsicc_profile_cache_s** %profile_cache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @gsicc_add_cs(%struct.gs_state_s* %pgs, %struct.gs_color_space_s* %colorspace, i64 %dictkey) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %colorspace.addr = alloca %struct.gs_color_space_s*, align 8
  %dictkey.addr = alloca i64, align 8
  %result = alloca %struct.gsicc_profile_entry_s*, align 8
  %profile_cache = alloca %struct.gsicc_profile_cache_s*, align 8
  %memory = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %colorspace, %struct.gs_color_space_s** %colorspace.addr, align 8, !tbaa !1
  store i64 %dictkey, i64* %dictkey.addr, align 8, !tbaa !27
  %0 = bitcast %struct.gsicc_profile_entry_s** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gsicc_profile_cache_s** %profile_cache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_profile_cache = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 37
  %3 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache, align 8, !tbaa !28
  store %struct.gsicc_profile_cache_s* %3, %struct.gsicc_profile_cache_s** %profile_cache, align 8, !tbaa !1
  %4 = bitcast %struct.gs_memory_s** %memory to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !44
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %memory, align 8, !tbaa !1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 0
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %9 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !8
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !1
  %stable_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 0
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory2, align 8, !tbaa !5
  %call = call i8* %9(%struct.gs_memory_s* %11, %struct.gs_memory_struct_type_s* @st_profile_entry, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #3
  %12 = bitcast i8* %call to %struct.gsicc_profile_entry_s*
  store %struct.gsicc_profile_entry_s* %12, %struct.gsicc_profile_entry_s** %result, align 8, !tbaa !1
  %13 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %result, align 8, !tbaa !1
  %cmp = icmp eq %struct.gsicc_profile_entry_s* %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %profile_cache, align 8, !tbaa !1
  %num_entries = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %14, i32 0, i32 1
  %15 = load i32, i32* %num_entries, align 4, !tbaa !17
  %cmp3 = icmp sge i32 %15, 50
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %16 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %profile_cache, align 8, !tbaa !1
  call void @gsicc_remove_cs_entry(%struct.gsicc_profile_cache_s* %16) #3
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %17 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %profile_cache, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %17, i32 0, i32 0
  %18 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %head, align 8, !tbaa !16
  %19 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %result, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %19, i32 0, i32 1
  store %struct.gsicc_profile_entry_s* %18, %struct.gsicc_profile_entry_s** %next, align 8, !tbaa !19
  %20 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %result, align 8, !tbaa !1
  %21 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %profile_cache, align 8, !tbaa !1
  %head6 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %21, i32 0, i32 0
  store %struct.gsicc_profile_entry_s* %20, %struct.gsicc_profile_entry_s** %head6, align 8, !tbaa !16
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %colorspace.addr, align 8, !tbaa !1
  %23 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %result, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %23, i32 0, i32 0
  store %struct.gs_color_space_s* %22, %struct.gs_color_space_s** %color_space, align 8, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %colorspace.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_color_space_s* %24, null
  br i1 %tobool, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %colorspace.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %25, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %26 = load i64, i64* %ref_count, align 8, !tbaa !22
  %inc = add nsw i64 %26, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !22
  br label %do.body.9

do.body.9:                                        ; preds = %do.body.8
  br label %do.cond

do.cond:                                          ; preds = %do.body.9
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.10

do.cond.10:                                       ; preds = %do.end
  br label %do.end.11

do.end.11:                                        ; preds = %do.cond.10
  br label %if.end.12

if.end.12:                                        ; preds = %do.end.11, %do.body
  br label %do.cond.13

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  %27 = load i64, i64* %dictkey.addr, align 8, !tbaa !27
  %28 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %result, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %28, i32 0, i32 2
  store i64 %27, i64* %key, align 8, !tbaa !45
  %29 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %profile_cache, align 8, !tbaa !1
  %num_entries15 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %29, i32 0, i32 1
  %30 = load i32, i32* %num_entries15, align 4, !tbaa !17
  %inc16 = add nsw i32 %30, 1
  store i32 %inc16, i32* %num_entries15, align 4, !tbaa !17
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.14, %if.then
  %31 = bitcast %struct.gs_memory_s** %memory to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.gsicc_profile_cache_s** %profile_cache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.gsicc_profile_entry_s** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
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
define internal void @gsicc_remove_cs_entry(%struct.gsicc_profile_cache_s* %profile_cache) #0 {
entry:
  %profile_cache.addr = alloca %struct.gsicc_profile_cache_s*, align 8
  %memory = alloca %struct.gs_memory_s*, align 8
  %prev = alloca %struct.gsicc_profile_entry_s*, align 8
  %curr = alloca %struct.gsicc_profile_entry_s*, align 8
  store %struct.gsicc_profile_cache_s* %profile_cache, %struct.gsicc_profile_cache_s** %profile_cache.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %memory to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %profile_cache.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !18
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %memory, align 8, !tbaa !1
  %3 = bitcast %struct.gsicc_profile_entry_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.gsicc_profile_entry_s* null, %struct.gsicc_profile_entry_s** %prev, align 8, !tbaa !1
  %4 = bitcast %struct.gsicc_profile_entry_s** %curr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %profile_cache.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %5, i32 0, i32 0
  %6 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %head, align 8, !tbaa !16
  store %struct.gsicc_profile_entry_s* %6, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %7, i32 0, i32 1
  %8 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %next, align 8, !tbaa !19
  %cmp = icmp ne %struct.gsicc_profile_entry_s* %8, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  store %struct.gsicc_profile_entry_s* %9, %struct.gsicc_profile_entry_s** %prev, align 8, !tbaa !1
  %10 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %next2 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %10, i32 0, i32 1
  %11 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %next2, align 8, !tbaa !19
  store %struct.gsicc_profile_entry_s* %11, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %profile_cache.addr, align 8, !tbaa !1
  %num_entries = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %12, i32 0, i32 1
  %13 = load i32, i32* %num_entries, align 4, !tbaa !17
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %num_entries, align 4, !tbaa !17
  %14 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %prev, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gsicc_profile_entry_s* %14, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %15 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %profile_cache.addr, align 8, !tbaa !1
  %head4 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %15, i32 0, i32 0
  store %struct.gsicc_profile_entry_s* null, %struct.gsicc_profile_entry_s** %head4, align 8, !tbaa !16
  br label %if.end

if.else:                                          ; preds = %while.end
  %16 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %prev, align 8, !tbaa !1
  %next5 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %16, i32 0, i32 1
  store %struct.gsicc_profile_entry_s* null, %struct.gsicc_profile_entry_s** %next5, align 8, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %17 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %17, i32 0, i32 0
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !21
  %tobool = icmp ne %struct.gs_color_space_s* %18, null
  br i1 %tobool, label %if.then.6, label %if.end.35

if.then.6:                                        ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.body.7
  br label %do.cond

do.cond:                                          ; preds = %do.body.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %color_space9 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %19, i32 0, i32 0
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space9, align 8, !tbaa !21
  %rc = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %20, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %21 = load i64, i64* %ref_count, align 8, !tbaa !22
  %add = add nsw i64 %21, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !22
  br label %do.cond.10

do.cond.10:                                       ; preds = %do.end
  br label %do.end.11

do.end.11:                                        ; preds = %do.cond.10
  %22 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %color_space12 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %22, i32 0, i32 0
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space12, align 8, !tbaa !21
  %rc13 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 1
  %ref_count14 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc13, i32 0, i32 0
  %24 = load i64, i64* %ref_count14, align 8, !tbaa !22
  %tobool15 = icmp ne i64 %24, 0
  br i1 %tobool15, label %if.else.30, label %if.then.16

if.then.16:                                       ; preds = %do.end.11
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.body.17
  br label %do.cond.19

do.cond.19:                                       ; preds = %do.body.18
  br label %do.end.20

do.end.20:                                        ; preds = %do.cond.19
  %25 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %color_space21 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %25, i32 0, i32 0
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space21, align 8, !tbaa !21
  %rc22 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %26, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc22, i32 0, i32 2
  %27 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !24
  %28 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %color_space23 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %28, i32 0, i32 0
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space23, align 8, !tbaa !21
  %rc24 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %29, i32 0, i32 1
  %memory25 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc24, i32 0, i32 1
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory25, align 8, !tbaa !25
  %31 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %color_space26 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %31, i32 0, i32 0
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space26, align 8, !tbaa !21
  %33 = bitcast %struct.gs_color_space_s* %32 to i8*
  call void %27(%struct.gs_memory_s* %30, i8* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)) #3
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.end.20
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  %34 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %color_space29 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %34, i32 0, i32 0
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %color_space29, align 8, !tbaa !21
  br label %if.end.34

if.else.30:                                       ; preds = %do.end.11
  br label %do.body.31

do.body.31:                                       ; preds = %if.else.30
  br label %do.cond.32

do.cond.32:                                       ; preds = %do.body.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  br label %if.end.34

if.end.34:                                        ; preds = %do.end.33, %do.end.28
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %do.body
  br label %do.cond.36

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 0
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %37 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !26
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !1
  %stable_memory38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 0
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory38, align 8, !tbaa !5
  %40 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %41 = bitcast %struct.gsicc_profile_entry_s* %40 to i8*
  call void %37(%struct.gs_memory_s* %39, i8* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)) #3
  %42 = bitcast %struct.gsicc_profile_entry_s** %curr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.gsicc_profile_entry_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct.gs_memory_s** %memory to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gs_color_space_s* @gsicc_find_cs(i64 %key_test, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca %struct.gs_color_space_s*, align 8
  %key_test.addr = alloca i64, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %profile_cache = alloca %struct.gsicc_profile_cache_s*, align 8
  %prev = alloca %struct.gsicc_profile_entry_s*, align 8
  %curr = alloca %struct.gsicc_profile_entry_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %key_test, i64* %key_test.addr, align 8, !tbaa !27
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_profile_cache_s** %profile_cache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_profile_cache = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 37
  %2 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %icc_profile_cache, align 8, !tbaa !28
  store %struct.gsicc_profile_cache_s* %2, %struct.gsicc_profile_cache_s** %profile_cache, align 8, !tbaa !1
  %3 = bitcast %struct.gsicc_profile_entry_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.gsicc_profile_entry_s* null, %struct.gsicc_profile_entry_s** %prev, align 8, !tbaa !1
  %4 = bitcast %struct.gsicc_profile_entry_s** %curr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %profile_cache, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %5, i32 0, i32 0
  %6 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %head, align 8, !tbaa !16
  store %struct.gsicc_profile_entry_s* %6, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %entry
  %7 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gsicc_profile_entry_s* %7, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %8, i32 0, i32 2
  %9 = load i64, i64* %key, align 8, !tbaa !45
  %10 = load i64, i64* %key_test.addr, align 8, !tbaa !27
  %cmp1 = icmp eq i64 %9, %10
  br i1 %cmp1, label %if.then, label %if.end.9

if.then:                                          ; preds = %while.body
  %11 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %12 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %profile_cache, align 8, !tbaa !1
  %head2 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %12, i32 0, i32 0
  %13 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %head2, align 8, !tbaa !16
  %cmp3 = icmp ne %struct.gsicc_profile_entry_s* %11, %13
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %14 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %14, i32 0, i32 1
  %15 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %next, align 8, !tbaa !19
  %16 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %prev, align 8, !tbaa !1
  %next5 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %16, i32 0, i32 1
  store %struct.gsicc_profile_entry_s* %15, %struct.gsicc_profile_entry_s** %next5, align 8, !tbaa !19
  %17 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %profile_cache, align 8, !tbaa !1
  %head6 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %17, i32 0, i32 0
  %18 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %head6, align 8, !tbaa !16
  %19 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %next7 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %19, i32 0, i32 1
  store %struct.gsicc_profile_entry_s* %18, %struct.gsicc_profile_entry_s** %next7, align 8, !tbaa !19
  %20 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %21 = load %struct.gsicc_profile_cache_s*, %struct.gsicc_profile_cache_s** %profile_cache, align 8, !tbaa !1
  %head8 = getelementptr inbounds %struct.gsicc_profile_cache_s, %struct.gsicc_profile_cache_s* %21, i32 0, i32 0
  store %struct.gsicc_profile_entry_s* %20, %struct.gsicc_profile_entry_s** %head8, align 8, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %22 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %22, i32 0, i32 0
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !21
  store %struct.gs_color_space_s* %23, %struct.gs_color_space_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %while.body
  %24 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  store %struct.gsicc_profile_entry_s* %24, %struct.gsicc_profile_entry_s** %prev, align 8, !tbaa !1
  %25 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  %next10 = getelementptr inbounds %struct.gsicc_profile_entry_s, %struct.gsicc_profile_entry_s* %25, i32 0, i32 1
  %26 = load %struct.gsicc_profile_entry_s*, %struct.gsicc_profile_entry_s** %next10, align 8, !tbaa !19
  store %struct.gsicc_profile_entry_s* %26, %struct.gsicc_profile_entry_s** %curr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end
  %27 = bitcast %struct.gsicc_profile_entry_s** %curr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.gsicc_profile_entry_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast %struct.gsicc_profile_cache_s** %profile_cache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %retval
  ret %struct.gs_color_space_s* %30
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

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
!5 = !{!6, !2, i64 0}
!6 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{!6, !2, i64 72}
!9 = !{!10, !13, i64 16}
!10 = !{!"gsicc_profile_cache_s", !2, i64 0, !11, i64 8, !12, i64 16, !2, i64 40}
!11 = !{!"int", !3, i64 0}
!12 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!"long", !3, i64 0}
!14 = !{!10, !2, i64 24}
!15 = !{!10, !2, i64 32}
!16 = !{!10, !2, i64 0}
!17 = !{!10, !11, i64 8}
!18 = !{!10, !2, i64 40}
!19 = !{!20, !2, i64 8}
!20 = !{!"gsicc_profile_entry_s", !2, i64 0, !2, i64 8, !13, i64 16}
!21 = !{!20, !2, i64 0}
!22 = !{!23, !13, i64 8}
!23 = !{!"gs_color_space_s", !2, i64 0, !12, i64 8, !13, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!24 = !{!23, !2, i64 24}
!25 = !{!23, !2, i64 16}
!26 = !{!6, !2, i64 24}
!27 = !{!13, !13, i64 0}
!28 = !{!29, !2, i64 352}
!29 = !{!"gs_state_s", !11, i64 0, !2, i64 8, !2, i64 16, !30, i64 24, !11, i64 128, !34, i64 132, !11, i64 168, !35, i64 176, !35, i64 192, !11, i64 208, !11, i64 212, !37, i64 216, !3, i64 220, !38, i64 224, !38, i64 228, !39, i64 232, !13, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !2, i64 264, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !31, i64 296, !40, i64 300, !11, i64 308, !11, i64 312, !11, i64 316, !31, i64 320, !11, i64 324, !11, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !11, i64 408, !2, i64 416, !2, i64 424, !41, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !42, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !42, i64 1336, !2, i64 1616, !32, i64 1624, !11, i64 1648, !32, i64 1652, !11, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !13, i64 1712, !13, i64 1720, !2, i64 1728, !11, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !34, i64 1808, !11, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !11, i64 1864, !2, i64 1872, !2, i64 1880, !43, i64 1888}
!30 = !{!"gx_line_params_s", !31, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !11, i64 20, !31, i64 24, !31, i64 28, !31, i64 32, !11, i64 36, !32, i64 40, !33, i64 64}
!31 = !{!"float", !3, i64 0}
!32 = !{!"gs_matrix_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20}
!33 = !{!"gx_dash_params_s", !2, i64 0, !11, i64 8, !31, i64 12, !11, i64 16, !31, i64 20, !11, i64 24, !11, i64 28, !31, i64 32}
!34 = !{!"gs_matrix_fixed_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20, !11, i64 24, !11, i64 28, !11, i64 32}
!35 = !{!"gs_point_s", !36, i64 0, !36, i64 8}
!36 = !{!"double", !3, i64 0}
!37 = !{!"short", !3, i64 0}
!38 = !{!"gs_transparency_source_s", !31, i64 0}
!39 = !{!"gs_xstate_trans_flags", !11, i64 0, !11, i64 4}
!40 = !{!"gs_fixed_point_s", !11, i64 0, !11, i64 4}
!41 = !{!"gx_transfer_s", !11, i64 0, !2, i64 8, !11, i64 16, !2, i64 24, !11, i64 32, !2, i64 40, !11, i64 48, !2, i64 56}
!42 = !{!"gs_devicen_color_map_s", !11, i64 0, !3, i64 4, !11, i64 8, !11, i64 12, !13, i64 16, !3, i64 24}
!43 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!44 = !{!29, !2, i64 8}
!45 = !{!20, !13, i64 16}
