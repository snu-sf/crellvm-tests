; ModuleID = './gxclutil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clist_select_color_t = type { i8, i8, i32, i32 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
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
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.gx_device_clist_writer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, i32, %struct.gx_clist_state_s*, i8*, i8*, i8*, %struct.cmd_list_s*, %struct.cmd_list_s, i32, i32, i32, i32, %struct.gx_strip_bitmap_s, i32, i32, i32, %struct.gs_imager_state_s, i32, i32, i32, i32, [11 x float], %struct.gx_clip_path_s*, i64, %struct.clist_color_space_s, [4 x i64], i64, i64, i64, i64, i32, i32, i32, i32, i32 (%struct.gx_device_s*, i32)*, i32, %struct.gs_pattern1_instance_s*, i32, i32, i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s*, i64, i32, i32, i32, i32, %struct.gx_device_color_info_s }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
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
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_ht_cache_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
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
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
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
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_buf_procs_s = type { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, void (%struct.gx_device_s*)* }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gx_colors_usage_s = type { i64, i32, %struct.gs_int_rect_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_device_buf_space_s = type { i64, i64, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.gx_bits_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32 }
%struct.tile_hash = type { i64 }
%struct.gx_band_page_info_s = type { [4096 x i8], i8*, [4096 x i8], i8*, %struct.clist_io_procs_s*, i32, i64, i64, %struct.gx_band_params_s }
%struct.clist_io_procs_s = type { i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32)*, i32 (i8*)*, i64 (i8*)*, void (i8*, i32, i8*)*, i32 (i8*, i64, i32, i8*)* }
%struct.clist_icctable_s = type { i32, %struct.gs_memory_s*, %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s* }
%struct.clist_icctable_entry_s = type { %struct.clist_icc_serial_entry_s, %struct.clist_icctable_entry_s*, %struct.cmm_profile_s*, i32 }
%struct.clist_icc_serial_entry_s = type { i64, i64, i32 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gx_clist_state_s = type { [2 x i64], %struct.gx_device_color_saved_s, i32, i64, i64, %struct.gs_int_point_s, [2 x i64], [2 x %struct.gx_device_color_s], %struct.gx_cmd_rect, i32, i16, i16, i32, i32, i32, %struct.cmd_list_s, %struct.gx_colors_usage_s }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
%struct.cmd_list_s = type { %struct.cmd_prefix_s*, %struct.cmd_prefix_s* }
%struct.cmd_prefix_s = type { %struct.cmd_prefix_s*, i32, i64 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
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
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.2 }
%union.anon.2 = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.clist_color_space_s = type { i8, i64, %struct.clist_icc_color_s, %struct.gs_color_space_s* }
%struct.clist_icc_color_s = type { i64, i8, i32, i32, i32 }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_uid_s = type { i64, i64* }
%struct.clist_writer_cropping_buffer_s = type { i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s* }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.cmd_block_s = type { i32, i32, i64 }
%struct.stream_CFE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, i32 }
%struct.stream_CF_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.stream_CFD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.stream_RLE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i64, i64, i32 }
%struct.stream_RLD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32 }

@cmd_delta_offsets = constant [9 x i64] [i64 0, i64 0, i64 2056, i64 1056784, i64 134744072, i64 69257398280, i64 8830587504648, i64 4538852853680136, i64 578721382704613384], align 16
@clist_select_color0 = constant %struct.clist_select_color_t { i8 16, i8 12, i32 0, i32 0 }, align 4
@clist_select_color1 = constant %struct.clist_select_color_t { i8 32, i8 13, i32 0, i32 0 }, align 4
@clist_select_tile_color0 = constant %struct.clist_select_color_t { i8 16, i8 12, i32 1, i32 0 }, align 4
@clist_select_tile_color1 = constant %struct.clist_select_color_t { i8 32, i8 13, i32 1, i32 0 }, align 4
@cmd_delta_masks = internal constant [9 x i64] [i64 0, i64 0, i64 3855, i64 2047775, i64 252645135, i64 134202986255, i64 16557351571215, i64 8795126907211535, i64 1085102592571150095], align 16
@s_CFE_template = external constant %struct.stream_template_s, align 8
@s_CFD_template = external constant %struct.stream_template_s, align 8
@s_RLE_template = external constant %struct.stream_template_s, align 8
@s_RLD_template = external constant %struct.stream_template_s, align 8

; Function Attrs: nounwind uwtable
define void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %cldev, %struct.gs_int_rect_s* %bbox) #0 {
entry:
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %bbox.addr = alloca %struct.gs_int_rect_s*, align 8
  %p_y = alloca i32, align 4
  %q_y = alloca i32, align 4
  %band = alloca i32, align 4
  %first_band = alloca i32, align 4
  %last_band = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %bbox, %struct.gs_int_rect_s** %bbox.addr, align 8, !tbaa !1
  %0 = bitcast i32* %p_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %q_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %first_band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %last_band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %bbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %5, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 1
  %6 = load i32, i32* %y, align 4, !tbaa !5
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %8 = load i32, i32* %BandHeight, align 4, !tbaa !9
  %div = sdiv i32 %6, %8
  %cmp = icmp sgt i32 0, %div
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %bbox.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %9, i32 0, i32 0
  %y2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p1, i32 0, i32 1
  %10 = load i32, i32* %y2, align 4, !tbaa !5
  %11 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info3 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %11, i32 0, i32 58
  %band_params4 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info3, i32 0, i32 8
  %BandHeight5 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params4, i32 0, i32 1
  %12 = load i32, i32* %BandHeight5, align 4, !tbaa !9
  %div6 = sdiv i32 %10, %12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %div6, %cond.false ]
  store i32 %cond, i32* %first_band, align 4, !tbaa !43
  %13 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %bbox.addr, align 8, !tbaa !1
  %p7 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %13, i32 0, i32 0
  %y8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p7, i32 0, i32 1
  %14 = load i32, i32* %y8, align 4, !tbaa !5
  %15 = load i32, i32* %first_band, align 4, !tbaa !43
  %16 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info9 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %16, i32 0, i32 58
  %band_params10 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info9, i32 0, i32 8
  %BandHeight11 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params10, i32 0, i32 1
  %17 = load i32, i32* %BandHeight11, align 4, !tbaa !9
  %mul = mul nsw i32 %15, %17
  %sub = sub nsw i32 %14, %mul
  store i32 %sub, i32* %p_y, align 4, !tbaa !43
  %18 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %18, i32 0, i32 59
  %19 = load i32, i32* %nbands, align 4, !tbaa !44
  %sub12 = sub nsw i32 %19, 1
  %20 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %bbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %20, i32 0, i32 1
  %y13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 1
  %21 = load i32, i32* %y13, align 4, !tbaa !45
  %22 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info14 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %22, i32 0, i32 58
  %band_params15 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info14, i32 0, i32 8
  %BandHeight16 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params15, i32 0, i32 1
  %23 = load i32, i32* %BandHeight16, align 4, !tbaa !9
  %div17 = sdiv i32 %21, %23
  %cmp18 = icmp slt i32 %sub12, %div17
  br i1 %cmp18, label %cond.true.19, label %cond.false.22

cond.true.19:                                     ; preds = %cond.end
  %24 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands20 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %24, i32 0, i32 59
  %25 = load i32, i32* %nbands20, align 4, !tbaa !44
  %sub21 = sub nsw i32 %25, 1
  br label %cond.end.29

cond.false.22:                                    ; preds = %cond.end
  %26 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %bbox.addr, align 8, !tbaa !1
  %q23 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %26, i32 0, i32 1
  %y24 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q23, i32 0, i32 1
  %27 = load i32, i32* %y24, align 4, !tbaa !45
  %28 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info25 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %28, i32 0, i32 58
  %band_params26 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info25, i32 0, i32 8
  %BandHeight27 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params26, i32 0, i32 1
  %29 = load i32, i32* %BandHeight27, align 4, !tbaa !9
  %div28 = sdiv i32 %27, %29
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.22, %cond.true.19
  %cond30 = phi i32 [ %sub21, %cond.true.19 ], [ %div28, %cond.false.22 ]
  store i32 %cond30, i32* %last_band, align 4, !tbaa !43
  %30 = load i32, i32* %first_band, align 4, !tbaa !43
  store i32 %30, i32* %band, align 4, !tbaa !43
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.29
  %31 = load i32, i32* %band, align 4, !tbaa !43
  %32 = load i32, i32* %last_band, align 4, !tbaa !43
  %cmp31 = icmp sle i32 %31, %32
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %band, align 4, !tbaa !43
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %34, i32 0, i32 66
  %35 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !46
  %arrayidx = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %35, i64 %idxprom
  %color_usage = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %arrayidx, i32 0, i32 16
  %trans_bbox = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage, i32 0, i32 2
  %p32 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox, i32 0, i32 0
  %y33 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p32, i32 0, i32 1
  %36 = load i32, i32* %y33, align 4, !tbaa !47
  %37 = load i32, i32* %p_y, align 4, !tbaa !43
  %cmp34 = icmp sgt i32 %36, %37
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %38 = load i32, i32* %p_y, align 4, !tbaa !43
  %39 = load i32, i32* %band, align 4, !tbaa !43
  %idxprom35 = sext i32 %39 to i64
  %40 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states36 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %40, i32 0, i32 66
  %41 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states36, align 8, !tbaa !46
  %arrayidx37 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %41, i64 %idxprom35
  %color_usage38 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %arrayidx37, i32 0, i32 16
  %trans_bbox39 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage38, i32 0, i32 2
  %p40 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox39, i32 0, i32 0
  %y41 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p40, i32 0, i32 1
  store i32 %38, i32* %y41, align 4, !tbaa !47
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %42 = load i32, i32* %band, align 4, !tbaa !43
  %idxprom42 = sext i32 %42 to i64
  %43 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states43 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %43, i32 0, i32 66
  %44 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states43, align 8, !tbaa !46
  %arrayidx44 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %44, i64 %idxprom42
  %color_usage45 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %arrayidx44, i32 0, i32 16
  %trans_bbox46 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage45, i32 0, i32 2
  %p47 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox46, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p47, i32 0, i32 0
  %45 = load i32, i32* %x, align 4, !tbaa !52
  %46 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %bbox.addr, align 8, !tbaa !1
  %p48 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %46, i32 0, i32 0
  %x49 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p48, i32 0, i32 0
  %47 = load i32, i32* %x49, align 4, !tbaa !53
  %cmp50 = icmp sgt i32 %45, %47
  br i1 %cmp50, label %if.then.51, label %if.end.61

if.then.51:                                       ; preds = %if.end
  %48 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %bbox.addr, align 8, !tbaa !1
  %p52 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %48, i32 0, i32 0
  %x53 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p52, i32 0, i32 0
  %49 = load i32, i32* %x53, align 4, !tbaa !53
  %50 = load i32, i32* %band, align 4, !tbaa !43
  %idxprom54 = sext i32 %50 to i64
  %51 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states55 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %51, i32 0, i32 66
  %52 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states55, align 8, !tbaa !46
  %arrayidx56 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %52, i64 %idxprom54
  %color_usage57 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %arrayidx56, i32 0, i32 16
  %trans_bbox58 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage57, i32 0, i32 2
  %p59 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox58, i32 0, i32 0
  %x60 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p59, i32 0, i32 0
  store i32 %49, i32* %x60, align 4, !tbaa !52
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.51, %if.end
  store i32 0, i32* %p_y, align 4, !tbaa !43
  %53 = load i32, i32* %band, align 4, !tbaa !43
  %54 = load i32, i32* %last_band, align 4, !tbaa !43
  %cmp62 = icmp eq i32 %53, %54
  br i1 %cmp62, label %cond.true.63, label %cond.false.71

cond.true.63:                                     ; preds = %if.end.61
  %55 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %bbox.addr, align 8, !tbaa !1
  %q64 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %55, i32 0, i32 1
  %y65 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q64, i32 0, i32 1
  %56 = load i32, i32* %y65, align 4, !tbaa !45
  %57 = load i32, i32* %last_band, align 4, !tbaa !43
  %58 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info66 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %58, i32 0, i32 58
  %band_params67 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info66, i32 0, i32 8
  %BandHeight68 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params67, i32 0, i32 1
  %59 = load i32, i32* %BandHeight68, align 4, !tbaa !9
  %mul69 = mul nsw i32 %57, %59
  %sub70 = sub nsw i32 %56, %mul69
  br label %cond.end.76

cond.false.71:                                    ; preds = %if.end.61
  %60 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info72 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %60, i32 0, i32 58
  %band_params73 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info72, i32 0, i32 8
  %BandHeight74 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params73, i32 0, i32 1
  %61 = load i32, i32* %BandHeight74, align 4, !tbaa !9
  %sub75 = sub nsw i32 %61, 1
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.71, %cond.true.63
  %cond77 = phi i32 [ %sub70, %cond.true.63 ], [ %sub75, %cond.false.71 ]
  store i32 %cond77, i32* %q_y, align 4, !tbaa !43
  %62 = load i32, i32* %band, align 4, !tbaa !43
  %idxprom78 = sext i32 %62 to i64
  %63 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states79 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %63, i32 0, i32 66
  %64 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states79, align 8, !tbaa !46
  %arrayidx80 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %64, i64 %idxprom78
  %color_usage81 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %arrayidx80, i32 0, i32 16
  %trans_bbox82 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage81, i32 0, i32 2
  %q83 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox82, i32 0, i32 1
  %y84 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q83, i32 0, i32 1
  %65 = load i32, i32* %y84, align 4, !tbaa !54
  %66 = load i32, i32* %q_y, align 4, !tbaa !43
  %cmp85 = icmp slt i32 %65, %66
  br i1 %cmp85, label %if.then.86, label %if.end.94

