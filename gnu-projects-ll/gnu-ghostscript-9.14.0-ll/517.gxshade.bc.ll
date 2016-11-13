; ModuleID = './gxshade.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shade_coord_stream_s = type { %struct.stream_s, %struct.stream_s*, i32, i32, i32, %struct.gs_shading_mesh_params_s*, %struct.gs_matrix_fixed_s*, i32 (%struct.shade_coord_stream_s*, i32, i32*)*, i32 (%struct.shade_coord_stream_s*, i32, float*, float*)*, void (%struct.shade_coord_stream_s*, i32)*, i32 (%struct.shade_coord_stream_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
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
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_shading_mesh_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s* }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type opaque
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_ht_cache_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type { float, i32 }
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
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
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type { %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i32, [64 x float], %struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gs_shading_mesh_s*, %struct.gs_fixed_rect_s, %struct.gs_function_s*, i32, i32, i32, i32, %struct.wedge_vertex_list_elem_s*, %struct.wedge_vertex_list_elem_s*, i32, i32, %struct.gs_client_color_s, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, %struct.gs_memory_s*, %struct.gs_color_index_cache_s* }
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_shading_mesh_s = type { %struct.gs_shading_head_s, %struct.gs_shading_mesh_params_s }
%struct.gs_shading_head_s = type { i32, %struct.gs_shading_procs_s }
%struct.gs_shading_procs_s = type { i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)* }
%struct.gs_shading_s = type { %struct.gs_shading_head_s, %struct.gs_shading_params_s }
%struct.gs_shading_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32 }
%struct.wedge_vertex_list_elem_s = type { %struct.gs_fixed_point_s, i32, i32, %struct.wedge_vertex_list_elem_s*, %struct.wedge_vertex_list_elem_s* }
%struct.gs_color_index_cache_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type { i64, i64, i32, i32, %struct.rc_header_s, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32, i32, %struct.gx_cie_vector_cache3_s, %struct.gs_cie_wbsd_s, i32, %struct.gx_cie_vector_cache3_s, i32 }
%struct.gs_cie_wbsd_s = type { %struct.anon, %struct.anon, %struct.anon, %struct.anon }
%struct.anon = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_vector3_s = type { float, float, float }
%struct.gx_cie_vector_cache3_s = type { [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.cie_interpolation_range_s] }
%struct.gx_cie_vector_cache_s = type { %struct.cie_cache_floats_s, %struct.cie_cache_vectors_s }
%struct.cie_cache_floats_s = type { %struct.cie_cache_params_s, [512 x float] }
%struct.cie_cache_params_s = type { i32, double, double, %struct.cie_linear_params_s }
%struct.cie_linear_params_s = type { i32, float, float }
%struct.cie_cache_vectors_s = type { %struct.cie_vector_cache_params_s, [512 x %struct.cie_cached_vector3_s] }
%struct.cie_vector_cache_params_s = type { float, float, float, [3 x %struct.cie_interpolation_range_s] }
%struct.cie_cached_vector3_s = type { float, float, float }
%struct.cie_interpolation_range_s = type { float, float }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_data_source_s = type { i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32, %union.d_ }
%union.d_ = type { %struct.gs_const_string_s }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_function_params_s = type { i32, float*, i32, float* }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
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
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.0 }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.anon.0 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
%struct.gx_cie_float_fixed_cache_s = type { %struct.cie_cache_floats_s, %union.if_ }
%union.if_ = type { %struct.cie_cache_ints_s }
%struct.cie_cache_ints_s = type { %struct.cie_cache_params_s, [512 x i32] }
%union.gx_cie_scalar_cache_s = type { %struct.cie_cache_floats_s }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.shading_vertex_s = type { %struct.gs_fixed_point_s, %struct.patch_color_s* }
%struct.patch_color_s = type { [2 x float], %struct.gs_client_color_s }
%struct.shading_fill_state_s = type { %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i32, [64 x float], %struct.gx_device_s*, %struct.gsicc_link_s* }
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

; Function Attrs: nounwind uwtable
define void @shade_next_init(%struct.shade_coord_stream_s* %cs, %struct.gs_shading_mesh_params_s* %params, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %cs.addr = alloca %struct.shade_coord_stream_s*, align 8
  %params.addr = alloca %struct.gs_shading_mesh_params_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  store %struct.shade_coord_stream_s* %cs, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  store %struct.gs_shading_mesh_params_s* %params, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %1 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %1, i32 0, i32 5
  store %struct.gs_shading_mesh_params_s* %0, %struct.gs_shading_mesh_params_s** %params1, align 8, !tbaa !5
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 5
  %3 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %pctm = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %3, i32 0, i32 6
  store %struct.gs_matrix_fixed_s* %ctm, %struct.gs_matrix_fixed_s** %pctm, align 8, !tbaa !14
  %4 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %4, i32 0, i32 6
  %type = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 1
  %5 = load i32, i32* %type, align 4, !tbaa !15
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource2 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %7, i32 0, i32 6
  %data = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource2, i32 0, i32 2
  %strm = bitcast %union.d_* %data to %struct.stream_s**
  %8 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %9 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %s3 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %9, i32 0, i32 1
  store %struct.stream_s* %8, %struct.stream_s** %s3, align 8, !tbaa !21
  store %struct.stream_s* %8, %struct.stream_s** %s, align 8, !tbaa !1
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 26
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !22
  %cmp4 = icmp ne %struct._IO_FILE* %11, null
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file_limit = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 30
  %13 = load i64, i64* %file_limit, align 8, !tbaa !23
  %cmp5 = icmp ne i64 %13, 9223372036854775807
  br i1 %cmp5, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %file6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 26
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file6, align 8, !tbaa !22
  %cmp7 = icmp eq %struct._IO_FILE* %15, null
  br i1 %cmp7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %lor.lhs.false
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %strm9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 15
  %17 = load %struct.stream_s*, %struct.stream_s** %strm9, align 8, !tbaa !24
  %cmp10 = icmp eq %struct.stream_s* %17, null
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true.8, %land.lhs.true
  %18 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call = call i32 @spseek(%struct.stream_s* %18, i64 0) #3
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true.8, %lor.lhs.false
  %19 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  br label %if.end.21

if.else:                                          ; preds = %entry
  %20 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %ds = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %20, i32 0, i32 0
  call void @s_init(%struct.stream_s* %ds, %struct.gs_memory_s* null) #3
  %21 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %ds12 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %21, i32 0, i32 0
  %22 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource13 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %22, i32 0, i32 6
  %data14 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource13, i32 0, i32 2
  %str = bitcast %union.d_* %data14 to %struct.gs_const_string_s*
  %data15 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %23 = load i8*, i8** %data15, align 8, !tbaa !25
  %24 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource16 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %24, i32 0, i32 6
  %data17 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource16, i32 0, i32 2
  %str18 = bitcast %union.d_* %data17 to %struct.gs_const_string_s*
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str18, i32 0, i32 1
  %25 = load i32, i32* %size, align 4, !tbaa !26
  call void @sread_string(%struct.stream_s* %ds12, i8* %23, i32 %25) #3
  %26 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %ds19 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %26, i32 0, i32 0
  %27 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %s20 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %27, i32 0, i32 1
  store %struct.stream_s* %ds19, %struct.stream_s** %s20, align 8, !tbaa !21
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.end
  %28 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource22 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %28, i32 0, i32 6
  %type23 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource22, i32 0, i32 1
  %29 = load i32, i32* %type23, align 4, !tbaa !15
  %cmp24 = icmp eq i32 %29, 2
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.end.21
  %30 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %get_value = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %30, i32 0, i32 7
  store i32 (%struct.shade_coord_stream_s*, i32, i32*)* @cs_next_array_value, i32 (%struct.shade_coord_stream_s*, i32, i32*)** %get_value, align 8, !tbaa !27
  %31 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %get_decoded = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %31, i32 0, i32 8
  store i32 (%struct.shade_coord_stream_s*, i32, float*, float*)* @cs_next_array_decoded, i32 (%struct.shade_coord_stream_s*, i32, float*, float*)** %get_decoded, align 8, !tbaa !28
  %32 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %align = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %32, i32 0, i32 9
  store void (%struct.shade_coord_stream_s*, i32)* @cs_array_align, void (%struct.shade_coord_stream_s*, i32)** %align, align 8, !tbaa !29
  br label %if.end.30

if.else.26:                                       ; preds = %if.end.21
  %33 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %get_value27 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %33, i32 0, i32 7
  store i32 (%struct.shade_coord_stream_s*, i32, i32*)* @cs_next_packed_value, i32 (%struct.shade_coord_stream_s*, i32, i32*)** %get_value27, align 8, !tbaa !27
  %34 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %get_decoded28 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %34, i32 0, i32 8
  store i32 (%struct.shade_coord_stream_s*, i32, float*, float*)* @cs_next_packed_decoded, i32 (%struct.shade_coord_stream_s*, i32, float*, float*)** %get_decoded28, align 8, !tbaa !28
  %35 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %align29 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %35, i32 0, i32 9
  store void (%struct.shade_coord_stream_s*, i32)* @cs_packed_align, void (%struct.shade_coord_stream_s*, i32)** %align29, align 8, !tbaa !29
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.26, %if.then.25
  %36 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %is_eod = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %36, i32 0, i32 10
  store i32 (%struct.shade_coord_stream_s*)* @cs_eod, i32 (%struct.shade_coord_stream_s*)** %is_eod, align 8, !tbaa !30
  %37 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %left = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %37, i32 0, i32 3
  store i32 0, i32* %left, align 4, !tbaa !31
  %38 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %ds_EOF = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %38, i32 0, i32 4
  store i32 0, i32* %ds_EOF, align 4, !tbaa !32
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @spseek(%struct.stream_s*, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #2

declare void @sread_string(%struct.stream_s*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @cs_next_array_value(%struct.shade_coord_stream_s* %cs, i32 %num_bits, i32* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %cs.addr = alloca %struct.shade_coord_stream_s*, align 8
  %num_bits.addr = alloca i32, align 4
  %pvalue.addr = alloca i32*, align 8
  %value = alloca float, align 4
  %read = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.shade_coord_stream_s* %cs, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  store i32 %num_bits, i32* %num_bits.addr, align 4, !tbaa !33
  store i32* %pvalue, i32** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast float* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %2, i32 0, i32 1
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !21
  %4 = bitcast float* %value to i8*
  %call = call i32 @sgets(%struct.stream_s* %3, i8* %4, i32 4, i32* %read) #3
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %read, align 4, !tbaa !33
  %conv = zext i32 %5 to i64
  %cmp1 = icmp ne i64 %conv, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %ds_EOF = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %6, i32 0, i32 4
  store i32 1, i32* %ds_EOF, align 4, !tbaa !32
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = load float, float* %value, align 4, !tbaa !34
  %cmp3 = fcmp olt float %7, 0.000000e+00
  br i1 %cmp3, label %if.then.20, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.end
  %8 = load i32, i32* %num_bits.addr, align 4, !tbaa !33
  %cmp6 = icmp ne i32 %8, 0
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false.15

land.lhs.true:                                    ; preds = %lor.lhs.false.5
  %9 = load i32, i32* %num_bits.addr, align 4, !tbaa !33
  %conv8 = sext i32 %9 to i64
  %cmp9 = icmp ult i64 %conv8, 32
  br i1 %cmp9, label %land.lhs.true.11, label %lor.lhs.false.15

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %10 = load float, float* %value, align 4, !tbaa !34
  %11 = load i32, i32* %num_bits.addr, align 4, !tbaa !33
  %shl = shl i32 1, %11
  %conv12 = sitofp i32 %shl to float
  %cmp13 = fcmp oge float %10, %conv12
  br i1 %cmp13, label %if.then.20, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.11, %land.lhs.true, %lor.lhs.false.5
  %12 = load float, float* %value, align 4, !tbaa !34
  %13 = load float, float* %value, align 4, !tbaa !34
  %conv16 = fptoui float %13 to i32
  %conv17 = uitofp i32 %conv16 to float
  %cmp18 = fcmp une float %12, %conv17
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.15, %land.lhs.true.11, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %lor.lhs.false.15
  %14 = load float, float* %value, align 4, !tbaa !34
  %conv22 = fptoui float %14 to i32
  %15 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %conv22, i32* %15, align 4, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20, %if.then
  %16 = bitcast i32* %read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast float* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @cs_next_array_decoded(%struct.shade_coord_stream_s* %cs, i32 %num_bits, float* %decode, float* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %cs.addr = alloca %struct.shade_coord_stream_s*, align 8
  %num_bits.addr = alloca i32, align 4
  %decode.addr = alloca float*, align 8
  %pvalue.addr = alloca float*, align 8
  %value = alloca float, align 4
  %read = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.shade_coord_stream_s* %cs, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  store i32 %num_bits, i32* %num_bits.addr, align 4, !tbaa !33
  store float* %decode, float** %decode.addr, align 8, !tbaa !1
  store float* %pvalue, float** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast float* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %2, i32 0, i32 1
  %3 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !21
  %4 = bitcast float* %value to i8*
  %call = call i32 @sgets(%struct.stream_s* %3, i8* %4, i32 4, i32* %read) #3
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %read, align 4, !tbaa !33
  %conv = zext i32 %5 to i64
  %cmp1 = icmp ne i64 %conv, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %ds_EOF = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %6, i32 0, i32 4
  store i32 1, i32* %ds_EOF, align 4, !tbaa !32
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = load float, float* %value, align 4, !tbaa !34
  %8 = load float*, float** %pvalue.addr, align 8, !tbaa !1
  store float %7, float* %8, align 4, !tbaa !34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i32* %read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast float* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal void @cs_array_align(%struct.shade_coord_stream_s* %cs, i32 %radix) #0 {
entry:
  %cs.addr = alloca %struct.shade_coord_stream_s*, align 8
  %radix.addr = alloca i32, align 4
  store %struct.shade_coord_stream_s* %cs, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  store i32 %radix, i32* %radix.addr, align 4, !tbaa !33
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cs_next_packed_value(%struct.shade_coord_stream_s* %cs, i32 %num_bits, i32* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %cs.addr = alloca %struct.shade_coord_stream_s*, align 8
  %num_bits.addr = alloca i32, align 4
  %pvalue.addr = alloca i32*, align 8
  %bits = alloca i32, align 4
  %left = alloca i32, align 4
  %needed = alloca i32, align 4
  %value = alloca i32, align 4
  %b = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %b33 = alloca i32, align 4
  store %struct.shade_coord_stream_s* %cs, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  store i32 %num_bits, i32* %num_bits.addr, align 4, !tbaa !33
  store i32* %pvalue, i32** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %bits1 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %1, i32 0, i32 2
  %2 = load i32, i32* %bits1, align 4, !tbaa !36
  store i32 %2, i32* %bits, align 4, !tbaa !33
  %3 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %left2 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %4, i32 0, i32 3
  %5 = load i32, i32* %left2, align 4, !tbaa !31
  store i32 %5, i32* %left, align 4, !tbaa !33
  %6 = load i32, i32* %left, align 4, !tbaa !33
  %7 = load i32, i32* %num_bits.addr, align 4, !tbaa !33
  %cmp = icmp sge i32 %6, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %num_bits.addr, align 4, !tbaa !33
  %9 = load i32, i32* %left, align 4, !tbaa !33
  %sub = sub nsw i32 %9, %8
  store i32 %sub, i32* %left, align 4, !tbaa !33
  %10 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %left3 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %10, i32 0, i32 3
  store i32 %sub, i32* %left3, align 4, !tbaa !31
  %11 = load i32, i32* %bits, align 4, !tbaa !33
  %12 = load i32, i32* %left, align 4, !tbaa !33
  %shr = lshr i32 %11, %12
  %13 = load i32, i32* %num_bits.addr, align 4, !tbaa !33
  %shl = shl i32 1, %13
  %sub4 = sub nsw i32 %shl, 1
  %and = and i32 %shr, %sub4
  %14 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %and, i32* %14, align 4, !tbaa !33
  br label %if.end.82

if.else:                                          ; preds = %entry
  %15 = bitcast i32* %needed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %num_bits.addr, align 4, !tbaa !33
  %17 = load i32, i32* %left, align 4, !tbaa !33
  %sub5 = sub nsw i32 %16, %17
  store i32 %sub5, i32* %needed, align 4, !tbaa !33
  %18 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %bits, align 4, !tbaa !33
  %20 = load i32, i32* %left, align 4, !tbaa !33
  %shl6 = shl i32 1, %20
  %sub7 = sub nsw i32 %shl6, 1
  %and8 = and i32 %19, %sub7
  store i32 %and8, i32* %value, align 4, !tbaa !33
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %21 = load i32, i32* %needed, align 4, !tbaa !33
  %cmp9 = icmp sge i32 %21, 8
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %23, i32 0, i32 1
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !21
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %25 = load i8*, i8** %limit, align 8, !tbaa !37
  %26 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %s10 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %26, i32 0, i32 1
  %27 = load %struct.stream_s*, %struct.stream_s** %s10, align 8, !tbaa !21
  %cursor11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 5
  %r12 = bitcast %union.stream_cursor_s* %cursor11 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r12, i32 0, i32 0
  %28 = load i8*, i8** %ptr, align 8, !tbaa !39
  %sub.ptr.lhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp13 = icmp sgt i64 %sub.ptr.sub, 1
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %29 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %s14 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %29, i32 0, i32 1
  %30 = load %struct.stream_s*, %struct.stream_s** %s14, align 8, !tbaa !21
  %cursor15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 5
  %r16 = bitcast %union.stream_cursor_s* %cursor15 to %struct.stream_cursor_read_s*
  %ptr17 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r16, i32 0, i32 0
  %31 = load i8*, i8** %ptr17, align 8, !tbaa !39
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %ptr17, align 8, !tbaa !39
  %32 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %s18 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %32, i32 0, i32 1
  %33 = load %struct.stream_s*, %struct.stream_s** %s18, align 8, !tbaa !21
  %cursor19 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 5
  %r20 = bitcast %union.stream_cursor_s* %cursor19 to %struct.stream_cursor_read_s*
  %ptr21 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r20, i32 0, i32 0
  %34 = load i8*, i8** %ptr21, align 8, !tbaa !39
  %35 = load i8, i8* %34, align 1, !tbaa !40
  %conv = zext i8 %35 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %36 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %s22 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %36, i32 0, i32 1
  %37 = load %struct.stream_s*, %struct.stream_s** %s22, align 8, !tbaa !21
  %call = call i32 @spgetcc(%struct.stream_s* %37, i32 1) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %b, align 4, !tbaa !33
  %38 = load i32, i32* %b, align 4, !tbaa !33
  %cmp23 = icmp slt i32 %38, 0
  br i1 %cmp23, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %cond.end
  %39 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %ds_EOF = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %39, i32 0, i32 4
  store i32 1, i32* %ds_EOF, align 4, !tbaa !32
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %40 = load i32, i32* %value, align 4, !tbaa !33
  %shl26 = shl i32 %40, 8
  %41 = load i32, i32* %b, align 4, !tbaa !33
  %add = add i32 %shl26, %41
  store i32 %add, i32* %value, align 4, !tbaa !33
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.25
  %42 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.78 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %43 = load i32, i32* %needed, align 4, !tbaa !33
  %sub27 = sub nsw i32 %43, 8
  store i32 %sub27, i32* %needed, align 4, !tbaa !33
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load i32, i32* %needed, align 4, !tbaa !33
  %cmp28 = icmp eq i32 %44, 0
  br i1 %cmp28, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %for.end
  %45 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %left31 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %45, i32 0, i32 3
  store i32 0, i32* %left31, align 4, !tbaa !31
  %46 = load i32, i32* %value, align 4, !tbaa !33
  %47 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %46, i32* %47, align 4, !tbaa !33
  br label %if.end.77

if.else.32:                                       ; preds = %for.end
  %48 = bitcast i32* %b33 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %s34 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %49, i32 0, i32 1
  %50 = load %struct.stream_s*, %struct.stream_s** %s34, align 8, !tbaa !21
  %cursor35 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %50, i32 0, i32 5
  %r36 = bitcast %union.stream_cursor_s* %cursor35 to %struct.stream_cursor_read_s*
  %limit37 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r36, i32 0, i32 1
  %51 = load i8*, i8** %limit37, align 8, !tbaa !37
  %52 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %s38 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %52, i32 0, i32 1
  %53 = load %struct.stream_s*, %struct.stream_s** %s38, align 8, !tbaa !21
  %cursor39 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %53, i32 0, i32 5
  %r40 = bitcast %union.stream_cursor_s* %cursor39 to %struct.stream_cursor_read_s*
  %ptr41 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r40, i32 0, i32 0
  %54 = load i8*, i8** %ptr41, align 8, !tbaa !39
  %sub.ptr.lhs.cast42 = ptrtoint i8* %51 to i64
  %sub.ptr.rhs.cast43 = ptrtoint i8* %54 to i64
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43
  %cmp45 = icmp sgt i64 %sub.ptr.sub44, 1
  br i1 %cmp45, label %cond.true.47, label %cond.false.58

cond.true.47:                                     ; preds = %if.else.32
  %55 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %s48 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %55, i32 0, i32 1
  %56 = load %struct.stream_s*, %struct.stream_s** %s48, align 8, !tbaa !21
  %cursor49 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %56, i32 0, i32 5
  %r50 = bitcast %union.stream_cursor_s* %cursor49 to %struct.stream_cursor_read_s*
  %ptr51 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r50, i32 0, i32 0
  %57 = load i8*, i8** %ptr51, align 8, !tbaa !39
  %incdec.ptr52 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr52, i8** %ptr51, align 8, !tbaa !39
  %58 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %s53 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %58, i32 0, i32 1
  %59 = load %struct.stream_s*, %struct.stream_s** %s53, align 8, !tbaa !21
  %cursor54 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %59, i32 0, i32 5
  %r55 = bitcast %union.stream_cursor_s* %cursor54 to %struct.stream_cursor_read_s*
  %ptr56 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r55, i32 0, i32 0
  %60 = load i8*, i8** %ptr56, align 8, !tbaa !39
  %61 = load i8, i8* %60, align 1, !tbaa !40
  %conv57 = zext i8 %61 to i32
  br label %cond.end.61

cond.false.58:                                    ; preds = %if.else.32
  %62 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %s59 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %62, i32 0, i32 1
  %63 = load %struct.stream_s*, %struct.stream_s** %s59, align 8, !tbaa !21
  %call60 = call i32 @spgetcc(%struct.stream_s* %63, i32 1) #3
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.58, %cond.true.47
  %cond62 = phi i32 [ %conv57, %cond.true.47 ], [ %call60, %cond.false.58 ]
  store i32 %cond62, i32* %b33, align 4, !tbaa !33
  %64 = load i32, i32* %b33, align 4, !tbaa !33
  %cmp63 = icmp slt i32 %64, 0
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %cond.end.61
  %65 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %ds_EOF66 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %65, i32 0, i32 4
  store i32 1, i32* %ds_EOF66, align 4, !tbaa !32
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74

if.end.67:                                        ; preds = %cond.end.61
  %66 = load i32, i32* %b33, align 4, !tbaa !33
  %67 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %bits68 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %67, i32 0, i32 2
  store i32 %66, i32* %bits68, align 4, !tbaa !36
  %68 = load i32, i32* %needed, align 4, !tbaa !33
  %sub69 = sub nsw i32 8, %68
  store i32 %sub69, i32* %left, align 4, !tbaa !33
  %69 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %left70 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %69, i32 0, i32 3
  store i32 %sub69, i32* %left70, align 4, !tbaa !31
  %70 = load i32, i32* %value, align 4, !tbaa !33
  %71 = load i32, i32* %needed, align 4, !tbaa !33
  %shl71 = shl i32 %70, %71
  %72 = load i32, i32* %b33, align 4, !tbaa !33
  %73 = load i32, i32* %left, align 4, !tbaa !33
  %shr72 = ashr i32 %72, %73
  %add73 = add i32 %shl71, %shr72
  %74 = load i32*, i32** %pvalue.addr, align 8, !tbaa !1
  store i32 %add73, i32* %74, align 4, !tbaa !33
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.74

cleanup.74:                                       ; preds = %if.end.67, %if.then.65
  %75 = bitcast i32* %b33 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %cleanup.dest.75 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.75, label %cleanup.78 [
    i32 0, label %cleanup.cont.76
  ]

cleanup.cont.76:                                  ; preds = %cleanup.74
  br label %if.end.77

if.end.77:                                        ; preds = %cleanup.cont.76, %if.then.30
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.78

cleanup.78:                                       ; preds = %if.end.77, %cleanup.74, %cleanup
  %76 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %needed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %cleanup.dest.80 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.80, label %cleanup.83 [
    i32 0, label %cleanup.cont.81
  ]

cleanup.cont.81:                                  ; preds = %cleanup.78
  br label %if.end.82

if.end.82:                                        ; preds = %cleanup.cont.81, %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

cleanup.83:                                       ; preds = %if.end.82, %cleanup.78
  %78 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal i32 @cs_next_packed_decoded(%struct.shade_coord_stream_s* %cs, i32 %num_bits, float* %decode, float* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %cs.addr = alloca %struct.shade_coord_stream_s*, align 8
  %num_bits.addr = alloca i32, align 4
  %decode.addr = alloca float*, align 8
  %pvalue.addr = alloca float*, align 8
  %value = alloca i32, align 4
  %code = alloca i32, align 4
  %max_value = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.shade_coord_stream_s* %cs, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  store i32 %num_bits, i32* %num_bits.addr, align 4, !tbaa !33
  store float* %decode, float** %decode.addr, align 8, !tbaa !1
  store float* %pvalue, float** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %get_value = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %2, i32 0, i32 7
  %3 = load i32 (%struct.shade_coord_stream_s*, i32, i32*)*, i32 (%struct.shade_coord_stream_s*, i32, i32*)** %get_value, align 8, !tbaa !27
  %4 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %5 = load i32, i32* %num_bits.addr, align 4, !tbaa !33
  %call = call i32 %3(%struct.shade_coord_stream_s* %4, i32 %5, i32* %value) #3
  store i32 %call, i32* %code, align 4, !tbaa !33
  %6 = bitcast double* %max_value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %num_bits.addr, align 4, !tbaa !33
  %conv = sext i32 %7 to i64
  %cmp = icmp eq i64 %conv, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %num_bits.addr, align 4, !tbaa !33
  %shl = shl i32 1, %8
  %sub = sub nsw i32 %shl, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %sub, %cond.false ]
  %conv2 = uitofp i32 %cond to double
  store double %conv2, double* %max_value, align 8, !tbaa !41
  %9 = load i32, i32* %code, align 4, !tbaa !33
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %10 = load i32, i32* %code, align 4, !tbaa !33
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %11 = load float*, float** %decode.addr, align 8, !tbaa !1
  %cmp5 = icmp eq float* %11, null
  br i1 %cmp5, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %if.end
  %12 = load i32, i32* %value, align 4, !tbaa !33
  %conv8 = uitofp i32 %12 to double
  %13 = load double, double* %max_value, align 8, !tbaa !41
  %div = fdiv double %conv8, %13
  br label %cond.end.17

cond.false.9:                                     ; preds = %if.end
  %14 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %14, i64 0
  %15 = load float, float* %arrayidx, align 4, !tbaa !34
  %conv10 = fpext float %15 to double
  %16 = load i32, i32* %value, align 4, !tbaa !33
  %conv11 = uitofp i32 %16 to float
  %17 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds float, float* %17, i64 1
  %18 = load float, float* %arrayidx12, align 4, !tbaa !34
  %19 = load float*, float** %decode.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds float, float* %19, i64 0
  %20 = load float, float* %arrayidx13, align 4, !tbaa !34
  %sub14 = fsub float %18, %20
  %mul = fmul float %conv11, %sub14
  %conv15 = fpext float %mul to double
  %21 = load double, double* %max_value, align 8, !tbaa !41
  %div16 = fdiv double %conv15, %21
  %add = fadd double %conv10, %div16
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.9, %cond.true.7
  %cond18 = phi double [ %div, %cond.true.7 ], [ %add, %cond.false.9 ]
  %conv19 = fptrunc double %cond18 to float
  %22 = load float*, float** %pvalue.addr, align 8, !tbaa !1
  store float %conv19, float* %22, align 4, !tbaa !34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.17, %if.then
  %23 = bitcast double* %max_value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal void @cs_packed_align(%struct.shade_coord_stream_s* %cs, i32 %radix) #0 {
entry:
  %cs.addr = alloca %struct.shade_coord_stream_s*, align 8
  %radix.addr = alloca i32, align 4
  store %struct.shade_coord_stream_s* %cs, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  store i32 %radix, i32* %radix.addr, align 4, !tbaa !33
  %0 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %left = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %0, i32 0, i32 3
  %1 = load i32, i32* %left, align 4, !tbaa !31
  %2 = load i32, i32* %radix.addr, align 4, !tbaa !33
  %div = sdiv i32 %1, %2
  %3 = load i32, i32* %radix.addr, align 4, !tbaa !33
  %mul = mul nsw i32 %div, %3
  %4 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %left1 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %4, i32 0, i32 3
  store i32 %mul, i32* %left1, align 4, !tbaa !31
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cs_eod(%struct.shade_coord_stream_s* %cs) #0 {
entry:
  %cs.addr = alloca %struct.shade_coord_stream_s*, align 8
  store %struct.shade_coord_stream_s* %cs, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %0 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %ds_EOF = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %0, i32 0, i32 4
  %1 = load i32, i32* %ds_EOF, align 4, !tbaa !32
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @shade_next_flag(%struct.shade_coord_stream_s* %cs, i32 %BitsPerFlag) #0 {
entry:
  %cs.addr = alloca %struct.shade_coord_stream_s*, align 8
  %BitsPerFlag.addr = alloca i32, align 4
  %flag = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.shade_coord_stream_s* %cs, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  store i32 %BitsPerFlag, i32* %BitsPerFlag.addr, align 4, !tbaa !33
  %0 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %left = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %2, i32 0, i32 3
  store i32 0, i32* %left, align 4, !tbaa !31
  %3 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %get_value = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %3, i32 0, i32 7
  %4 = load i32 (%struct.shade_coord_stream_s*, i32, i32*)*, i32 (%struct.shade_coord_stream_s*, i32, i32*)** %get_value, align 8, !tbaa !27
  %5 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %6 = load i32, i32* %BitsPerFlag.addr, align 4, !tbaa !33
  %call = call i32 %4(%struct.shade_coord_stream_s* %5, i32 %6, i32* %flag) #3
  store i32 %call, i32* %code, align 4, !tbaa !33
  %7 = load i32, i32* %code, align 4, !tbaa !33
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !33
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %flag, align 4, !tbaa !33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @shade_next_coords(%struct.shade_coord_stream_s* %cs, %struct.gs_fixed_point_s* %ppt, i32 %num_points) #0 {
entry:
  %cs.addr = alloca %struct.shade_coord_stream_s*, align 8
  %ppt.addr = alloca %struct.gs_fixed_point_s*, align 8
  %num_points.addr = alloca i32, align 4
  %num_bits = alloca i32, align 4
  %decode = alloca float*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.shade_coord_stream_s* %cs, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %ppt, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  store i32 %num_points, i32* %num_points.addr, align 4, !tbaa !33
  %0 = bitcast i32* %num_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %1, i32 0, i32 5
  %2 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params, align 8, !tbaa !5
  %BitsPerCoordinate = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %2, i32 0, i32 7
  %3 = load i32, i32* %BitsPerCoordinate, align 4, !tbaa !42
  store i32 %3, i32* %num_bits, align 4, !tbaa !33
  %4 = bitcast float** %decode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %5, i32 0, i32 5
  %6 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params1, align 8, !tbaa !5
  %Decode = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %6, i32 0, i32 9
  %7 = load float*, float** %Decode, align 8, !tbaa !43
  store float* %7, float** %decode, align 8, !tbaa !1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %code, align 4, !tbaa !33
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %i, align 4, !tbaa !33
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !33
  %11 = load i32, i32* %num_points.addr, align 4, !tbaa !33
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %get_decoded = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %14, i32 0, i32 8
  %15 = load i32 (%struct.shade_coord_stream_s*, i32, float*, float*)*, i32 (%struct.shade_coord_stream_s*, i32, float*, float*)** %get_decoded, align 8, !tbaa !28
  %16 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %17 = load i32, i32* %num_bits, align 4, !tbaa !33
  %18 = load float*, float** %decode, align 8, !tbaa !1
  %call = call i32 %15(%struct.shade_coord_stream_s* %16, i32 %17, float* %18, float* %x) #3
  store i32 %call, i32* %code, align 4, !tbaa !33
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %19 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %get_decoded3 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %19, i32 0, i32 8
  %20 = load i32 (%struct.shade_coord_stream_s*, i32, float*, float*)*, i32 (%struct.shade_coord_stream_s*, i32, float*, float*)** %get_decoded3, align 8, !tbaa !28
  %21 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %22 = load i32, i32* %num_bits, align 4, !tbaa !33
  %23 = load float*, float** %decode, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds float, float* %23, i64 2
  %call4 = call i32 %20(%struct.shade_coord_stream_s* %21, i32 %22, float* %add.ptr, float* %y) #3
  store i32 %call4, i32* %code, align 4, !tbaa !33
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %24 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %pctm = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %24, i32 0, i32 6
  %25 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pctm, align 8, !tbaa !14
  %26 = load float, float* %x, align 4, !tbaa !34
  %conv = fpext float %26 to double
  %27 = load float, float* %y, align 4, !tbaa !34
  %conv7 = fpext float %27 to double
  %28 = load i32, i32* %i, align 4, !tbaa !33
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %29, i64 %idxprom
  %call8 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %25, double %conv, double %conv7, %struct.gs_fixed_point_s* %arrayidx) #3
  store i32 %call8, i32* %code, align 4, !tbaa !33
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false, %for.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %30 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %32 = load i32, i32* %i, align 4, !tbaa !33
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !33
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %33 = load i32, i32* %code, align 4, !tbaa !33
  store i32 1, i32* %cleanup.dest.slot
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast float** %decode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i32* %num_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  ret i32 %33

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s*, double, double, %struct.gs_fixed_point_s*) #2

; Function Attrs: nounwind uwtable
define i32 @shade_next_color(%struct.shade_coord_stream_s* %cs, float* %pc) #0 {
entry:
  %retval = alloca i32, align 4
  %cs.addr = alloca %struct.shade_coord_stream_s*, align 8
  %pc.addr = alloca float*, align 8
  %decode = alloca float*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %index = alloca i32, align 4
  %num_bits = alloca i32, align 4
  %ncomp = alloca i32, align 4
  %ci = alloca i32, align 4
  %cf = alloca float, align 4
  %code = alloca i32, align 4
  %cc = alloca %struct.gs_client_color_s, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i30 = alloca i32, align 4
  %code31 = alloca i32, align 4
  %ncomp32 = alloca i32, align 4
  %params53 = alloca %struct.gs_function_params_s*, align 8
  store %struct.shade_coord_stream_s* %cs, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  store float* %pc, float** %pc.addr, align 8, !tbaa !1
  %0 = bitcast float** %decode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %1, i32 0, i32 5
  %2 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params, align 8, !tbaa !5
  %Decode = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %2, i32 0, i32 9
  %3 = load float*, float** %Decode, align 8, !tbaa !43
  %add.ptr = getelementptr inbounds float, float* %3, i64 4
  store float* %add.ptr, float** %decode, align 8, !tbaa !1
  %4 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %5, i32 0, i32 5
  %6 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params1, align 8, !tbaa !5
  %ColorSpace = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %6, i32 0, i32 0
  %7 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !44
  store %struct.gs_color_space_s* %7, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %8 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %9) #3
  store i32 %call, i32* %index, align 4, !tbaa !40
  %10 = bitcast i32* %num_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %11, i32 0, i32 5
  %12 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params2, align 8, !tbaa !5
  %BitsPerComponent = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %12, i32 0, i32 8
  %13 = load i32, i32* %BitsPerComponent, align 4, !tbaa !45
  store i32 %13, i32* %num_bits, align 4, !tbaa !33
  %14 = load i32, i32* %index, align 4, !tbaa !40
  %cmp = icmp eq i32 %14, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call3 = call %struct.gs_color_space_s* @gs_cspace_base_space(%struct.gs_color_space_s* %16) #3
  %call4 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %call3) #3
  store i32 %call4, i32* %ncomp, align 4, !tbaa !33
  %17 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast float* %cf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %get_decoded = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %20, i32 0, i32 8
  %21 = load i32 (%struct.shade_coord_stream_s*, i32, float*, float*)*, i32 (%struct.shade_coord_stream_s*, i32, float*, float*)** %get_decoded, align 8, !tbaa !28
  %22 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %23 = load i32, i32* %num_bits, align 4, !tbaa !33
  %24 = load float*, float** %decode, align 8, !tbaa !1
  %call5 = call i32 %21(%struct.shade_coord_stream_s* %22, i32 %23, float* %24, float* %cf) #3
  store i32 %call5, i32* %code, align 4, !tbaa !33
  %25 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %25) #1
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load i32, i32* %code, align 4, !tbaa !33
  %cmp6 = icmp slt i32 %27, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %28 = load i32, i32* %code, align 4, !tbaa !33
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %29 = load float, float* %cf, align 4, !tbaa !34
  %cmp8 = fcmp olt float %29, 0.000000e+00
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %30 = load float, float* %cf, align 4, !tbaa !34
  %conv = fptosi float %30 to i32
  store i32 %conv, i32* %ci, align 4, !tbaa !33
  %31 = load i32, i32* %ci, align 4, !tbaa !33
  %32 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call11 = call i32 @gs_cspace_indexed_num_entries(%struct.gs_color_space_s* %32) #3
  %cmp12 = icmp sge i32 %31, %call11
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.10
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %34 = load i32, i32* %ci, align 4, !tbaa !33
  %call16 = call i32 @gs_cspace_indexed_lookup(%struct.gs_color_space_s* %33, i32 %34, %struct.gs_client_color_s* %cc) #3
  store i32 %call16, i32* %code, align 4, !tbaa !33
  %35 = load i32, i32* %code, align 4, !tbaa !33
  %cmp17 = icmp slt i32 %35, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  %36 = load i32, i32* %code, align 4, !tbaa !33
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.15
  store i32 0, i32* %i, align 4, !tbaa !33
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %37 = load i32, i32* %i, align 4, !tbaa !33
  %38 = load i32, i32* %ncomp, align 4, !tbaa !33
  %cmp21 = icmp slt i32 %37, %38
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %i, align 4, !tbaa !33
  %idxprom = sext i32 %39 to i64
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 %idxprom
  %40 = load float, float* %arrayidx, align 4, !tbaa !34
  %41 = load i32, i32* %i, align 4, !tbaa !33
  %idxprom23 = sext i32 %41 to i64
  %42 = load float*, float** %pc.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds float, float* %42, i64 %idxprom23
  store float %40, float* %arrayidx24, align 4, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4, !tbaa !33
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4, !tbaa !33
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.19, %if.then.14, %if.then.9, %if.then.7
  %44 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %45) #1
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast float* %cf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.100 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.99