if.then.86:                                       ; preds = %cond.end.76
  %67 = load i32, i32* %q_y, align 4, !tbaa !43
  %68 = load i32, i32* %band, align 4, !tbaa !43
  %idxprom87 = sext i32 %68 to i64
  %69 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states88 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %69, i32 0, i32 66
  %70 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states88, align 8, !tbaa !46
  %arrayidx89 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %70, i64 %idxprom87
  %color_usage90 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %arrayidx89, i32 0, i32 16
  %trans_bbox91 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage90, i32 0, i32 2
  %q92 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox91, i32 0, i32 1
  %y93 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q92, i32 0, i32 1
  store i32 %67, i32* %y93, align 4, !tbaa !54
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.86, %cond.end.76
  %71 = load i32, i32* %band, align 4, !tbaa !43
  %idxprom95 = sext i32 %71 to i64
  %72 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states96 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %72, i32 0, i32 66
  %73 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states96, align 8, !tbaa !46
  %arrayidx97 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %73, i64 %idxprom95
  %color_usage98 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %arrayidx97, i32 0, i32 16
  %trans_bbox99 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage98, i32 0, i32 2
  %q100 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox99, i32 0, i32 1
  %x101 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q100, i32 0, i32 0
  %74 = load i32, i32* %x101, align 4, !tbaa !55
  %75 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %bbox.addr, align 8, !tbaa !1
  %q102 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %75, i32 0, i32 1
  %x103 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q102, i32 0, i32 0
  %76 = load i32, i32* %x103, align 4, !tbaa !56
  %cmp104 = icmp slt i32 %74, %76
  br i1 %cmp104, label %if.then.105, label %if.end.115

if.then.105:                                      ; preds = %if.end.94
  %77 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %bbox.addr, align 8, !tbaa !1
  %q106 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %77, i32 0, i32 1
  %x107 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q106, i32 0, i32 0
  %78 = load i32, i32* %x107, align 4, !tbaa !56
  %79 = load i32, i32* %band, align 4, !tbaa !43
  %idxprom108 = sext i32 %79 to i64
  %80 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states109 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %80, i32 0, i32 66
  %81 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states109, align 8, !tbaa !46
  %arrayidx110 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %81, i64 %idxprom108
  %color_usage111 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %arrayidx110, i32 0, i32 16
  %trans_bbox112 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage111, i32 0, i32 2
  %q113 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox112, i32 0, i32 1
  %x114 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q113, i32 0, i32 0
  store i32 %78, i32* %x114, align 4, !tbaa !55
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.105, %if.end.94
  br label %for.inc

for.inc:                                          ; preds = %if.end.115
  %82 = load i32, i32* %band, align 4, !tbaa !43
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %band, align 4, !tbaa !43
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %83 = bitcast i32* %last_band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %first_band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %q_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %p_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @cmd_write_pseudo_band(%struct.gx_device_clist_writer_s* %cldev, i8* %pbuf, i32 %data_size, i32 %pseudo_band_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pbuf.addr = alloca i8*, align 8
  %data_size.addr = alloca i32, align 4
  %pseudo_band_offset.addr = alloca i32, align 4
  %band = alloca i32, align 4
  %cfile = alloca i8*, align 8
  %bfile = alloca i8*, align 8
  %cb = alloca %struct.cmd_block_s, align 8
  %code_b = alloca i32, align 4
  %code_c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store i8* %pbuf, i8** %pbuf.addr, align 8, !tbaa !1
  store i32 %data_size, i32* %data_size.addr, align 4, !tbaa !43
  store i32 %pseudo_band_offset, i32* %pseudo_band_offset.addr, align 4, !tbaa !43
  %0 = bitcast i32* %band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %band_range_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %1, i32 0, i32 73
  %2 = load i32, i32* %band_range_max, align 4, !tbaa !57
  %3 = load i32, i32* %pseudo_band_offset.addr, align 4, !tbaa !43
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %band, align 4, !tbaa !43
  %4 = bitcast i8** %cfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %5, i32 0, i32 58
  %cfile1 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 1
  %6 = load i8*, i8** %cfile1, align 8, !tbaa !58
  store i8* %6, i8** %cfile, align 8, !tbaa !1
  %7 = bitcast i8** %bfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info2 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %8, i32 0, i32 58
  %bfile3 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info2, i32 0, i32 3
  %9 = load i8*, i8** %bfile3, align 8, !tbaa !59
  store i8* %9, i8** %bfile, align 8, !tbaa !1
  %10 = bitcast %struct.cmd_block_s* %cb to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast i32* %code_b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %code_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i8*, i8** %cfile, align 8, !tbaa !1
  %cmp = icmp eq i8* %13, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load i8*, i8** %bfile, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %14, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %15 = load i32, i32* %band, align 4, !tbaa !43
  %band_min = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %cb, i32 0, i32 0
  store i32 %15, i32* %band_min, align 4, !tbaa !60
  %16 = load i32, i32* %band, align 4, !tbaa !43
  %band_max = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %cb, i32 0, i32 1
  store i32 %16, i32* %band_max, align 4, !tbaa !62
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info5 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info5, i32 0, i32 4
  %18 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !63
  %ftell = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %18, i32 0, i32 7
  %19 = load i64 (i8*)*, i64 (i8*)** %ftell, align 8, !tbaa !64
  %20 = load i8*, i8** %cfile, align 8, !tbaa !1
  %call = call i64 %19(i8* %20) #4
  %pos = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %cb, i32 0, i32 2
  store i64 %call, i64* %pos, align 8, !tbaa !66
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info6 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %21, i32 0, i32 58
  %io_procs7 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info6, i32 0, i32 4
  %22 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs7, align 8, !tbaa !63
  %fwrite_chars = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %22, i32 0, i32 3
  %23 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %fwrite_chars, align 8, !tbaa !67
  %24 = bitcast %struct.cmd_block_s* %cb to i8*
  %25 = load i8*, i8** %bfile, align 8, !tbaa !1
  %call8 = call i32 %23(i8* %24, i32 16, i8* %25) #4
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  br label %do.cond.10

do.cond.10:                                       ; preds = %do.body.9
  br label %do.end.11

do.end.11:                                        ; preds = %do.cond.10
  %26 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info12 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %26, i32 0, i32 58
  %io_procs13 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info12, i32 0, i32 4
  %27 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs13, align 8, !tbaa !63
  %fwrite_chars14 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %27, i32 0, i32 3
  %28 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %fwrite_chars14, align 8, !tbaa !67
  %29 = load i8*, i8** %pbuf.addr, align 8, !tbaa !1
  %30 = load i32, i32* %data_size.addr, align 4, !tbaa !43
  %31 = load i8*, i8** %cfile, align 8, !tbaa !1
  %call15 = call i32 %28(i8* %29, i32 %30, i8* %31) #4
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.11
  br label %do.cond.17

do.cond.17:                                       ; preds = %do.body.16
  br label %do.end.18

do.end.18:                                        ; preds = %do.cond.17
  %32 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info19 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %32, i32 0, i32 58
  %io_procs20 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info19, i32 0, i32 4
  %33 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs20, align 8, !tbaa !63
  %ferror_code = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %33, i32 0, i32 6
  %34 = load i32 (i8*)*, i32 (i8*)** %ferror_code, align 8, !tbaa !68
  %35 = load i8*, i8** %bfile, align 8, !tbaa !1
  %call21 = call i32 %34(i8* %35) #4
  store i32 %call21, i32* %code_b, align 4, !tbaa !43
  %36 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info22 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %36, i32 0, i32 58
  %io_procs23 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info22, i32 0, i32 4
  %37 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs23, align 8, !tbaa !63
  %ferror_code24 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %37, i32 0, i32 6
  %38 = load i32 (i8*)*, i32 (i8*)** %ferror_code24, align 8, !tbaa !68
  %39 = load i8*, i8** %cfile, align 8, !tbaa !1
  %call25 = call i32 %38(i8* %39) #4
  store i32 %call25, i32* %code_c, align 4, !tbaa !43
  %40 = load i32, i32* %code_b, align 4, !tbaa !43
  %cmp26 = icmp slt i32 %40, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %do.end.18
  %41 = load i32, i32* %code_b, align 4, !tbaa !43
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %do.end.18
  %42 = load i32, i32* %code_c, align 4, !tbaa !43
  %cmp29 = icmp slt i32 %42, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  %43 = load i32, i32* %code_c, align 4, !tbaa !43
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.28
  %44 = load i32, i32* %code_b, align 4, !tbaa !43
  %45 = load i32, i32* %code_c, align 4, !tbaa !43
  %or = or i32 %44, %45
  store i32 %or, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.30, %if.then.27, %if.then
  %46 = bitcast i32* %code_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %code_b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.cmd_block_s* %cb to i8*
  call void @llvm.lifetime.end(i64 16, i8* %48) #1
  %49 = bitcast i8** %bfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i8** %cfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32* %band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define i32 @cmd_write_buffer(%struct.gx_device_clist_writer_s* %cldev, i8 zeroext %cmd_end) #0 {
entry:
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %cmd_end.addr = alloca i8, align 1
  %nbands = alloca i32, align 4
  %pcls = alloca %struct.gx_clist_state_s*, align 8
  %band = alloca i32, align 4
  %code = alloca i32, align 4
  %warning = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store i8 %cmd_end, i8* %cmd_end.addr, align 1, !tbaa !69
  %0 = bitcast i32* %nbands to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands1 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %1, i32 0, i32 59
  %2 = load i32, i32* %nbands1, align 4, !tbaa !44
  store i32 %2, i32* %nbands, align 4, !tbaa !43
  %3 = bitcast %struct.gx_clist_state_s** %pcls to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %band_range_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 72
  %8 = load i32, i32* %band_range_min, align 4, !tbaa !70
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %band_range_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 73
  %10 = load i32, i32* %band_range_max, align 4, !tbaa !57
  %11 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %band_range_list = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %11, i32 0, i32 71
  %call = call i32 @cmd_write_band(%struct.gx_device_clist_writer_s* %6, i32 %8, i32 %10, %struct.cmd_list_s* %band_range_list, i8 zeroext 0) #4
  store i32 %call, i32* %code, align 4, !tbaa !43
  %12 = bitcast i32* %warning to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %code, align 4, !tbaa !43
  store i32 %13, i32* %warning, align 4, !tbaa !43
  store i32 0, i32* %band, align 4, !tbaa !43
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %14, i32 0, i32 66
  %15 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !46
  store %struct.gx_clist_state_s* %15, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %code, align 4, !tbaa !43
  %cmp = icmp sge i32 %16, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %17 = load i32, i32* %band, align 4, !tbaa !43
  %18 = load i32, i32* %nbands, align 4, !tbaa !43
  %cmp2 = icmp slt i32 %17, %18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %19 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %19, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %20 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %21 = load i32, i32* %band, align 4, !tbaa !43
  %22 = load i32, i32* %band, align 4, !tbaa !43
  %23 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %23, i32 0, i32 15
  %24 = load i8, i8* %cmd_end.addr, align 1, !tbaa !69
  %call3 = call i32 @cmd_write_band(%struct.gx_device_clist_writer_s* %20, i32 %21, i32 %22, %struct.cmd_list_s* %list, i8 zeroext %24) #4
  store i32 %call3, i32* %code, align 4, !tbaa !43
  %25 = load i32, i32* %code, align 4, !tbaa !43
  %26 = load i32, i32* %warning, align 4, !tbaa !43
  %or = or i32 %26, %25
  store i32 %or, i32* %warning, align 4, !tbaa !43
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %band, align 4, !tbaa !43
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %band, align 4, !tbaa !43
  %28 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %28, i32 1
  store %struct.gx_clist_state_s* %incdec.ptr, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.9, %for.end
  %29 = load i32, i32* %band, align 4, !tbaa !43
  %30 = load i32, i32* %nbands, align 4, !tbaa !43
  %cmp5 = icmp slt i32 %29, %30
  br i1 %cmp5, label %for.body.6, label %for.end.12

for.body.6:                                       ; preds = %for.cond.4
  %31 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !1
  %list7 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %31, i32 0, i32 15
  %tail = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %list7, i32 0, i32 1
  store %struct.cmd_prefix_s* null, %struct.cmd_prefix_s** %tail, align 8, !tbaa !71
  %32 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !1
  %list8 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %32, i32 0, i32 15
  %head = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %list8, i32 0, i32 0
  store %struct.cmd_prefix_s* null, %struct.cmd_prefix_s** %head, align 8, !tbaa !72
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.6
  %33 = load i32, i32* %band, align 4, !tbaa !43
  %inc10 = add nsw i32 %33, 1
  store i32 %inc10, i32* %band, align 4, !tbaa !43
  %34 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %34, i32 1
  store %struct.gx_clist_state_s* %incdec.ptr11, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !1
  br label %for.cond.4

for.end.12:                                       ; preds = %for.cond.4
  %35 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %35, i32 0, i32 67
  %36 = load i8*, i8** %cbuf, align 8, !tbaa !73
  %37 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %37, i32 0, i32 68
  store i8* %36, i8** %cnext, align 8, !tbaa !74
  %38 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %ccl = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %38, i32 0, i32 70
  store %struct.cmd_list_s* null, %struct.cmd_list_s** %ccl, align 8, !tbaa !75
  %39 = load i32, i32* %code, align 4, !tbaa !43
  %cmp13 = icmp ne i32 %39, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.12
  %40 = load i32, i32* %code, align 4, !tbaa !43
  br label %cond.end

cond.false:                                       ; preds = %for.end.12
  %41 = load i32, i32* %warning, align 4, !tbaa !43
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %40, %cond.true ], [ %41, %cond.false ]
  %42 = bitcast i32* %warning to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast %struct.gx_clist_state_s** %pcls to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %nbands to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @cmd_write_band(%struct.gx_device_clist_writer_s* %cldev, i32 %band_min, i32 %band_max, %struct.cmd_list_s* %pcl, i8 zeroext %cmd_end) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %band_min.addr = alloca i32, align 4
  %band_max.addr = alloca i32, align 4
  %pcl.addr = alloca %struct.cmd_list_s*, align 8
  %cmd_end.addr = alloca i8, align 1
  %cp = alloca %struct.cmd_prefix_s*, align 8
  %code_b = alloca i32, align 4
  %code_c = alloca i32, align 4
  %cfile = alloca i8*, align 8
  %bfile = alloca i8*, align 8
  %cb = alloca %struct.cmd_block_s, align 8
  %end = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store i32 %band_min, i32* %band_min.addr, align 4, !tbaa !43
  store i32 %band_max, i32* %band_max.addr, align 4, !tbaa !43
  store %struct.cmd_list_s* %pcl, %struct.cmd_list_s** %pcl.addr, align 8, !tbaa !1
  store i8 %cmd_end, i8* %cmd_end.addr, align 1, !tbaa !69
  %0 = bitcast %struct.cmd_prefix_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmd_list_s*, %struct.cmd_list_s** %pcl.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %1, i32 0, i32 0
  %2 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %head, align 8, !tbaa !76
  store %struct.cmd_prefix_s* %2, %struct.cmd_prefix_s** %cp, align 8, !tbaa !1
  %3 = bitcast i32* %code_b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code_b, align 4, !tbaa !43
  %4 = bitcast i32* %code_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %code_c, align 4, !tbaa !43
  %5 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %cp, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmd_prefix_s* %5, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i8, i8* %cmd_end.addr, align 1, !tbaa !69
  %conv = zext i8 %6 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end.59

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = bitcast i8** %cfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %8, i32 0, i32 58
  %cfile3 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 1
  %9 = load i8*, i8** %cfile3, align 8, !tbaa !58
  store i8* %9, i8** %cfile, align 8, !tbaa !1
  %10 = bitcast i8** %bfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info4 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %11, i32 0, i32 58
  %bfile5 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info4, i32 0, i32 3
  %12 = load i8*, i8** %bfile5, align 8, !tbaa !59
  store i8* %12, i8** %bfile, align 8, !tbaa !1
  %13 = bitcast %struct.cmd_block_s* %cb to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #1
  call void @llvm.lifetime.start(i64 1, i8* %end) #1
  %14 = load i8, i8* %cmd_end.addr, align 1, !tbaa !69
  store i8 %14, i8* %end, align 1, !tbaa !69
  %15 = load i8*, i8** %cfile, align 8, !tbaa !1
  %cmp6 = icmp eq i8* %15, null
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.then
  %16 = load i8*, i8** %bfile, align 8, !tbaa !1
  %cmp9 = icmp eq i8* %16, null
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false.8, %if.then
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.8
  %17 = load i32, i32* %band_min.addr, align 4, !tbaa !43
  %band_min12 = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %cb, i32 0, i32 0
  store i32 %17, i32* %band_min12, align 4, !tbaa !60
  %18 = load i32, i32* %band_max.addr, align 4, !tbaa !43
  %band_max13 = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %cb, i32 0, i32 1
  store i32 %18, i32* %band_max13, align 4, !tbaa !62
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info14 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %19, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info14, i32 0, i32 4
  %20 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !63
  %ftell = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %20, i32 0, i32 7
  %21 = load i64 (i8*)*, i64 (i8*)** %ftell, align 8, !tbaa !64
  %22 = load i8*, i8** %cfile, align 8, !tbaa !1
  %call = call i64 %21(i8* %22) #4
  %pos = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %cb, i32 0, i32 2
  store i64 %call, i64* %pos, align 8, !tbaa !66
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info15 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %23, i32 0, i32 58
  %io_procs16 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info15, i32 0, i32 4
  %24 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs16, align 8, !tbaa !63
  %fwrite_chars = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %24, i32 0, i32 3
  %25 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %fwrite_chars, align 8, !tbaa !67
  %26 = bitcast %struct.cmd_block_s* %cb to i8*
  %27 = load i8*, i8** %bfile, align 8, !tbaa !1
  %call17 = call i32 %25(i8* %26, i32 16, i8* %27) #4
  %28 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %cp, align 8, !tbaa !1
  %cmp18 = icmp ne %struct.cmd_prefix_s* %28, null
  br i1 %cmp18, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %do.end
  %29 = load %struct.cmd_list_s*, %struct.cmd_list_s** %pcl.addr, align 8, !tbaa !1
  %tail = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %29, i32 0, i32 1
  %30 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %tail, align 8, !tbaa !77
  %next = getelementptr inbounds %struct.cmd_prefix_s, %struct.cmd_prefix_s* %30, i32 0, i32 0
  store %struct.cmd_prefix_s* null, %struct.cmd_prefix_s** %next, align 8, !tbaa !78
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.20
  %31 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %cp, align 8, !tbaa !1
  %cmp21 = icmp ne %struct.cmd_prefix_s* %31, null
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.23