if.else:                                          ; preds = %entry
  %50 = bitcast i32* %i30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = bitcast i32* %code31 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = bitcast i32* %ncomp32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %params33 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %53, i32 0, i32 5
  %54 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params33, align 8, !tbaa !5
  %Function = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %54, i32 0, i32 10
  %55 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !46
  %cmp34 = icmp ne %struct.gs_function_s* %55, null
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %56 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call36 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %56) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %call36, %cond.false ]
  store i32 %cond, i32* %ncomp32, align 4, !tbaa !33
  store i32 0, i32* %i30, align 4, !tbaa !33
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.91, %cond.end
  %57 = load i32, i32* %i30, align 4, !tbaa !33
  %58 = load i32, i32* %ncomp32, align 4, !tbaa !33
  %cmp38 = icmp slt i32 %57, %58
  br i1 %cmp38, label %for.body.40, label %for.end.93

for.body.40:                                      ; preds = %for.cond.37
  %59 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %get_decoded41 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %59, i32 0, i32 8
  %60 = load i32 (%struct.shade_coord_stream_s*, i32, float*, float*)*, i32 (%struct.shade_coord_stream_s*, i32, float*, float*)** %get_decoded41, align 8, !tbaa !28
  %61 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %62 = load i32, i32* %num_bits, align 4, !tbaa !33
  %63 = load float*, float** %decode, align 8, !tbaa !1
  %64 = load i32, i32* %i30, align 4, !tbaa !33
  %mul = mul nsw i32 %64, 2
  %idx.ext = sext i32 %mul to i64
  %add.ptr42 = getelementptr inbounds float, float* %63, i64 %idx.ext
  %65 = load i32, i32* %i30, align 4, !tbaa !33
  %idxprom43 = sext i32 %65 to i64
  %66 = load float*, float** %pc.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds float, float* %66, i64 %idxprom43
  %call45 = call i32 %60(%struct.shade_coord_stream_s* %61, i32 %62, float* %add.ptr42, float* %arrayidx44) #3
  store i32 %call45, i32* %code31, align 4, !tbaa !33
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.body.40
  %67 = load i32, i32* %code31, align 4, !tbaa !33
  store i32 %67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.94

if.end.49:                                        ; preds = %for.body.40
  %68 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %params50 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %68, i32 0, i32 5
  %69 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params50, align 8, !tbaa !5
  %Function51 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %69, i32 0, i32 10
  %70 = load %struct.gs_function_s*, %struct.gs_function_s** %Function51, align 8, !tbaa !46
  %tobool = icmp ne %struct.gs_function_s* %70, null
  br i1 %tobool, label %if.then.52, label %if.end.90

if.then.52:                                       ; preds = %if.end.49
  %71 = bitcast %struct.gs_function_params_s** %params53 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  %72 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %params54 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %72, i32 0, i32 5
  %73 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params54, align 8, !tbaa !5
  %Function55 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %73, i32 0, i32 10
  %74 = load %struct.gs_function_s*, %struct.gs_function_s** %Function55, align 8, !tbaa !46
  %params56 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %74, i32 0, i32 1
  store %struct.gs_function_params_s* %params56, %struct.gs_function_params_s** %params53, align 8, !tbaa !1
  %75 = load i32, i32* %i30, align 4, !tbaa !33
  %idxprom57 = sext i32 %75 to i64
  %76 = load float*, float** %pc.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds float, float* %76, i64 %idxprom57
  %77 = load float, float* %arrayidx58, align 4, !tbaa !34
  %78 = load i32, i32* %i30, align 4, !tbaa !33
  %79 = load i32, i32* %i30, align 4, !tbaa !33
  %add = add nsw i32 %78, %79
  %idxprom59 = sext i32 %add to i64
  %80 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %params53, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %80, i32 0, i32 1
  %81 = load float*, float** %Domain, align 8, !tbaa !47
  %arrayidx60 = getelementptr inbounds float, float* %81, i64 %idxprom59
  %82 = load float, float* %arrayidx60, align 4, !tbaa !34
  %cmp61 = fcmp olt float %77, %82
  br i1 %cmp61, label %if.then.63, label %if.else.70