do.body.23:                                       ; preds = %for.body
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.body.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %32 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info26 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %32, i32 0, i32 58
  %io_procs27 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info26, i32 0, i32 4
  %33 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs27, align 8, !tbaa !63
  %fwrite_chars28 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %33, i32 0, i32 3
  %34 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %fwrite_chars28, align 8, !tbaa !67
  %35 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %cp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.cmd_prefix_s, %struct.cmd_prefix_s* %35, i64 1
  %36 = bitcast %struct.cmd_prefix_s* %add.ptr to i8*
  %37 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %cp, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.cmd_prefix_s, %struct.cmd_prefix_s* %37, i32 0, i32 1
  %38 = load i32, i32* %size, align 4, !tbaa !80
  %39 = load i8*, i8** %cfile, align 8, !tbaa !1
  %call29 = call i32 %34(i8* %36, i32 %38, i8* %39) #4
  br label %for.inc

for.inc:                                          ; preds = %do.end.25
  %40 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %cp, align 8, !tbaa !1
  %next30 = getelementptr inbounds %struct.cmd_prefix_s, %struct.cmd_prefix_s* %40, i32 0, i32 0
  %41 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %next30, align 8, !tbaa !78
  store %struct.cmd_prefix_s* %41, %struct.cmd_prefix_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct.cmd_list_s*, %struct.cmd_list_s** %pcl.addr, align 8, !tbaa !1
  %tail31 = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %42, i32 0, i32 1
  store %struct.cmd_prefix_s* null, %struct.cmd_prefix_s** %tail31, align 8, !tbaa !77
  %43 = load %struct.cmd_list_s*, %struct.cmd_list_s** %pcl.addr, align 8, !tbaa !1
  %head32 = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %43, i32 0, i32 0
  store %struct.cmd_prefix_s* null, %struct.cmd_prefix_s** %head32, align 8, !tbaa !76
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %do.end
  %44 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info34 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %44, i32 0, i32 58
  %io_procs35 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info34, i32 0, i32 4
  %45 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs35, align 8, !tbaa !63
  %fwrite_chars36 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %45, i32 0, i32 3
  %46 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %fwrite_chars36, align 8, !tbaa !67
  %47 = load i8*, i8** %cfile, align 8, !tbaa !1
  %call37 = call i32 %46(i8* %end, i32 1, i8* %47) #4
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.33
  br label %do.cond.39

do.cond.39:                                       ; preds = %do.body.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  %48 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info41 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %48, i32 0, i32 58
  %io_procs42 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info41, i32 0, i32 4
  %49 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs42, align 8, !tbaa !63
  %ferror_code = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %49, i32 0, i32 6
  %50 = load i32 (i8*)*, i32 (i8*)** %ferror_code, align 8, !tbaa !68
  %51 = load i8*, i8** %bfile, align 8, !tbaa !1
  %call43 = call i32 %50(i8* %51) #4
  store i32 %call43, i32* %code_b, align 4, !tbaa !43
  %52 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info44 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %52, i32 0, i32 58
  %io_procs45 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info44, i32 0, i32 4
  %53 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs45, align 8, !tbaa !63
  %ferror_code46 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %53, i32 0, i32 6
  %54 = load i32 (i8*)*, i32 (i8*)** %ferror_code46, align 8, !tbaa !68
  %55 = load i8*, i8** %cfile, align 8, !tbaa !1
  %call47 = call i32 %54(i8* %55) #4
  store i32 %call47, i32* %code_c, align 4, !tbaa !43
  %56 = load i32, i32* %code_b, align 4, !tbaa !43
  %cmp48 = icmp slt i32 %56, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %do.end.40
  %57 = load i32, i32* %code_b, align 4, !tbaa !43
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %do.end.40
  %58 = load i32, i32* %code_c, align 4, !tbaa !43
  %cmp52 = icmp slt i32 %58, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  %59 = load i32, i32* %code_c, align 4, !tbaa !43
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %if.end.51
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.55, %if.then.54, %if.then.50, %if.then.11
  call void @llvm.lifetime.end(i64 1, i8* %end) #1
  %60 = bitcast %struct.cmd_block_s* %cb to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #1
  %61 = bitcast i8** %bfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i8** %cfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.60 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.59

if.end.59:                                        ; preds = %cleanup.cont, %lor.lhs.false
  %63 = load i32, i32* %code_b, align 4, !tbaa !43
  %64 = load i32, i32* %code_c, align 4, !tbaa !43
  %or = or i32 %63, %64
  store i32 %or, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

cleanup.60:                                       ; preds = %if.end.59, %cleanup
  %65 = bitcast i32* %code_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %code_b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast %struct.cmd_prefix_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %cldev, %struct.cmd_list_s* %pcl, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcl.addr = alloca %struct.cmd_list_s*, align 8
  %size.addr = alloca i32, align 4
  %dp = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %cp = alloca %struct.cmd_prefix_s*, align 8
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.cmd_list_s* %pcl, %struct.cmd_list_s** %pcl.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !43
  %0 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %1, i32 0, i32 68
  %2 = load i8*, i8** %cnext, align 8, !tbaa !74
  store i8* %2, i8** %dp, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !43
  %conv = zext i32 %3 to i64
  %add = add i64 %conv, 32
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %cend = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %4, i32 0, i32 69
  %5 = load i8*, i8** %cend, align 8, !tbaa !81
  %6 = load i8*, i8** %dp, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp ugt i64 %add, %sub.ptr.sub
  br i1 %cmp, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %call = call i32 @cmd_write_buffer(%struct.gx_device_clist_writer_s* %7, i8 zeroext 0) #4
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %8, i32 0, i32 65
  store i32 %call, i32* %error_code, align 4, !tbaa !82
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %9 = load i32, i32* %size.addr, align 4, !tbaa !43
  %conv4 = zext i32 %9 to i64
  %add5 = add i64 %conv4, 32
  %10 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %cend6 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %10, i32 0, i32 69
  %11 = load i8*, i8** %cend6, align 8, !tbaa !81
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %cnext7 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 68
  %13 = load i8*, i8** %cnext7, align 8, !tbaa !74
  %sub.ptr.lhs.cast8 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast9 = ptrtoint i8* %13 to i64
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast9
  %cmp11 = icmp ugt i64 %add5, %sub.ptr.sub10
  br i1 %cmp11, label %if.then.13, label %if.else.22

if.then.13:                                       ; preds = %lor.lhs.false, %if.then
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code14 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %14, i32 0, i32 65
  %15 = load i32, i32* %error_code14, align 4, !tbaa !82
  %cmp15 = icmp slt i32 %15, 0
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.13
  %16 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %16, i32 0, i32 94
  store i32 0, i32* %error_is_retryable, align 4, !tbaa !83
  br label %if.end.21

if.else:                                          ; preds = %if.then.13
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %ignore_lo_mem_warnings = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 97
  %18 = load i32, i32* %ignore_lo_mem_warnings, align 4, !tbaa !84
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.end, label %if.then.18

if.then.18:                                       ; preds = %if.else
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code19 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %19, i32 0, i32 65
  store i32 -25, i32* %error_code19, align 4, !tbaa !82
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.else
  %20 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_is_retryable20 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %20, i32 0, i32 94
  store i32 1, i32* %error_is_retryable20, align 4, !tbaa !83
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then.17
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.22:                                       ; preds = %lor.lhs.false
  %21 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %22 = load %struct.cmd_list_s*, %struct.cmd_list_s** %pcl.addr, align 8, !tbaa !1
  %23 = load i32, i32* %size.addr, align 4, !tbaa !43
  %call23 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %21, %struct.cmd_list_s* %22, i32 %23) #4
  store i8* %call23, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %entry
  %24 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %ccl = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %24, i32 0, i32 70
  %25 = load %struct.cmd_list_s*, %struct.cmd_list_s** %ccl, align 8, !tbaa !75
  %26 = load %struct.cmd_list_s*, %struct.cmd_list_s** %pcl.addr, align 8, !tbaa !1
  %cmp25 = icmp eq %struct.cmd_list_s* %25, %26
  br i1 %cmp25, label %if.then.27, label %if.else.33

if.then.27:                                       ; preds = %if.end.24
  br label %do.body

do.body:                                          ; preds = %if.then.27
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.28

do.body.28:                                       ; preds = %do.end
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.body.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  %27 = load i32, i32* %size.addr, align 4, !tbaa !43
  %28 = load %struct.cmd_list_s*, %struct.cmd_list_s** %pcl.addr, align 8, !tbaa !1
  %tail = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %28, i32 0, i32 1
  %29 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %tail, align 8, !tbaa !77
  %size31 = getelementptr inbounds %struct.cmd_prefix_s, %struct.cmd_prefix_s* %29, i32 0, i32 1
  %30 = load i32, i32* %size31, align 4, !tbaa !80
  %add32 = add i32 %30, %27
  store i32 %add32, i32* %size31, align 4, !tbaa !80
  br label %if.end.55

if.else.33:                                       ; preds = %if.end.24
  %31 = bitcast %struct.cmd_prefix_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load i8*, i8** %dp, align 8, !tbaa !1
  %33 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %33, i32 0, i32 67
  %34 = load i8*, i8** %cbuf, align 8, !tbaa !73
  %35 = load i8*, i8** %dp, align 8, !tbaa !1
  %sub.ptr.lhs.cast34 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast35 = ptrtoint i8* %35 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %and = and i64 %sub.ptr.sub36, 7
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %and
  %36 = bitcast i8* %add.ptr to %struct.cmd_prefix_s*
  store %struct.cmd_prefix_s* %36, %struct.cmd_prefix_s** %cp, align 8, !tbaa !1
  br label %do.body.37

do.body.37:                                       ; preds = %if.else.33
  br label %do.cond.38

do.cond.38:                                       ; preds = %do.body.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.cond.38
  %37 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %cp, align 8, !tbaa !1
  %add.ptr40 = getelementptr inbounds %struct.cmd_prefix_s, %struct.cmd_prefix_s* %37, i64 1
  %38 = bitcast %struct.cmd_prefix_s* %add.ptr40 to i8*
  store i8* %38, i8** %dp, align 8, !tbaa !1
  %39 = load %struct.cmd_list_s*, %struct.cmd_list_s** %pcl.addr, align 8, !tbaa !1
  %tail41 = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %39, i32 0, i32 1
  %40 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %tail41, align 8, !tbaa !77
  %cmp42 = icmp ne %struct.cmd_prefix_s* %40, null
  br i1 %cmp42, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %do.end.39
  %41 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %cp, align 8, !tbaa !1
  %42 = load %struct.cmd_list_s*, %struct.cmd_list_s** %pcl.addr, align 8, !tbaa !1
  %tail45 = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %42, i32 0, i32 1
  %43 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %tail45, align 8, !tbaa !77
  %next = getelementptr inbounds %struct.cmd_prefix_s, %struct.cmd_prefix_s* %43, i32 0, i32 0
  store %struct.cmd_prefix_s* %41, %struct.cmd_prefix_s** %next, align 8, !tbaa !78
  br label %if.end.47

if.else.46:                                       ; preds = %do.end.39
  %44 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %cp, align 8, !tbaa !1
  %45 = load %struct.cmd_list_s*, %struct.cmd_list_s** %pcl.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %45, i32 0, i32 0
  store %struct.cmd_prefix_s* %44, %struct.cmd_prefix_s** %head, align 8, !tbaa !76
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.then.44
  %46 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %cp, align 8, !tbaa !1
  %47 = load %struct.cmd_list_s*, %struct.cmd_list_s** %pcl.addr, align 8, !tbaa !1
  %tail48 = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %47, i32 0, i32 1
  store %struct.cmd_prefix_s* %46, %struct.cmd_prefix_s** %tail48, align 8, !tbaa !77
  %48 = load %struct.cmd_list_s*, %struct.cmd_list_s** %pcl.addr, align 8, !tbaa !1
  %49 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %ccl49 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %49, i32 0, i32 70
  store %struct.cmd_list_s* %48, %struct.cmd_list_s** %ccl49, align 8, !tbaa !75
  %50 = load i32, i32* %size.addr, align 4, !tbaa !43
  %51 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %cp, align 8, !tbaa !1
  %size50 = getelementptr inbounds %struct.cmd_prefix_s, %struct.cmd_prefix_s* %51, i32 0, i32 1
  store i32 %50, i32* %size50, align 4, !tbaa !80
  %52 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %ins_count = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %52, i32 0, i32 108
  %53 = load i64, i64* %ins_count, align 8, !tbaa !85
  %54 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %cp, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cmd_prefix_s, %struct.cmd_prefix_s* %54, i32 0, i32 2
  store i64 %53, i64* %id, align 8, !tbaa !86
  br label %do.body.51

do.body.51:                                       ; preds = %if.end.47
  br label %do.cond.52

do.cond.52:                                       ; preds = %do.body.51
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  %55 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %ins_count54 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %55, i32 0, i32 108
  %56 = load i64, i64* %ins_count54, align 8, !tbaa !85
  %inc = add i64 %56, 1
  store i64 %inc, i64* %ins_count54, align 8, !tbaa !85
  %57 = bitcast %struct.cmd_prefix_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.53, %do.end.30
  %58 = load i8*, i8** %dp, align 8, !tbaa !1
  %59 = load i32, i32* %size.addr, align 4, !tbaa !43
  %idx.ext = zext i32 %59 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %58, i64 %idx.ext
  %60 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %cnext57 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %60, i32 0, i32 68
  store i8* %add.ptr56, i8** %cnext57, align 8, !tbaa !74
  %61 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8* %61, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.55, %if.else.22, %if.end.21
  %62 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = load i8*, i8** %retval
  ret i8* %63
}

; Function Attrs: nounwind uwtable
define i32 @cmd_get_buffer_space(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %size.addr = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !43
  %0 = load i32, i32* %size.addr, align 4, !tbaa !43
  %conv = zext i32 %0 to i64
  %add = add i64 %conv, 32
  %1 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %cend = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %1, i32 0, i32 69
  %2 = load i8*, i8** %cend, align 8, !tbaa !81
  %3 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %3, i32 0, i32 68
  %4 = load i8*, i8** %cnext, align 8, !tbaa !74
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp ugt i64 %add, %sub.ptr.sub
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %call = call i32 @cmd_write_buffer(%struct.gx_device_clist_writer_s* %5, i8 zeroext 0) #4
  %6 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %6, i32 0, i32 65
  store i32 %call, i32* %error_code, align 4, !tbaa !82
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code2 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 65
  %8 = load i32, i32* %error_code2, align 4, !tbaa !82
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 94
  store i32 0, i32* %error_is_retryable, align 4, !tbaa !83
  %10 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code6 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %10, i32 0, i32 65
  %11 = load i32, i32* %error_code6, align 4, !tbaa !82
  store i32 %11, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %cend8 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 69
  %13 = load i8*, i8** %cend8, align 8, !tbaa !81
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %cnext9 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %14, i32 0, i32 68
  %15 = load i8*, i8** %cnext9, align 8, !tbaa !74
  %sub.ptr.lhs.cast10 = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast11 = ptrtoint i8* %15 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %sub = sub i64 %sub.ptr.sub12, 32
  %conv13 = trunc i64 %sub to i32
  store i32 %conv13, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s* %cldev, i32 %band_min, i32 %band_max, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %band_min.addr = alloca i32, align 4
  %band_max.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store i32 %band_min, i32* %band_min.addr, align 4, !tbaa !43
  store i32 %band_max, i32* %band_max.addr, align 4, !tbaa !43
  store i32 %size, i32* %size.addr, align 4, !tbaa !43
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %ccl = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %0, i32 0, i32 70
  %1 = load %struct.cmd_list_s*, %struct.cmd_list_s** %ccl, align 8, !tbaa !75
  %cmp = icmp ne %struct.cmd_list_s* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %do.end
  %2 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %ccl1 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %2, i32 0, i32 70
  %3 = load %struct.cmd_list_s*, %struct.cmd_list_s** %ccl1, align 8, !tbaa !75
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %band_range_list = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %4, i32 0, i32 71
  %cmp2 = icmp ne %struct.cmd_list_s* %3, %band_range_list
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i32, i32* %band_min.addr, align 4, !tbaa !43
  %6 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %band_range_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %6, i32 0, i32 72
  %7 = load i32, i32* %band_range_min, align 4, !tbaa !70
  %cmp3 = icmp ne i32 %5, %7
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %band_max.addr, align 4, !tbaa !43
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %band_range_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 73
  %10 = load i32, i32* %band_range_max, align 4, !tbaa !57
  %cmp5 = icmp ne i32 %8, %10
  br i1 %cmp5, label %if.then, label %if.end.16

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %land.lhs.true
  %11 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %call = call i32 @cmd_write_buffer(%struct.gx_device_clist_writer_s* %11, i8 zeroext 0) #4
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 65
  store i32 %call, i32* %error_code, align 4, !tbaa !82
  %cmp6 = icmp ne i32 %call, 0
  br i1 %cmp6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.then
  %13 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code8 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %13, i32 0, i32 65
  %14 = load i32, i32* %error_code8, align 4, !tbaa !82
  %cmp9 = icmp slt i32 %14, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.7
  %15 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %15, i32 0, i32 94
  store i32 0, i32* %error_is_retryable, align 4, !tbaa !83
  br label %if.end

if.else:                                          ; preds = %if.then.7
  %16 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code11 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %16, i32 0, i32 65
  store i32 -25, i32* %error_code11, align 4, !tbaa !82
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_is_retryable12 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 94
  store i32 1, i32* %error_is_retryable12, align 4, !tbaa !83
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  store i8* null, i8** %retval
  br label %return

if.end.13:                                        ; preds = %if.then
  %18 = load i32, i32* %band_min.addr, align 4, !tbaa !43
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %band_range_min14 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %19, i32 0, i32 72
  store i32 %18, i32* %band_range_min14, align 4, !tbaa !70
  %20 = load i32, i32* %band_max.addr, align 4, !tbaa !43
  %21 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %band_range_max15 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %21, i32 0, i32 73
  store i32 %20, i32* %band_range_max15, align 4, !tbaa !57
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.13, %lor.lhs.false.4, %do.end
  %22 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %band_range_list17 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %23, i32 0, i32 71
  %24 = load i32, i32* %size.addr, align 4, !tbaa !43
  %call18 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %22, %struct.cmd_list_s* %band_range_list17, i32 %24) #4
  store i8* %call18, i8** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.end
  %25 = load i8*, i8** %retval
  ret i8* %25
}

; Function Attrs: nounwind uwtable
define i32 @cmd_size_w(i32 %w) #0 {
entry:
  %w.addr = alloca i32, align 4
  %size = alloca i32, align 4
  store i32 %w, i32* %w.addr, align 4, !tbaa !43
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %size, align 4, !tbaa !43
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %w.addr, align 4, !tbaa !43
  %cmp = icmp ugt i32 %1, 127
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %w.addr, align 4, !tbaa !43
  %shr = lshr i32 %2, 7
  store i32 %shr, i32* %w.addr, align 4, !tbaa !43
  %3 = load i32, i32* %size, align 4, !tbaa !43
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %size, align 4, !tbaa !43
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %size, align 4, !tbaa !43
  %5 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i8* @cmd_put_w(i32 %w, i8* %dp) #0 {
entry:
  %w.addr = alloca i32, align 4
  %dp.addr = alloca i8*, align 8
  store i32 %w, i32* %w.addr, align 4, !tbaa !43
  store i8* %dp, i8** %dp.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %w.addr, align 4, !tbaa !43
  %cmp = icmp ugt i32 %0, 127
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %w.addr, align 4, !tbaa !43
  %or = or i32 %1, 128
  %conv = trunc i32 %or to i8
  %2 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %dp.addr, align 8, !tbaa !1
  store i8 %conv, i8* %2, align 1, !tbaa !69
  %3 = load i32, i32* %w.addr, align 4, !tbaa !43
  %shr = lshr i32 %3, 7
  store i32 %shr, i32* %w.addr, align 4, !tbaa !43
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %w.addr, align 4, !tbaa !43
  %conv1 = trunc i32 %4 to i8
  %5 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %5, align 1, !tbaa !69
  %6 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  ret i8* %add.ptr
}

; Function Attrs: nounwind uwtable
define i32 @cmd_size_frac31(i32 %w) #0 {
entry:
  %w.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %v = alloca i32, align 4
  store i32 %w, i32* %w.addr, align 4, !tbaa !43
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %size, align 4, !tbaa !43
  %1 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %w.addr, align 4, !tbaa !43
  store i32 %2, i32* %v, align 4, !tbaa !43
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %v, align 4, !tbaa !43
  %and = and i32 %3, 33554431
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %v, align 4, !tbaa !43
  %shl = shl i32 %4, 7
  store i32 %shl, i32* %v, align 4, !tbaa !43
  %5 = load i32, i32* %size, align 4, !tbaa !43
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %size, align 4, !tbaa !43
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %size, align 4, !tbaa !43
  %7 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i8* @cmd_put_frac31(i32 %w, i8* %dp) #0 {
entry:
  %w.addr = alloca i32, align 4
  %dp.addr = alloca i8*, align 8
  %v = alloca i32, align 4
  store i32 %w, i32* %w.addr, align 4, !tbaa !43
  store i8* %dp, i8** %dp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %w.addr, align 4, !tbaa !43
  store i32 %1, i32* %v, align 4, !tbaa !43
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %v, align 4, !tbaa !43
  %and = and i32 %2, 33554431
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %v, align 4, !tbaa !43
  %shr = lshr i32 %3, 24
  %or = or i32 %shr, 1
  %conv = trunc i32 %or to i8
  %4 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %dp.addr, align 8, !tbaa !1
  store i8 %conv, i8* %4, align 1, !tbaa !69
  %5 = load i32, i32* %v, align 4, !tbaa !43
  %shl = shl i32 %5, 7
  store i32 %shl, i32* %v, align 4, !tbaa !43
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %v, align 4, !tbaa !43
  %shr1 = lshr i32 %6, 24
  %conv2 = trunc i32 %shr1 to i8
  %7 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  store i8 %conv2, i8* %7, align 1, !tbaa !69
  %8 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  %9 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret i8* %add.ptr
}

; Function Attrs: nounwind uwtable
define i32 @cmd_put_color(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, %struct.clist_select_color_t* %select, i64 %color, i64* %pcolor) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %select.addr = alloca %struct.clist_select_color_t*, align 8
  %color.addr = alloca i64, align 8
  %pcolor.addr = alloca i64*, align 8
  %dp = alloca i8*, align 8
  %diff = alloca i64, align 8
  %op = alloca i8, align 1
  %op_delta = alloca i8, align 1
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %depth = alloca i32, align 4
  %num_bytes = alloca i32, align 4
  %delta_bytes = alloca i32, align 4
  %delta_offset = alloca i64, align 8
  %delta_mask = alloca i64, align 8
  %delta = alloca i64, align 8
  %use_delta = alloca i32, align 4
  %bytes_dropped = alloca i32, align 4
  %data = alloca i64, align 8
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store %struct.clist_select_color_t* %select, %struct.clist_select_color_t** %select.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !87
  store i64* %pcolor, i64** %pcolor.addr, align 8, !tbaa !1
  %0 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %diff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i64, i64* %color.addr, align 8, !tbaa !87
  %3 = load i64*, i64** %pcolor.addr, align 8, !tbaa !1
  %4 = load i64, i64* %3, align 8, !tbaa !87
  %sub = sub i64 %2, %4
  store i64 %sub, i64* %diff, align 8, !tbaa !87
  call void @llvm.lifetime.start(i64 1, i8* %op) #1
  call void @llvm.lifetime.start(i64 1, i8* %op_delta) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i64, i64* %diff, align 8, !tbaa !87
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

if.end:                                           ; preds = %entry
  %7 = load %struct.clist_select_color_t*, %struct.clist_select_color_t** %select.addr, align 8, !tbaa !1
  %tile_color = getelementptr inbounds %struct.clist_select_color_t, %struct.clist_select_color_t* %7, i32 0, i32 2
  %8 = load i32, i32* %tile_color, align 4, !tbaa !88
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %10 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %10, i32 0, i32 15
  %call = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %9, %struct.cmd_list_s* %list, i32 1) #4
  store i8* %call, i8** %dp, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  %11 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %11, i32 0, i32 65
  %12 = load i32, i32* %error_code, align 4, !tbaa !82
  br label %cond.end

cond.false:                                       ; preds = %if.then.1
  %13 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 5, i8* %13, align 1, !tbaa !69
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !43
  %14 = load i32, i32* %code, align 4, !tbaa !43
  %cmp3 = icmp slt i32 %14, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  %15 = load i32, i32* %code, align 4, !tbaa !43
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