if.then.63:                                       ; preds = %if.then.52
  %83 = load i32, i32* %i30, align 4, !tbaa !33
  %84 = load i32, i32* %i30, align 4, !tbaa !33
  %add64 = add nsw i32 %83, %84
  %idxprom65 = sext i32 %add64 to i64
  %85 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %params53, align 8, !tbaa !1
  %Domain66 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %85, i32 0, i32 1
  %86 = load float*, float** %Domain66, align 8, !tbaa !47
  %arrayidx67 = getelementptr inbounds float, float* %86, i64 %idxprom65
  %87 = load float, float* %arrayidx67, align 4, !tbaa !34
  %88 = load i32, i32* %i30, align 4, !tbaa !33
  %idxprom68 = sext i32 %88 to i64
  %89 = load float*, float** %pc.addr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds float, float* %89, i64 %idxprom68
  store float %87, float* %arrayidx69, align 4, !tbaa !34
  br label %if.end.89

if.else.70:                                       ; preds = %if.then.52
  %90 = load i32, i32* %i30, align 4, !tbaa !33
  %idxprom71 = sext i32 %90 to i64
  %91 = load float*, float** %pc.addr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds float, float* %91, i64 %idxprom71
  %92 = load float, float* %arrayidx72, align 4, !tbaa !34
  %93 = load i32, i32* %i30, align 4, !tbaa !33
  %94 = load i32, i32* %i30, align 4, !tbaa !33
  %add73 = add nsw i32 %93, %94
  %add74 = add nsw i32 %add73, 1
  %idxprom75 = sext i32 %add74 to i64
  %95 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %params53, align 8, !tbaa !1
  %Domain76 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %95, i32 0, i32 1
  %96 = load float*, float** %Domain76, align 8, !tbaa !47
  %arrayidx77 = getelementptr inbounds float, float* %96, i64 %idxprom75
  %97 = load float, float* %arrayidx77, align 4, !tbaa !34
  %cmp78 = fcmp ogt float %92, %97
  br i1 %cmp78, label %if.then.80, label %if.end.88

if.then.80:                                       ; preds = %if.else.70
  %98 = load i32, i32* %i30, align 4, !tbaa !33
  %99 = load i32, i32* %i30, align 4, !tbaa !33
  %add81 = add nsw i32 %98, %99
  %add82 = add nsw i32 %add81, 1
  %idxprom83 = sext i32 %add82 to i64
  %100 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %params53, align 8, !tbaa !1
  %Domain84 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %100, i32 0, i32 1
  %101 = load float*, float** %Domain84, align 8, !tbaa !47
  %arrayidx85 = getelementptr inbounds float, float* %101, i64 %idxprom83
  %102 = load float, float* %arrayidx85, align 4, !tbaa !34
  %103 = load i32, i32* %i30, align 4, !tbaa !33
  %idxprom86 = sext i32 %103 to i64
  %104 = load float*, float** %pc.addr, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds float, float* %104, i64 %idxprom86
  store float %102, float* %arrayidx87, align 4, !tbaa !34
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.80, %if.else.70
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.63
  %105 = bitcast %struct.gs_function_params_s** %params53 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.49
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.90
  %106 = load i32, i32* %i30, align 4, !tbaa !33
  %inc92 = add nsw i32 %106, 1
  store i32 %inc92, i32* %i30, align 4, !tbaa !33
  br label %for.cond.37

for.end.93:                                       ; preds = %for.cond.37
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.94

cleanup.94:                                       ; preds = %for.end.93, %if.then.48
  %107 = bitcast i32* %ncomp32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %code31 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %i30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %cleanup.dest.97 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.97, label %cleanup.100 [
    i32 0, label %cleanup.cont.98
  ]

cleanup.cont.98:                                  ; preds = %cleanup.94
  br label %if.end.99

if.end.99:                                        ; preds = %cleanup.cont.98, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

cleanup.100:                                      ; preds = %if.end.99, %cleanup.94, %cleanup
  %110 = bitcast i32* %num_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast float** %decode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = load i32, i32* %retval
  ret i32 %114
}

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #2

declare %struct.gs_color_space_s* @gs_cspace_base_space(%struct.gs_color_space_s*) #2

declare i32 @gs_cspace_indexed_num_entries(%struct.gs_color_space_s*) #2

declare i32 @gs_cspace_indexed_lookup(%struct.gs_color_space_s*, i32, %struct.gs_client_color_s*) #2

; Function Attrs: nounwind uwtable
define i32 @shade_next_vertex(%struct.shade_coord_stream_s* %cs, %struct.shading_vertex_s* %vertex, %struct.patch_color_s* %c) #0 {
entry:
  %cs.addr = alloca %struct.shade_coord_stream_s*, align 8
  %vertex.addr = alloca %struct.shading_vertex_s*, align 8
  %c.addr = alloca %struct.patch_color_s*, align 8
  %code = alloca i32, align 4
  store %struct.shade_coord_stream_s* %cs, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  store %struct.shading_vertex_s* %vertex, %struct.shading_vertex_s** %vertex.addr, align 8, !tbaa !1
  store %struct.patch_color_s* %c, %struct.patch_color_s** %c.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %2 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vertex.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %2, i32 0, i32 0
  %call = call i32 @shade_next_coords(%struct.shade_coord_stream_s* %1, %struct.gs_fixed_point_s* %p, i32 1) #3
  store i32 %call, i32* %code, align 4, !tbaa !33
  %3 = load i32, i32* %code, align 4, !tbaa !33
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %5 = load %struct.patch_color_s*, %struct.patch_color_s** %c.addr, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.patch_color_s, %struct.patch_color_s* %5, i32 0, i32 1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i32 0
  %call1 = call i32 @shade_next_color(%struct.shade_coord_stream_s* %4, float* %arraydecay) #3
  store i32 %call1, i32* %code, align 4, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %code, align 4, !tbaa !33
  %cmp2 = icmp sge i32 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %align = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %7, i32 0, i32 9
  %8 = load void (%struct.shade_coord_stream_s*, i32)*, void (%struct.shade_coord_stream_s*, i32)** %align, align 8, !tbaa !29
  %9 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  call void %8(%struct.shade_coord_stream_s* %9, i32 8) #3
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !33
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @shade_init_fill_state(%struct.shading_fill_state_s* %pfs, %struct.gs_shading_s* %psh, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %pfs.addr = alloca %struct.shading_fill_state_s*, align 8
  %psh.addr = alloca %struct.gs_shading_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %max_error = alloca float, align 4
  %is_lab = alloca i32, align 4
  %num_colors = alloca i64, align 8
  %ranges = alloca %struct.gs_range_s*, align 8
  %ci = alloca i32, align 4
  %rendering_params = alloca %struct.gsicc_rendering_param_s, align 4
  %components = alloca %struct.gx_ht_order_component_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.shading_fill_state_s* %pfs, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  store %struct.gs_shading_s* %psh, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %1, i32 0, i32 1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 0
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !49
  store %struct.gs_color_space_s* %2, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %3 = bitcast float* %max_error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %smoothness = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 32
  %5 = load float, float* %smoothness, align 4, !tbaa !54
  %conv = fpext float %5 to double
  %cmp = fcmp olt double %conv, 2.000000e-01
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %smoothness2 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %6, i32 0, i32 32
  %7 = load float, float* %smoothness2, align 4, !tbaa !54
  %conv3 = fpext float %7 to double
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv3, %cond.true ], [ 2.000000e-01, %cond.false ]
  %conv4 = fptrunc double %cond to float
  store float %conv4, float* %max_error, align 4, !tbaa !34
  %8 = bitcast i32* %is_lab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i64* %num_colors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 5
  %11 = load i32, i32* %max_gray, align 4, !tbaa !65
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 6
  %13 = load i32, i32* %max_color, align 4, !tbaa !76
  %cmp6 = icmp ugt i32 %11, %13
  br i1 %cmp6, label %cond.true.8, label %cond.false.11

cond.true.8:                                      ; preds = %cond.end
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 11
  %max_gray10 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info9, i32 0, i32 5
  %15 = load i32, i32* %max_gray10, align 4, !tbaa !65
  br label %cond.end.14

cond.false.11:                                    ; preds = %cond.end
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 11
  %max_color13 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info12, i32 0, i32 6
  %17 = load i32, i32* %max_color13, align 4, !tbaa !76
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.11, %cond.true.8
  %cond15 = phi i32 [ %15, %cond.true.8 ], [ %17, %cond.false.11 ]
  %add = add i32 %cond15, 1
  %conv16 = zext i32 %add to i64
  store i64 %conv16, i64* %num_colors, align 8, !tbaa !77
  %18 = bitcast %struct.gs_range_s** %ranges to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store %struct.gs_range_s* null, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %19 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %20) #1
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %22 = load %struct.shading_fill_state_s*, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %dev17 = getelementptr inbounds %struct.shading_fill_state_s, %struct.shading_fill_state_s* %22, i32 0, i32 0
  store %struct.gx_device_s* %21, %struct.gx_device_s** %dev17, align 8, !tbaa !78
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %24 = load %struct.shading_fill_state_s*, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %pis18 = getelementptr inbounds %struct.shading_fill_state_s, %struct.shading_fill_state_s* %24, i32 0, i32 1
  store %struct.gs_imager_state_s* %23, %struct.gs_imager_state_s** %pis18, align 8, !tbaa !80
  br label %top

top:                                              ; preds = %sw.bb, %cond.end.14
  %25 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %26 = load %struct.shading_fill_state_s*, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %direct_space = getelementptr inbounds %struct.shading_fill_state_s, %struct.shading_fill_state_s* %26, i32 0, i32 2
  store %struct.gs_color_space_s* %25, %struct.gs_color_space_s** %direct_space, align 8, !tbaa !81
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %27) #3
  %28 = load %struct.shading_fill_state_s*, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.shading_fill_state_s, %struct.shading_fill_state_s* %28, i32 0, i32 3
  store i32 %call, i32* %num_components, align 4, !tbaa !82
  %29 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call19 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %29) #3
  switch i32 %call19, label %sw.default [
    i32 10, label %sw.bb
    i32 5, label %sw.bb.21
    i32 6, label %sw.bb.24
    i32 7, label %sw.bb.28
    i32 8, label %sw.bb.32
    i32 12, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %top
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call20 = call %struct.gs_color_space_s* @gs_cspace_base_space(%struct.gs_color_space_s* %30) #3
  store %struct.gs_color_space_s* %call20, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %top

sw.bb.21:                                         ; preds = %top
  %31 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params22 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %31, i32 0, i32 7
  %defg = bitcast %union.anon* %params22 to %struct.gs_cie_defg_s**
  %32 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !1
  %RangeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %32, i32 0, i32 6
  %ranges23 = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges23, i32 0, i32 0
  store %struct.gs_range_s* %arraydecay, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.24:                                         ; preds = %top
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params25 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %33, i32 0, i32 7
  %def = bitcast %union.anon* %params25 to %struct.gs_cie_def_s**
  %34 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !1
  %RangeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %34, i32 0, i32 6
  %ranges26 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF, i32 0, i32 0
  %arraydecay27 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges26, i32 0, i32 0
  store %struct.gs_range_s* %arraydecay27, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.28:                                         ; preds = %top
  %35 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params29 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %35, i32 0, i32 7
  %abc = bitcast %union.anon* %params29 to %struct.gs_cie_abc_s**
  %36 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  %RangeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %36, i32 0, i32 2
  %ranges30 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC, i32 0, i32 0
  %arraydecay31 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges30, i32 0, i32 0
  store %struct.gs_range_s* %arraydecay31, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.32:                                         ; preds = %top
  %37 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params33 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %37, i32 0, i32 7
  %a = bitcast %union.anon* %params33 to %struct.gs_cie_a_s**
  %38 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  %RangeA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %38, i32 0, i32 2
  store %struct.gs_range_s* %RangeA, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.34:                                         ; preds = %top
  %39 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %39, i32 0, i32 6
  %40 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !83
  %Range = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %40, i32 0, i32 6
  %ranges35 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range, i32 0, i32 0
  %arraydecay36 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges35, i32 0, i32 0
  store %struct.gs_range_s* %arraydecay36, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %top
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.34, %sw.bb.32, %sw.bb.28, %sw.bb.24, %sw.bb.21
  %41 = load i64, i64* %num_colors, align 8, !tbaa !77
  %cmp37 = icmp sle i64 %41, 32
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %42 = bitcast %struct.gx_ht_order_component_s** %components to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %43, i32 0, i32 41
  %44 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !85
  %components39 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %44, i32 0, i32 4
  %45 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components39, align 8, !tbaa !86
  store %struct.gx_ht_order_component_s* %45, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !1
  %46 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %dev_ht40 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %46, i32 0, i32 41
  %47 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht40, align 8, !tbaa !85
  %components41 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %47, i32 0, i32 4
  %48 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components41, align 8, !tbaa !86
  %arrayidx = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %48, i64 0
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx, i32 0, i32 0
  %num_levels = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder, i32 0, i32 8
  %49 = load i32, i32* %num_levels, align 4, !tbaa !91
  %conv42 = zext i32 %49 to i64
  %50 = load i64, i64* %num_colors, align 8, !tbaa !77
  %mul = mul nsw i64 %50, %conv42
  store i64 %mul, i64* %num_colors, align 8, !tbaa !77
  %51 = bitcast %struct.gx_ht_order_component_s** %components to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %52 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %52, i32 0, i32 0
  %type = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head, i32 0, i32 0
  %53 = load i32, i32* %type, align 4, !tbaa !93
  %cmp43 = icmp eq i32 %53, 2
  br i1 %cmp43, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %54 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %head45 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %54, i32 0, i32 0
  %type46 = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head45, i32 0, i32 0
  %55 = load i32, i32* %type46, align 4, !tbaa !93
  %cmp47 = icmp eq i32 %55, 3
  br i1 %cmp47, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %lor.lhs.false, %if.end
  %56 = load float, float* %max_error, align 4, !tbaa !34
  %conv50 = fpext float %56 to double
  %mul51 = fmul double %conv50, 2.500000e-01
  %conv52 = fptrunc double %mul51 to float
  store float %conv52, float* %max_error, align 4, !tbaa !34
  %57 = load i64, i64* %num_colors, align 8, !tbaa !77
  %mul53 = mul nsw i64 %57, 2
  store i64 %mul53, i64* %num_colors, align 8, !tbaa !77
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %lor.lhs.false
  %58 = load float, float* %max_error, align 4, !tbaa !34
  %conv55 = fpext float %58 to double
  %59 = load i64, i64* %num_colors, align 8, !tbaa !77
  %conv56 = sitofp i64 %59 to double
  %div = fdiv double 1.000000e+00, %conv56
  %cmp57 = fcmp olt double %conv55, %div
  br i1 %cmp57, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %if.end.54
  %60 = load i64, i64* %num_colors, align 8, !tbaa !77
  %conv60 = sitofp i64 %60 to double
  %div61 = fdiv double 1.000000e+00, %conv60
  %conv62 = fptrunc double %div61 to float
  store float %conv62, float* %max_error, align 4, !tbaa !34
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %if.end.54
  store i32 0, i32* %ci, align 4, !tbaa !33
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.63
  %61 = load i32, i32* %ci, align 4, !tbaa !33
  %62 = load %struct.shading_fill_state_s*, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %num_components64 = getelementptr inbounds %struct.shading_fill_state_s, %struct.shading_fill_state_s* %62, i32 0, i32 3
  %63 = load i32, i32* %num_components64, align 4, !tbaa !82
  %cmp65 = icmp slt i32 %61, %63
  br i1 %cmp65, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %cmp67 = icmp eq %struct.gs_range_s* %64, null
  br i1 %cmp67, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %for.body
  %65 = load float, float* %max_error, align 4, !tbaa !34
  br label %cond.end.75

cond.false.70:                                    ; preds = %for.body
  %66 = load float, float* %max_error, align 4, !tbaa !34
  %67 = load i32, i32* %ci, align 4, !tbaa !33
  %idxprom = sext i32 %67 to i64
  %68 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %68, i64 %idxprom
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx71, i32 0, i32 1
  %69 = load float, float* %rmax, align 4, !tbaa !94
  %70 = load i32, i32* %ci, align 4, !tbaa !33
  %idxprom72 = sext i32 %70 to i64
  %71 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %71, i64 %idxprom72
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx73, i32 0, i32 0
  %72 = load float, float* %rmin, align 4, !tbaa !96
  %sub = fsub float %69, %72
  %mul74 = fmul float %66, %sub
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.70, %cond.true.69
  %cond76 = phi float [ %65, %cond.true.69 ], [ %mul74, %cond.false.70 ]
  %73 = load i32, i32* %ci, align 4, !tbaa !33
  %idxprom77 = sext i32 %73 to i64
  %74 = load %struct.shading_fill_state_s*, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %cc_max_error = getelementptr inbounds %struct.shading_fill_state_s, %struct.shading_fill_state_s* %74, i32 0, i32 4
  %arrayidx78 = getelementptr inbounds [64 x float], [64 x float]* %cc_max_error, i32 0, i64 %idxprom77
  store float %cond76, float* %arrayidx78, align 4, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %cond.end.75
  %75 = load i32, i32* %ci, align 4, !tbaa !33
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !33
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %has_transparency = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %76, i32 0, i32 19
  %77 = load i32, i32* %has_transparency, align 4, !tbaa !97
  %tobool = icmp ne i32 %77, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %78 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %trans_device = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %78, i32 0, i32 20
  %79 = load %struct.gx_device_s*, %struct.gx_device_s** %trans_device, align 8, !tbaa !98
  %cmp79 = icmp ne %struct.gx_device_s* %79, null
  br i1 %cmp79, label %if.then.81, label %if.else

if.then.81:                                       ; preds = %land.lhs.true
  %80 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %trans_device82 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %80, i32 0, i32 20
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %trans_device82, align 8, !tbaa !98
  %82 = load %struct.shading_fill_state_s*, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %trans_device83 = getelementptr inbounds %struct.shading_fill_state_s, %struct.shading_fill_state_s* %82, i32 0, i32 5
  store %struct.gx_device_s* %81, %struct.gx_device_s** %trans_device83, align 8, !tbaa !99
  br label %if.end.85

if.else:                                          ; preds = %land.lhs.true, %for.end
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %84 = load %struct.shading_fill_state_s*, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %trans_device84 = getelementptr inbounds %struct.shading_fill_state_s, %struct.shading_fill_state_s* %84, i32 0, i32 5
  store %struct.gx_device_s* %83, %struct.gx_device_s** %trans_device84, align 8, !tbaa !99
  br label %if.end.85

if.end.85:                                        ; preds = %if.else, %if.then.81
  %85 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call86 = call i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s* %85) #3
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %land.lhs.true.88, label %if.end.93