if.end.5:                                         ; preds = %cond.end
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %16 = load %struct.clist_select_color_t*, %struct.clist_select_color_t** %select.addr, align 8, !tbaa !1
  %set_op = getelementptr inbounds %struct.clist_select_color_t, %struct.clist_select_color_t* %16, i32 0, i32 0
  %17 = load i8, i8* %set_op, align 1, !tbaa !90
  store i8 %17, i8* %op, align 1, !tbaa !69
  %18 = load %struct.clist_select_color_t*, %struct.clist_select_color_t** %select.addr, align 8, !tbaa !1
  %delta_op = getelementptr inbounds %struct.clist_select_color_t, %struct.clist_select_color_t* %18, i32 0, i32 1
  %19 = load i8, i8* %delta_op, align 1, !tbaa !91
  store i8 %19, i8* %op_delta, align 1, !tbaa !69
  %20 = load i64, i64* %color.addr, align 8, !tbaa !87
  %cmp7 = icmp eq i64 %20, -1
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %21 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %22 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list9 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %22, i32 0, i32 15
  %call10 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %21, %struct.cmd_list_s* %list9, i32 1) #4
  store i8* %call10, i8** %dp, align 8, !tbaa !1
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %if.then.8
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code13 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %23, i32 0, i32 65
  %24 = load i32, i32* %error_code13, align 4, !tbaa !82
  br label %cond.end.16

cond.false.14:                                    ; preds = %if.then.8
  %25 = load i8, i8* %op, align 1, !tbaa !69
  %conv = zext i8 %25 to i32
  %add = add nsw i32 %conv, 15
  %conv15 = trunc i32 %add to i8
  %26 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv15, i8* %26, align 1, !tbaa !69
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.14, %cond.true.12
  %cond17 = phi i32 [ %24, %cond.true.12 ], [ 0, %cond.false.14 ]
  store i32 %cond17, i32* %code, align 4, !tbaa !43
  %27 = load i32, i32* %code, align 4, !tbaa !43
  %cmp18 = icmp slt i32 %27, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %cond.end.16
  %28 = load i32, i32* %code, align 4, !tbaa !43
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

if.end.21:                                        ; preds = %cond.end.16
  br label %if.end.144

if.else:                                          ; preds = %if.end.6
  %29 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %clist_color_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %30, i32 0, i32 113
  %depth22 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %clist_color_info, i32 0, i32 3
  %31 = load i16, i16* %depth22, align 2, !tbaa !92
  %conv23 = zext i16 %31 to i64
  %cmp24 = icmp ule i64 %conv23, 64
  br i1 %cmp24, label %cond.true.26, label %cond.false.30

cond.true.26:                                     ; preds = %if.else
  %32 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %clist_color_info27 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %32, i32 0, i32 113
  %depth28 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %clist_color_info27, i32 0, i32 3
  %33 = load i16, i16* %depth28, align 2, !tbaa !92
  %conv29 = zext i16 %33 to i64
  br label %cond.end.31

cond.false.30:                                    ; preds = %if.else
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.26
  %cond32 = phi i64 [ %conv29, %cond.true.26 ], [ 64, %cond.false.30 ]
  %conv33 = trunc i64 %cond32 to i32
  store i32 %conv33, i32* %depth, align 4, !tbaa !43
  %34 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %depth, align 4, !tbaa !43
  %add34 = add nsw i32 %35, 7
  %shr = ashr i32 %add34, 3
  store i32 %shr, i32* %num_bytes, align 4, !tbaa !43
  %36 = bitcast i32* %delta_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i32, i32* %num_bytes, align 4, !tbaa !43
  %add35 = add nsw i32 %37, 1
  %div = sdiv i32 %add35, 2
  store i32 %div, i32* %delta_bytes, align 4, !tbaa !43
  %38 = bitcast i64* %delta_offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = load i32, i32* %num_bytes, align 4, !tbaa !43
  %idxprom = sext i32 %39 to i64
  %arrayidx = getelementptr inbounds [9 x i64], [9 x i64]* @cmd_delta_offsets, i32 0, i64 %idxprom
  %40 = load i64, i64* %arrayidx, align 8, !tbaa !87
  store i64 %40, i64* %delta_offset, align 8, !tbaa !87
  %41 = bitcast i64* %delta_mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = load i32, i32* %num_bytes, align 4, !tbaa !43
  %idxprom36 = sext i32 %42 to i64
  %arrayidx37 = getelementptr inbounds [9 x i64], [9 x i64]* @cmd_delta_masks, i32 0, i64 %idxprom36
  %43 = load i64, i64* %arrayidx37, align 8, !tbaa !87
  store i64 %43, i64* %delta_mask, align 8, !tbaa !87
  %44 = bitcast i64* %delta to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = load i64, i64* %diff, align 8, !tbaa !87
  %46 = load i64, i64* %delta_offset, align 8, !tbaa !87
  %add38 = add i64 %45, %46
  %47 = load i64, i64* %delta_mask, align 8, !tbaa !87
  %and = and i64 %add38, %47
  store i64 %and, i64* %delta, align 8, !tbaa !87
  %48 = bitcast i32* %use_delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i64, i64* %color.addr, align 8, !tbaa !87
  %50 = load i64*, i64** %pcolor.addr, align 8, !tbaa !1
  %51 = load i64, i64* %50, align 8, !tbaa !87
  %52 = load i64, i64* %delta, align 8, !tbaa !87
  %add39 = add i64 %51, %52
  %53 = load i64, i64* %delta_offset, align 8, !tbaa !87
  %sub40 = sub i64 %add39, %53
  %cmp41 = icmp eq i64 %49, %sub40
  %conv42 = zext i1 %cmp41 to i32
  store i32 %conv42, i32* %use_delta, align 4, !tbaa !43
  %54 = bitcast i32* %bytes_dropped to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  store i32 0, i32* %bytes_dropped, align 4, !tbaa !43
  %55 = bitcast i64* %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = load i64, i64* %color.addr, align 8, !tbaa !87
  store i64 %56, i64* %data, align 8, !tbaa !87
  %57 = load i64, i64* %color.addr, align 8, !tbaa !87
  %cmp43 = icmp eq i64 %57, 0
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %cond.end.31
  %58 = load i32, i32* %num_bytes, align 4, !tbaa !43
  store i32 %58, i32* %bytes_dropped, align 4, !tbaa !43
  br label %if.end.51

if.else.46:                                       ; preds = %cond.end.31
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.46
  %59 = load i64, i64* %data, align 8, !tbaa !87
  %and47 = and i64 %59, 255
  %cmp48 = icmp eq i64 %and47, 0
  br i1 %cmp48, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %60 = load i32, i32* %bytes_dropped, align 4, !tbaa !43
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %bytes_dropped, align 4, !tbaa !43
  %61 = load i64, i64* %data, align 8, !tbaa !87
  %shr50 = lshr i64 %61, 8
  store i64 %shr50, i64* %data, align 8, !tbaa !87
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.51

if.end.51:                                        ; preds = %while.end, %if.then.45
  %62 = load i32, i32* %use_delta, align 4, !tbaa !43
  %tobool52 = icmp ne i32 %62, 0
  br i1 %tobool52, label %land.lhs.true, label %if.else.105

land.lhs.true:                                    ; preds = %if.end.51
  %63 = load i32, i32* %delta_bytes, align 4, !tbaa !43
  %64 = load i32, i32* %num_bytes, align 4, !tbaa !43
  %65 = load i32, i32* %bytes_dropped, align 4, !tbaa !43
  %sub53 = sub nsw i32 %64, %65
  %cmp54 = icmp slt i32 %63, %sub53
  br i1 %cmp54, label %if.then.56, label %if.else.105

if.then.56:                                       ; preds = %land.lhs.true
  %66 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %67 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list57 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %67, i32 0, i32 15
  %68 = load i32, i32* %delta_bytes, align 4, !tbaa !43
  %add58 = add nsw i32 %68, 1
  %call59 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %66, %struct.cmd_list_s* %list57, i32 %add58) #4
  store i8* %call59, i8** %dp, align 8, !tbaa !1
  %cmp60 = icmp eq i8* %call59, null
  br i1 %cmp60, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %if.then.56
  %69 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code63 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %69, i32 0, i32 65
  %70 = load i32, i32* %error_code63, align 4, !tbaa !82
  br label %cond.end.65

cond.false.64:                                    ; preds = %if.then.56
  %71 = load i8, i8* %op_delta, align 1, !tbaa !69
  %72 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %71, i8* %72, align 1, !tbaa !69
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.62
  %cond66 = phi i32 [ %70, %cond.true.62 ], [ 0, %cond.false.64 ]
  store i32 %cond66, i32* %code, align 4, !tbaa !43
  %73 = load i32, i32* %code, align 4, !tbaa !43
  %cmp67 = icmp slt i32 %73, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %cond.end.65
  %74 = load i32, i32* %code, align 4, !tbaa !43
  store i32 %74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.70:                                        ; preds = %cond.end.65
  %75 = load i32, i32* %num_bytes, align 4, !tbaa !43
  %cmp71 = icmp sge i32 %75, 3
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.95

land.lhs.true.73:                                 ; preds = %if.end.70
  %76 = load i32, i32* %num_bytes, align 4, !tbaa !43
  %and74 = and i32 %76, 1
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.95

if.then.76:                                       ; preds = %land.lhs.true.73
  %77 = load i64, i64* %delta, align 8, !tbaa !87
  %78 = load i32, i32* %num_bytes, align 4, !tbaa !43
  %sub77 = sub nsw i32 %78, 3
  %mul = mul nsw i32 %sub77, 8
  %sh_prom = zext i32 %mul to i64
  %shr78 = lshr i64 %77, %sh_prom
  store i64 %shr78, i64* %data, align 8, !tbaa !87
  %79 = load i64, i64* %data, align 8, !tbaa !87
  %shr79 = lshr i64 %79, 13
  %and80 = and i64 %shr79, 248
  %80 = load i64, i64* %data, align 8, !tbaa !87
  %shr81 = lshr i64 %80, 11
  %and82 = and i64 %shr81, 7
  %add83 = add i64 %and80, %and82
  %conv84 = trunc i64 %add83 to i8
  %81 = load i32, i32* %delta_bytes, align 4, !tbaa !43
  %dec = add nsw i32 %81, -1
  store i32 %dec, i32* %delta_bytes, align 4, !tbaa !43
  %idxprom85 = sext i32 %81 to i64
  %82 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i8, i8* %82, i64 %idxprom85
  store i8 %conv84, i8* %arrayidx86, align 1, !tbaa !69
  %83 = load i64, i64* %data, align 8, !tbaa !87
  %shr87 = lshr i64 %83, 3
  %and88 = and i64 %shr87, 224
  %84 = load i64, i64* %data, align 8, !tbaa !87
  %and89 = and i64 %84, 31
  %add90 = add i64 %and88, %and89
  %conv91 = trunc i64 %add90 to i8
  %85 = load i32, i32* %delta_bytes, align 4, !tbaa !43
  %dec92 = add nsw i32 %85, -1
  store i32 %dec92, i32* %delta_bytes, align 4, !tbaa !43
  %idxprom93 = sext i32 %85 to i64
  %86 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i8, i8* %86, i64 %idxprom93
  store i8 %conv91, i8* %arrayidx94, align 1, !tbaa !69
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.76, %land.lhs.true.73, %if.end.70
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.95
  %87 = load i32, i32* %delta_bytes, align 4, !tbaa !43
  %cmp96 = icmp sgt i32 %87, 0
  br i1 %cmp96, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %88 = load i64, i64* %delta, align 8, !tbaa !87
  %shr98 = lshr i64 %88, 4
  %89 = load i64, i64* %delta, align 8, !tbaa !87
  %add99 = add i64 %shr98, %89
  %conv100 = trunc i64 %add99 to i8
  %90 = load i32, i32* %delta_bytes, align 4, !tbaa !43
  %idxprom101 = sext i32 %90 to i64
  %91 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i8, i8* %91, i64 %idxprom101
  store i8 %conv100, i8* %arrayidx102, align 1, !tbaa !69
  %92 = load i64, i64* %delta, align 8, !tbaa !87
  %shr103 = lshr i64 %92, 16
  store i64 %shr103, i64* %delta, align 8, !tbaa !87
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %93 = load i32, i32* %delta_bytes, align 4, !tbaa !43
  %dec104 = add nsw i32 %93, -1
  store i32 %dec104, i32* %delta_bytes, align 4, !tbaa !43
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.135

if.else.105:                                      ; preds = %land.lhs.true, %if.end.51
  %94 = load i32, i32* %bytes_dropped, align 4, !tbaa !43
  %95 = load i32, i32* %num_bytes, align 4, !tbaa !43
  %sub106 = sub nsw i32 %95, %94
  store i32 %sub106, i32* %num_bytes, align 4, !tbaa !43
  %96 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %97 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list107 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %97, i32 0, i32 15
  %98 = load i32, i32* %num_bytes, align 4, !tbaa !43
  %add108 = add nsw i32 %98, 1
  %call109 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %96, %struct.cmd_list_s* %list107, i32 %add108) #4
  store i8* %call109, i8** %dp, align 8, !tbaa !1
  %cmp110 = icmp eq i8* %call109, null
  br i1 %cmp110, label %cond.true.112, label %cond.false.114

cond.true.112:                                    ; preds = %if.else.105
  %99 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code113 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %99, i32 0, i32 65
  %100 = load i32, i32* %error_code113, align 4, !tbaa !82
  br label %cond.end.118

cond.false.114:                                   ; preds = %if.else.105
  %101 = load i8, i8* %op, align 1, !tbaa !69
  %conv115 = zext i8 %101 to i32
  %102 = load i32, i32* %bytes_dropped, align 4, !tbaa !43
  %add116 = add nsw i32 %conv115, %102
  %conv117 = trunc i32 %add116 to i8
  %103 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv117, i8* %103, align 1, !tbaa !69
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.114, %cond.true.112
  %cond119 = phi i32 [ %100, %cond.true.112 ], [ 0, %cond.false.114 ]
  store i32 %cond119, i32* %code, align 4, !tbaa !43
  %104 = load i32, i32* %code, align 4, !tbaa !43
  %cmp120 = icmp slt i32 %104, 0
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %cond.end.118
  %105 = load i32, i32* %code, align 4, !tbaa !43
  store i32 %105, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.123:                                       ; preds = %cond.end.118
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.132, %if.end.123
  %106 = load i32, i32* %num_bytes, align 4, !tbaa !43
  %cmp125 = icmp sgt i32 %106, 0
  br i1 %cmp125, label %for.body.127, label %for.end.134

for.body.127:                                     ; preds = %for.cond.124
  %107 = load i64, i64* %data, align 8, !tbaa !87
  %conv128 = trunc i64 %107 to i8
  %108 = load i32, i32* %num_bytes, align 4, !tbaa !43
  %idxprom129 = sext i32 %108 to i64
  %109 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds i8, i8* %109, i64 %idxprom129
  store i8 %conv128, i8* %arrayidx130, align 1, !tbaa !69
  %110 = load i64, i64* %data, align 8, !tbaa !87
  %shr131 = lshr i64 %110, 8
  store i64 %shr131, i64* %data, align 8, !tbaa !87
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.body.127
  %111 = load i32, i32* %num_bytes, align 4, !tbaa !43
  %dec133 = add nsw i32 %111, -1
  store i32 %dec133, i32* %num_bytes, align 4, !tbaa !43
  br label %for.cond.124

for.end.134:                                      ; preds = %for.cond.124
  br label %if.end.135

if.end.135:                                       ; preds = %for.end.134, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.135, %if.then.122, %if.then.69
  %112 = bitcast i64* %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast i32* %bytes_dropped to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %use_delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i64* %delta to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast i64* %delta_mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast i64* %delta_offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i32* %delta_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.145 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.144

if.end.144:                                       ; preds = %cleanup.cont, %if.end.21
  %121 = load i64, i64* %color.addr, align 8, !tbaa !87
  %122 = load i64*, i64** %pcolor.addr, align 8, !tbaa !1
  store i64 %121, i64* %122, align 8, !tbaa !87
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.145

cleanup.145:                                      ; preds = %if.end.144, %cleanup, %if.then.20, %if.then.4, %if.then
  %123 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  call void @llvm.lifetime.end(i64 1, i8* %op_delta) #1
  call void @llvm.lifetime.end(i64 1, i8* %op) #1
  %124 = bitcast i64* %diff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = load i32, i32* %retval
  ret i32 %126
}

; Function Attrs: nounwind uwtable
define i32 @cmd_set_tile_colors(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, i64 %color0, i64 %color1) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !87
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !87
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !43
  %1 = load i64, i64* %color0.addr, align 8, !tbaa !87
  %2 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %tile_colors = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %2, i32 0, i32 6
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %tile_colors, i32 0, i64 0
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !87
  %cmp = icmp ne i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %6 = load i64, i64* %color0.addr, align 8, !tbaa !87
  %7 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %tile_colors1 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %7, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %tile_colors1, i32 0, i64 0
  %call = call i32 @cmd_put_color(%struct.gx_device_clist_writer_s* %4, %struct.gx_clist_state_s* %5, %struct.clist_select_color_t* @clist_select_tile_color0, i64 %6, i64* %arrayidx2) #4
  store i32 %call, i32* %code, align 4, !tbaa !43
  %8 = load i32, i32* %code, align 4, !tbaa !43
  %cmp3 = icmp ne i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load i32, i32* %code, align 4, !tbaa !43
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %10 = load i64, i64* %color1.addr, align 8, !tbaa !87
  %11 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %tile_colors6 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %11, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [2 x i64], [2 x i64]* %tile_colors6, i32 0, i64 1
  %12 = load i64, i64* %arrayidx7, align 8, !tbaa !87
  %cmp8 = icmp ne i64 %10, %12
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.5
  %13 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %14 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %15 = load i64, i64* %color1.addr, align 8, !tbaa !87
  %16 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %tile_colors10 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %16, i32 0, i32 6
  %arrayidx11 = getelementptr inbounds [2 x i64], [2 x i64]* %tile_colors10, i32 0, i64 1
  %call12 = call i32 @cmd_put_color(%struct.gx_device_clist_writer_s* %13, %struct.gx_clist_state_s* %14, %struct.clist_select_color_t* @clist_select_tile_color1, i64 %15, i64* %arrayidx11) #4
  store i32 %call12, i32* %code, align 4, !tbaa !43
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end.5
  %17 = load i32, i32* %code, align 4, !tbaa !43
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.4
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @cmd_set_tile_phase_generic(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, i32 %px, i32 %py, i32 %all_bands) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %all_bands.addr = alloca i32, align 4
  %pcsize = alloca i32, align 4
  %dp = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !43
  store i32 %py, i32* %py.addr, align 4, !tbaa !43
  store i32 %all_bands, i32* %all_bands.addr, align 4, !tbaa !43
  %0 = bitcast i32* %pcsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %px.addr, align 4, !tbaa !43
  %4 = load i32, i32* %py.addr, align 4, !tbaa !43
  %or = or i32 %3, %4
  %and = and i32 %or, -128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i32, i32* %px.addr, align 4, !tbaa !43
  %call = call i32 @cmd_size_w(i32 %5) #4
  %6 = load i32, i32* %py.addr, align 4, !tbaa !43
  %call1 = call i32 @cmd_size_w(i32 %6) #4
  %add = add nsw i32 %call, %call1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add, %cond.false ]
  %add2 = add nsw i32 1, %cond
  store i32 %add2, i32* %pcsize, align 4, !tbaa !43
  %7 = load i32, i32* %all_bands.addr, align 4, !tbaa !43
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 59
  %10 = load i32, i32* %nbands, align 4, !tbaa !44
  %sub = sub nsw i32 %10, 1
  %11 = load i32, i32* %pcsize, align 4, !tbaa !43
  %call4 = call i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s* %8, i32 0, i32 %sub, i32 %11) #4
  store i8* %call4, i8** %dp, align 8, !tbaa !1
  %cmp = icmp eq i8* %call4, null
  br i1 %cmp, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %if.then
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 65
  %13 = load i32, i32* %error_code, align 4, !tbaa !82
  br label %cond.end.7

cond.false.6:                                     ; preds = %if.then
  %14 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 2, i8* %14, align 1, !tbaa !69
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.5
  %cond8 = phi i32 [ %13, %cond.true.5 ], [ 0, %cond.false.6 ]
  store i32 %cond8, i32* %code, align 4, !tbaa !43
  br label %if.end

if.else:                                          ; preds = %cond.end
  %15 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %16 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %16, i32 0, i32 15
  %17 = load i32, i32* %pcsize, align 4, !tbaa !43
  %call9 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %15, %struct.cmd_list_s* %list, i32 %17) #4
  store i8* %call9, i8** %dp, align 8, !tbaa !1
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %cond.true.11, label %cond.false.13

cond.true.11:                                     ; preds = %if.else
  %18 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code12 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %18, i32 0, i32 65
  %19 = load i32, i32* %error_code12, align 4, !tbaa !82
  br label %cond.end.14

cond.false.13:                                    ; preds = %if.else
  %20 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 2, i8* %20, align 1, !tbaa !69
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.11
  %cond15 = phi i32 [ %19, %cond.true.11 ], [ 0, %cond.false.13 ]
  store i32 %cond15, i32* %code, align 4, !tbaa !43
  br label %if.end

if.end:                                           ; preds = %cond.end.14, %cond.end.7
  %21 = load i32, i32* %code, align 4, !tbaa !43
  %cmp16 = icmp slt i32 %21, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  %22 = load i32, i32* %code, align 4, !tbaa !43
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end
  %23 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8, !tbaa !1
  %24 = load i32, i32* %px.addr, align 4, !tbaa !43
  %25 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %tile_phase = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %25, i32 0, i32 5
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 0
  store i32 %24, i32* %x, align 4, !tbaa !93
  %26 = load i32, i32* %py.addr, align 4, !tbaa !43
  %27 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %tile_phase19 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %27, i32 0, i32 5
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase19, i32 0, i32 1
  store i32 %26, i32* %y, align 4, !tbaa !94
  %28 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %tile_phase20 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %28, i32 0, i32 5
  %x21 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase20, i32 0, i32 0
  %29 = load i32, i32* %x21, align 4, !tbaa !93
  %30 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %tile_phase22 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %30, i32 0, i32 5
  %y23 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase22, i32 0, i32 1
  %31 = load i32, i32* %y23, align 4, !tbaa !94
  %or24 = or i32 %29, %31
  %and25 = and i32 %or24, -128
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %cond.false.34, label %cond.true.27

cond.true.27:                                     ; preds = %if.end.18
  %32 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %tile_phase28 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %32, i32 0, i32 5
  %x29 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase28, i32 0, i32 0
  %33 = load i32, i32* %x29, align 4, !tbaa !93
  %conv = trunc i32 %33 to i8
  %34 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %34, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !69
  %35 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %tile_phase30 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %35, i32 0, i32 5
  %y31 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase30, i32 0, i32 1
  %36 = load i32, i32* %y31, align 4, !tbaa !94
  %conv32 = trunc i32 %36 to i8
  %37 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %37, i64 1
  store i8 %conv32, i8* %arrayidx33, align 1, !tbaa !69
  %38 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 2
  store i8* %add.ptr, i8** %dp, align 8, !tbaa !1
  br label %cond.end.41

cond.false.34:                                    ; preds = %if.end.18
  %39 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %tile_phase35 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %39, i32 0, i32 5
  %y36 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase35, i32 0, i32 1
  %40 = load i32, i32* %y36, align 4, !tbaa !94
  %41 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %tile_phase37 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %41, i32 0, i32 5
  %x38 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase37, i32 0, i32 0
  %42 = load i32, i32* %x38, align 4, !tbaa !93
  %43 = load i8*, i8** %dp, align 8, !tbaa !1
  %call39 = call i8* @cmd_put_w(i32 %42, i8* %43) #4
  %call40 = call i8* @cmd_put_w(i32 %40, i8* %call39) #4
  store i8* %call40, i8** %dp, align 8, !tbaa !1
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.34, %cond.true.27
  %cond42 = phi i8* [ %add.ptr, %cond.true.27 ], [ %call40, %cond.false.34 ]
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.41, %if.then.17
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %pcsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define i32 @cmd_set_tile_phase(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, i32 %px, i32 %py) #0 {
entry:
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !43
  store i32 %py, i32* %py.addr, align 4, !tbaa !43
  %0 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %1 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %2 = load i32, i32* %px.addr, align 4, !tbaa !43
  %3 = load i32, i32* %py.addr, align 4, !tbaa !43
  %call = call i32 @cmd_set_tile_phase_generic(%struct.gx_device_clist_writer_s* %0, %struct.gx_clist_state_s* %1, i32 %2, i32 %3, i32 0) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @cmd_put_enable_lop(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, i32 %enable) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %enable.addr = alloca i32, align 4
  %dp = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store i32 %enable, i32* %enable.addr, align 4, !tbaa !43
  %0 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %3 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %3, i32 0, i32 15
  %call = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %2, %struct.cmd_list_s* %list, i32 1) #4
  store i8* %call, i8** %dp, align 8, !tbaa !1
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %4, i32 0, i32 65
  %5 = load i32, i32* %error_code, align 4, !tbaa !82
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %enable.addr, align 4, !tbaa !43
  %tobool = icmp ne i32 %6, 0
  %cond = select i1 %tobool, i32 7, i32 8
  %conv = trunc i32 %cond to i8
  %7 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv, i8* %7, align 1, !tbaa !69
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1 = phi i32 [ %5, %cond.true ], [ 0, %cond.false ]
  store i32 %cond1, i32* %code, align 4, !tbaa !43
  %8 = load i32, i32* %code, align 4, !tbaa !43
  %cmp2 = icmp slt i32 %8, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %9 = load i32, i32* %code, align 4, !tbaa !43
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %10 = load i32, i32* %enable.addr, align 4, !tbaa !43
  %conv4 = trunc i32 %10 to i16
  %11 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %lop_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %11, i32 0, i32 10
  store i16 %conv4, i16* %lop_enabled, align 2, !tbaa !95
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @cmd_put_enable_clip(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, i32 %enable) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %enable.addr = alloca i32, align 4
  %dp = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store i32 %enable, i32* %enable.addr, align 4, !tbaa !43
  %0 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %3 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %3, i32 0, i32 15
  %call = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %2, %struct.cmd_list_s* %list, i32 1) #4
  store i8* %call, i8** %dp, align 8, !tbaa !1
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %4, i32 0, i32 65
  %5 = load i32, i32* %error_code, align 4, !tbaa !82
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %enable.addr, align 4, !tbaa !43
  %tobool = icmp ne i32 %6, 0
  %cond = select i1 %tobool, i32 215, i32 216
  %conv = trunc i32 %cond to i8
  %7 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv, i8* %7, align 1, !tbaa !69
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1 = phi i32 [ %5, %cond.true ], [ 0, %cond.false ]
  store i32 %cond1, i32* %code, align 4, !tbaa !43
  %8 = load i32, i32* %code, align 4, !tbaa !43
  %cmp2 = icmp slt i32 %8, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %9 = load i32, i32* %code, align 4, !tbaa !43
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %10 = load i32, i32* %enable.addr, align 4, !tbaa !43
  %conv4 = trunc i32 %10 to i16
  %11 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %clip_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %11, i32 0, i32 11
  store i16 %conv4, i16* %clip_enabled, align 2, !tbaa !96
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @cmd_set_lop(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, i32 %lop) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %lop.addr = alloca i32, align 4
  %dp = alloca i8*, align 8
  %lop_msb = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !43
  %0 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %lop_msb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %lop.addr, align 4, !tbaa !43
  %shr = lshr i32 %2, 6
  store i32 %shr, i32* %lop_msb, align 4, !tbaa !43
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %5, i32 0, i32 15
  %6 = load i32, i32* %lop_msb, align 4, !tbaa !43
  %call = call i32 @cmd_size_w(i32 %6) #4
  %add = add nsw i32 2, %call
  %call1 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %4, %struct.cmd_list_s* %list, i32 %add) #4
  store i8* %call1, i8** %dp, align 8, !tbaa !1
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 65
  %8 = load i32, i32* %error_code, align 4, !tbaa !82
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 6, i8* %9, align 1, !tbaa !69
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !43
  %10 = load i32, i32* %code, align 4, !tbaa !43
  %cmp2 = icmp slt i32 %10, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %11 = load i32, i32* %code, align 4, !tbaa !43
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %12 = load i32, i32* %lop.addr, align 4, !tbaa !43
  %and = and i32 %12, 63
  %add3 = add i32 0, %and
  %conv = trunc i32 %add3 to i8
  %13 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 1
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !69
  %14 = load i32, i32* %lop_msb, align 4, !tbaa !43
  %15 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 2
  %call4 = call i8* @cmd_put_w(i32 %14, i8* %add.ptr) #4
  %16 = load i32, i32* %lop.addr, align 4, !tbaa !43
  %17 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %lop5 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %17, i32 0, i32 9
  store i32 %16, i32* %lop5, align 4, !tbaa !97
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %lop_msb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @cmd_update_lop(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, i32 %lop) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %lop.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !43
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %lop.addr, align 4, !tbaa !43
  %cmp = icmp eq i32 %1, 252
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %lop_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %2, i32 0, i32 10
  %3 = load i16, i16* %lop_enabled, align 2, !tbaa !95
  %conv = sext i16 %3 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %call = call i32 @cmd_put_enable_lop(%struct.gx_device_clist_writer_s* %4, %struct.gx_clist_state_s* %5, i32 0) #4
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %6 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %6, i32 0, i32 65
  %7 = load i32, i32* %error_code, align 4, !tbaa !82
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %9 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %10 = load i32, i32* %lop.addr, align 4, !tbaa !43
  %call5 = call i32 @cmd_set_lop(%struct.gx_device_clist_writer_s* %8, %struct.gx_clist_state_s* %9, i32 %10) #4
  store i32 %call5, i32* %code, align 4, !tbaa !43
  %11 = load i32, i32* %code, align 4, !tbaa !43
  %cmp6 = icmp slt i32 %11, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !43
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %13 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %lop_enabled10 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %13, i32 0, i32 10
  %14 = load i16, i16* %lop_enabled10, align 2, !tbaa !95
  %conv11 = sext i16 %14 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %land.lhs.true.14, label %cond.false.20