land.lhs.true.88:                                 ; preds = %if.end.85
  %86 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %86, i32 0, i32 4
  %87 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent, align 8, !tbaa !100
  %cmp89 = icmp eq %struct.gs_color_space_s* %87, null
  br i1 %cmp89, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %land.lhs.true.88
  %88 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %89 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %89, i32 0, i32 1
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !101
  %call92 = call i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s* %88, i32* %is_lab, %struct.gs_memory_s* %90) #3
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %land.lhs.true.88, %if.end.85
  %91 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %blackptcomp = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %91, i32 0, i32 34
  %92 = load i32, i32* %blackptcomp, align 4, !tbaa !102
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 1
  store i32 %92, i32* %black_point_comp, align 4, !tbaa !103
  %graphics_type_tag = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 3
  store i32 4, i32* %graphics_type_tag, align 4, !tbaa !105
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 5
  store i32 0, i32* %override_icc, align 4, !tbaa !106
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 2
  store i32 8, i32* %preserve_black, align 4, !tbaa !107
  %93 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %renderingintent = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %93, i32 0, i32 33
  %94 = load i32, i32* %renderingintent, align 4, !tbaa !108
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 0
  store i32 %94, i32* %rendering_intent, align 4, !tbaa !109
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 4
  store i32 0, i32* %cmm, align 4, !tbaa !110
  %95 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data94 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %95, i32 0, i32 6
  %96 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data94, align 8, !tbaa !83
  %cmp95 = icmp ne %struct.cmm_profile_s* %96, null
  br i1 %cmp95, label %if.then.97, label %if.else.106

if.then.97:                                       ; preds = %if.end.93
  %97 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %98 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %trans_device98 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %98, i32 0, i32 20
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %trans_device98, align 8, !tbaa !98
  %100 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %101 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory99 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %101, i32 0, i32 1
  %102 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory99, align 8, !tbaa !101
  %call100 = call %struct.gsicc_link_s* @gsicc_get_link(%struct.gs_imager_state_s* %97, %struct.gx_device_s* %99, %struct.gs_color_space_s* %100, %struct.gs_color_space_s* null, %struct.gsicc_rendering_param_s* %rendering_params, %struct.gs_memory_s* %102) #3
  %103 = load %struct.shading_fill_state_s*, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %icclink = getelementptr inbounds %struct.shading_fill_state_s, %struct.shading_fill_state_s* %103, i32 0, i32 6
  store %struct.gsicc_link_s* %call100, %struct.gsicc_link_s** %icclink, align 8, !tbaa !111
  %104 = load %struct.shading_fill_state_s*, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %icclink101 = getelementptr inbounds %struct.shading_fill_state_s, %struct.shading_fill_state_s* %104, i32 0, i32 6
  %105 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink101, align 8, !tbaa !111
  %cmp102 = icmp eq %struct.gsicc_link_s* %105, null
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.then.97
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.105:                                       ; preds = %if.then.97
  br label %if.end.124

if.else.106:                                      ; preds = %if.end.93
  %106 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent107 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %106, i32 0, i32 4
  %107 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent107, align 8, !tbaa !100
  %cmp108 = icmp ne %struct.gs_color_space_s* %107, null
  br i1 %cmp108, label %if.then.110, label %if.else.121

if.then.110:                                      ; preds = %if.else.106
  %108 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %109 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %trans_device111 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %109, i32 0, i32 20
  %110 = load %struct.gx_device_s*, %struct.gx_device_s** %trans_device111, align 8, !tbaa !98
  %111 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %icc_equivalent112 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %111, i32 0, i32 4
  %112 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %icc_equivalent112, align 8, !tbaa !100
  %113 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory113 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %113, i32 0, i32 1
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory113, align 8, !tbaa !101
  %call114 = call %struct.gsicc_link_s* @gsicc_get_link(%struct.gs_imager_state_s* %108, %struct.gx_device_s* %110, %struct.gs_color_space_s* %112, %struct.gs_color_space_s* null, %struct.gsicc_rendering_param_s* %rendering_params, %struct.gs_memory_s* %114) #3
  %115 = load %struct.shading_fill_state_s*, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %icclink115 = getelementptr inbounds %struct.shading_fill_state_s, %struct.shading_fill_state_s* %115, i32 0, i32 6
  store %struct.gsicc_link_s* %call114, %struct.gsicc_link_s** %icclink115, align 8, !tbaa !111
  %116 = load %struct.shading_fill_state_s*, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %icclink116 = getelementptr inbounds %struct.shading_fill_state_s, %struct.shading_fill_state_s* %116, i32 0, i32 6
  %117 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink116, align 8, !tbaa !111
  %cmp117 = icmp eq %struct.gsicc_link_s* %117, null
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.then.110
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.120:                                       ; preds = %if.then.110
  br label %if.end.123

if.else.121:                                      ; preds = %if.else.106
  %118 = load %struct.shading_fill_state_s*, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %icclink122 = getelementptr inbounds %struct.shading_fill_state_s, %struct.shading_fill_state_s* %118, i32 0, i32 6
  store %struct.gsicc_link_s* null, %struct.gsicc_link_s** %icclink122, align 8, !tbaa !111
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.121, %if.end.120
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.105
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.124, %if.then.119, %if.then.104
  %119 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %119) #1
  %120 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast %struct.gs_range_s** %ranges to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast i64* %num_colors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i32* %is_lab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast float* %max_error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = load i32, i32* %retval
  ret i32 %126
}

declare i32 @gs_color_space_is_PSCIE(%struct.gs_color_space_s*) #2

declare i32 @gs_colorspace_set_icc_equivalent(%struct.gs_color_space_s*, i32*, %struct.gs_memory_s*) #2

declare %struct.gsicc_link_s* @gsicc_get_link(%struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gsicc_rendering_param_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define i32 @shade_fill_path(%struct.shading_fill_state_s* %pfs, %struct.gx_path_s* %ppath, %struct.gx_device_color_s* %pdevc, %struct.gs_fixed_point_s* %fill_adjust) #0 {
entry:
  %pfs.addr = alloca %struct.shading_fill_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %fill_adjust.addr = alloca %struct.gs_fixed_point_s*, align 8
  %params = alloca %struct.gx_fill_params_s, align 4
  store %struct.shading_fill_state_s* %pfs, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %fill_adjust, %struct.gs_fixed_point_s** %fill_adjust.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_fill_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %rule = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %params, i32 0, i32 0
  store i32 -1, i32* %rule, align 4, !tbaa !112
  %adjust = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %params, i32 0, i32 1
  %1 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %fill_adjust.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_fixed_point_s* %adjust to i8*
  %3 = bitcast %struct.gs_fixed_point_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 4, i1 false), !tbaa.struct !114
  %flatness = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %params, i32 0, i32 2
  store float 0.000000e+00, float* %flatness, align 4, !tbaa !115
  %4 = load %struct.shading_fill_state_s*, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.shading_fill_state_s, %struct.shading_fill_state_s* %4, i32 0, i32 0
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !78
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 42
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 24
  %6 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !116
  %7 = load %struct.shading_fill_state_s*, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.shading_fill_state_s, %struct.shading_fill_state_s* %7, i32 0, i32 0
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !78
  %9 = load %struct.shading_fill_state_s*, %struct.shading_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.shading_fill_state_s, %struct.shading_fill_state_s* %9, i32 0, i32 1
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !80
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gx_device_s* %8, %struct.gs_imager_state_s* %10, %struct.gx_path_s* %11, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %12, %struct.gx_clip_path_s* null) #3
  %13 = bitcast %struct.gx_fill_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 16, i8* %13) #1
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @spgetcc(%struct.stream_s*, i32) #2

declare i32 @sgets(%struct.stream_s*, i8*, i32, i32*) #2

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
!5 = !{!6, !2, i64 376}
!6 = !{!"shade_coord_stream_s", !7, i64 0, !2, i64 352, !8, i64 360, !8, i64 364, !8, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416}
!7 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !8, i64 144, !8, i64 148, !9, i64 152, !3, i64 154, !3, i64 155, !10, i64 160, !11, i64 176, !12, i64 184, !2, i64 240, !8, i64 248, !8, i64 252, !2, i64 256, !9, i64 264, !9, i64 266, !2, i64 272, !2, i64 280, !8, i64 288, !8, i64 292, !2, i64 296, !2, i64 304, !13, i64 312, !8, i64 328, !11, i64 336, !11, i64 344}
!8 = !{!"int", !3, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!"gs_string_s", !2, i64 0, !8, i64 8}
!11 = !{!"long", !3, i64 0}
!12 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!13 = !{!"gs_const_string_s", !2, i64 0, !8, i64 8}
!14 = !{!6, !2, i64 384}
!15 = !{!16, !3, i64 80}
!16 = !{!"gs_shading_mesh_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !17, i64 32, !8, i64 64, !20, i64 72, !8, i64 104, !8, i64 108, !2, i64 112, !2, i64 120}
!17 = !{!"gs_rect_s", !18, i64 0, !18, i64 16}
!18 = !{!"gs_point_s", !19, i64 0, !19, i64 8}
!19 = !{!"double", !3, i64 0}
!20 = !{!"gs_data_source_s", !2, i64 0, !3, i64 8, !3, i64 16}
!21 = !{!6, !2, i64 352}
!22 = !{!7, !2, i64 304}
!23 = !{!7, !11, i64 344}
!24 = !{!7, !2, i64 240}
!25 = !{!13, !2, i64 0}
!26 = !{!13, !8, i64 8}
!27 = !{!6, !2, i64 392}
!28 = !{!6, !2, i64 400}
!29 = !{!6, !2, i64 408}
!30 = !{!6, !2, i64 416}
!31 = !{!6, !8, i64 364}
!32 = !{!6, !8, i64 368}
!33 = !{!8, !8, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !3, i64 0}
!36 = !{!6, !8, i64 360}
!37 = !{!38, !2, i64 8}
!38 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!39 = !{!38, !2, i64 0}
!40 = !{!3, !3, i64 0}
!41 = !{!19, !19, i64 0}
!42 = !{!16, !8, i64 104}
!43 = !{!16, !2, i64 112}
!44 = !{!16, !2, i64 0}
!45 = !{!16, !8, i64 108}
!46 = !{!16, !2, i64 120}
!47 = !{!48, !2, i64 8}
!48 = !{!"gs_function_params_s", !8, i64 0, !2, i64 8, !8, i64 16, !2, i64 24}
!49 = !{!50, !2, i64 16}
!50 = !{!"gs_shading_s", !51, i64 0, !53, i64 16}
!51 = !{!"gs_shading_head_s", !3, i64 0, !52, i64 8}
!52 = !{!"gs_shading_procs_s", !2, i64 0}
!53 = !{!"gs_shading_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !17, i64 32, !8, i64 64}
!54 = !{!55, !35, i64 320}
!55 = !{!"gs_imager_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !56, i64 24, !8, i64 128, !59, i64 132, !8, i64 168, !18, i64 176, !18, i64 192, !8, i64 208, !8, i64 212, !9, i64 216, !3, i64 220, !60, i64 224, !60, i64 228, !61, i64 232, !11, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !35, i64 296, !62, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !35, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !63, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !64, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !64, i64 1336}
!56 = !{!"gx_line_params_s", !35, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !8, i64 36, !57, i64 40, !58, i64 64}
!57 = !{!"gs_matrix_s", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20}
!58 = !{!"gx_dash_params_s", !2, i64 0, !8, i64 8, !35, i64 12, !8, i64 16, !35, i64 20, !8, i64 24, !8, i64 28, !35, i64 32}
!59 = !{!"gs_matrix_fixed_s", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!60 = !{!"gs_transparency_source_s", !35, i64 0}
!61 = !{!"gs_xstate_trans_flags", !8, i64 0, !8, i64 4}
!62 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!63 = !{!"gx_transfer_s", !8, i64 0, !2, i64 8, !8, i64 16, !2, i64 24, !8, i64 32, !2, i64 40, !8, i64 48, !2, i64 56}
!64 = !{!"gs_devicen_color_map_s", !8, i64 0, !3, i64 4, !8, i64 8, !8, i64 12, !11, i64 16, !3, i64 24}
!65 = !{!66, !8, i64 112}
!66 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !67, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !68, i64 96, !70, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !11, i64 968, !11, i64 976, !71, i64 984, !8, i64 1052, !8, i64 1056, !72, i64 1064, !2, i64 1104, !3, i64 1112, !74, i64 1120, !75, i64 1144}
!67 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!68 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !9, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !69, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !11, i64 704, !8, i64 712}
!69 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!70 = !{!"gx_device_cached_colors_s", !11, i64 0, !11, i64 8}
!71 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!72 = !{!"gdev_space_params_s", !11, i64 0, !11, i64 8, !73, i64 16, !8, i64 32, !3, i64 36}
!73 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !11, i64 8}
!74 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!75 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!76 = !{!66, !8, i64 116}
!77 = !{!11, !11, i64 0}
!78 = !{!79, !2, i64 0}
!79 = !{!"shading_fill_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !3, i64 28, !2, i64 288, !2, i64 296}
!80 = !{!79, !2, i64 8}
!81 = !{!79, !2, i64 16}
!82 = !{!79, !8, i64 24}
!83 = !{!84, !2, i64 64}
!84 = !{!"gs_color_space_s", !2, i64 0, !67, i64 8, !11, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!85 = !{!55, !2, i64 392}
!86 = !{!87, !2, i64 200}
!87 = !{!"gx_device_halftone_s", !88, i64 0, !67, i64 160, !11, i64 184, !3, i64 192, !2, i64 200, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220}
!88 = !{!"gx_ht_order_s", !89, i64 0, !9, i64 40, !9, i64 42, !9, i64 44, !9, i64 46, !9, i64 48, !9, i64 50, !8, i64 52, !8, i64 56, !8, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !90, i64 112, !2, i64 144, !8, i64 152}
!89 = !{!"gx_ht_cell_params_s", !9, i64 0, !9, i64 2, !9, i64 4, !9, i64 6, !9, i64 8, !9, i64 10, !11, i64 16, !9, i64 24, !9, i64 26, !8, i64 28, !8, i64 32, !8, i64 36}
!90 = !{!"gx_ht_order_screen_params_s", !57, i64 0, !11, i64 24}
!91 = !{!92, !8, i64 56}
!92 = !{!"gx_ht_order_component_s", !88, i64 0, !8, i64 160, !8, i64 164}
!93 = !{!50, !3, i64 0}
!94 = !{!95, !35, i64 4}
!95 = !{!"gs_range_s", !35, i64 0, !35, i64 4}
!96 = !{!95, !35, i64 0}
!97 = !{!55, !8, i64 256}
!98 = !{!55, !2, i64 264}
!99 = !{!79, !2, i64 288}
!100 = !{!84, !2, i64 48}
!101 = !{!55, !2, i64 8}
!102 = !{!55, !8, i64 328}
!103 = !{!104, !3, i64 4}
!104 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20}
!105 = !{!104, !3, i64 12}
!106 = !{!104, !8, i64 20}
!107 = !{!104, !3, i64 8}
!108 = !{!55, !8, i64 324}
!109 = !{!104, !3, i64 0}
!110 = !{!104, !3, i64 16}
!111 = !{!79, !2, i64 296}
!112 = !{!113, !8, i64 0}
!113 = !{!"gx_fill_params_s", !8, i64 0, !62, i64 4, !35, i64 12}
!114 = !{i64 0, i64 4, !33, i64 4, i64 4, !33}
!115 = !{!113, !35, i64 12}
!116 = !{!66, !2, i64 1336}