land.lhs.true.14:                                 ; preds = %if.end.9
  %15 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %16 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %call15 = call i32 @cmd_put_enable_lop(%struct.gx_device_clist_writer_s* %15, %struct.gx_clist_state_s* %16, i32 1) #4
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %land.lhs.true.14
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code19 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 65
  %18 = load i32, i32* %error_code19, align 4, !tbaa !82
  br label %cond.end.21

cond.false.20:                                    ; preds = %land.lhs.true.14, %if.end.9
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.18
  %cond22 = phi i32 [ %18, %cond.true.18 ], [ 0, %cond.false.20 ]
  store i32 %cond22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.21, %if.then.8, %cond.end
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @cmd_put_params(%struct.gx_device_clist_writer_s* %cldev, %struct.gs_param_list_s* %param_list) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %param_list.addr = alloca %struct.gs_param_list_s*, align 8
  %dp = alloca i8*, align 8
  %code = alloca i32, align 4
  %local_buf = alloca [512 x i8], align 16
  %param_length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %old_param_length = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %param_list, %struct.gs_param_list_s** %param_list.addr, align 8, !tbaa !1
  %0 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast [512 x i8]* %local_buf to i8*
  call void @llvm.lifetime.start(i64 512, i8* %2) #1
  %3 = bitcast i32* %param_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %param_list.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %local_buf, i32 0, i32 0
  %call = call i32 @gs_param_list_serialize(%struct.gs_param_list_s* %4, i8* %arraydecay, i32 512) #4
  store i32 %call, i32* %code, align 4, !tbaa !43
  store i32 %call, i32* %param_length, align 4, !tbaa !43
  %5 = load i32, i32* %param_length, align 4, !tbaa !43
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end.34

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 59
  %8 = load i32, i32* %nbands, align 4, !tbaa !44
  %sub = sub nsw i32 %8, 1
  %9 = load i32, i32* %param_length, align 4, !tbaa !43
  %conv = sext i32 %9 to i64
  %add = add i64 6, %conv
  %conv1 = trunc i64 %add to i32
  %call2 = call i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s* %6, i32 0, i32 %sub, i32 %conv1) #4
  store i8* %call2, i8** %dp, align 8, !tbaa !1
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %10, i32 0, i32 65
  %11 = load i32, i32* %error_code, align 4, !tbaa !82
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %12 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -33, i8* %12, align 1, !tbaa !69
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !43
  %13 = load i32, i32* %code, align 4, !tbaa !43
  %cmp5 = icmp slt i32 %13, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %cond.end
  %14 = load i32, i32* %code, align 4, !tbaa !43
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %arrayidx, align 1, !tbaa !69
  %16 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 2
  store i8* %add.ptr, i8** %dp, align 8, !tbaa !1
  %17 = load i8*, i8** %dp, align 8, !tbaa !1
  %18 = bitcast i32* %param_length to i8*
  %call8 = call i8* @memcpy(i8* %17, i8* %18, i64 4) #5
  %19 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds i8, i8* %19, i64 4
  store i8* %add.ptr9, i8** %dp, align 8, !tbaa !1
  %20 = load i32, i32* %param_length, align 4, !tbaa !43
  %conv10 = sext i32 %20 to i64
  %cmp11 = icmp ugt i64 %conv10, 512
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.end
  %21 = bitcast i32* %old_param_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i32, i32* %param_length, align 4, !tbaa !43
  store i32 %22, i32* %old_param_length, align 4, !tbaa !43
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %param_list.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %dp, align 8, !tbaa !1
  %25 = load i32, i32* %old_param_length, align 4, !tbaa !43
  %call14 = call i32 @gs_param_list_serialize(%struct.gs_param_list_s* %23, i8* %24, i32 %25) #4
  store i32 %call14, i32* %code, align 4, !tbaa !43
  store i32 %call14, i32* %param_length, align 4, !tbaa !43
  %26 = load i32, i32* %param_length, align 4, !tbaa !43
  %cmp15 = icmp sge i32 %26, 0
  br i1 %cmp15, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.then.13
  %27 = load i32, i32* %old_param_length, align 4, !tbaa !43
  %28 = load i32, i32* %param_length, align 4, !tbaa !43
  %cmp18 = icmp ne i32 %27, %28
  %cond20 = select i1 %cmp18, i32 -1, i32 0
  store i32 %cond20, i32* %code, align 4, !tbaa !43
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.then.13
  %29 = load i32, i32* %code, align 4, !tbaa !43
  %cmp22 = icmp slt i32 %29, 0
  br i1 %cmp22, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.end.21
  %30 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr25 = getelementptr inbounds i8, i8* %30, i64 -4
  %call26 = call i8* @memset(i8* %add.ptr25, i32 0, i64 4) #5
  %31 = load i32, i32* %old_param_length, align 4, !tbaa !43
  %32 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %band_range_list = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %32, i32 0, i32 71
  %tail = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %band_range_list, i32 0, i32 1
  %33 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %tail, align 8, !tbaa !77
  %size = getelementptr inbounds %struct.cmd_prefix_s, %struct.cmd_prefix_s* %33, i32 0, i32 1
  %34 = load i32, i32* %size, align 4, !tbaa !80
  %sub27 = sub i32 %34, %31
  store i32 %sub27, i32* %size, align 4, !tbaa !80
  %35 = load i32, i32* %old_param_length, align 4, !tbaa !43
  %36 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %36, i32 0, i32 68
  %37 = load i8*, i8** %cnext, align 8, !tbaa !74
  %idx.ext = sext i32 %35 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr28 = getelementptr inbounds i8, i8* %37, i64 %idx.neg
  store i8* %add.ptr28, i8** %cnext, align 8, !tbaa !74
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %if.end.21
  %38 = bitcast i32* %old_param_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  br label %if.end.33

if.else:                                          ; preds = %do.end
  %39 = load i8*, i8** %dp, align 8, !tbaa !1
  %arraydecay30 = getelementptr inbounds [512 x i8], [512 x i8]* %local_buf, i32 0, i32 0
  %40 = load i32, i32* %param_length, align 4, !tbaa !43
  %conv31 = sext i32 %40 to i64
  %call32 = call i8* @memcpy(i8* %39, i8* %arraydecay30, i64 %conv31) #5
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.end.29
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %entry
  %41 = load i32, i32* %code, align 4, !tbaa !43
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.7
  %42 = bitcast i32* %param_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast [512 x i8]* %local_buf to i8*
  call void @llvm.lifetime.end(i64 512, i8* %43) #1
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = load i32, i32* %retval
  ret i32 %46
}

declare i32 @gs_param_list_serialize(%struct.gs_param_list_s*, i8*, i32) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define void @clist_cfe_init(%struct.stream_CFE_state_s* %ss, i32 %width, %struct.gs_memory_s* %mem) #0 {
entry:
  %ss.addr = alloca %struct.stream_CFE_state_s*, align 8
  %width.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.stream_CFE_state_s* %ss, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !43
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %1 = bitcast %struct.stream_CFE_state_s* %0 to %struct.stream_state_s*
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @s_init_state(%struct.stream_state_s* %1, %struct.stream_template_s* @s_CFE_template, %struct.gs_memory_s* %2) #4
  %3 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %Uncompressed = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %3, i32 0, i32 8
  store i32 0, i32* %Uncompressed, align 4, !tbaa !98
  %4 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %K = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %4, i32 0, i32 9
  store i32 0, i32* %K, align 4, !tbaa !100
  %5 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %EndOfLine = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %5, i32 0, i32 10
  store i32 0, i32* %EndOfLine, align 4, !tbaa !101
  %6 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %EncodedByteAlign = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %6, i32 0, i32 11
  store i32 0, i32* %EncodedByteAlign, align 4, !tbaa !102
  %7 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %7, i32 0, i32 12
  store i32 1728, i32* %Columns, align 4, !tbaa !103
  %8 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %Rows = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %8, i32 0, i32 13
  store i32 0, i32* %Rows, align 4, !tbaa !104
  %9 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %EndOfBlock = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %9, i32 0, i32 14
  store i32 1, i32* %EndOfBlock, align 4, !tbaa !105
  %10 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %BlackIs1 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %10, i32 0, i32 15
  store i32 0, i32* %BlackIs1, align 4, !tbaa !106
  %11 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %DamagedRowsBeforeError = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %11, i32 0, i32 16
  store i32 0, i32* %DamagedRowsBeforeError, align 4, !tbaa !107
  %12 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %12, i32 0, i32 5
  store i32 0, i32* %FirstBitLowOrder, align 4, !tbaa !108
  %13 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %DecodedByteAlign = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %13, i32 0, i32 17
  store i32 1, i32* %DecodedByteAlign, align 4, !tbaa !109
  %14 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %14, i32 0, i32 19
  store i8* null, i8** %lbuf, align 8, !tbaa !110
  %15 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %lprev = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %15, i32 0, i32 20
  store i8* null, i8** %lprev, align 8, !tbaa !111
  %16 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %error_string = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %16, i32 0, i32 4
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %error_string, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !69
  %17 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %lcode = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %17, i32 0, i32 23
  store i8* null, i8** %lcode, align 8, !tbaa !112
  %18 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %19 = bitcast %struct.stream_CFE_state_s* %18 to %struct.stream_CF_state_s*
  %20 = load i32, i32* %width.addr, align 4, !tbaa !43
  call void @clist_cf_init(%struct.stream_CF_state_s* %19, i32 %20) #4
  %21 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_CFE_template, i32 0, i32 1), align 8, !tbaa !113
  %22 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %23 = bitcast %struct.stream_CFE_state_s* %22 to %struct.stream_state_s*
  %call = call i32 %21(%struct.stream_state_s* %23) #4
  ret void
}

declare void @s_init_state(%struct.stream_state_s*, %struct.stream_template_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal void @clist_cf_init(%struct.stream_CF_state_s* %ss, i32 %width) #0 {
entry:
  %ss.addr = alloca %struct.stream_CF_state_s*, align 8
  %width.addr = alloca i32, align 4
  store %struct.stream_CF_state_s* %ss, %struct.stream_CF_state_s** %ss.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !43
  %0 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %ss.addr, align 8, !tbaa !1
  %K = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %0, i32 0, i32 9
  store i32 -1, i32* %K, align 4, !tbaa !115
  %1 = load i32, i32* %width.addr, align 4, !tbaa !43
  %2 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %ss.addr, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %2, i32 0, i32 12
  store i32 %1, i32* %Columns, align 4, !tbaa !117
  %3 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %ss.addr, align 8, !tbaa !1
  %EndOfBlock = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %3, i32 0, i32 14
  store i32 1, i32* %EndOfBlock, align 4, !tbaa !118
  %4 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %ss.addr, align 8, !tbaa !1
  %BlackIs1 = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %4, i32 0, i32 15
  store i32 1, i32* %BlackIs1, align 4, !tbaa !119
  %5 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %ss.addr, align 8, !tbaa !1
  %DecodedByteAlign = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %5, i32 0, i32 17
  store i32 8, i32* %DecodedByteAlign, align 4, !tbaa !120
  ret void
}

; Function Attrs: nounwind uwtable
define void @clist_cfd_init(%struct.stream_CFD_state_s* %ss, i32 %width, i32 %height, %struct.gs_memory_s* %mem) #0 {
entry:
  %ss.addr = alloca %struct.stream_CFD_state_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.stream_CFD_state_s* %ss, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !43
  store i32 %height, i32* %height.addr, align 4, !tbaa !43
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %1 = bitcast %struct.stream_CFD_state_s* %0 to %struct.stream_state_s*
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @s_init_state(%struct.stream_state_s* %1, %struct.stream_template_s* @s_CFD_template, %struct.gs_memory_s* %2) #4
  %3 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_CFD_template, i32 0, i32 6), align 8, !tbaa !121
  %4 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %5 = bitcast %struct.stream_CFD_state_s* %4 to %struct.stream_state_s*
  call void %3(%struct.stream_state_s* %5) #4
  %6 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %7 = bitcast %struct.stream_CFD_state_s* %6 to %struct.stream_CF_state_s*
  %8 = load i32, i32* %width.addr, align 4, !tbaa !43
  call void @clist_cf_init(%struct.stream_CF_state_s* %7, i32 %8) #4
  %9 = load i32, i32* %height.addr, align 4, !tbaa !43
  %10 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %Rows = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %10, i32 0, i32 13
  store i32 %9, i32* %Rows, align 4, !tbaa !122
  %11 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_CFD_template, i32 0, i32 1), align 8, !tbaa !113
  %12 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %13 = bitcast %struct.stream_CFD_state_s* %12 to %struct.stream_state_s*
  %call = call i32 %11(%struct.stream_state_s* %13) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @clist_rle_init(%struct.stream_RLE_state_s* %ss) #0 {
entry:
  %ss.addr = alloca %struct.stream_RLE_state_s*, align 8
  store %struct.stream_RLE_state_s* %ss, %struct.stream_RLE_state_s** %ss.addr, align 8, !tbaa !1
  %0 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss.addr, align 8, !tbaa !1
  %1 = bitcast %struct.stream_RLE_state_s* %0 to %struct.stream_state_s*
  call void @s_init_state(%struct.stream_state_s* %1, %struct.stream_template_s* @s_RLE_template, %struct.gs_memory_s* null) #4
  %2 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss.addr, align 8, !tbaa !1
  %EndOfData = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %2, i32 0, i32 5
  store i32 1, i32* %EndOfData, align 4, !tbaa !124
  %3 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss.addr, align 8, !tbaa !1
  %record_size = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %3, i32 0, i32 6
  store i64 0, i64* %record_size, align 8, !tbaa !126
  %4 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss.addr, align 8, !tbaa !1
  %record_size1 = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %4, i32 0, i32 6
  %5 = load i64, i64* %record_size1, align 8, !tbaa !126
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss.addr, align 8, !tbaa !1
  %record_size2 = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %6, i32 0, i32 6
  store i64 4294967295, i64* %record_size2, align 8, !tbaa !126
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss.addr, align 8, !tbaa !1
  %record_size3 = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %7, i32 0, i32 6
  %8 = load i64, i64* %record_size3, align 8, !tbaa !126
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 4294967295, %cond.true ], [ %8, %cond.false ]
  %9 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss.addr, align 8, !tbaa !1
  %record_left = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %9, i32 0, i32 7
  store i64 %cond, i64* %record_left, align 8, !tbaa !127
  %10 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss.addr, align 8, !tbaa !1
  %copy_left = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %10, i32 0, i32 8
  store i32 0, i32* %copy_left, align 4, !tbaa !128
  ret void
}

; Function Attrs: nounwind uwtable
define void @clist_rld_init(%struct.stream_RLD_state_s* %ss) #0 {
entry:
  %ss.addr = alloca %struct.stream_RLD_state_s*, align 8
  store %struct.stream_RLD_state_s* %ss, %struct.stream_RLD_state_s** %ss.addr, align 8, !tbaa !1
  %0 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss.addr, align 8, !tbaa !1
  %1 = bitcast %struct.stream_RLD_state_s* %0 to %struct.stream_state_s*
  call void @s_init_state(%struct.stream_state_s* %1, %struct.stream_template_s* @s_RLD_template, %struct.gs_memory_s* null) #4
  %2 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss.addr, align 8, !tbaa !1
  %EndOfData = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %2, i32 0, i32 5
  store i32 1, i32* %EndOfData, align 4, !tbaa !129
  %3 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss.addr, align 8, !tbaa !1
  %EndOfData1 = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %3, i32 0, i32 5
  %4 = load i32, i32* %EndOfData1, align 4, !tbaa !129
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %5 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss.addr, align 8, !tbaa !1
  %min_left = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %5, i32 0, i32 3
  store i32 %cond, i32* %min_left, align 4, !tbaa !131
  %6 = load %struct.stream_RLD_state_s*, %struct.stream_RLD_state_s** %ss.addr, align 8, !tbaa !1
  %copy_left = getelementptr inbounds %struct.stream_RLD_state_s, %struct.stream_RLD_state_s* %6, i32 0, i32 6
  store i32 0, i32* %copy_left, align 4, !tbaa !132
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @cmd_read_matrix(%struct.gs_matrix_s* %pmat, i8* %cbp) #0 {
entry:
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %cbp.addr = alloca i8*, align 8
  %s = alloca %struct.stream_s, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i8* %cbp, i8** %cbp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %0) #1
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* null) #4
  %1 = load i8*, i8** %cbp.addr, align 8, !tbaa !1
  call void @sread_string(%struct.stream_s* %s, i8* %1, i32 25) #4
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call = call i32 @sget_matrix(%struct.stream_s* %s, %struct.gs_matrix_s* %2) #4
  %3 = load i8*, i8** %cbp.addr, align 8, !tbaa !1
  %call1 = call i64 @stell(%struct.stream_s* %s) #4
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %call1
  %4 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %4) #1
  ret i8* %add.ptr
}

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #2

declare void @sread_string(%struct.stream_s*, i8*, i32) #2

declare i32 @sget_matrix(%struct.stream_s*, %struct.gs_matrix_s*) #2

declare i64 @stell(%struct.stream_s*) #2

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
!5 = !{!6, !8, i64 4}
!6 = !{!"gs_int_rect_s", !7, i64 0, !7, i64 8}
!7 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!8 = !{!"int", !3, i64 0}
!9 = !{!10, !8, i64 10132}
!10 = !{!"gx_device_clist_writer_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !11, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !13, i64 96, !16, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !8, i64 1052, !8, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !2, i64 1728, !22, i64 1736, !2, i64 1768, !2, i64 1776, !8, i64 1784, !19, i64 1792, !8, i64 1808, !8, i64 1812, !23, i64 1816, !24, i64 1840, !8, i64 1864, !8, i64 1868, !2, i64 1872, !8, i64 1880, !8, i64 1884, !25, i64 1888, !8, i64 10144, !12, i64 10152, !2, i64 10160, !2, i64 10168, !8, i64 10176, !2, i64 10184, !8, i64 10192, !2, i64 10200, !2, i64 10208, !2, i64 10216, !2, i64 10224, !2, i64 10232, !26, i64 10240, !8, i64 10256, !8, i64 10260, !8, i64 10264, !8, i64 10268, !27, i64 10272, !8, i64 10320, !8, i64 10324, !8, i64 10328, !28, i64 10336, !8, i64 11952, !8, i64 11956, !8, i64 11960, !8, i64 11964, !3, i64 11968, !2, i64 12016, !12, i64 12024, !41, i64 12032, !3, i64 12080, !12, i64 12112, !12, i64 12120, !12, i64 12128, !12, i64 12136, !8, i64 12144, !8, i64 12148, !8, i64 12152, !8, i64 12156, !2, i64 12160, !8, i64 12168, !2, i64 12176, !8, i64 12184, !8, i64 12188, !8, i64 12192, !8, i64 12196, !8, i64 12200, !8, i64 12204, !2, i64 12208, !12, i64 12216, !8, i64 12224, !8, i64 12228, !8, i64 12232, !8, i64 12236, !13, i64 12240}
!11 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"long", !3, i64 0}
!13 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !14, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !12, i64 704, !8, i64 712}
!14 = !{!"short", !3, i64 0}
!15 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!16 = !{!"gx_device_cached_colors_s", !12, i64 0, !12, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !12, i64 0, !12, i64 8, !19, i64 16, !8, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !12, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!23 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !8, i64 16, !8, i64 20}
!24 = !{!"gx_bits_cache_s", !2, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!25 = !{!"gx_band_page_info_s", !3, i64 0, !2, i64 4096, !3, i64 4104, !2, i64 8200, !2, i64 8208, !8, i64 8216, !12, i64 8224, !12, i64 8232, !19, i64 8240}
!26 = !{!"cmd_list_s", !2, i64 0, !2, i64 8}
!27 = !{!"gx_strip_bitmap_s", !2, i64 0, !8, i64 8, !7, i64 12, !12, i64 24, !14, i64 32, !14, i64 34, !14, i64 36, !14, i64 38, !8, i64 40}
!28 = !{!"gs_imager_state_s", !8, i64 0, !2, i64 8, !2, i64 16, !29, i64 24, !8, i64 128, !33, i64 132, !8, i64 168, !34, i64 176, !34, i64 192, !8, i64 208, !8, i64 212, !14, i64 216, !3, i64 220, !36, i64 224, !36, i64 228, !37, i64 232, !12, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !2, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !30, i64 296, !38, i64 300, !8, i64 308, !8, i64 312, !8, i64 316, !30, i64 320, !8, i64 324, !8, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !8, i64 408, !2, i64 416, !2, i64 424, !39, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !40, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !40, i64 1336}
!29 = !{!"gx_line_params_s", !30, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !8, i64 20, !30, i64 24, !30, i64 28, !30, i64 32, !8, i64 36, !31, i64 40, !32, i64 64}
!30 = !{!"float", !3, i64 0}
!31 = !{!"gs_matrix_s", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20}
!32 = !{!"gx_dash_params_s", !2, i64 0, !8, i64 8, !30, i64 12, !8, i64 16, !30, i64 20, !8, i64 24, !8, i64 28, !30, i64 32}
!33 = !{!"gs_matrix_fixed_s", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!34 = !{!"gs_point_s", !35, i64 0, !35, i64 8}
!35 = !{!"double", !3, i64 0}
!36 = !{!"gs_transparency_source_s", !30, i64 0}
!37 = !{!"gs_xstate_trans_flags", !8, i64 0, !8, i64 4}
!38 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!39 = !{!"gx_transfer_s", !8, i64 0, !2, i64 8, !8, i64 16, !2, i64 24, !8, i64 32, !2, i64 40, !8, i64 48, !2, i64 56}
!40 = !{!"gs_devicen_color_map_s", !8, i64 0, !3, i64 4, !8, i64 8, !8, i64 12, !12, i64 16, !3, i64 24}
!41 = !{!"clist_color_space_s", !3, i64 0, !12, i64 8, !42, i64 16, !2, i64 40}
!42 = !{!"clist_icc_color_s", !12, i64 0, !3, i64 8, !8, i64 12, !3, i64 16, !3, i64 20}
!43 = !{!8, !8, i64 0}
!44 = !{!10, !8, i64 10144}
!45 = !{!6, !8, i64 12}
!46 = !{!10, !2, i64 10200}
!47 = !{!48, !8, i64 1792}
!48 = !{!"gx_clist_state_s", !3, i64 0, !49, i64 16, !8, i64 360, !12, i64 368, !12, i64 376, !7, i64 384, !3, i64 392, !3, i64 408, !50, i64 1720, !8, i64 1736, !14, i64 1740, !14, i64 1742, !8, i64 1744, !8, i64 1748, !8, i64 1752, !26, i64 1760, !51, i64 1776}
!49 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !7, i64 336}
!50 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!51 = !{!"gx_colors_usage_s", !12, i64 0, !8, i64 8, !6, i64 12}
!52 = !{!48, !8, i64 1788}
!53 = !{!6, !8, i64 0}
!54 = !{!48, !8, i64 1800}
!55 = !{!48, !8, i64 1796}
!56 = !{!6, !8, i64 8}
!57 = !{!10, !8, i64 10260}
!58 = !{!10, !2, i64 5984}
!59 = !{!10, !2, i64 10088}
!60 = !{!61, !8, i64 0}
!61 = !{!"cmd_block_s", !8, i64 0, !8, i64 4, !12, i64 8}
!62 = !{!61, !8, i64 4}
!63 = !{!10, !2, i64 10096}
!64 = !{!65, !2, i64 56}
!65 = !{!"clist_io_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72}
!66 = !{!61, !12, i64 8}
!67 = !{!65, !2, i64 24}
!68 = !{!65, !2, i64 48}
!69 = !{!3, !3, i64 0}
!70 = !{!10, !8, i64 10256}
!71 = !{!48, !2, i64 1768}
!72 = !{!48, !2, i64 1760}
!73 = !{!10, !2, i64 10208}
!74 = !{!10, !2, i64 10216}
!75 = !{!10, !2, i64 10232}
!76 = !{!26, !2, i64 0}
!77 = !{!26, !2, i64 8}
!78 = !{!79, !2, i64 0}
!79 = !{!"cmd_prefix_s", !2, i64 0, !8, i64 8, !12, i64 16}
!80 = !{!79, !8, i64 8}
!81 = !{!10, !2, i64 10224}
!82 = !{!10, !8, i64 10192}
!83 = !{!10, !8, i64 12144}
!84 = !{!10, !8, i64 12156}
!85 = !{!10, !12, i64 12216}
!86 = !{!79, !12, i64 16}
!87 = !{!12, !12, i64 0}
!88 = !{!89, !8, i64 4}
!89 = !{!"", !3, i64 0, !3, i64 1, !8, i64 4, !8, i64 8}
!90 = !{!89, !3, i64 0}
!91 = !{!89, !3, i64 1}
!92 = !{!10, !14, i64 12252}
!93 = !{!48, !8, i64 384}
!94 = !{!48, !8, i64 388}
!95 = !{!48, !14, i64 1740}
!96 = !{!48, !14, i64 1742}
!97 = !{!48, !8, i64 1736}
!98 = !{!99, !8, i64 120}
!99 = !{!"stream_CFE_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !3, i64 28, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !2, i64 168, !2, i64 176, !8, i64 184, !8, i64 188, !2, i64 192, !8, i64 200, !8, i64 204, !8, i64 208}
!100 = !{!99, !8, i64 124}
!101 = !{!99, !8, i64 128}
!102 = !{!99, !8, i64 132}
!103 = !{!99, !8, i64 136}
!104 = !{!99, !8, i64 140}
!105 = !{!99, !8, i64 144}
!106 = !{!99, !8, i64 148}
!107 = !{!99, !8, i64 152}
!108 = !{!99, !8, i64 108}
!109 = !{!99, !8, i64 156}
!110 = !{!99, !2, i64 168}
!111 = !{!99, !2, i64 176}
!112 = !{!99, !2, i64 192}
!113 = !{!114, !2, i64 8}
!114 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !8, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!115 = !{!116, !8, i64 124}
!116 = !{!"stream_CF_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !3, i64 28, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !2, i64 168, !2, i64 176, !8, i64 184}
!117 = !{!116, !8, i64 136}
!118 = !{!116, !8, i64 144}
!119 = !{!116, !8, i64 148}
!120 = !{!116, !8, i64 156}
!121 = !{!114, !2, i64 40}
!122 = !{!123, !8, i64 140}
!123 = !{!"stream_CFD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !3, i64 28, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !2, i64 168, !2, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !3, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236}
!124 = !{!125, !8, i64 108}
!125 = !{!"stream_RLE_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !3, i64 28, !8, i64 108, !12, i64 112, !12, i64 120, !8, i64 128}
!126 = !{!125, !12, i64 112}
!127 = !{!125, !12, i64 120}
!128 = !{!125, !8, i64 128}
!129 = !{!130, !8, i64 108}
!130 = !{!"stream_RLD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !3, i64 28, !8, i64 108, !8, i64 112, !8, i64 116}
!131 = !{!130, !8, i64 24}
!132 = !{!130, !8, i64 112}
