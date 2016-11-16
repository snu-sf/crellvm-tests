; ModuleID = './gdevps.bc'
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
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
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
%struct.gx_device_pswrite_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s, %struct.gx_device_pswrite_common_s, i32, %struct.psdf_binary_writer_s*, [197 x %struct.psw_image_params_s], i32, %struct.pf_, %struct.psw_path_state_s }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_device_halftone_s = type opaque
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
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
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
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
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
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
%struct.gx_device_vector_procs_s = type { i32 (%struct.gx_device_vector_s*)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, float*, i32, double)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32, i32)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, i32)* }
%struct.gx_device_vector_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64 }
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
%struct.gx_hl_saved_color_s = type { i64, i64, i32, %struct.gs_client_color_s, %struct.gx_device_color_saved_s }
%struct.gs_point_s = type { double, double }
%struct.gx_device_bbox_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64 }
%struct.gx_device_bbox_procs_s = type { i32 (i8*)*, void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, i32, i32, i32, i32)*, i32 (i8*, %struct.gs_fixed_rect_s*)* }
%struct.psdf_distiller_params_s = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32, i32, i32, i32, i32, %struct.psdf_image_params_s, i32, i32, %struct.psdf_image_params_s, %struct.psdf_image_params_s, %struct.gs_param_string_array_s, %struct.gs_param_string_array_s, i32, i32, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_array_s }
%struct.psdf_image_params_s = type { %struct.gs_c_param_list_s*, i32, i32, i32, %struct.gs_c_param_list_s*, i32, float, i32, i32, i8*, i32, i8*, %struct.stream_template_s* }
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_c_param_s = type opaque
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.gx_device_pswrite_common_s = type { float, i32, i32, i64 }
%struct.psdf_binary_writer_s = type { %struct.gs_memory_s*, %struct.stream_s*, %struct.stream_s*, %struct.gx_device_psdf_s* }
%struct.gx_device_psdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s }
%struct.psw_image_params_s = type { i64, i16, i16 }
%struct.pf_ = type { %struct.gs_int_rect_s, i64 }
%struct.psw_path_state_s = type { i32, i32, [2 x %struct.gs_point_s] }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gdev_vector_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s*, i32, i32, i32, i32, i32 }
%struct.gs_indexed_params_s = type { i32, i32, %union.anon.0, i32 }
%union.anon.0 = type { %struct.gs_const_string_s }
%struct.stream_AXE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"epswrite\00", align 1
@st_device_pswrite = internal constant %struct.gs_memory_struct_type_s { i32 12624, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* bitcast (%struct.gc_struct_data_s* @device_pswrite_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"JPEG2000\00", align 1
@s_zlibE_template = external constant %struct.stream_template_s, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"CCITTFaxEncode\00", align 1
@s_CFE_template = external constant %struct.stream_template_s, align 8
@gs_epswrite_device = constant %struct.gx_device_pswrite_s { i32 12624, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_pswrite, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 6120, i32 7920, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+02, float 7.200000e+02], [2 x float] [float 7.200000e+02, float 7.200000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @psw_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_upright_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @psw_output_page, i32 (%struct.gx_device_s*)* @psw_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @psw_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @psw_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @psw_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @psdf_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @psw_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @psw_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @psw_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @psw_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @psw_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gdev_vector_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gdev_vector_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gdev_vector_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @psw_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @psdf_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @psdf_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gs_memory_s* null, %struct.gx_device_vector_procs_s* null, [4096 x i8] zeroinitializer, %struct._IO_FILE* null, %struct.stream_s* null, i8* null, i32 0, i32 0, %struct.gs_imager_state_s zeroinitializer, float* null, i32 0, i32 1, i32 1, %struct.gx_hl_saved_color_s zeroinitializer, %struct.gx_hl_saved_color_s zeroinitializer, i64 0, i64 0, i32 0, i32 0, %struct.gs_point_s { double 1.000000e+01, double 1.000000e+01 }, i32 0, %struct.gx_device_bbox_s* null, i64 -1, i64 -1, i32 2000, i32 0, i32 1, i32 1, i32 0, double 1.300000e+00, %struct.psdf_distiller_params_s { i32 1, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i64 500000, i32 0, i32 0, i32 1, i32 0, i32 1, %struct.gs_const_string_s zeroinitializer, %struct.gs_const_string_s zeroinitializer, %struct.gs_const_string_s zeroinitializer, %struct.gs_const_string_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 1, %struct.psdf_image_params_s { %struct.gs_c_param_list_s* null, i32 0, i32 0, i32 -1, %struct.gs_c_param_list_s* null, i32 0, float 1.500000e+00, i32 2, i32 1, i8* null, i32 150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.stream_template_s* @s_zlibE_template }, i32 0, i32 1, %struct.psdf_image_params_s { %struct.gs_c_param_list_s* null, i32 0, i32 0, i32 -1, %struct.gs_c_param_list_s* null, i32 0, float 1.500000e+00, i32 2, i32 1, i8* null, i32 150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.stream_template_s* @s_zlibE_template }, %struct.psdf_image_params_s { %struct.gs_c_param_list_s* null, i32 0, i32 0, i32 -1, %struct.gs_c_param_list_s* null, i32 0, float 2.000000e+00, i32 2, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 300, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.stream_template_s* @s_CFE_template }, %struct.gs_param_string_array_s zeroinitializer, %struct.gs_param_string_array_s zeroinitializer, i32 1, i32 1, i32 100, i32 1, %struct.gs_param_string_s zeroinitializer, %struct.gs_param_string_array_s zeroinitializer }, %struct.gx_device_pswrite_common_s { float 2.000000e+00, i32 1, i32 1001, i64 0 }, i32 0, %struct.psdf_binary_writer_s* null, [197 x %struct.psw_image_params_s] zeroinitializer, i32 0, %struct.pf_ zeroinitializer, %struct.psw_path_state_s zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"gx_device_pswrite\00", align 1
@device_pswrite_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_device_psdf, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @device_pswrite_enum_ptrs, i32 0, i32 0) }, align 8
@st_device_psdf = external constant %struct.gs_memory_struct_type_s, align 8
@device_pswrite_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 9392 }], align 2
@psw_vector_procs = internal constant %struct.gx_device_vector_procs_s { i32 (%struct.gx_device_vector_s*)* @psw_beginpage, i32 (%struct.gx_device_vector_s*, double)* @psdf_setlinewidth, i32 (%struct.gx_device_vector_s*, i32)* @psdf_setlinecap, i32 (%struct.gx_device_vector_s*, i32)* @psdf_setlinejoin, i32 (%struct.gx_device_vector_s*, double)* @psdf_setmiterlimit, i32 (%struct.gx_device_vector_s*, float*, i32, double)* @psdf_setdash, i32 (%struct.gx_device_vector_s*, double)* @psdf_setflat, i32 (%struct.gx_device_vector_s*, i32, i32)* @psdf_setlogop, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @psw_can_handle_hl_color, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @psw_setcolors, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @psw_setcolors, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)* @gdev_vector_dopath, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)* @psw_dorect, i32 (%struct.gx_device_vector_s*, i32)* @psw_beginpath, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)* @psw_moveto, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)* @psw_lineto, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)* @psw_curveto, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)* @psw_closepath, i32 (%struct.gx_device_vector_s*, i32)* @psw_endpath }, align 8
@st_psdf_binary_writer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"psw_open(image_writer)\00", align 1
@psw_1_x_procset = internal constant [3 x i8*] [i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@psw_1_procset = internal constant [1 x i8*] zeroinitializer, align 8
@psw_1_5_procset = internal constant [2 x i8*] [i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16
@psw_2_procset = internal constant [10 x i8*] [i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i8* null], align 16
@psw_procset = internal constant [24 x i8*] [i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.40, i32 0, i32 0), i8* null], align 16
@.str.6 = private unnamed_addr constant [47 x i8] c"/|X{exch string readhexstring |=}!/$X{+ @ |X}!\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"/@X{{currentfile ( ) readhexstring pop}}!\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"/Ic{exch Ix false 3 colorimage}!\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"/F{/Columns counttomark 3 add -2 roll/Rows exch/K -1/BlackIs1 true>>\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"/CCITTFaxDecode filter}!/FX{<</EndOfBlock false F}!\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"/X{/ASCII85Decode filter}!/@X{@ X}!/&2{2 index 2 index}!\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"/@F{@ &2<<F}!/@C{@X &2 FX}!\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"/$X{+ @X |}!/&4{4 index 4 index}!/$F{+ @ &4<<F |}!/$C{+ @X &4 FX |}!\00", align 1
@.str.14 = private unnamed_addr constant [70 x i8] c"/IC{3 1 roll 10 dict begin 1{/ImageType/Interpolate/Decode/DataSource\00", align 1
@.str.15 = private unnamed_addr constant [60 x i8] c"/ImageMatrix/BitsPerComponent/Height/Width}{exch def}forall\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"currentdict end image}!\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"/~{@ read {pop} if}!\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"/!{bind def}bind def/#{load def}!/N/counttomark #\00", align 1
@.str.19 = private unnamed_addr constant [73 x i8] c"/rG{3{3 -1 roll 255 div}repeat setrgbcolor}!/G{255 div setgray}!/K{0 G}!\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"/r6{dup 3 -1 roll rG}!/r5{dup 3 1 roll rG}!/r3{dup rG}!\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"/w/setlinewidth #/J/setlinecap #\00", align 1
@.str.22 = private unnamed_addr constant [59 x i8] c"/j/setlinejoin #/M/setmiterlimit #/d/setdash #/i/setflat #\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"/m/moveto #/l/lineto #/c/rcurveto #\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"/p{N 2 idiv{N -2 roll rlineto}repeat}!\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"/P{N 0 gt{N -2 roll moveto p}if}!\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"/h{p closepath}!/H{P closepath}!\00", align 1
@.str.27 = private unnamed_addr constant [68 x i8] c"/lx{0 rlineto}!/ly{0 exch rlineto}!/v{0 0 6 2 roll c}!/y{2 copy c}!\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"/re{4 -2 roll m exch dup lx exch ly neg lx h}!\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"/^{3 index neg 3 index neg}!\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"/f{P fill}!/f*{P eofill}!/s{H stroke}!/S{P stroke}!\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"/q/gsave #/Q/grestore #/rf{re fill}!\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"/Y{P clip newpath}!/Y*{P eoclip newpath}!/rY{re Y}!\00", align 1
@.str.33 = private unnamed_addr constant [84 x i8] c"/|={pop exch 4 1 roll 1 array astore cvx 3 array astore cvx exch 1 index def exec}!\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"/|{exch string readstring |=}!\00", align 1
@.str.35 = private unnamed_addr constant [67 x i8] c"/+{dup type/nametype eq{2 index 7 add -3 bitshift 2 index mul}if}!\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"/@/currentfile #/${+ @ |}!\00", align 1
@.str.37 = private unnamed_addr constant [62 x i8] c"/B{{2 copy string{readstring pop}aload pop 4 array astore cvx\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"3 1 roll}repeat pop pop true}!\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"/Ix{[1 0 0 1 11 -2 roll exch neg exch neg]exch}!\00", align 1
@.str.40 = private unnamed_addr constant [75 x i8] c"/,{true exch Ix imagemask}!/If{false exch Ix imagemask}!/I{exch Ix image}!\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@.str.41 = private unnamed_addr constant [3 x i8] c"K\0A\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"%d G\0A\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"%d %d r6\0A\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"%d %d r3\0A\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"%d %d r5\0A\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"%d %d %d rG\0A\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"%g %g %g %g rf\0A\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"Q q\0A\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"P\0A\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"p\0A\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"pop pop\0A\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"%g %g \00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"^ \00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"m\0A\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"v\0A\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"y\0A\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"c\0A\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"H\0A\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"h\0A\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.61 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"p \00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"q f%s Q \00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"f%s\0A\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"q S Q \00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"S\0A\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"Y%s\0A\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"psw_close(image_writer)\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"LanguageLevel\00", align 1
@psw_put_params.vv = internal constant [3 x i32] [i32 1000, i32 1100, i32 2000], align 4
@.str.70 = private unnamed_addr constant [3 x i8] c"If\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"1 I\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"%d %d \00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"%d %d %d %d \00", align 1
@psw_image_write.uncached = internal constant [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0)], align 16
@.str.77 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"@X\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"@F\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"@C\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@psw_image_write.cached = internal constant [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0)], align 16
@.str.82 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"$X\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"$F\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"$C\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"/%d%c\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c" %ld\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"\0A%%%%BeginData: %ld\0A\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"\0A%%EndData\00", align 1
@s_AXE_template = external constant %struct.stream_template_s, align 8
@.str.91 = private unnamed_addr constant [23 x i8] c"psw_image_stream_setup\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"%d Ic\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c" %g %g scale\0A\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"concat\0A\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"Q\0A\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"[%g %g %g %g %g %g]\00", align 1
@st_vector_image_enum = external constant %struct.gs_memory_struct_type_s, align 8
@.str.99 = private unnamed_addr constant [16 x i8] c"psw_begin_image\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@psw_image_enum_procs = internal constant %struct.gx_image_enum_procs_s { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)* @psw_image_plane_data, i32 (%struct.gx_image_enum_common_s*, i32)* @psw_image_end_image, i32 (%struct.gx_image_enum_common_s*)* null, i32 (%struct.gx_image_enum_common_s*, i8*)* null }, align 8
@.str.102 = private unnamed_addr constant [24 x i8] c"psw_begin_image(buffer)\00", align 1
@.str.103 = private unnamed_addr constant [31 x i8] c"psw_begin_image(buffer stream)\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"concat\0A%d %d \00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"imagemask\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"[/Indexed /%s \00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.111 = private unnamed_addr constant [22 x i8] c"\0A]setcolorspace[0 %d]\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"IC\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"%s false\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c" %d %d B\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"colorimage\00", align 1
@.str.119 = private unnamed_addr constant [20 x i8] c"%%%%BeginData: %ld\0A\00", align 1
@.str.120 = private unnamed_addr constant [35 x i8] c"psw_image_end_image(buffer stream)\00", align 1
@.str.121 = private unnamed_addr constant [28 x i8] c"psw_image_end_image(buffer)\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"\0AQ\0A\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_open(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %3 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !19
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !5
  %call = call %struct.gs_memory_s* %3(%struct.gs_memory_s* %5) #7
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %8, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_vector_s* %10 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %11, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %13 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %13, i32 0, i32 43
  store %struct.gs_memory_s* %12, %struct.gs_memory_s** %v_memory, align 8, !tbaa !22
  %14 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %14, i32 0, i32 44
  store %struct.gx_device_vector_procs_s* @psw_vector_procs, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !42
  %15 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  call void @gdev_vector_init(%struct.gx_device_vector_s* %15) #7
  %16 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %stroke_options = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %16, i32 0, i32 61
  store i32 16, i32* %stroke_options, align 4, !tbaa !43
  %17 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %fill_options = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %17, i32 0, i32 60
  store i32 16, i32* %fill_options, align 4, !tbaa !44
  %18 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %18, i32 0, i32 73
  %ASCII85EncodePages = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 0
  %19 = load i32, i32* %ASCII85EncodePages, align 4, !tbaa !45
  %tobool = icmp ne i32 %19, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %20 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %binary_ok = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %20, i32 0, i32 68
  store i32 %lnot.ext, i32* %binary_ok, align 4, !tbaa !56
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 8
  %22 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !57
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call3 = call i8* %22(%struct.gs_memory_s* %23, %struct.gs_memory_struct_type_s* @st_psdf_binary_writer, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0)) #7
  %24 = bitcast i8* %call3 to %struct.psdf_binary_writer_s*
  %25 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %image_writer = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %25, i32 0, i32 76
  store %struct.psdf_binary_writer_s* %24, %struct.psdf_binary_writer_s** %image_writer, align 8, !tbaa !58
  %26 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %image_writer4 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %26, i32 0, i32 76
  %27 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %image_writer4, align 8, !tbaa !58
  %28 = bitcast %struct.psdf_binary_writer_s* %27 to i8*
  %call5 = call i8* @memset(i8* %28, i32 0, i64 32) #8
  %29 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  call void @image_cache_reset(%struct.gx_device_pswrite_s* %29) #7
  %30 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %30, i32 0, i32 47
  store %struct.stream_s* null, %struct.stream_s** %strm, align 8, !tbaa !59
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call6 = call i32 @psw_open_printer(%struct.gx_device_s* %32) #7
  store i32 %call6, i32* %code, align 4, !tbaa !60
  %33 = load i32, i32* %code, align 4, !tbaa !60
  %cmp = icmp slt i32 %33, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %34 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.7 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.7

cleanup.7:                                        ; preds = %cleanup.cont, %cleanup
  %36 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare void @gx_upright_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_output_page(%struct.gx_device_s* %dev, i32 %num_copies, i32 %flush) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !60
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !60
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %3, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_vector_s* %5 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %6, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %7 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %8) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %call1 = call i32 @psw_check_erasepage(%struct.gx_device_pswrite_s* %10) #7
  store i32 %call1, i32* %code_, align 4, !tbaa !60
  %11 = load i32, i32* %code_, align 4, !tbaa !60
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %12 = load i32, i32* %code_, align 4, !tbaa !60
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.24 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 14
  %flush2 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %15 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush2, align 8, !tbaa !61
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call3 = call i32 %15(%struct.stream_s* %16) #7
  %17 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %17, i32 0, i32 46
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !65
  %19 = load i32, i32* %num_copies.addr, align 4, !tbaa !60
  %20 = load i32, i32* %flush.addr, align 4, !tbaa !60
  %call4 = call i32 @psw_write_page_trailer(%struct._IO_FILE* %18, i32 %19, i32 %20) #7
  store i32 %call4, i32* %code, align 4, !tbaa !60
  %21 = load i32, i32* %code, align 4, !tbaa !60
  %cmp5 = icmp slt i32 %21, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.end
  %22 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

if.end.7:                                         ; preds = %do.end
  %23 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %in_page = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %23, i32 0, i32 63
  store i32 0, i32* %in_page, align 4, !tbaa !66
  %24 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %first_page = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %24, i32 0, i32 75
  store i32 0, i32* %first_page, align 4, !tbaa !67
  %25 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  call void @gdev_vector_reset(%struct.gx_device_vector_s* %25) #7
  %26 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  call void @image_cache_reset(%struct.gx_device_pswrite_s* %26) #7
  %27 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %file8 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %27, i32 0, i32 46
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %file8, align 8, !tbaa !65
  %call9 = call i32 @ferror(%struct._IO_FILE* %28) #8
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

if.end.11:                                        ; preds = %if.end.7
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 26
  %30 = load i64, i64* %PageCount, align 8, !tbaa !68
  %inc = add nsw i64 %30, 1
  store i64 %inc, i64* %PageCount, align 8, !tbaa !68
  %31 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %31, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %32 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !69
  %call12 = call i32 @gx_outputfile_is_separate_pages(i8* %arraydecay, %struct.gs_memory_s* %33) #7
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.23

if.then.14:                                       ; preds = %if.end.11
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call15 = call i32 @psw_close_printer(%struct.gx_device_s* %34) #7
  store i32 %call15, i32* %code, align 4, !tbaa !60
  %35 = load i32, i32* %code, align 4, !tbaa !60
  %cmp16 = icmp slt i32 %35, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  %36 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

if.end.18:                                        ; preds = %if.then.14
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call19 = call i32 @psw_open_printer(%struct.gx_device_s* %37) #7
  store i32 %call19, i32* %code, align 4, !tbaa !60
  %38 = load i32, i32* %code, align 4, !tbaa !60
  %cmp20 = icmp slt i32 %38, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %39 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

if.end.22:                                        ; preds = %if.end.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

cleanup.24:                                       ; preds = %if.end.23, %if.then.21, %if.then.17, %if.then.10, %if.then.6, %cleanup
  %40 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_close(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_vector_s* %4 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %5, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %6, i32 0, i32 43
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !70
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %8 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !71
  %9 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %v_memory1 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %9, i32 0, i32 43
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory1, align 8, !tbaa !70
  %11 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %image_writer = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %11, i32 0, i32 76
  %12 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %image_writer, align 8, !tbaa !58
  %13 = bitcast %struct.psdf_binary_writer_s* %12 to i8*
  call void %8(%struct.gs_memory_s* %10, i8* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i32 0, i32 0)) #7
  %14 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %image_writer2 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %14, i32 0, i32 76
  store %struct.psdf_binary_writer_s* null, %struct.psdf_binary_writer_s** %image_writer2, align 8, !tbaa !58
  %15 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %15, i32 0, i32 47
  %16 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !72
  %cmp = icmp ne %struct.stream_s* %16, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @psw_close_printer(%struct.gx_device_s* %18) #7
  store i32 %call, i32* %code, align 4, !tbaa !60
  %19 = load i32, i32* %code, align 4, !tbaa !60
  %cmp3 = icmp slt i32 %19, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %20 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.6 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.5

if.end.5:                                         ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.6

cleanup.6:                                        ; preds = %if.end.5, %cleanup
  %22 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i64 @gx_default_rgb_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_rgb_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !60
  store i32 %y, i32* %y.addr, align 4, !tbaa !60
  store i32 %w, i32* %w.addr, align 4, !tbaa !60
  store i32 %h, i32* %h.addr, align 4, !tbaa !60
  store i64 %color, i64* %color.addr, align 8, !tbaa !73
  %0 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %2, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %in_page = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %3, i32 0, i32 63
  %4 = load i32, i32* %in_page, align 4, !tbaa !74
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.20, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %first_page = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %5, i32 0, i32 75
  %6 = load i32, i32* %first_page, align 4, !tbaa !67
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.end.20, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %page_fill = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %7, i32 0, i32 79
  %color2 = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill, i32 0, i32 1
  %8 = load i64, i64* %color2, align 8, !tbaa !75
  %cmp = icmp eq i64 %8, -1
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %x.addr, align 4, !tbaa !60
  %10 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %page_fill4 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %10, i32 0, i32 79
  %rect = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill4, i32 0, i32 0
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %9, i32* %x5, align 4, !tbaa !76
  %11 = load i32, i32* %y.addr, align 4, !tbaa !60
  %12 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %page_fill6 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %12, i32 0, i32 79
  %rect7 = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill6, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect7, i32 0, i32 0
  %y9 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p8, i32 0, i32 1
  store i32 %11, i32* %y9, align 4, !tbaa !77
  %13 = load i32, i32* %x.addr, align 4, !tbaa !60
  %14 = load i32, i32* %w.addr, align 4, !tbaa !60
  %add = add nsw i32 %13, %14
  %15 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %page_fill10 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %15, i32 0, i32 79
  %rect11 = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill10, i32 0, i32 0
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect11, i32 0, i32 1
  %x12 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %add, i32* %x12, align 4, !tbaa !78
  %16 = load i32, i32* %y.addr, align 4, !tbaa !60
  %17 = load i32, i32* %h.addr, align 4, !tbaa !60
  %add13 = add nsw i32 %16, %17
  %18 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %page_fill14 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %18, i32 0, i32 79
  %rect15 = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill14, i32 0, i32 0
  %q16 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect15, i32 0, i32 1
  %y17 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q16, i32 0, i32 1
  store i32 %add13, i32* %y17, align 4, !tbaa !79
  %19 = load i64, i64* %color.addr, align 8, !tbaa !73
  %20 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %page_fill18 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %20, i32 0, i32 79
  %color19 = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill18, i32 0, i32 1
  store i64 %19, i64* %color19, align 8, !tbaa !75
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %land.lhs.true, %entry
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %22 = load i32, i32* %x.addr, align 4, !tbaa !60
  %23 = load i32, i32* %y.addr, align 4, !tbaa !60
  %24 = load i32, i32* %w.addr, align 4, !tbaa !60
  %25 = load i32, i32* %h.addr, align 4, !tbaa !60
  %26 = load i64, i64* %color.addr, align 8, !tbaa !73
  %call = call i32 @gdev_vector_fill_rectangle(%struct.gx_device_s* %21, i32 %22, i32 %23, i32 %24, i32 %25, i64 %26) #7
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.3
  %27 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %color = alloca %struct.gx_device_color_s, align 8
  %op = alloca i8*, align 8
  %code = alloca i32, align 4
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !60
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !60
  store i64 %id, i64* %id.addr, align 8, !tbaa !73
  store i32 %x, i32* %x.addr, align 4, !tbaa !60
  store i32 %y, i32* %y.addr, align 4, !tbaa !60
  store i32 %w, i32* %w.addr, align 4, !tbaa !60
  store i32 %h, i32* %h.addr, align 4, !tbaa !60
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !73
  store i64 %one, i64* %one.addr, align 8, !tbaa !73
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_vector_s* %4 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %5, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_color_s* %color to i8*
  call void @llvm.lifetime.start(i64 656, i8* %6) #2
  %7 = bitcast i8** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  store i32 0, i32* %code, align 4, !tbaa !60
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %call = call i32 @psw_check_erasepage(%struct.gx_device_pswrite_s* %10) #7
  store i32 %call, i32* %code_, align 4, !tbaa !60
  %11 = load i32, i32* %code_, align 4, !tbaa !60
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %12 = load i32, i32* %code_, align 4, !tbaa !60
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.37 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load i32, i32* %w.addr, align 4, !tbaa !60
  %cmp1 = icmp sle i32 %14, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %15 = load i32, i32* %h.addr, align 4, !tbaa !60
  %cmp2 = icmp sle i32 %15, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end.4:                                         ; preds = %lor.lhs.false
  %16 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %16, i32 0, i32 64
  %17 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !80
  %procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %17, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %18 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !81
  %19 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %bbox_device5 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %19, i32 0, i32 64
  %20 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device5, align 8, !tbaa !80
  %21 = bitcast %struct.gx_device_bbox_s* %20 to %struct.gx_device_s*
  %22 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %23 = load i32, i32* %data_x.addr, align 4, !tbaa !60
  %24 = load i32, i32* %raster.addr, align 4, !tbaa !60
  %25 = load i64, i64* %id.addr, align 8, !tbaa !73
  %26 = load i32, i32* %x.addr, align 4, !tbaa !60
  %27 = load i32, i32* %y.addr, align 4, !tbaa !60
  %28 = load i32, i32* %w.addr, align 4, !tbaa !60
  %29 = load i32, i32* %h.addr, align 4, !tbaa !60
  %30 = load i64, i64* %zero.addr, align 8, !tbaa !73
  %31 = load i64, i64* %one.addr, align 8, !tbaa !73
  %call6 = call i32 %18(%struct.gx_device_s* %21, i8* %22, i32 %23, i32 %24, i64 %25, i32 %26, i32 %27, i32 %28, i32 %29, i64 %30, i64 %31) #7
  %32 = load i64, i64* %one.addr, align 8, !tbaa !73
  %cmp7 = icmp eq i64 %32, -1
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.4
  %33 = load i64, i64* %zero.addr, align 8, !tbaa !73
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %color, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %33, i64* %pure, align 8, !tbaa !73
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %color, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !85
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %color, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !89
  %34 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %35 = bitcast %struct.gx_device_pswrite_s* %34 to %struct.gx_device_vector_s*
  %call9 = call i32 @gdev_vector_update_fill_color(%struct.gx_device_vector_s* %35, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %color) #7
  store i32 %call9, i32* %code, align 4, !tbaa !60
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i8** %op, align 8, !tbaa !1
  br label %if.end.28

if.else:                                          ; preds = %if.end.4
  %36 = load i64, i64* %zero.addr, align 8, !tbaa !73
  %37 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %black = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %37, i32 0, i32 65
  %38 = load i64, i64* %black, align 8, !tbaa !90
  %cmp10 = icmp eq i64 %36, %38
  br i1 %cmp10, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.else
  %39 = load i64, i64* %one.addr, align 8, !tbaa !73
  %40 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %white = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %40, i32 0, i32 66
  %41 = load i64, i64* %white, align 8, !tbaa !91
  %cmp11 = icmp eq i64 %39, %41
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i8** %op, align 8, !tbaa !1
  br label %if.end.27

if.else.13:                                       ; preds = %land.lhs.true, %if.else
  %42 = load i64, i64* %zero.addr, align 8, !tbaa !73
  %cmp14 = icmp ne i64 %42, -1
  br i1 %cmp14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.else.13
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %43, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs16, i32 0, i32 7
  %44 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !92
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %46 = load i32, i32* %x.addr, align 4, !tbaa !60
  %47 = load i32, i32* %y.addr, align 4, !tbaa !60
  %48 = load i32, i32* %w.addr, align 4, !tbaa !60
  %49 = load i32, i32* %h.addr, align 4, !tbaa !60
  %50 = load i64, i64* %zero.addr, align 8, !tbaa !73
  %call17 = call i32 %44(%struct.gx_device_s* %45, i32 %46, i32 %47, i32 %48, i32 %49, i64 %50) #7
  store i32 %call17, i32* %code, align 4, !tbaa !60
  %51 = load i32, i32* %code, align 4, !tbaa !60
  %cmp18 = icmp slt i32 %51, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.15
  %52 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end.20:                                        ; preds = %if.then.15
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.else.13
  %53 = load i64, i64* %one.addr, align 8, !tbaa !73
  %colors22 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %color, i32 0, i32 1
  %pure23 = bitcast %union._c* %colors22 to i64*
  store i64 %53, i64* %pure23, align 8, !tbaa !73
  %type24 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %color, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type24, align 8, !tbaa !85
  %ccolor_valid25 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %color, i32 0, i32 3
  store i32 0, i32* %ccolor_valid25, align 4, !tbaa !89
  %54 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %55 = bitcast %struct.gx_device_pswrite_s* %54 to %struct.gx_device_vector_s*
  %call26 = call i32 @gdev_vector_update_fill_color(%struct.gx_device_vector_s* %55, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %color) #7
  store i32 %call26, i32* %code, align 4, !tbaa !60
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i32 0, i32 0), i8** %op, align 8, !tbaa !1
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.21, %if.then.12
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.8
  %56 = load i32, i32* %code, align 4, !tbaa !60
  %cmp29 = icmp slt i32 %56, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end.31:                                        ; preds = %if.end.28
  %57 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call32 = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %57, %struct.gx_clip_path_s* null) #7
  store i32 %call32, i32* %code, align 4, !tbaa !60
  %58 = load i32, i32* %code, align 4, !tbaa !60
  %cmp33 = icmp slt i32 %58, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  %59 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end.35:                                        ; preds = %if.end.31
  %60 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %61 = load i8*, i8** %op, align 8, !tbaa !1
  %62 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %63 = load i32, i32* %data_x.addr, align 4, !tbaa !60
  %64 = load i32, i32* %raster.addr, align 4, !tbaa !60
  %65 = load i64, i64* %id.addr, align 8, !tbaa !73
  %66 = load i32, i32* %x.addr, align 4, !tbaa !60
  %67 = load i32, i32* %y.addr, align 4, !tbaa !60
  %68 = load i32, i32* %w.addr, align 4, !tbaa !60
  %69 = load i32, i32* %h.addr, align 4, !tbaa !60
  %call36 = call i32 @psw_image_write(%struct.gx_device_pswrite_s* %60, i8* %61, i8* %62, i32 %63, i32 %64, i64 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 1) #7
  store i32 %call36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

cleanup.37:                                       ; preds = %if.end.35, %if.then.34, %if.then.30, %if.then.19, %if.then.3, %cleanup
  %70 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast i8** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #2
  %72 = bitcast %struct.gx_device_color_s* %color to i8*
  call void @llvm.lifetime.end(i64 656, i8* %72) #2
  %73 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_copy_color(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %depth = alloca i32, align 4
  %bits = alloca i8*, align 8
  %op = alloca [6 x i8], align 1
  %code = alloca i32, align 4
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !60
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !60
  store i64 %id, i64* %id.addr, align 8, !tbaa !73
  store i32 %x, i32* %x.addr, align 4, !tbaa !60
  store i32 %y, i32* %y.addr, align 4, !tbaa !60
  store i32 %w, i32* %w.addr, align 4, !tbaa !60
  store i32 %h, i32* %h.addr, align 4, !tbaa !60
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth1, align 2, !tbaa !93
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !60
  %3 = bitcast i8** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %5 = load i32, i32* %data_x.addr, align 4, !tbaa !60
  %mul = mul nsw i32 %5, 3
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %bits, align 8, !tbaa !1
  %6 = bitcast [6 x i8]* %op to i8*
  call void @llvm.lifetime.start(i64 6, i8* %6) #2
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_s* %9 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %10, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_vector_s* %12 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %13, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %14 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %call = call i32 @psw_check_erasepage(%struct.gx_device_pswrite_s* %15) #7
  store i32 %call, i32* %code_, align 4, !tbaa !60
  %16 = load i32, i32* %code_, align 4, !tbaa !60
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %17 = load i32, i32* %code_, align 4, !tbaa !60
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.37 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load i32, i32* %w.addr, align 4, !tbaa !60
  %cmp3 = icmp sle i32 %19, 0
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %20 = load i32, i32* %h.addr, align 4, !tbaa !60
  %cmp5 = icmp sle i32 %20, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end.8:                                         ; preds = %lor.lhs.false
  %21 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %21, i32 0, i32 64
  %22 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !80
  %procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %22, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 10
  %23 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !94
  %24 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %bbox_device9 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %24, i32 0, i32 64
  %25 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device9, align 8, !tbaa !80
  %26 = bitcast %struct.gx_device_bbox_s* %25 to %struct.gx_device_s*
  %27 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %28 = load i32, i32* %data_x.addr, align 4, !tbaa !60
  %29 = load i32, i32* %raster.addr, align 4, !tbaa !60
  %30 = load i64, i64* %id.addr, align 8, !tbaa !73
  %31 = load i32, i32* %x.addr, align 4, !tbaa !60
  %32 = load i32, i32* %y.addr, align 4, !tbaa !60
  %33 = load i32, i32* %w.addr, align 4, !tbaa !60
  %34 = load i32, i32* %h.addr, align 4, !tbaa !60
  %call10 = call i32 %23(%struct.gx_device_s* %26, i8* %27, i32 %28, i32 %29, i64 %30, i32 %31, i32 %32, i32 %33, i32 %34) #7
  %35 = load i32, i32* %h.addr, align 4, !tbaa !60
  %cmp11 = icmp eq i32 %35, 1
  br i1 %cmp11, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.8
  %36 = load i8*, i8** %bits, align 8, !tbaa !1
  %37 = load i8*, i8** %bits, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds i8, i8* %37, i64 3
  %38 = load i32, i32* %w.addr, align 4, !tbaa !60
  %sub = sub nsw i32 %38, 1
  %mul14 = mul nsw i32 %sub, 3
  %conv15 = sext i32 %mul14 to i64
  %call16 = call i32 @memcmp(i8* %36, i8* %add.ptr13, i64 %conv15) #9
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.end.28, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs18, i32 0, i32 7
  %40 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !92
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %42 = load i32, i32* %x.addr, align 4, !tbaa !60
  %43 = load i32, i32* %y.addr, align 4, !tbaa !60
  %44 = load i32, i32* %w.addr, align 4, !tbaa !60
  %45 = load i32, i32* %h.addr, align 4, !tbaa !60
  %46 = load i8*, i8** %bits, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %46, i64 0
  %47 = load i8, i8* %arrayidx, align 1, !tbaa !95
  %conv19 = zext i8 %47 to i32
  %shl = shl i32 %conv19, 16
  %48 = load i8*, i8** %bits, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx20, align 1, !tbaa !95
  %conv21 = zext i8 %49 to i32
  %shl22 = shl i32 %conv21, 8
  %add = add nsw i32 %shl, %shl22
  %50 = load i8*, i8** %bits, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %50, i64 2
  %51 = load i8, i8* %arrayidx23, align 1, !tbaa !95
  %conv24 = zext i8 %51 to i32
  %add25 = add nsw i32 %add, %conv24
  %conv26 = sext i32 %add25 to i64
  %call27 = call i32 %40(%struct.gx_device_s* %41, i32 %42, i32 %43, i32 %44, i32 %45, i64 %conv26) #7
  store i32 %call27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end.28:                                        ; preds = %land.lhs.true, %if.end.8
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %op, i32 0, i32 0
  %52 = load i32, i32* %depth, align 4, !tbaa !60
  %div = sdiv i32 %52, 3
  %call29 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i32 %div) #7
  %53 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call30 = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %53, %struct.gx_clip_path_s* null) #7
  store i32 %call30, i32* %code, align 4, !tbaa !60
  %54 = load i32, i32* %code, align 4, !tbaa !60
  %cmp31 = icmp slt i32 %54, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.28
  %55 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end.34:                                        ; preds = %if.end.28
  %56 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %arraydecay35 = getelementptr inbounds [6 x i8], [6 x i8]* %op, i32 0, i32 0
  %57 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %58 = load i32, i32* %data_x.addr, align 4, !tbaa !60
  %59 = load i32, i32* %raster.addr, align 4, !tbaa !60
  %60 = load i64, i64* %id.addr, align 8, !tbaa !73
  %61 = load i32, i32* %x.addr, align 4, !tbaa !60
  %62 = load i32, i32* %y.addr, align 4, !tbaa !60
  %63 = load i32, i32* %w.addr, align 4, !tbaa !60
  %64 = load i32, i32* %h.addr, align 4, !tbaa !60
  %65 = load i32, i32* %depth, align 4, !tbaa !60
  %call36 = call i32 @psw_image_write(%struct.gx_device_pswrite_s* %56, i8* %arraydecay35, i8* %57, i32 %58, i32 %59, i64 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65) #7
  store i32 %call36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

cleanup.37:                                       ; preds = %if.end.34, %if.then.33, %if.then.17, %if.then.7, %cleanup
  %66 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast [6 x i8]* %op to i8*
  call void @llvm.lifetime.end(i64 6, i8* %69) #2
  %70 = bitcast i8** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %71 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = load i32, i32* %retval
  ret i32 %72
}

declare i32 @psdf_get_bits(%struct.gx_device_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %2, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_psdf_get_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #7
  store i32 %call, i32* %code, align 4, !tbaa !60
  %6 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %code, align 4, !tbaa !60
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %pswrite_common = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %10, i32 0, i32 74
  %LanguageLevel = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %pswrite_common, i32 0, i32 0
  %call1 = call i32 @param_write_float(%struct.gs_param_list_s* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0), float* %LanguageLevel) #7
  store i32 %call1, i32* %ecode, align 4, !tbaa !60
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %11 = load i32, i32* %ecode, align 4, !tbaa !60
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %13 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %param_name = alloca i8*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %ll = alloca float, align 4
  %save_version = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %ecode, align 4, !tbaa !60
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %5, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %6 = bitcast float* %ll to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %pswrite_common = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %7, i32 0, i32 74
  %LanguageLevel = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %pswrite_common, i32 0, i32 0
  %8 = load float, float* %LanguageLevel, align 4, !tbaa !96
  store float %8, float* %ll, align 4, !tbaa !97
  %9 = bitcast i32* %save_version to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %10, i32 0, i32 67
  %11 = load i32, i32* %version, align 4, !tbaa !98
  store i32 %11, i32* %save_version, align 4, !tbaa !95
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_float(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0), float* %ll) #7
  store i32 %call, i32* %code, align 4, !tbaa !60
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %13 = load float, float* %ll, align 4, !tbaa !97
  %conv = fpext float %13 to double
  %cmp = fcmp oeq double %conv, 1.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %14 = load float, float* %ll, align 4, !tbaa !97
  %conv2 = fpext float %14 to double
  %cmp3 = fcmp oeq double %conv2, 1.500000e+00
  br i1 %cmp3, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %15 = load float, float* %ll, align 4, !tbaa !97
  %conv6 = fpext float %15 to double
  %cmp7 = fcmp oeq double %conv6, 2.000000e+00
  br i1 %cmp7, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.5
  %16 = load float, float* %ll, align 4, !tbaa !97
  %conv10 = fpext float %16 to double
  %cmp11 = fcmp oeq double %conv10, 3.000000e+00
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.9, %lor.lhs.false.5, %lor.lhs.false, %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %lor.lhs.false.9
  store i32 -15, i32* %code, align 4, !tbaa !60
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %17, i32* %ecode, align 4, !tbaa !60
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %18, i32 0, i32 0
  %19 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !99
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %19, i32 0, i32 7
  %20 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !101
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %param_name, align 8, !tbaa !1
  %23 = load i32, i32* %ecode, align 4, !tbaa !60
  %call13 = call i32 %20(%struct.gs_param_list_s* %21, i8* %22, i32 %23) #7
  br label %sw.bb.14

sw.bb.14:                                         ; preds = %entry, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.14, %if.then
  %24 = load i32, i32* %ecode, align 4, !tbaa !60
  %cmp15 = icmp slt i32 %24, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %sw.epilog
  %25 = load i32, i32* %ecode, align 4, !tbaa !60
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %sw.epilog
  %26 = load float, float* %ll, align 4, !tbaa !97
  %mul = fmul float %26, 2.000000e+00
  %conv19 = fptosi float %mul to i32
  %sub = sub nsw i32 %conv19, 2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @psw_put_params.vv, i32 0, i64 %idxprom
  %27 = load i32, i32* %arrayidx, align 4, !tbaa !95
  %28 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %version20 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %28, i32 0, i32 67
  store i32 %27, i32* %version20, align 4, !tbaa !98
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call21 = call i32 @gdev_psdf_put_params(%struct.gx_device_s* %29, %struct.gs_param_list_s* %30) #7
  store i32 %call21, i32* %code, align 4, !tbaa !60
  %31 = load i32, i32* %code, align 4, !tbaa !60
  %cmp22 = icmp slt i32 %31, 0
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.18
  %32 = load i32, i32* %save_version, align 4, !tbaa !95
  %33 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %version25 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %33, i32 0, i32 67
  store i32 %32, i32* %version25, align 4, !tbaa !98
  %34 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.18
  %35 = load float, float* %ll, align 4, !tbaa !97
  %36 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %pswrite_common27 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %36, i32 0, i32 74
  %LanguageLevel28 = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %pswrite_common27, i32 0, i32 0
  store float %35, float* %LanguageLevel28, align 4, !tbaa !96
  %37 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.24, %if.then.17
  %38 = bitcast i32* %save_version to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast float* %ll to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_fill_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %pdevc, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_fill_params_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_fill_params_s* %params, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pswrite_s*
  %call = call i32 @psw_check_erasepage(%struct.gx_device_pswrite_s* %2) #7
  store i32 %call, i32* %code_, align 4, !tbaa !60
  %3 = load i32, i32* %code_, align 4, !tbaa !60
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %code_, align 4, !tbaa !60
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end

do.end:                                           ; preds = %cleanup.cont
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_path_is_void(%struct.gx_path_s* %6) #7
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %struct.gx_device_vector_s*
  %9 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call4 = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %8, %struct.gx_clip_path_s* %9) #7
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %13 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call5 = call i32 @gdev_vector_fill_path(%struct.gx_device_s* %10, %struct.gs_imager_state_s* %11, %struct.gx_path_s* %12, %struct.gx_fill_params_s* %13, %struct.gx_device_color_s* %14, %struct.gx_clip_path_s* %15) #7
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %cleanup
  %16 = load i32, i32* %retval
  ret i32 %16

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_stroke_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_stroke_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %scale = alloca double, align 8
  %set_ctm = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_pswrite_s*
  %call = call i32 @psw_check_erasepage(%struct.gx_device_pswrite_s* %5) #7
  store i32 %call, i32* %code_, align 4, !tbaa !60
  %6 = load i32, i32* %code_, align 4, !tbaa !60
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %7 = load i32, i32* %code_, align 4, !tbaa !60
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.75 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_path_is_void(%struct.gx_path_s* %9) #7
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %do.end
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call2 = call i32 @gx_path_is_null(%struct.gx_path_s* %10) #7
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gs_imager_state_s* %11 to %struct.gs_state_s*
  %call4 = call i32 @gs_currentlinecap(%struct.gs_state_s* %12) #7
  %cmp5 = icmp ne i32 %call4, 1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.end.7:                                         ; preds = %lor.lhs.false, %do.end
  %13 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %14 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call8 = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %13, %struct.gx_clip_path_s* %14) #7
  %15 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_vector_s* %16 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %17, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %18 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = bitcast i32* %set_ctm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %22) #2
  %23 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %23, i32 0, i32 0
  %24 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !85
  %cmp9 = icmp eq %struct.gx_device_color_type_s* %24, @gx_dc_type_data_pure
  br i1 %cmp9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %27 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %28 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %29 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %30 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call11 = call i32 @gx_default_stroke_path(%struct.gx_device_s* %25, %struct.gs_imager_state_s* %26, %struct.gx_path_s* %27, %struct.gx_stroke_params_s* %28, %struct.gx_device_color_s* %29, %struct.gx_clip_path_s* %30) #7
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.12:                                        ; preds = %if.end.7
  %31 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call13 = call i32 @gdev_vector_stroke_scaling(%struct.gx_device_vector_s* %31, %struct.gs_imager_state_s* %32, double* %scale, %struct.gs_matrix_s* %mat) #7
  store i32 %call13, i32* %set_ctm, align 4, !tbaa !60
  %33 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %34 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call14 = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %33, %struct.gx_clip_path_s* %34) #7
  %35 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %36 = bitcast %struct.gx_device_pswrite_s* %35 to %struct.gx_device_vector_s*
  %37 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %38 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %39 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %40 = load double, double* %scale, align 8, !tbaa !103
  %call15 = call i32 @gdev_vector_prepare_stroke(%struct.gx_device_vector_s* %36, %struct.gs_imager_state_s* %37, %struct.gx_stroke_params_s* %38, %struct.gx_device_color_s* %39, double %40) #7
  store i32 %call15, i32* %code, align 4, !tbaa !60
  %41 = load i32, i32* %code, align 4, !tbaa !60
  %cmp16 = icmp slt i32 %41, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.12
  %42 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.18:                                        ; preds = %if.end.12
  %43 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %43, i32 0, i32 47
  %44 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !59
  store %struct.stream_s* %44, %struct.stream_s** %s, align 8, !tbaa !1
  %45 = load i32, i32* %set_ctm, align 4, !tbaa !60
  %tobool19 = icmp ne i32 %45, 0
  br i1 %tobool19, label %if.then.20, label %if.end.47

if.then.20:                                       ; preds = %if.end.18
  %46 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call21 = call i32 @stream_puts(%struct.stream_s* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0)) #7
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %47 = load float, float* %xy, align 4, !tbaa !104
  %conv = fpext float %47 to double
  %cmp22 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp22, label %land.lhs.true.24, label %if.else

land.lhs.true.24:                                 ; preds = %if.then.20
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %48 = load float, float* %yx, align 4, !tbaa !105
  %conv25 = fpext float %48 to double
  %cmp26 = fcmp oeq double %conv25, 0.000000e+00
  br i1 %cmp26, label %land.lhs.true.28, label %if.else

land.lhs.true.28:                                 ; preds = %land.lhs.true.24
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 4
  %49 = load float, float* %tx, align 4, !tbaa !106
  %conv29 = fpext float %49 to double
  %cmp30 = fcmp oeq double %conv29, 0.000000e+00
  br i1 %cmp30, label %land.lhs.true.32, label %if.else

land.lhs.true.32:                                 ; preds = %land.lhs.true.28
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 5
  %50 = load float, float* %ty, align 4, !tbaa !107
  %conv33 = fpext float %50 to double
  %cmp34 = fcmp oeq double %conv33, 0.000000e+00
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %land.lhs.true.32
  %51 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %52 = load float, float* %xx, align 4, !tbaa !108
  %conv37 = fpext float %52 to double
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  %53 = load float, float* %yy, align 4, !tbaa !109
  %conv38 = fpext float %53 to double
  %call39 = call i8* @pprintg2(%struct.stream_s* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), double %conv37, double %conv38) #7
  br label %if.end.41

if.else:                                          ; preds = %land.lhs.true.32, %land.lhs.true.28, %land.lhs.true.24, %if.then.20
  %54 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @psw_put_matrix(%struct.stream_s* %54, %struct.gs_matrix_s* %mat) #7
  %55 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call40 = call i32 @stream_puts(%struct.stream_s* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0)) #7
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.36
  %56 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %56, i32 0, i32 9
  %57 = load i16, i16* %end_status, align 2, !tbaa !110
  %conv42 = sext i16 %57 to i32
  %cmp43 = icmp eq i32 %conv42, -2
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.41
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.46:                                        ; preds = %if.end.41
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.18
  %58 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %59 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %60 = load i32, i32* %set_ctm, align 4, !tbaa !60
  %tobool48 = icmp ne i32 %60, 0
  br i1 %tobool48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.47
  br label %cond.end

cond.false:                                       ; preds = %if.end.47
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_matrix_s* [ %mat, %cond.true ], [ null, %cond.false ]
  %call49 = call i32 @gdev_vector_dopath(%struct.gx_device_vector_s* %58, %struct.gx_path_s* %59, i32 2, %struct.gs_matrix_s* %cond) #7
  store i32 %call49, i32* %code, align 4, !tbaa !60
  %61 = load i32, i32* %code, align 4, !tbaa !60
  %cmp50 = icmp slt i32 %61, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %cond.end
  %62 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.53:                                        ; preds = %cond.end
  %63 = load i32, i32* %set_ctm, align 4, !tbaa !60
  %tobool54 = icmp ne i32 %63, 0
  br i1 %tobool54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.53
  %64 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call56 = call i32 @stream_puts(%struct.stream_s* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0)) #7
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.53
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.58

cleanup.58:                                       ; preds = %if.end.57, %if.then.52, %if.then.45, %if.then.17, %if.then.10
  %65 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %65) #2
  %66 = bitcast i32* %set_ctm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %cleanup.dest.64 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.64, label %cleanup.75 [
    i32 0, label %cleanup.cont.65
  ]

cleanup.cont.65:                                  ; preds = %cleanup.58
  %71 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %71, i32 0, i32 64
  %72 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !80
  %cmp66 = icmp eq %struct.gx_device_bbox_s* %72, null
  br i1 %cmp66, label %cond.true.68, label %cond.false.69

cond.true.68:                                     ; preds = %cleanup.cont.65
  br label %cond.end.73

cond.false.69:                                    ; preds = %cleanup.cont.65
  %73 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %bbox_device70 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %73, i32 0, i32 64
  %74 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device70, align 8, !tbaa !80
  %procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %74, i32 0, i32 42
  %stroke_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 25
  %75 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %stroke_path, align 8, !tbaa !111
  %76 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %bbox_device71 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %76, i32 0, i32 64
  %77 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device71, align 8, !tbaa !80
  %78 = bitcast %struct.gx_device_bbox_s* %77 to %struct.gx_device_s*
  %79 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %80 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %81 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %82 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %83 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call72 = call i32 %75(%struct.gx_device_s* %78, %struct.gs_imager_state_s* %79, %struct.gx_path_s* %80, %struct.gx_stroke_params_s* %81, %struct.gx_device_color_s* %82, %struct.gx_clip_path_s* %83) #7
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.69, %cond.true.68
  %cond74 = phi i32 [ 0, %cond.true.68 ], [ %call72, %cond.false.69 ]
  store i32 %cond74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

cleanup.75:                                       ; preds = %cond.end.73, %cleanup.58, %if.then.6, %cleanup
  %84 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  %85 = load i32, i32* %retval
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_fill_mask(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor, i32 %depth, i32 %lop, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !60
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !60
  store i64 %id, i64* %id.addr, align 8, !tbaa !73
  store i32 %x, i32* %x.addr, align 4, !tbaa !60
  store i32 %y, i32* %y.addr, align 4, !tbaa !60
  store i32 %w, i32* %w.addr, align 4, !tbaa !60
  store i32 %h, i32* %h.addr, align 4, !tbaa !60
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !60
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !60
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_vector_s* %4 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %5, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %call = call i32 @psw_check_erasepage(%struct.gx_device_pswrite_s* %7) #7
  store i32 %call, i32* %code_, align 4, !tbaa !60
  %8 = load i32, i32* %code_, align 4, !tbaa !60
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %9 = load i32, i32* %code_, align 4, !tbaa !60
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.22 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load i32, i32* %w.addr, align 4, !tbaa !60
  %cmp1 = icmp sle i32 %11, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %12 = load i32, i32* %h.addr, align 4, !tbaa !60
  %cmp2 = icmp sle i32 %12, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22

if.end.4:                                         ; preds = %lor.lhs.false
  %13 = load i32, i32* %depth.addr, align 4, !tbaa !60
  %cmp5 = icmp sgt i32 %13, 1
  br i1 %cmp5, label %if.then.15, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %if.end.4
  %14 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call7 = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %14, %struct.gx_clip_path_s* %15) #7
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.15, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %16 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call10 = call i32 @gdev_vector_update_fill_color(%struct.gx_device_vector_s* %16, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %17) #7
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %18 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %19 = load i32, i32* %lop.addr, align 4, !tbaa !60
  %call13 = call i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s* %18, i32 %19) #7
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false.9, %lor.lhs.false.6, %if.end.4
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %22 = load i32, i32* %data_x.addr, align 4, !tbaa !60
  %23 = load i32, i32* %raster.addr, align 4, !tbaa !60
  %24 = load i64, i64* %id.addr, align 8, !tbaa !73
  %25 = load i32, i32* %x.addr, align 4, !tbaa !60
  %26 = load i32, i32* %y.addr, align 4, !tbaa !60
  %27 = load i32, i32* %w.addr, align 4, !tbaa !60
  %28 = load i32, i32* %h.addr, align 4, !tbaa !60
  %29 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %30 = load i32, i32* %depth.addr, align 4, !tbaa !60
  %31 = load i32, i32* %lop.addr, align 4, !tbaa !60
  %32 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call16 = call i32 @gx_default_fill_mask(%struct.gx_device_s* %20, i8* %21, i32 %22, i32 %23, i64 %24, i32 %25, i32 %26, i32 %27, i32 %28, %struct.gx_device_color_s* %29, i32 %30, i32 %31, %struct.gx_clip_path_s* %32) #7
  store i32 %call16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22

if.end.17:                                        ; preds = %lor.lhs.false.12
  %33 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %33, i32 0, i32 64
  %34 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !80
  %procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %34, i32 0, i32 42
  %fill_mask = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 26
  %35 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %fill_mask, align 8, !tbaa !112
  %36 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %bbox_device18 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %36, i32 0, i32 64
  %37 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device18, align 8, !tbaa !80
  %38 = bitcast %struct.gx_device_bbox_s* %37 to %struct.gx_device_s*
  %39 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %40 = load i32, i32* %data_x.addr, align 4, !tbaa !60
  %41 = load i32, i32* %raster.addr, align 4, !tbaa !60
  %42 = load i64, i64* %id.addr, align 8, !tbaa !73
  %43 = load i32, i32* %x.addr, align 4, !tbaa !60
  %44 = load i32, i32* %y.addr, align 4, !tbaa !60
  %45 = load i32, i32* %w.addr, align 4, !tbaa !60
  %46 = load i32, i32* %h.addr, align 4, !tbaa !60
  %47 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %48 = load i32, i32* %depth.addr, align 4, !tbaa !60
  %49 = load i32, i32* %lop.addr, align 4, !tbaa !60
  %50 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call19 = call i32 %35(%struct.gx_device_s* %38, i8* %39, i32 %40, i32 %41, i64 %42, i32 %43, i32 %44, i32 %45, i32 %46, %struct.gx_device_color_s* %47, i32 %48, i32 %49, %struct.gx_clip_path_s* %50) #7
  %51 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %52 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call20 = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %51, %struct.gx_clip_path_s* %52) #7
  %53 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %54 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %55 = load i32, i32* %data_x.addr, align 4, !tbaa !60
  %56 = load i32, i32* %raster.addr, align 4, !tbaa !60
  %57 = load i64, i64* %id.addr, align 8, !tbaa !73
  %58 = load i32, i32* %x.addr, align 4, !tbaa !60
  %59 = load i32, i32* %y.addr, align 4, !tbaa !60
  %60 = load i32, i32* %w.addr, align 4, !tbaa !60
  %61 = load i32, i32* %h.addr, align 4, !tbaa !60
  %call21 = call i32 @psw_image_write(%struct.gx_device_pswrite_s* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i32 0, i32 0), i8* %54, i32 %55, i32 %56, i64 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 1) #7
  store i32 %call21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22

cleanup.22:                                       ; preds = %if.end.17, %if.then.15, %if.then.3, %cleanup
  %62 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = load i32, i32* %retval
  ret i32 %64
}

declare i32 @gdev_vector_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #0

declare i32 @gdev_vector_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #0

declare i32 @gdev_vector_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_begin_image(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_image1_s* %pim, i32 %format, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pim.addr = alloca %struct.gs_image1_s*, align 8
  %format.addr = alloca i32, align 4
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %pie = alloca %struct.gdev_vector_image_enum_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %pbcs = alloca %struct.gs_color_space_s*, align 8
  %base_name = alloca i8*, align 8
  %index = alloca i32, align 4
  %num_components = alloca i32, align 4
  %binary = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %bs = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %bsize = alloca i32, align 4
  %save = alloca %struct.stream_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %source = alloca i8*, align 8
  %imat = alloca %struct.gs_matrix_s, align 4
  %op = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_image1_s* %pim, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !95
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_vector_s* %4 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %5, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %6 = bitcast %struct.gdev_vector_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %8, i32 0, i32 9
  %9 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !113
  store %struct.gs_color_space_s* %9, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %10 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  store %struct.gs_color_space_s* %11, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %12 = bitcast i8** %base_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  store i8* null, i8** %base_name, align 8, !tbaa !1
  %13 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %binary to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %binary_ok = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %16, i32 0, i32 68
  %17 = load i32, i32* %binary_ok, align 4, !tbaa !56
  store i32 %17, i32* %binary, align 4, !tbaa !60
  %18 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  store i8* null, i8** %buffer, align 8, !tbaa !1
  %19 = bitcast %struct.stream_s** %bs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  store %struct.stream_s* null, %struct.stream_s** %bs, align 8, !tbaa !1
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %21 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %call = call i32 @psw_check_erasepage(%struct.gx_device_pswrite_s* %22) #7
  store i32 %call, i32* %code_, align 4, !tbaa !60
  %23 = load i32, i32* %code_, align 4, !tbaa !60
  %cmp = icmp slt i32 %23, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %24 = load i32, i32* %code_, align 4, !tbaa !60
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %25 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.211 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %27 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !57
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i8* %27(%struct.gs_memory_s* %28, %struct.gs_memory_struct_type_s* @st_vector_image_enum, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i32 0, i32 0)) #7
  %29 = bitcast i8* %call1 to %struct.gdev_vector_image_enum_s*
  store %struct.gdev_vector_image_enum_s* %29, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %30 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gdev_vector_image_enum_s* %30, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.211

if.end.4:                                         ; preds = %do.end
  %31 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_int_rect_s* %31, null
  br i1 %tobool, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end.4
  %32 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %32, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %33 = load i32, i32* %x, align 4, !tbaa !115
  %cmp5 = icmp eq i32 %33, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.then.16

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %34 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p7 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %34, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p7, i32 0, i32 1
  %35 = load i32, i32* %y, align 4, !tbaa !116
  %cmp8 = icmp eq i32 %35, 0
  br i1 %cmp8, label %land.lhs.true.9, label %if.then.16

land.lhs.true.9:                                  ; preds = %land.lhs.true.6
  %36 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %36, i32 0, i32 1
  %x10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %37 = load i32, i32* %x10, align 4, !tbaa !117
  %38 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %38, i32 0, i32 2
  %39 = load i32, i32* %Width, align 4, !tbaa !118
  %cmp11 = icmp eq i32 %37, %39
  br i1 %cmp11, label %land.lhs.true.12, label %if.then.16

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %40 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q13 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %40, i32 0, i32 1
  %y14 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q13, i32 0, i32 1
  %41 = load i32, i32* %y14, align 4, !tbaa !119
  %42 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %42, i32 0, i32 3
  %43 = load i32, i32* %Height, align 4, !tbaa !120
  %cmp15 = icmp eq i32 %41, %43
  br i1 %cmp15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true.12, %land.lhs.true.9, %land.lhs.true.6, %land.lhs.true
  br label %fail

if.end.17:                                        ; preds = %land.lhs.true.12, %if.end.4
  %44 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %format18 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %44, i32 0, i32 7
  %45 = load i32, i32* %format18, align 4, !tbaa !121
  switch i32 %45, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.17, %if.end.17
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.17
  br label %fail

sw.epilog:                                        ; preds = %sw.bb
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %47 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %47, i32 0, i32 3
  store %struct.gs_memory_s* %46, %struct.gs_memory_s** %memory, align 8, !tbaa !122
  %48 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %default_info = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %48, i32 0, i32 9
  store %struct.gx_image_enum_common_s* null, %struct.gx_image_enum_common_s** %default_info, align 8, !tbaa !124
  %49 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMask = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %49, i32 0, i32 10
  %50 = load i32, i32* %ImageMask, align 4, !tbaa !125
  %tobool19 = icmp ne i32 %50, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %sw.epilog
  store i32 -1, i32* %index, align 4, !tbaa !95
  store i32 1, i32* %num_components, align 4, !tbaa !60
  br label %if.end.58

if.else:                                          ; preds = %sw.epilog
  %51 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call21 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %51) #7
  store i32 %call21, i32* %index, align 4, !tbaa !95
  %52 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call22 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %52) #7
  store i32 %call22, i32* %num_components, align 4, !tbaa !60
  %53 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %CombineWithColor = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %53, i32 0, i32 8
  %54 = load i32, i32* %CombineWithColor, align 4, !tbaa !126
  %tobool23 = icmp ne i32 %54, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  br label %fail

if.end.25:                                        ; preds = %if.else
  %55 = load i32, i32* %index, align 4, !tbaa !95
  switch i32 %55, label %sw.default.56 [
    i32 10, label %sw.bb.26
    i32 0, label %sw.bb.44
    i32 1, label %sw.bb.44
    i32 2, label %sw.bb.44
  ]

sw.bb.26:                                         ; preds = %if.end.25
  %56 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %pswrite_common = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %56, i32 0, i32 74
  %LanguageLevel = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %pswrite_common, i32 0, i32 0
  %57 = load float, float* %LanguageLevel, align 4, !tbaa !96
  %cmp27 = fcmp olt float %57, 2.000000e+00
  br i1 %cmp27, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.26
  %58 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %58, i32 0, i32 7
  %indexed = bitcast %union.anon* %params to %struct.gs_indexed_params_s*
  %use_proc = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed, i32 0, i32 3
  %59 = load i32, i32* %use_proc, align 4, !tbaa !127
  %tobool28 = icmp ne i32 %59, 0
  br i1 %tobool28, label %if.then.36, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false
  %60 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %60, i32 0, i32 5
  %arrayidx = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i64 0
  %61 = load float, float* %arrayidx, align 4, !tbaa !97
  %cmp30 = fcmp une float %61, 0.000000e+00
  br i1 %cmp30, label %if.then.36, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.29
  %62 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode32 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %62, i32 0, i32 5
  %arrayidx33 = getelementptr inbounds [130 x float], [130 x float]* %Decode32, i32 0, i64 1
  %63 = load float, float* %arrayidx33, align 4, !tbaa !97
  %64 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %64, i32 0, i32 4
  %65 = load i32, i32* %BitsPerComponent, align 4, !tbaa !129
  %shl = shl i32 1, %65
  %sub = sub nsw i32 %shl, 1
  %conv = sitofp i32 %sub to float
  %cmp34 = fcmp une float %63, %conv
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.31, %lor.lhs.false.29, %lor.lhs.false, %sw.bb.26
  br label %fail

if.end.37:                                        ; preds = %lor.lhs.false.31
  %66 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %66, i32 0, i32 3
  %67 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !130
  store %struct.gs_color_space_s* %67, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %68 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %call38 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %68) #7
  switch i32 %call38, label %sw.default.42 [
    i32 0, label %sw.bb.39
    i32 1, label %sw.bb.40
    i32 2, label %sw.bb.41
  ]

sw.bb.39:                                         ; preds = %if.end.37
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i8** %base_name, align 8, !tbaa !1
  br label %sw.epilog.43

sw.bb.40:                                         ; preds = %if.end.37
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8** %base_name, align 8, !tbaa !1
  br label %sw.epilog.43

sw.bb.41:                                         ; preds = %if.end.37
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i8** %base_name, align 8, !tbaa !1
  br label %sw.epilog.43

sw.default.42:                                    ; preds = %if.end.37
  br label %fail

sw.epilog.43:                                     ; preds = %sw.bb.41, %sw.bb.40, %sw.bb.39
  br label %sw.epilog.57

sw.bb.44:                                         ; preds = %if.end.25, %if.end.25, %if.end.25
  %69 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #2
  store i32 0, i32* %i, align 4, !tbaa !60
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.44
  %70 = load i32, i32* %i, align 4, !tbaa !60
  %71 = load i32, i32* %num_components, align 4, !tbaa !60
  %mul = mul nsw i32 %71, 2
  %cmp45 = icmp slt i32 %70, %mul
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %72 = load i32, i32* %i, align 4, !tbaa !60
  %idxprom = sext i32 %72 to i64
  %73 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode47 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %73, i32 0, i32 5
  %arrayidx48 = getelementptr inbounds [130 x float], [130 x float]* %Decode47, i32 0, i64 %idxprom
  %74 = load float, float* %arrayidx48, align 4, !tbaa !97
  %75 = load i32, i32* %i, align 4, !tbaa !60
  %and = and i32 %75, 1
  %conv49 = sitofp i32 %and to float
  %cmp50 = fcmp une float %74, %conv49
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.54

if.end.53:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %76 = load i32, i32* %i, align 4, !tbaa !60
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %i, align 4, !tbaa !60
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.54

cleanup.54:                                       ; preds = %if.then.52, %for.end
  %77 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %cleanup.dest.55 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.55, label %cleanup.211 [
    i32 6, label %sw.epilog.57
    i32 4, label %fail
  ]

sw.default.56:                                    ; preds = %if.end.25
  br label %fail

sw.epilog.57:                                     ; preds = %cleanup.54, %sw.epilog.43
  br label %if.end.58

if.end.58:                                        ; preds = %sw.epilog.57, %if.then.20
  %78 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %pswrite_common59 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %78, i32 0, i32 74
  %LanguageLevel60 = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %pswrite_common59, i32 0, i32 0
  %79 = load float, float* %LanguageLevel60, align 4, !tbaa !96
  %cmp61 = fcmp olt float %79, 2.000000e+00
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.75

land.lhs.true.63:                                 ; preds = %if.end.58
  %80 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMask64 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %80, i32 0, i32 10
  %81 = load i32, i32* %ImageMask64, align 4, !tbaa !125
  %tobool65 = icmp ne i32 %81, 0
  br i1 %tobool65, label %if.end.75, label %if.then.66

if.then.66:                                       ; preds = %land.lhs.true.63
  %82 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent67 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %82, i32 0, i32 4
  %83 = load i32, i32* %BitsPerComponent67, align 4, !tbaa !129
  %cmp68 = icmp sgt i32 %83, 8
  br i1 %cmp68, label %if.then.73, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %if.then.66
  %84 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %85 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp71 = icmp ne %struct.gs_color_space_s* %84, %85
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %lor.lhs.false.70, %if.then.66
  br label %fail

if.end.74:                                        ; preds = %lor.lhs.false.70
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %land.lhs.true.63, %if.end.58
  %86 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %87 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %88 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %89 = load i32, i32* %format.addr, align 4, !tbaa !95
  %90 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %91 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %92 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %93 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %94 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %call76 = call i32 @gdev_vector_begin_image(%struct.gx_device_vector_s* %86, %struct.gs_imager_state_s* %87, %struct.gs_image1_s* %88, i32 %89, %struct.gs_int_rect_s* %90, %struct.gx_device_color_s* %91, %struct.gx_clip_path_s* %92, %struct.gs_memory_s* %93, %struct.gx_image_enum_procs_s* @psw_image_enum_procs, %struct.gdev_vector_image_enum_s* %94) #7
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.75
  br label %fail

if.end.80:                                        ; preds = %if.end.75
  %95 = load i32, i32* %binary, align 4, !tbaa !60
  %tobool81 = icmp ne i32 %95, 0
  br i1 %tobool81, label %if.then.82, label %if.end.97

if.then.82:                                       ; preds = %if.end.80
  %96 = bitcast i32* %bsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #2
  %97 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %bits_per_row = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %97, i32 0, i32 14
  %98 = load i32, i32* %bits_per_row, align 4, !tbaa !132
  %add = add i32 %98, 7
  %shr = lshr i32 %add, 3
  %99 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %99, i32 0, i32 12
  %100 = load i32, i32* %height, align 4, !tbaa !133
  %mul83 = mul i32 %shr, %100
  %add84 = add i32 10, %mul83
  store i32 %add84, i32* %bsize, align 4, !tbaa !60
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs85 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %101, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs85, i32 0, i32 7
  %102 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !134
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %104 = load i32, i32* %bsize, align 4, !tbaa !60
  %call86 = call i8* %102(%struct.gs_memory_s* %103, i32 %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i32 0, i32 0)) #7
  store i8* %call86, i8** %buffer, align 8, !tbaa !1
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call87 = call %struct.stream_s* @s_alloc(%struct.gs_memory_s* %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.103, i32 0, i32 0)) #7
  store %struct.stream_s* %call87, %struct.stream_s** %bs, align 8, !tbaa !1
  %106 = load i8*, i8** %buffer, align 8, !tbaa !1
  %tobool88 = icmp ne i8* %106, null
  br i1 %tobool88, label %land.lhs.true.89, label %if.else.92

land.lhs.true.89:                                 ; preds = %if.then.82
  %107 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %tobool90 = icmp ne %struct.stream_s* %107, null
  br i1 %tobool90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %land.lhs.true.89
  %108 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @s_init(%struct.stream_s* %108, %struct.gs_memory_s* %109) #7
  %110 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %111 = load i8*, i8** %buffer, align 8, !tbaa !1
  %112 = load i32, i32* %bsize, align 4, !tbaa !60
  call void @swrite_string(%struct.stream_s* %110, i8* %111, i32 %112) #7
  br label %if.end.96

if.else.92:                                       ; preds = %land.lhs.true.89, %if.then.82
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs93 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %113, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs93, i32 0, i32 2
  %114 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !71
  %115 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %116 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %117 = bitcast %struct.stream_s* %116 to i8*
  call void %114(%struct.gs_memory_s* %115, i8* %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.103, i32 0, i32 0)) #7
  %118 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs94 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %118, i32 0, i32 1
  %free_object95 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs94, i32 0, i32 2
  %119 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object95, align 8, !tbaa !71
  %120 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %121 = load i8*, i8** %buffer, align 8, !tbaa !1
  call void %119(%struct.gs_memory_s* %120, i8* %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i32 0, i32 0)) #7
  store i8* null, i8** %buffer, align 8, !tbaa !1
  store %struct.stream_s* null, %struct.stream_s** %bs, align 8, !tbaa !1
  store i32 0, i32* %binary, align 4, !tbaa !60
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.92, %if.then.91
  %122 = bitcast i32* %bsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.80
  %123 = load i32, i32* %binary, align 4, !tbaa !60
  %tobool98 = icmp ne i32 %123, 0
  br i1 %tobool98, label %if.then.99, label %if.else.103

if.then.99:                                       ; preds = %if.end.97
  %124 = bitcast %struct.stream_s** %save to i8*
  call void @llvm.lifetime.start(i64 8, i8* %124) #2
  %125 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %125, i32 0, i32 47
  %126 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !59
  store %struct.stream_s* %126, %struct.stream_s** %save, align 8, !tbaa !1
  %127 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %128 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %strm100 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %128, i32 0, i32 47
  store %struct.stream_s* %127, %struct.stream_s** %strm100, align 8, !tbaa !59
  %129 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %call101 = call i32 @psw_image_stream_setup(%struct.gx_device_pswrite_s* %129, i32 1) #7
  store i32 %call101, i32* %code, align 4, !tbaa !60
  %130 = load %struct.stream_s*, %struct.stream_s** %save, align 8, !tbaa !1
  %131 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %strm102 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %131, i32 0, i32 47
  store %struct.stream_s* %130, %struct.stream_s** %strm102, align 8, !tbaa !59
  %132 = bitcast %struct.stream_s** %save to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #2
  br label %if.end.105

if.else.103:                                      ; preds = %if.end.97
  %133 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %call104 = call i32 @psw_image_stream_setup(%struct.gx_device_pswrite_s* %133, i32 0) #7
  store i32 %call104, i32* %code, align 4, !tbaa !60
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.103, %if.then.99
  %134 = load i32, i32* %code, align 4, !tbaa !60
  %cmp106 = icmp slt i32 %134, 0
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.105
  br label %fail

if.end.109:                                       ; preds = %if.end.105
  %135 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %136 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call110 = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %135, %struct.gx_clip_path_s* %136) #7
  %137 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %137) #2
  %138 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %139 = bitcast %struct.gx_device_pswrite_s* %138 to %struct.gx_device_vector_s*
  %call111 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %139) #7
  store %struct.stream_s* %call111, %struct.stream_s** %s, align 8, !tbaa !1
  %140 = bitcast i8** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %140) #2
  %141 = load i32, i32* %code, align 4, !tbaa !60
  %tobool112 = icmp ne i32 %141, 0
  %cond = select i1 %tobool112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i32 0, i32 0)
  store i8* %cond, i8** %source, align 8, !tbaa !1
  %142 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %142) #2
  %143 = bitcast i8** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %143) #2
  %144 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call113 = call i32 @stream_puts(%struct.stream_s* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0)) #7
  %145 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs114 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %145, i32 0, i32 42
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs114, i32 0, i32 1
  %146 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8, !tbaa !135
  %147 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void %146(%struct.gx_device_s* %147, %struct.gs_matrix_s* %imat) #7
  %148 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %148, i32 0, i32 22
  %arrayidx115 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %149 = load float, float* %arrayidx115, align 4, !tbaa !97
  %conv116 = fpext float %149 to double
  %div = fdiv double 7.200000e+01, %conv116
  %150 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution117 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %150, i32 0, i32 22
  %arrayidx118 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution117, i32 0, i64 1
  %151 = load float, float* %arrayidx118, align 4, !tbaa !97
  %conv119 = fpext float %151 to double
  %div120 = fdiv double 7.200000e+01, %conv119
  %call121 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %imat, double %div, double %div120, %struct.gs_matrix_s* %imat) #7
  %call122 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %imat, %struct.gs_matrix_s* %imat) #7
  %152 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %152, i32 0, i32 5
  %153 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call123 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %153, %struct.gs_matrix_s* %imat, %struct.gs_matrix_s* %imat) #7
  %154 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  call void @psw_put_matrix(%struct.stream_s* %154, %struct.gs_matrix_s* %imat) #7
  %155 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %156 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %156, i32 0, i32 11
  %157 = load i32, i32* %width, align 4, !tbaa !136
  %158 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %height124 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %158, i32 0, i32 12
  %159 = load i32, i32* %height124, align 4, !tbaa !133
  %call125 = call i8* @pprintd2(%struct.stream_s* %155, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.104, i32 0, i32 0), i32 %157, i32 %159) #7
  %160 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMask126 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %160, i32 0, i32 10
  %161 = load i32, i32* %ImageMask126, align 4, !tbaa !125
  %tobool127 = icmp ne i32 %161, 0
  br i1 %tobool127, label %if.then.128, label %if.else.136

if.then.128:                                      ; preds = %if.end.109
  %162 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %163 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode129 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %163, i32 0, i32 5
  %arrayidx130 = getelementptr inbounds [130 x float], [130 x float]* %Decode129, i32 0, i64 0
  %164 = load float, float* %arrayidx130, align 4, !tbaa !97
  %cmp131 = fcmp oeq float %164, 0.000000e+00
  %cond133 = select i1 %cmp131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0)
  %call134 = call i32 @stream_puts(%struct.stream_s* %162, i8* %cond133) #7
  %165 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %166 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %166, i32 0, i32 1
  call void @psw_put_matrix(%struct.stream_s* %165, %struct.gs_matrix_s* %ImageMatrix) #7
  %167 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %168 = load i8*, i8** %source, align 8, !tbaa !1
  %call135 = call i32 @stream_puts(%struct.stream_s* %167, i8* %168) #7
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i8** %op, align 8, !tbaa !1
  br label %if.end.182

if.else.136:                                      ; preds = %if.end.109
  %169 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %170 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent137 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %170, i32 0, i32 4
  %171 = load i32, i32* %BitsPerComponent137, align 4, !tbaa !129
  %call138 = call i8* @pprintd1(%struct.stream_s* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i32 %171) #7
  %172 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %173 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix139 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %173, i32 0, i32 1
  call void @psw_put_matrix(%struct.stream_s* %172, %struct.gs_matrix_s* %ImageMatrix139) #7
  %174 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pbcs, align 8, !tbaa !1
  %175 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp140 = icmp ne %struct.gs_color_space_s* %174, %175
  br i1 %cmp140, label %if.then.142, label %if.else.160

if.then.142:                                      ; preds = %if.else.136
  %176 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %177 = load i8*, i8** %base_name, align 8, !tbaa !1
  %call143 = call i8* @pprints1(%struct.stream_s* %176, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.109, i32 0, i32 0), i8* %177) #7
  %178 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %179 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params144 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %179, i32 0, i32 7
  %indexed145 = bitcast %union.anon* %params144 to %struct.gs_indexed_params_s*
  %hival = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed145, i32 0, i32 0
  %180 = load i32, i32* %hival, align 4, !tbaa !137
  %call146 = call i8* @pprintd1(%struct.stream_s* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i32 0, i32 0), i32 %180) #7
  %181 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %182 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params147 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %182, i32 0, i32 7
  %indexed148 = bitcast %union.anon* %params147 to %struct.gs_indexed_params_s*
  %lookup = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed148, i32 0, i32 2
  %table = bitcast %union.anon.0* %lookup to %struct.gs_const_string_s*
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table, i32 0, i32 0
  %183 = load i8*, i8** %data, align 8, !tbaa !138
  %184 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %params149 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %184, i32 0, i32 7
  %indexed150 = bitcast %union.anon* %params149 to %struct.gs_indexed_params_s*
  %lookup151 = getelementptr inbounds %struct.gs_indexed_params_s, %struct.gs_indexed_params_s* %indexed150, i32 0, i32 2
  %table152 = bitcast %union.anon.0* %lookup151 to %struct.gs_const_string_s*
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %table152, i32 0, i32 1
  %185 = load i32, i32* %size, align 4, !tbaa !139
  call void @s_write_ps_string(%struct.stream_s* %181, i8* %183, i32 %185, i32 2) #7
  %186 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %187 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Decode153 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %187, i32 0, i32 5
  %arrayidx154 = getelementptr inbounds [130 x float], [130 x float]* %Decode153, i32 0, i64 1
  %188 = load float, float* %arrayidx154, align 4, !tbaa !97
  %conv155 = fptosi float %188 to i32
  %call156 = call i8* @pprintd1(%struct.stream_s* %186, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.111, i32 0, i32 0), i32 %conv155) #7
  %189 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %190 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Interpolate = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %190, i32 0, i32 6
  %191 = load i32, i32* %Interpolate, align 4, !tbaa !140
  %tobool157 = icmp ne i32 %191, 0
  %cond158 = select i1 %tobool157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0)
  %192 = load i8*, i8** %source, align 8, !tbaa !1
  %call159 = call i8* @pprints2(%struct.stream_s* %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i32 0, i32 0), i8* %cond158, i8* %192) #7
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8** %op, align 8, !tbaa !1
  br label %if.end.181

if.else.160:                                      ; preds = %if.else.136
  %193 = load i32, i32* %index, align 4, !tbaa !95
  %cmp161 = icmp eq i32 %193, 0
  br i1 %cmp161, label %if.then.163, label %if.else.165

if.then.163:                                      ; preds = %if.else.160
  %194 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %195 = load i8*, i8** %source, align 8, !tbaa !1
  %call164 = call i32 @stream_puts(%struct.stream_s* %194, i8* %195) #7
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0), i8** %op, align 8, !tbaa !1
  br label %if.end.180

if.else.165:                                      ; preds = %if.else.160
  %196 = load i32, i32* %format.addr, align 4, !tbaa !95
  %cmp166 = icmp eq i32 %196, 0
  br i1 %cmp166, label %if.then.168, label %if.else.170

if.then.168:                                      ; preds = %if.else.165
  %197 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %198 = load i8*, i8** %source, align 8, !tbaa !1
  %call169 = call i8* @pprints1(%struct.stream_s* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i32 0, i32 0), i8* %198) #7
  br label %if.end.178

if.else.170:                                      ; preds = %if.else.165
  %199 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %200 = load i8*, i8** %source, align 8, !tbaa !1
  %call171 = call i32 @stream_puts(%struct.stream_s* %199, i8* %200) #7
  %201 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %202 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Width172 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %202, i32 0, i32 2
  %203 = load i32, i32* %Width172, align 4, !tbaa !118
  %204 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent173 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %204, i32 0, i32 4
  %205 = load i32, i32* %BitsPerComponent173, align 4, !tbaa !129
  %mul174 = mul nsw i32 %203, %205
  %add175 = add nsw i32 %mul174, 7
  %shr176 = ashr i32 %add175, 3
  %206 = load i32, i32* %num_components, align 4, !tbaa !60
  %call177 = call i8* @pprintd2(%struct.stream_s* %201, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i32 0, i32 0), i32 %shr176, i32 %206) #7
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.170, %if.then.168
  %207 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %208 = load i32, i32* %num_components, align 4, !tbaa !60
  %call179 = call i8* @pprintd1(%struct.stream_s* %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0), i32 %208) #7
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.118, i32 0, i32 0), i8** %op, align 8, !tbaa !1
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.178, %if.then.163
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.then.142
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.128
  %209 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call183 = call i32 @spputc(%struct.stream_s* %209, i8 zeroext 10) #7
  %210 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %tobool184 = icmp ne %struct.stream_s* %210, null
  br i1 %tobool184, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.182
  %211 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.end.182
  %212 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond185 = phi %struct.stream_s* [ %211, %cond.true ], [ %212, %cond.false ]
  %213 = load i8*, i8** %op, align 8, !tbaa !1
  %call186 = call i8* @pprints1(%struct.stream_s* %cond185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i8* %213) #7
  %214 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %214, i32 0, i32 9
  %215 = load i16, i16* %end_status, align 2, !tbaa !110
  %conv187 = sext i16 %215 to i32
  %cmp188 = icmp eq i32 %conv187, -2
  br i1 %cmp188, label %if.then.190, label %if.end.197

if.then.190:                                      ; preds = %cond.end
  %216 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs191 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %216, i32 0, i32 1
  %free_object192 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs191, i32 0, i32 2
  %217 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object192, align 8, !tbaa !71
  %218 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %219 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %220 = bitcast %struct.stream_s* %219 to i8*
  call void %217(%struct.gs_memory_s* %218, i8* %220, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.103, i32 0, i32 0)) #7
  %221 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs193 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %221, i32 0, i32 1
  %free_object194 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs193, i32 0, i32 2
  %222 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object194, align 8, !tbaa !71
  %223 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %224 = load i8*, i8** %buffer, align 8, !tbaa !1
  call void %222(%struct.gs_memory_s* %223, i8* %224, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i32 0, i32 0)) #7
  %225 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs195 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %225, i32 0, i32 1
  %free_object196 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs195, i32 0, i32 2
  %226 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object196, align 8, !tbaa !71
  %227 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %228 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %229 = bitcast %struct.gdev_vector_image_enum_s* %228 to i8*
  call void %226(%struct.gs_memory_s* %227, i8* %229, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i32 0, i32 0)) #7
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end.197:                                       ; preds = %cond.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.198

cleanup.198:                                      ; preds = %if.end.197, %if.then.190
  %230 = bitcast i8** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #2
  %231 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %231) #2
  %232 = bitcast i8** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #2
  %233 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #2
  %cleanup.dest.202 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.202, label %cleanup.211 [
    i32 0, label %cleanup.cont.203
  ]

cleanup.cont.203:                                 ; preds = %cleanup.198
  %234 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %235 = bitcast %struct.gdev_vector_image_enum_s* %234 to %struct.gx_image_enum_common_s*
  %236 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %235, %struct.gx_image_enum_common_s** %236, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.211

fail:                                             ; preds = %cleanup.54, %if.then.108, %if.then.79, %if.then.73, %sw.default.56, %sw.default.42, %if.then.36, %if.then.24, %sw.default, %if.then.16
  %237 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs204 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %237, i32 0, i32 1
  %free_object205 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs204, i32 0, i32 2
  %238 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object205, align 8, !tbaa !71
  %239 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %240 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %241 = bitcast %struct.stream_s* %240 to i8*
  call void %238(%struct.gs_memory_s* %239, i8* %241, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.103, i32 0, i32 0)) #7
  %242 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs206 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %242, i32 0, i32 1
  %free_object207 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs206, i32 0, i32 2
  %243 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object207, align 8, !tbaa !71
  %244 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %245 = load i8*, i8** %buffer, align 8, !tbaa !1
  call void %243(%struct.gs_memory_s* %244, i8* %245, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i32 0, i32 0)) #7
  %246 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs208 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %246, i32 0, i32 1
  %free_object209 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs208, i32 0, i32 2
  %247 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object209, align 8, !tbaa !71
  %248 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %249 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %250 = bitcast %struct.gdev_vector_image_enum_s* %249 to i8*
  call void %247(%struct.gs_memory_s* %248, i8* %250, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i32 0, i32 0)) #7
  %251 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %252 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %253 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %254 = load i32, i32* %format.addr, align 4, !tbaa !95
  %255 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %256 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %257 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %258 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %259 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call210 = call i32 @gx_default_begin_image(%struct.gx_device_s* %251, %struct.gs_imager_state_s* %252, %struct.gs_image1_s* %253, i32 %254, %struct.gs_int_rect_s* %255, %struct.gx_device_color_s* %256, %struct.gx_clip_path_s* %257, %struct.gs_memory_s* %258, %struct.gx_image_enum_common_s** %259) #7
  store i32 %call210, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.211

cleanup.211:                                      ; preds = %fail, %cleanup.cont.203, %cleanup.198, %cleanup.54, %if.then.3, %cleanup
  %260 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #2
  %261 = bitcast %struct.stream_s** %bs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #2
  %262 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #2
  %263 = bitcast i32* %binary to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #2
  %264 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #2
  %265 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #2
  %266 = bitcast i8** %base_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %266) #2
  %267 = bitcast %struct.gs_color_space_s** %pbcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %267) #2
  %268 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #2
  %269 = bitcast %struct.gdev_vector_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #2
  %270 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #2
  %271 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %271) #2
  %272 = load i32, i32* %retval
  ret i32 %272
}

declare i32 @psdf_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #0

declare i32 @psdf_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #0

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @gdev_vector_init(%struct.gx_device_vector_s*) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal void @image_cache_reset(%struct.gx_device_pswrite_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pswrite_s*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_pswrite_s* %pdev, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !60
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !60
  %cmp = icmp slt i32 %1, 197
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !tbaa !60
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %image_cache = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %3, i32 0, i32 77
  %arrayidx = getelementptr inbounds [197 x %struct.psw_image_params_s], [197 x %struct.psw_image_params_s]* %image_cache, i32 0, i64 %idxprom
  %id = getelementptr inbounds %struct.psw_image_params_s, %struct.psw_image_params_s* %arrayidx, i32 0, i32 0
  store i64 0, i64* %id, align 8, !tbaa !141
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !tbaa !60
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4, !tbaa !60
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %cache_toggle = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %5, i32 0, i32 78
  store i32 0, i32* %cache_toggle, align 4, !tbaa !143
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_open_printer(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_vector_s* %4 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %5, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %6, i32 0, i32 47
  %7 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !72
  %cmp = icmp ne %struct.stream_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.4

if.end:                                           ; preds = %entry
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call = call i32 @gdev_vector_open_file_options(%struct.gx_device_vector_s* %9, i32 512, i32 12) #7
  store i32 %call, i32* %code, align 4, !tbaa !60
  %10 = load i32, i32* %code, align 4, !tbaa !60
  %cmp1 = icmp slt i32 %10, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.4 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %13 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %first_page = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %13, i32 0, i32 75
  store i32 1, i32* %first_page, align 4, !tbaa !67
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.4

cleanup.4:                                        ; preds = %cleanup.cont, %cleanup, %if.then
  %14 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @psw_beginpage(%struct.gx_device_vector_s* %vdev) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %code = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %2, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_vector_s* %4 to %struct.gx_device_s*
  %call = call i32 @psw_open_printer(%struct.gx_device_s* %5) #7
  store i32 %call, i32* %code, align 4, !tbaa !60
  %6 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %7, i32 0, i32 47
  %8 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !72
  store %struct.stream_s* %8, %struct.stream_s** %s, align 8, !tbaa !1
  %9 = load i32, i32* %code, align 4, !tbaa !60
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %first_page = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %11, i32 0, i32 75
  %12 = load i32, i32* %first_page, align 4, !tbaa !67
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  %13 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %call2 = call i32 @psw_begin_file(%struct.gx_device_pswrite_s* %13, %struct.gs_rect_s* null) #7
  store i32 %call2, i32* %code, align 4, !tbaa !60
  %14 = load i32, i32* %code, align 4, !tbaa !60
  %cmp3 = icmp slt i32 %14, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  %15 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %17 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_vector_s* %17 to %struct.gx_device_s*
  %19 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %pswrite_common = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %19, i32 0, i32 74
  %20 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %20, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %21 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !69
  %call7 = call i32 @gx_outputfile_is_separate_pages(i8* %arraydecay, %struct.gs_memory_s* %22) #7
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %23 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %23, i32 0, i32 26
  %24 = load i64, i64* %PageCount, align 8, !tbaa !144
  %add = add nsw i64 %24, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1, %cond.true ], [ %add, %cond.false ]
  %call9 = call i32 @psw_write_page_header(%struct.stream_s* %16, %struct.gx_device_s* %18, %struct.gx_device_pswrite_common_s* %pswrite_common, i32 1, i64 %cond, i32 197) #7
  store i32 %call9, i32* %code, align 4, !tbaa !60
  %25 = load i32, i32* %code, align 4, !tbaa !60
  %cmp10 = icmp slt i32 %25, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %cond.end
  %26 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %cond.end
  %27 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %page_fill = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %27, i32 0, i32 79
  %color = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill, i32 0, i32 1
  store i64 -1, i64* %color, align 8, !tbaa !75
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.4, %if.then
  %28 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @psdf_setlinewidth(%struct.gx_device_vector_s*, double) #0

declare i32 @psdf_setlinecap(%struct.gx_device_vector_s*, i32) #0

declare i32 @psdf_setlinejoin(%struct.gx_device_vector_s*, i32) #0

declare i32 @psdf_setmiterlimit(%struct.gx_device_vector_s*, double) #0

declare i32 @psdf_setdash(%struct.gx_device_vector_s*, float*, i32, double) #0

declare i32 @psdf_setflat(%struct.gx_device_vector_s*, double) #0

declare i32 @psdf_setlogop(%struct.gx_device_vector_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_can_handle_hl_color(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis1, %struct.gx_device_color_s* %pdc) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis1.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis1, %struct.gs_imager_state_s** %pis1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_setcolors(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis1, %struct.gx_device_color_s* %pdc) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis1.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.stream_s*, align 8
  %color = alloca i64, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis1, %struct.gs_imager_state_s** %pis1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdc, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store %struct.gs_imager_state_s* null, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !85
  %cmp = icmp eq %struct.gx_device_color_type_s* %2, @gx_dc_type_data_pure
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %saved_fill_color = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %5, i32 0, i32 56
  %call = call i32 @gx_hld_save_color(%struct.gs_imager_state_s* %3, %struct.gx_device_color_s* %4, %struct.gx_hl_saved_color_s* %saved_fill_color) #7
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %saved_stroke_color = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %8, i32 0, i32 57
  %call1 = call i32 @gx_hld_save_color(%struct.gs_imager_state_s* %6, %struct.gx_device_color_s* %7, %struct.gx_hl_saved_color_s* %saved_stroke_color) #7
  %9 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call2 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %10) #7
  store %struct.stream_s* %call2, %struct.stream_s** %s, align 8, !tbaa !1
  %11 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %12, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %13 = load i64, i64* %pure, align 8, !tbaa !73
  store i64 %13, i64* %color, align 8, !tbaa !73
  %14 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i64, i64* %color, align 8, !tbaa !73
  %shr = lshr i64 %15, 16
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %r, align 4, !tbaa !60
  %16 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load i64, i64* %color, align 8, !tbaa !73
  %shr3 = lshr i64 %17, 8
  %and = and i64 %shr3, 255
  %conv4 = trunc i64 %and to i32
  store i32 %conv4, i32* %g, align 4, !tbaa !60
  %18 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load i64, i64* %color, align 8, !tbaa !73
  %and5 = and i64 %19, 255
  %conv6 = trunc i64 %and5 to i32
  store i32 %conv6, i32* %b, align 4, !tbaa !60
  %20 = load i32, i32* %r, align 4, !tbaa !60
  %21 = load i32, i32* %g, align 4, !tbaa !60
  %cmp7 = icmp eq i32 %20, %21
  br i1 %cmp7, label %land.lhs.true, label %if.else.18

land.lhs.true:                                    ; preds = %if.end
  %22 = load i32, i32* %g, align 4, !tbaa !60
  %23 = load i32, i32* %b, align 4, !tbaa !60
  %cmp9 = icmp eq i32 %22, %23
  br i1 %cmp9, label %if.then.11, label %if.else.18

if.then.11:                                       ; preds = %land.lhs.true
  %24 = load i32, i32* %r, align 4, !tbaa !60
  %cmp12 = icmp eq i32 %24, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.11
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call15 = call i32 @stream_puts(%struct.stream_s* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0)) #7
  br label %if.end.17

if.else:                                          ; preds = %if.then.11
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %27 = load i32, i32* %r, align 4, !tbaa !60
  %call16 = call i8* @pprintd1(%struct.stream_s* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %27) #7
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.14
  br label %if.end.38

if.else.18:                                       ; preds = %land.lhs.true, %if.end
  %28 = load i32, i32* %r, align 4, !tbaa !60
  %29 = load i32, i32* %g, align 4, !tbaa !60
  %cmp19 = icmp eq i32 %28, %29
  br i1 %cmp19, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else.18
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %31 = load i32, i32* %b, align 4, !tbaa !60
  %32 = load i32, i32* %r, align 4, !tbaa !60
  %call22 = call i8* @pprintd2(%struct.stream_s* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i32 %31, i32 %32) #7
  br label %if.end.37

if.else.23:                                       ; preds = %if.else.18
  %33 = load i32, i32* %g, align 4, !tbaa !60
  %34 = load i32, i32* %b, align 4, !tbaa !60
  %cmp24 = icmp eq i32 %33, %34
  br i1 %cmp24, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else.23
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %36 = load i32, i32* %r, align 4, !tbaa !60
  %37 = load i32, i32* %g, align 4, !tbaa !60
  %call27 = call i8* @pprintd2(%struct.stream_s* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 %36, i32 %37) #7
  br label %if.end.36

if.else.28:                                       ; preds = %if.else.23
  %38 = load i32, i32* %r, align 4, !tbaa !60
  %39 = load i32, i32* %b, align 4, !tbaa !60
  %cmp29 = icmp eq i32 %38, %39
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.else.28
  %40 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %41 = load i32, i32* %g, align 4, !tbaa !60
  %42 = load i32, i32* %b, align 4, !tbaa !60
  %call32 = call i8* @pprintd2(%struct.stream_s* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 %41, i32 %42) #7
  br label %if.end.35

if.else.33:                                       ; preds = %if.else.28
  %43 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %44 = load i32, i32* %r, align 4, !tbaa !60
  %45 = load i32, i32* %g, align 4, !tbaa !60
  %46 = load i32, i32* %b, align 4, !tbaa !60
  %call34 = call i8* @pprintd3(%struct.stream_s* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i32 %44, i32 %45, i32 %46) #7
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.26
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.21
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.17
  %47 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %47, i32 0, i32 9
  %48 = load i16, i16* %end_status, align 2, !tbaa !110
  %conv39 = sext i16 %48 to i32
  %cmp40 = icmp eq i32 %conv39, -2
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.38
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end.38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then.42
  %49 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.48 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

cleanup.48:                                       ; preds = %cleanup.cont, %cleanup, %if.then
  %54 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %55 = load i32, i32* %retval
  ret i32 %55
}

declare i32 @gdev_vector_dopath(%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_dorect(%struct.gx_device_vector_s* %vdev, i32 %x0, i32 %y0, i32 %x1, i32 %y1, i32 %type) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !60
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !60
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !60
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !60
  store i32 %type, i32* %type.addr, align 4, !tbaa !95
  %0 = load i32, i32* %type.addr, align 4, !tbaa !95
  %and = and i32 %0, -9
  %cmp = icmp ne i32 %and, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = load i32, i32* %x0.addr, align 4, !tbaa !60
  %3 = load i32, i32* %y0.addr, align 4, !tbaa !60
  %4 = load i32, i32* %x1.addr, align 4, !tbaa !60
  %5 = load i32, i32* %y1.addr, align 4, !tbaa !60
  %6 = load i32, i32* %type.addr, align 4, !tbaa !95
  %call = call i32 @psdf_dorect(%struct.gx_device_vector_s* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #7
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call1 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %7) #7
  %8 = load i32, i32* %x0.addr, align 4, !tbaa !60
  %conv = sitofp i32 %8 to double
  %mul = fmul double %conv, 3.906250e-03
  %9 = load i32, i32* %y0.addr, align 4, !tbaa !60
  %conv2 = sitofp i32 %9 to double
  %mul3 = fmul double %conv2, 3.906250e-03
  %10 = load i32, i32* %x1.addr, align 4, !tbaa !60
  %11 = load i32, i32* %x0.addr, align 4, !tbaa !60
  %sub = sub nsw i32 %10, %11
  %conv4 = sitofp i32 %sub to double
  %mul5 = fmul double %conv4, 3.906250e-03
  %12 = load i32, i32* %y1.addr, align 4, !tbaa !60
  %13 = load i32, i32* %y0.addr, align 4, !tbaa !60
  %sub6 = sub nsw i32 %12, %13
  %conv7 = sitofp i32 %sub6 to double
  %mul8 = fmul double %conv7, 3.906250e-03
  %call9 = call i8* @pprintg4(%struct.stream_s* %call1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), double %mul, double %mul3, double %mul5, double %mul8) #7
  %14 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call10 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %14) #7
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %call10, i32 0, i32 9
  %15 = load i16, i16* %end_status, align 2, !tbaa !110
  %conv11 = sext i16 %15 to i32
  %cmp12 = icmp eq i32 %conv11, -2
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i32 -12, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_beginpath(%struct.gx_device_vector_s* %vdev, i32 %type) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %type.addr = alloca i32, align 4
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !95
  %0 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %2, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %3 = load i32, i32* %type.addr, align 4, !tbaa !95
  %and = and i32 %3, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %call = call i32 @psw_check_erasepage(%struct.gx_device_pswrite_s* %5) #7
  store i32 %call, i32* %code_, align 4, !tbaa !60
  %6 = load i32, i32* %code_, align 4, !tbaa !60
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %do.body
  %7 = load i32, i32* %code_, align 4, !tbaa !60
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.1
  %8 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.2

if.end.2:                                         ; preds = %do.end, %entry
  %9 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %9, i32 0, i32 80
  %num_points = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state, i32 0, i32 0
  store i32 0, i32* %num_points, align 4, !tbaa !145
  %10 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state3 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %10, i32 0, i32 80
  %move = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state3, i32 0, i32 1
  store i32 0, i32* %move, align 4, !tbaa !146
  %11 = load i32, i32* %type.addr, align 4, !tbaa !95
  %and4 = and i32 %11, 4
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %if.end.2
  %12 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call7 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %13) #7
  store %struct.stream_s* %call7, %struct.stream_s** %s, align 8, !tbaa !1
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call8 = call i32 @stream_puts(%struct.stream_s* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0)) #7
  %15 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  call void @gdev_vector_reset(%struct.gx_device_vector_s* %15) #7
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 9
  %17 = load i16, i16* %end_status, align 2, !tbaa !110
  %conv = sext i16 %17 to i32
  %cmp9 = icmp eq i32 %conv, -2
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.6
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.13

if.end.12:                                        ; preds = %if.then.6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.13

cleanup.13:                                       ; preds = %if.end.12, %if.then.11
  %18 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %cleanup.dest.14 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.14, label %cleanup.17 [
    i32 0, label %cleanup.cont.15
  ]

cleanup.cont.15:                                  ; preds = %cleanup.13
  br label %if.end.16

if.end.16:                                        ; preds = %cleanup.cont.15, %if.end.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17

cleanup.17:                                       ; preds = %if.end.16, %cleanup.13, %cleanup
  %19 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_moveto(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x, double %y, i32 %type) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !103
  store double %y0, double* %y0.addr, align 8, !tbaa !103
  store double %x, double* %x.addr, align 8, !tbaa !103
  store double %y, double* %y.addr, align 8, !tbaa !103
  store i32 %type, i32* %type.addr, align 4, !tbaa !95
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_vector_s* %3 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %4, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %5 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %5, i32 0, i32 80
  %num_points = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state, i32 0, i32 0
  %6 = load i32, i32* %num_points, align 4, !tbaa !145
  %7 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state1 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %7, i32 0, i32 80
  %move = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state1, i32 0, i32 1
  %8 = load i32, i32* %move, align 4, !tbaa !146
  %cmp = icmp sgt i32 %6, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %10 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state2 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %10, i32 0, i32 80
  %move3 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state2, i32 0, i32 1
  %11 = load i32, i32* %move3, align 4, !tbaa !146
  %tobool = icmp ne i32 %11, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0)
  %call4 = call i32 @stream_puts(%struct.stream_s* %9, i8* %cond) #7
  br label %if.end.10

if.else:                                          ; preds = %entry
  %12 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state5 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %12, i32 0, i32 80
  %move6 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state5, i32 0, i32 1
  %13 = load i32, i32* %move6, align 4, !tbaa !146
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call9 = call i32 @stream_puts(%struct.stream_s* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0)) #7
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %16 = load double, double* %x.addr, align 8, !tbaa !103
  %17 = load double, double* %y.addr, align 8, !tbaa !103
  call void @print_coord2(%struct.stream_s* %15, double %16, double %17, i8* null) #7
  %18 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state11 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %18, i32 0, i32 80
  %num_points12 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state11, i32 0, i32 0
  store i32 1, i32* %num_points12, align 4, !tbaa !145
  %19 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state13 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %19, i32 0, i32 80
  %move14 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state13, i32 0, i32 1
  store i32 1, i32* %move14, align 4, !tbaa !146
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 9
  %21 = load i16, i16* %end_status, align 2, !tbaa !110
  %conv = sext i16 %21 to i32
  %cmp15 = icmp eq i32 %conv, -2
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.10
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17
  %22 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_lineto(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x, double %y, i32 %type) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %s = alloca %struct.stream_s*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !103
  store double %y0, double* %y0.addr, align 8, !tbaa !103
  store double %x, double* %x.addr, align 8, !tbaa !103
  store double %y, double* %y.addr, align 8, !tbaa !103
  store i32 %type, i32* %type.addr, align 4, !tbaa !95
  %0 = bitcast double* %dx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load double, double* %x.addr, align 8, !tbaa !103
  %2 = load double, double* %x0.addr, align 8, !tbaa !103
  %sub = fsub double %1, %2
  store double %sub, double* %dx, align 8, !tbaa !103
  %3 = bitcast double* %dy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load double, double* %y.addr, align 8, !tbaa !103
  %5 = load double, double* %y0.addr, align 8, !tbaa !103
  %sub1 = fsub double %4, %5
  store double %sub1, double* %dy, align 8, !tbaa !103
  %6 = load i32, i32* %type.addr, align 4, !tbaa !95
  %and = and i32 %6, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load double, double* %dx, align 8, !tbaa !103
  %cmp = fcmp une double %7, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %8 = load double, double* %dy, align 8, !tbaa !103
  %cmp3 = fcmp une double %8, 0.000000e+00
  br i1 %cmp3, label %if.then, label %if.end.66

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %9 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %10) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_vector_s* %12 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %13, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %14 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %14, i32 0, i32 80
  %num_points = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state, i32 0, i32 0
  %15 = load i32, i32* %num_points, align 4, !tbaa !145
  %cmp4 = icmp sgt i32 %15, 240
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %16 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %17 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state6 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %17, i32 0, i32 80
  %move = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state6, i32 0, i32 1
  %18 = load i32, i32* %move, align 4, !tbaa !146
  %tobool7 = icmp ne i32 %18, 0
  %cond = select i1 %tobool7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0)
  %call8 = call i32 @stream_puts(%struct.stream_s* %16, i8* %cond) #7
  %19 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state9 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %19, i32 0, i32 80
  %num_points10 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state9, i32 0, i32 0
  store i32 0, i32* %num_points10, align 4, !tbaa !145
  %20 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state11 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %20, i32 0, i32 80
  %move12 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state11, i32 0, i32 1
  store i32 0, i32* %move12, align 4, !tbaa !146
  br label %if.end.22

if.else:                                          ; preds = %if.then
  %21 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state13 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %21, i32 0, i32 80
  %num_points14 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state13, i32 0, i32 0
  %22 = load i32, i32* %num_points14, align 4, !tbaa !145
  %cmp15 = icmp sgt i32 %22, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %23 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state16 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %23, i32 0, i32 80
  %num_points17 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state16, i32 0, i32 0
  %24 = load i32, i32* %num_points17, align 4, !tbaa !145
  %and18 = and i32 %24, 7
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.end, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call21 = call i32 @spputc(%struct.stream_s* %25, i8 zeroext 10) #7
  br label %if.end

if.end:                                           ; preds = %if.then.20, %land.lhs.true, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then.5
  %26 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state23 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %26, i32 0, i32 80
  %num_points24 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state23, i32 0, i32 0
  %27 = load i32, i32* %num_points24, align 4, !tbaa !145
  %28 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state25 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %28, i32 0, i32 80
  %move26 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state25, i32 0, i32 1
  %29 = load i32, i32* %move26, align 4, !tbaa !146
  %sub27 = sub nsw i32 %27, %29
  %cmp28 = icmp sge i32 %sub27, 2
  br i1 %cmp28, label %land.lhs.true.29, label %if.else.43

land.lhs.true.29:                                 ; preds = %if.end.22
  %30 = load double, double* %dx, align 8, !tbaa !103
  %31 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state30 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %31, i32 0, i32 80
  %dprev = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state30, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %dprev, i32 0, i64 1
  %x31 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  %32 = load double, double* %x31, align 8, !tbaa !147
  %sub32 = fsub double -0.000000e+00, %32
  %cmp33 = fcmp oeq double %30, %sub32
  br i1 %cmp33, label %land.lhs.true.34, label %if.else.43

land.lhs.true.34:                                 ; preds = %land.lhs.true.29
  %33 = load double, double* %dy, align 8, !tbaa !103
  %34 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state35 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %34, i32 0, i32 80
  %dprev36 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state35, i32 0, i32 2
  %arrayidx37 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %dprev36, i32 0, i64 1
  %y38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx37, i32 0, i32 1
  %35 = load double, double* %y38, align 8, !tbaa !148
  %sub39 = fsub double -0.000000e+00, %35
  %cmp40 = fcmp oeq double %33, %sub39
  br i1 %cmp40, label %if.then.41, label %if.else.43

if.then.41:                                       ; preds = %land.lhs.true.34
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call42 = call i32 @stream_puts(%struct.stream_s* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0)) #7
  br label %if.end.44

if.else.43:                                       ; preds = %land.lhs.true.34, %land.lhs.true.29, %if.end.22
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %38 = load double, double* %dx, align 8, !tbaa !103
  %39 = load double, double* %dy, align 8, !tbaa !103
  call void @print_coord2(%struct.stream_s* %37, double %38, double %39, i8* null) #7
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.43, %if.then.41
  %40 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state45 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %40, i32 0, i32 80
  %num_points46 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state45, i32 0, i32 0
  %41 = load i32, i32* %num_points46, align 4, !tbaa !145
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %num_points46, align 4, !tbaa !145
  %42 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state47 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %42, i32 0, i32 80
  %dprev48 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state47, i32 0, i32 2
  %arrayidx49 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %dprev48, i32 0, i64 1
  %43 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state50 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %43, i32 0, i32 80
  %dprev51 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state50, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %dprev51, i32 0, i64 0
  %44 = bitcast %struct.gs_point_s* %arrayidx49 to i8*
  %45 = bitcast %struct.gs_point_s* %arrayidx52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 16, i32 8, i1 false), !tbaa.struct !149
  %46 = load double, double* %dx, align 8, !tbaa !103
  %47 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state53 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %47, i32 0, i32 80
  %dprev54 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state53, i32 0, i32 2
  %arrayidx55 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %dprev54, i32 0, i64 0
  %x56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx55, i32 0, i32 0
  store double %46, double* %x56, align 8, !tbaa !147
  %48 = load double, double* %dy, align 8, !tbaa !103
  %49 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state57 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %49, i32 0, i32 80
  %dprev58 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state57, i32 0, i32 2
  %arrayidx59 = getelementptr inbounds [2 x %struct.gs_point_s], [2 x %struct.gs_point_s]* %dprev58, i32 0, i64 0
  %y60 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx59, i32 0, i32 1
  store double %48, double* %y60, align 8, !tbaa !148
  %50 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %50, i32 0, i32 9
  %51 = load i16, i16* %end_status, align 2, !tbaa !110
  %conv = sext i16 %51 to i32
  %cmp61 = icmp eq i32 %conv, -2
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.44
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.64:                                        ; preds = %if.end.44
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.64, %if.then.63
  %52 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.67 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.66

if.end.66:                                        ; preds = %cleanup.cont, %lor.lhs.false.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

cleanup.67:                                       ; preds = %if.end.66, %cleanup
  %54 = bitcast double* %dy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %55 = bitcast double* %dx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_curveto(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x1, double %y1, double %x2, double %y2, double %x3, double %y3, i32 %type) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %dx1 = alloca double, align 8
  %dy1 = alloca double, align 8
  %dx2 = alloca double, align 8
  %dy2 = alloca double, align 8
  %dx3 = alloca double, align 8
  %dy3 = alloca double, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !103
  store double %y0, double* %y0.addr, align 8, !tbaa !103
  store double %x1, double* %x1.addr, align 8, !tbaa !103
  store double %y1, double* %y1.addr, align 8, !tbaa !103
  store double %x2, double* %x2.addr, align 8, !tbaa !103
  store double %y2, double* %y2.addr, align 8, !tbaa !103
  store double %x3, double* %x3.addr, align 8, !tbaa !103
  store double %y3, double* %y3.addr, align 8, !tbaa !103
  store i32 %type, i32* %type.addr, align 4, !tbaa !95
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %1) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast double* %dx1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load double, double* %x1.addr, align 8, !tbaa !103
  %4 = load double, double* %x0.addr, align 8, !tbaa !103
  %sub = fsub double %3, %4
  store double %sub, double* %dx1, align 8, !tbaa !103
  %5 = bitcast double* %dy1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load double, double* %y1.addr, align 8, !tbaa !103
  %7 = load double, double* %y0.addr, align 8, !tbaa !103
  %sub1 = fsub double %6, %7
  store double %sub1, double* %dy1, align 8, !tbaa !103
  %8 = bitcast double* %dx2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load double, double* %x2.addr, align 8, !tbaa !103
  %10 = load double, double* %x0.addr, align 8, !tbaa !103
  %sub2 = fsub double %9, %10
  store double %sub2, double* %dx2, align 8, !tbaa !103
  %11 = bitcast double* %dy2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load double, double* %y2.addr, align 8, !tbaa !103
  %13 = load double, double* %y0.addr, align 8, !tbaa !103
  %sub3 = fsub double %12, %13
  store double %sub3, double* %dy2, align 8, !tbaa !103
  %14 = bitcast double* %dx3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load double, double* %x3.addr, align 8, !tbaa !103
  %16 = load double, double* %x0.addr, align 8, !tbaa !103
  %sub4 = fsub double %15, %16
  store double %sub4, double* %dx3, align 8, !tbaa !103
  %17 = bitcast double* %dy3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load double, double* %y3.addr, align 8, !tbaa !103
  %19 = load double, double* %y0.addr, align 8, !tbaa !103
  %sub5 = fsub double %18, %19
  store double %sub5, double* %dy3, align 8, !tbaa !103
  %20 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_vector_s* %21 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %22, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %23 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %23, i32 0, i32 80
  %num_points = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state, i32 0, i32 0
  %24 = load i32, i32* %num_points, align 4, !tbaa !145
  %cmp = icmp sgt i32 %24, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %26 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state6 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %26, i32 0, i32 80
  %move = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state6, i32 0, i32 1
  %27 = load i32, i32* %move, align 4, !tbaa !146
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %28 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state7 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %28, i32 0, i32 80
  %num_points8 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state7, i32 0, i32 0
  %29 = load i32, i32* %num_points8, align 4, !tbaa !145
  %cmp9 = icmp eq i32 %29, 1
  %cond = select i1 %cmp9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i8* [ %cond, %cond.true ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), %cond.false ]
  %call11 = call i32 @stream_puts(%struct.stream_s* %25, i8* %cond10) #7
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %30 = load double, double* %dx1, align 8, !tbaa !103
  %cmp12 = fcmp oeq double %30, 0.000000e+00
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %31 = load double, double* %dy1, align 8, !tbaa !103
  %cmp13 = fcmp oeq double %31, 0.000000e+00
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true
  %32 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %33 = load double, double* %dx2, align 8, !tbaa !103
  %34 = load double, double* %dy2, align 8, !tbaa !103
  call void @print_coord2(%struct.stream_s* %32, double %33, double %34, i8* null) #7
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %36 = load double, double* %dx3, align 8, !tbaa !103
  %37 = load double, double* %dy3, align 8, !tbaa !103
  call void @print_coord2(%struct.stream_s* %35, double %36, double %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)) #7
  br label %if.end.21

if.else:                                          ; preds = %land.lhs.true, %if.end
  %38 = load double, double* %x3.addr, align 8, !tbaa !103
  %39 = load double, double* %x2.addr, align 8, !tbaa !103
  %cmp15 = fcmp oeq double %38, %39
  br i1 %cmp15, label %land.lhs.true.16, label %if.else.19

land.lhs.true.16:                                 ; preds = %if.else
  %40 = load double, double* %y3.addr, align 8, !tbaa !103
  %41 = load double, double* %y2.addr, align 8, !tbaa !103
  %cmp17 = fcmp oeq double %40, %41
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %land.lhs.true.16
  %42 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %43 = load double, double* %dx1, align 8, !tbaa !103
  %44 = load double, double* %dy1, align 8, !tbaa !103
  call void @print_coord2(%struct.stream_s* %42, double %43, double %44, i8* null) #7
  %45 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %46 = load double, double* %dx2, align 8, !tbaa !103
  %47 = load double, double* %dy2, align 8, !tbaa !103
  call void @print_coord2(%struct.stream_s* %45, double %46, double %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0)) #7
  br label %if.end.20

if.else.19:                                       ; preds = %land.lhs.true.16, %if.else
  %48 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %49 = load double, double* %dx1, align 8, !tbaa !103
  %50 = load double, double* %dy1, align 8, !tbaa !103
  call void @print_coord2(%struct.stream_s* %48, double %49, double %50, i8* null) #7
  %51 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %52 = load double, double* %dx2, align 8, !tbaa !103
  %53 = load double, double* %dy2, align 8, !tbaa !103
  call void @print_coord2(%struct.stream_s* %51, double %52, double %53, i8* null) #7
  %54 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %55 = load double, double* %dx3, align 8, !tbaa !103
  %56 = load double, double* %dy3, align 8, !tbaa !103
  call void @print_coord2(%struct.stream_s* %54, double %55, double %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0)) #7
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.18
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.14
  %57 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state22 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %57, i32 0, i32 80
  %num_points23 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state22, i32 0, i32 0
  store i32 0, i32* %num_points23, align 4, !tbaa !145
  %58 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state24 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %58, i32 0, i32 80
  %move25 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state24, i32 0, i32 1
  store i32 0, i32* %move25, align 4, !tbaa !146
  %59 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %59, i32 0, i32 9
  %60 = load i16, i16* %end_status, align 2, !tbaa !110
  %conv = sext i16 %60 to i32
  %cmp26 = icmp eq i32 %conv, -2
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.21
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.28
  %61 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = bitcast double* %dy3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast double* %dx3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = bitcast double* %dy2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = bitcast double* %dx2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast double* %dy1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast double* %dx1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #2
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_closepath(%struct.gx_device_vector_s* %vdev, double %x0, double %y0, double %x_start, double %y_start, i32 %type) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x_start.addr = alloca double, align 8
  %y_start.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !103
  store double %y0, double* %y0.addr, align 8, !tbaa !103
  store double %x_start, double* %x_start.addr, align 8, !tbaa !103
  store double %y_start, double* %y_start.addr, align 8, !tbaa !103
  store i32 %type, i32* %type.addr, align 4, !tbaa !95
  %0 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_vector_s* %1 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %2, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %3) #7
  %4 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %4, i32 0, i32 80
  %num_points = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state, i32 0, i32 0
  %5 = load i32, i32* %num_points, align 4, !tbaa !145
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state1 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %6, i32 0, i32 80
  %move = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state1, i32 0, i32 1
  %7 = load i32, i32* %move, align 4, !tbaa !146
  %tobool = icmp ne i32 %7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %cond = select i1 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0)
  %call2 = call i32 @stream_puts(%struct.stream_s* %call, i8* %cond) #7
  %9 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state3 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %9, i32 0, i32 80
  %num_points4 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state3, i32 0, i32 0
  store i32 0, i32* %num_points4, align 4, !tbaa !145
  %10 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state5 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %10, i32 0, i32 80
  %move6 = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state5, i32 0, i32 1
  store i32 0, i32* %move6, align 4, !tbaa !146
  %11 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call7 = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %11) #7
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %call7, i32 0, i32 9
  %12 = load i16, i16* %end_status, align 2, !tbaa !110
  %conv = sext i16 %12 to i32
  %cmp8 = icmp eq i32 %conv, -2
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_endpath(%struct.gx_device_vector_s* %vdev, i32 %type) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %type.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %star = alloca i8*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !95
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !72
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast i8** %star to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i32, i32* %type.addr, align 4, !tbaa !95
  %and = and i32 %4, 8
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.61, i32 0, i32 0)
  store i8* %cond, i8** %star, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_vector_s* %6 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %7, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %8 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %8, i32 0, i32 80
  %num_points = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state, i32 0, i32 0
  %9 = load i32, i32* %num_points, align 4, !tbaa !145
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %path_state1 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %10, i32 0, i32 80
  %move = getelementptr inbounds %struct.psw_path_state_s, %struct.psw_path_state_s* %path_state1, i32 0, i32 1
  %11 = load i32, i32* %move, align 4, !tbaa !146
  %tobool2 = icmp ne i32 %11, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call = call i32 @stream_puts(%struct.stream_s* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0)) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load i32, i32* %type.addr, align 4, !tbaa !95
  %and3 = and i32 %13, 1
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.end
  %14 = load i32, i32* %type.addr, align 4, !tbaa !95
  %and6 = and i32 %14, 6
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.5
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %16 = load i8*, i8** %star, align 8, !tbaa !1
  %call9 = call i8* @pprints1(%struct.stream_s* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* %16) #7
  br label %if.end.11

if.else:                                          ; preds = %if.then.5
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %18 = load i8*, i8** %star, align 8, !tbaa !1
  %call10 = call i8* @pprints1(%struct.stream_s* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* %18) #7
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %19 = load i32, i32* %type.addr, align 4, !tbaa !95
  %and13 = and i32 %19, 2
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %if.end.12
  %20 = load i32, i32* %type.addr, align 4, !tbaa !95
  %and16 = and i32 %20, 4
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.then.15
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call19 = call i32 @stream_puts(%struct.stream_s* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0)) #7
  br label %if.end.22

if.else.20:                                       ; preds = %if.then.15
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call21 = call i32 @stream_puts(%struct.stream_s* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0)) #7
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.12
  %23 = load i32, i32* %type.addr, align 4, !tbaa !95
  %and24 = and i32 %23, 4
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.23
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %25 = load i8*, i8** %star, align 8, !tbaa !1
  %call27 = call i8* @pprints1(%struct.stream_s* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* %25) #7
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.23
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 9
  %27 = load i16, i16* %end_status, align 2, !tbaa !110
  %conv = sext i16 %27 to i32
  %cmp29 = icmp eq i32 %conv, -2
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.31
  %28 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast i8** %star to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_begin_file(%struct.gx_device_pswrite_s* %pdev, %struct.gs_rect_s* %pbbox) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pswrite_s*, align 8
  %pbbox.addr = alloca %struct.gs_rect_s*, align 8
  %code = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %p1 = alloca i8**, align 8
  %p2 = alloca i8**, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pswrite_s* %pdev, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbbox, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %2, i32 0, i32 46
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !150
  store %struct._IO_FILE* %3, %struct._IO_FILE** %f, align 8, !tbaa !1
  %4 = bitcast i8*** %p1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i8*** %p2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %pswrite_common = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %6, i32 0, i32 74
  %LanguageLevel = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %pswrite_common, i32 0, i32 0
  %7 = load float, float* %LanguageLevel, align 4, !tbaa !96
  %conv = fpext float %7 to double
  %cmp = fcmp olt double %conv, 1.500000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @psw_1_x_procset, i32 0, i32 0), i8*** %p1, align 8, !tbaa !1
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @psw_1_procset, i32 0, i32 0), i8*** %p2, align 8, !tbaa !1
  br label %if.end.9

if.else:                                          ; preds = %entry
  %8 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %pswrite_common2 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %8, i32 0, i32 74
  %LanguageLevel3 = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %pswrite_common2, i32 0, i32 0
  %9 = load float, float* %LanguageLevel3, align 4, !tbaa !96
  %conv4 = fpext float %9 to double
  %cmp5 = fcmp ogt double %conv4, 1.500000e+00
  br i1 %cmp5, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @psw_1_5_procset, i32 0, i32 0), i8*** %p1, align 8, !tbaa !1
  store i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @psw_2_procset, i32 0, i32 0), i8*** %p2, align 8, !tbaa !1
  br label %if.end

if.else.8:                                        ; preds = %if.else
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @psw_1_x_procset, i32 0, i32 0), i8*** %p1, align 8, !tbaa !1
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @psw_1_5_procset, i32 0, i32 0), i8*** %p2, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %11 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_pswrite_s* %11 to %struct.gx_device_s*
  %13 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %pswrite_common10 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %14, i32 0, i32 74
  %15 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %15, i32 0, i32 73
  %ASCII85EncodePages = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 0
  %16 = load i32, i32* %ASCII85EncodePages, align 4, !tbaa !45
  %call = call i32 @psw_begin_file_header(%struct._IO_FILE* %10, %struct.gx_device_s* %12, %struct.gs_rect_s* %13, %struct.gx_device_pswrite_common_s* %pswrite_common10, i32 %16) #7
  store i32 %call, i32* %code, align 4, !tbaa !60
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call13 = call i32 @psw_print_lines(%struct._IO_FILE* %17, i8** getelementptr inbounds ([24 x i8*], [24 x i8*]* @psw_procset, i32 0, i32 0)) #7
  store i32 %call13, i32* %code, align 4, !tbaa !60
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.28, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %19 = load i8**, i8*** %p1, align 8, !tbaa !1
  %call17 = call i32 @psw_print_lines(%struct._IO_FILE* %18, i8** %19) #7
  store i32 %call17, i32* %code, align 4, !tbaa !60
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.28, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %21 = load i8**, i8*** %p2, align 8, !tbaa !1
  %call21 = call i32 @psw_print_lines(%struct._IO_FILE* %20, i8** %21) #7
  store i32 %call21, i32* %code, align 4, !tbaa !60
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.28, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.20
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call25 = call i32 @psw_end_file_header(%struct._IO_FILE* %22) #7
  store i32 %call25, i32* %code, align 4, !tbaa !60
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false.20, %lor.lhs.false.16, %lor.lhs.false, %if.end.9
  %23 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %lor.lhs.false.24
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call30 = call i32 @fflush(%struct._IO_FILE* %24) #7
  %cmp31 = icmp eq i32 %call30, -1
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.33, %if.then.28
  %25 = bitcast i8*** %p2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast i8*** %p1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i32 @psw_write_page_header(%struct.stream_s*, %struct.gx_device_s*, %struct.gx_device_pswrite_common_s*, i32, i64, i32) #0

declare i32 @gx_outputfile_is_separate_pages(i8*, %struct.gs_memory_s*) #0

declare i32 @psw_begin_file_header(%struct._IO_FILE*, %struct.gx_device_s*, %struct.gs_rect_s*, %struct.gx_device_pswrite_common_s*, i32) #0

declare i32 @psw_print_lines(%struct._IO_FILE*, i8**) #0

declare i32 @psw_end_file_header(%struct._IO_FILE*) #0

declare i32 @fflush(%struct._IO_FILE*) #0

declare i32 @gx_hld_save_color(%struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_hl_saved_color_s*) #0

declare %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s*) #0

declare i32 @stream_puts(%struct.stream_s*, i8*) #0

declare i8* @pprintd1(%struct.stream_s*, i8*, i32) #0

declare i8* @pprintd2(%struct.stream_s*, i8*, i32, i32) #0

declare i8* @pprintd3(%struct.stream_s*, i8*, i32, i32, i32) #0

declare i32 @psdf_dorect(%struct.gx_device_vector_s*, i32, i32, i32, i32, i32) #0

declare i8* @pprintg4(%struct.stream_s*, i8*, double, double, double, double) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_check_erasepage(%struct.gx_device_pswrite_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pswrite_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_pswrite_s* %pdev, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !60
  %1 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %page_fill = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %1, i32 0, i32 79
  %color = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill, i32 0, i32 1
  %2 = load i64, i64* %color, align 8, !tbaa !75
  %cmp = icmp ne i64 %2, -1
  br i1 %cmp, label %if.then, label %if.end.44

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %page_fill1 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %3, i32 0, i32 79
  %rect = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill1, i32 0, i32 0
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %4 = load i32, i32* %x, align 4, !tbaa !76
  %5 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %page_fill2 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %5, i32 0, i32 79
  %rect3 = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill2, i32 0, i32 0
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect3, i32 0, i32 1
  %x4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %6 = load i32, i32* %x4, align 4, !tbaa !78
  %cmp5 = icmp ne i32 %4, %6
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %page_fill6 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %7, i32 0, i32 79
  %rect7 = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill6, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect7, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p8, i32 0, i32 1
  %8 = load i32, i32* %y, align 4, !tbaa !77
  %9 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %page_fill9 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %9, i32 0, i32 79
  %rect10 = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill9, i32 0, i32 0
  %q11 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect10, i32 0, i32 1
  %y12 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q11, i32 0, i32 1
  %10 = load i32, i32* %y12, align 4, !tbaa !79
  %cmp13 = icmp ne i32 %8, %10
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %land.lhs.true
  %11 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_pswrite_s* %11 to %struct.gx_device_s*
  %13 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %page_fill15 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %13, i32 0, i32 79
  %rect16 = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill15, i32 0, i32 0
  %p17 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect16, i32 0, i32 0
  %x18 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p17, i32 0, i32 0
  %14 = load i32, i32* %x18, align 4, !tbaa !76
  %15 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %page_fill19 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %15, i32 0, i32 79
  %rect20 = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill19, i32 0, i32 0
  %p21 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect20, i32 0, i32 0
  %y22 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p21, i32 0, i32 1
  %16 = load i32, i32* %y22, align 4, !tbaa !77
  %17 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %page_fill23 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %17, i32 0, i32 79
  %rect24 = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill23, i32 0, i32 0
  %q25 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect24, i32 0, i32 1
  %x26 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q25, i32 0, i32 0
  %18 = load i32, i32* %x26, align 4, !tbaa !78
  %19 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %page_fill27 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %19, i32 0, i32 79
  %rect28 = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill27, i32 0, i32 0
  %p29 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect28, i32 0, i32 0
  %x30 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p29, i32 0, i32 0
  %20 = load i32, i32* %x30, align 4, !tbaa !76
  %sub = sub nsw i32 %18, %20
  %21 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %page_fill31 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %21, i32 0, i32 79
  %rect32 = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill31, i32 0, i32 0
  %q33 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect32, i32 0, i32 1
  %y34 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q33, i32 0, i32 1
  %22 = load i32, i32* %y34, align 4, !tbaa !79
  %23 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %page_fill35 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %23, i32 0, i32 79
  %rect36 = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill35, i32 0, i32 0
  %p37 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect36, i32 0, i32 0
  %y38 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p37, i32 0, i32 1
  %24 = load i32, i32* %y38, align 4, !tbaa !77
  %sub39 = sub nsw i32 %22, %24
  %25 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %page_fill40 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %25, i32 0, i32 79
  %color41 = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill40, i32 0, i32 1
  %26 = load i64, i64* %color41, align 8, !tbaa !75
  %call = call i32 @gdev_vector_fill_rectangle(%struct.gx_device_s* %12, i32 %14, i32 %16, i32 %sub, i32 %sub39, i64 %26) #7
  store i32 %call, i32* %code, align 4, !tbaa !60
  br label %if.end

if.end:                                           ; preds = %if.then.14, %land.lhs.true, %if.then
  %27 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %page_fill42 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %27, i32 0, i32 79
  %color43 = getelementptr inbounds %struct.pf_, %struct.pf_* %page_fill42, i32 0, i32 1
  store i64 -1, i64* %color43, align 8, !tbaa !75
  br label %if.end.44

if.end.44:                                        ; preds = %if.end, %entry
  %28 = load i32, i32* %code, align 4, !tbaa !60
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  ret i32 %28
}

declare void @gdev_vector_reset(%struct.gx_device_vector_s*) #0

declare i32 @gdev_vector_fill_rectangle(%struct.gx_device_s*, i32, i32, i32, i32, i64) #0

; Function Attrs: nounwind uwtable
define internal void @print_coord2(%struct.stream_s* %s, double %x, double %y, i8* %str) #1 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %str.addr = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !103
  store double %y, double* %y.addr, align 8, !tbaa !103
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load double, double* %x.addr, align 8, !tbaa !103
  %call = call double @round_coord2(double %1) #7
  %2 = load double, double* %y.addr, align 8, !tbaa !103
  %call1 = call double @round_coord2(double %2) #7
  %call2 = call i8* @pprintg2(%struct.stream_s* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), double %call, double %call1) #7
  %3 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call3 = call i32 @stream_puts(%struct.stream_s* %4, i8* %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @pprintg2(%struct.stream_s*, i8*, double, double) #0

; Function Attrs: inlinehint nounwind uwtable
define internal double @round_coord2(double %v) #4 {
entry:
  %v.addr = alloca double, align 8
  store double %v, double* %v.addr, align 8, !tbaa !103
  %0 = load double, double* %v.addr, align 8, !tbaa !103
  %mul = fmul double %0, 1.000000e+02
  %add = fadd double %mul, 5.000000e-01
  %call = call double @floor(double %add) #10
  %div = fdiv double %call, 1.000000e+02
  ret double %div
}

; Function Attrs: nounwind readnone
declare double @floor(double) #5

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i8* @pprints1(%struct.stream_s*, i8*, i8*) #0

declare i32 @gdev_vector_open_file_options(%struct.gx_device_vector_s*, i32, i32) #0

declare i32 @psw_write_page_trailer(%struct._IO_FILE*, i32, i32) #0

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal i32 @psw_close_printer(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %bbox = alloca %struct.gs_rect_s, align 8
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.stream_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %3, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_vector_s* %5 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %6, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %7 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %8, i32 0, i32 46
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !65
  store %struct._IO_FILE* %9, %struct._IO_FILE** %f, align 8, !tbaa !1
  %10 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %10) #2
  %11 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %11, i32 0, i32 64
  %12 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !80
  call void @gx_device_bbox_bbox(%struct.gx_device_bbox_s* %12, %struct.gs_rect_s* %bbox) #7
  %13 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %first_page = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %13, i32 0, i32 75
  %14 = load i32, i32* %first_page, align 4, !tbaa !67
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %15 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %in_page = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %15, i32 0, i32 63
  %16 = load i32, i32* %in_page, align 4, !tbaa !66
  %tobool1 = icmp ne i32 %16, 0
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %call = call i32 @psw_begin_file(%struct.gx_device_pswrite_s* %17, %struct.gs_rect_s* %bbox) #7
  store i32 %call, i32* %code, align 4, !tbaa !60
  %18 = load i32, i32* %code, align 4, !tbaa !60
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %19 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

if.end:                                           ; preds = %if.then
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true, %entry
  %20 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %in_page3 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %20, i32 0, i32 63
  %21 = load i32, i32* %in_page3, align 4, !tbaa !66
  %tobool4 = icmp ne i32 %21, 0
  br i1 %tobool4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.else
  %22 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %23, i32 0, i32 47
  %24 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !72
  store %struct.stream_s* %24, %struct.stream_s** %s, align 8, !tbaa !1
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %26 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !61
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call6 = call i32 %26(%struct.stream_s* %27) #7
  %28 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %file7 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %28, i32 0, i32 46
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %file7, align 8, !tbaa !65
  %call8 = call i32 @psw_write_page_trailer(%struct._IO_FILE* %29, i32 1, i32 1) #7
  store i32 %call8, i32* %code, align 4, !tbaa !60
  %30 = load i32, i32* %code, align 4, !tbaa !60
  %cmp9 = icmp slt i32 %30, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.5
  %31 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.5
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 26
  %33 = load i64, i64* %PageCount, align 8, !tbaa !68
  %inc = add nsw i64 %33, 1
  store i64 %inc, i64* %PageCount, align 8, !tbaa !68
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10
  %34 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.12

if.end.12:                                        ; preds = %cleanup.cont, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %37 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %pswrite_common = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %37, i32 0, i32 74
  %38 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %38, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %39 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !69
  %call14 = call i32 @gx_outputfile_is_separate_pages(i8* %arraydecay, %struct.gs_memory_s* %40) #7
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  %41 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %PageCount16 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %41, i32 0, i32 26
  %42 = load i64, i64* %PageCount16, align 8, !tbaa !144
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1, %cond.true ], [ %42, %cond.false ]
  %conv = trunc i64 %cond to i32
  %call17 = call i32 @psw_end_file(%struct._IO_FILE* %35, %struct.gx_device_s* %36, %struct.gx_device_pswrite_common_s* %pswrite_common, %struct.gs_rect_s* %bbox, i32 %conv) #7
  store i32 %call17, i32* %code, align 4, !tbaa !60
  %43 = load i32, i32* %code, align 4, !tbaa !60
  %cmp18 = icmp slt i32 %43, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %cond.end
  %44 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

if.end.21:                                        ; preds = %cond.end
  %45 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %call22 = call i32 @gdev_vector_close_file(%struct.gx_device_vector_s* %45) #7
  store i32 %call22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

cleanup.23:                                       ; preds = %if.end.21, %if.then.20, %cleanup, %if.then.2
  %46 = bitcast %struct.gs_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %46) #2
  %47 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare void @gx_device_bbox_bbox(%struct.gx_device_bbox_s*, %struct.gs_rect_s*) #0

declare i32 @psw_end_file(%struct._IO_FILE*, %struct.gx_device_s*, %struct.gx_device_pswrite_common_s*, %struct.gs_rect_s*, i32) #0

declare i32 @gdev_vector_close_file(%struct.gx_device_vector_s*) #0

declare i32 @gdev_psdf_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_float(%struct.gs_param_list_s*, i8*, float*) #0

declare i32 @param_read_float(%struct.gs_param_list_s*, i8*, float*) #0

declare i32 @gdev_psdf_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_vector_update_fill_color(%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*) #0

declare i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s*, %struct.gx_clip_path_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_image_write(%struct.gx_device_pswrite_s* %pdev, i8* %imagestr, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height, i32 %depth) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pswrite_s*, align 8
  %imagestr.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %width_bits = alloca i32, align 4
  %index = alloca i32, align 4
  %str = alloca [40 x i8], align 16
  %endstr = alloca [20 x i8], align 16
  %code = alloca i32, align 4
  %encode = alloca i32, align 4
  %op = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %poss = alloca %struct.stream_s, align 8
  store %struct.gx_device_pswrite_s* %pdev, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  store i8* %imagestr, i8** %imagestr.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !60
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !60
  store i64 %id, i64* %id.addr, align 8, !tbaa !73
  store i32 %x, i32* %x.addr, align 4, !tbaa !60
  store i32 %y, i32* %y.addr, align 4, !tbaa !60
  store i32 %width, i32* %width.addr, align 4, !tbaa !60
  store i32 %height, i32* %height.addr, align 4, !tbaa !60
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !60
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_pswrite_s* %1 to %struct.gx_device_vector_s*
  %call = call %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %2) #7
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast i32* %width_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %width.addr, align 4, !tbaa !60
  %5 = load i32, i32* %depth.addr, align 4, !tbaa !60
  %mul = mul nsw i32 %4, %5
  store i32 %mul, i32* %width_bits, align 4, !tbaa !60
  %6 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %8 = load i64, i64* %id.addr, align 8, !tbaa !73
  %9 = load i32, i32* %width_bits, align 4, !tbaa !60
  %10 = load i32, i32* %height.addr, align 4, !tbaa !60
  %call1 = call i32 @image_cache_lookup(%struct.gx_device_pswrite_s* %7, i64 %8, i32 %9, i32 %10, i32 0) #7
  store i32 %call1, i32* %index, align 4, !tbaa !60
  %11 = bitcast [40 x i8]* %str to i8*
  call void @llvm.lifetime.start(i64 40, i8* %11) #2
  %12 = bitcast [20 x i8]* %endstr to i8*
  call void @llvm.lifetime.start(i64 20, i8* %12) #2
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %encode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i8** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load i32, i32* %index, align 4, !tbaa !60
  %cmp = icmp sge i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %str, i32 0, i32 0
  %17 = load i32, i32* %index, align 4, !tbaa !60
  %div = sdiv i32 %17, 26
  %18 = load i32, i32* %index, align 4, !tbaa !60
  %rem = srem i32 %18, 26
  %add = add nsw i32 %rem, 65
  %call2 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 %div, i32 %add) #7
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %20 = load i32, i32* %x.addr, align 4, !tbaa !60
  %21 = load i32, i32* %y.addr, align 4, !tbaa !60
  %call3 = call i8* @pprintd2(%struct.stream_s* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 %20, i32 %21) #7
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay4 = getelementptr inbounds [40 x i8], [40 x i8]* %str, i32 0, i32 0
  %23 = load i8*, i8** %imagestr.addr, align 8, !tbaa !1
  %call5 = call i8* @pprints2(%struct.stream_s* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i8* %arraydecay4, i8* %23) #7
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 9
  %25 = load i16, i16* %end_status, align 2, !tbaa !110
  %conv = sext i16 %25 to i32
  %cmp6 = icmp eq i32 %conv, -2
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end:                                           ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.9:                                         ; preds = %entry
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %27 = load i32, i32* %x.addr, align 4, !tbaa !60
  %28 = load i32, i32* %y.addr, align 4, !tbaa !60
  %29 = load i32, i32* %width.addr, align 4, !tbaa !60
  %30 = load i32, i32* %height.addr, align 4, !tbaa !60
  %call10 = call i8* @pprintd4(%struct.stream_s* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0), i32 %27, i32 %28, i32 %29, i32 %30) #7
  %31 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %binary_ok = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %31, i32 0, i32 68
  %32 = load i32, i32* %binary_ok, align 4, !tbaa !56
  %tobool = icmp ne i32 %32, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %encode, align 4, !tbaa !60
  %33 = load i32, i32* %depth.addr, align 4, !tbaa !60
  %cmp11 = icmp eq i32 %33, 1
  br i1 %cmp11, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.9
  %34 = load i32, i32* %width.addr, align 4, !tbaa !60
  %cmp13 = icmp sgt i32 %34, 16
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.20

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %35 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %pswrite_common = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %35, i32 0, i32 74
  %LanguageLevel = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %pswrite_common, i32 0, i32 0
  %36 = load float, float* %LanguageLevel, align 4, !tbaa !96
  %cmp16 = fcmp oge float %36, 2.000000e+00
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %land.lhs.true.15
  %37 = load i32, i32* %encode, align 4, !tbaa !60
  %add19 = add nsw i32 %37, 2
  store i32 %add19, i32* %encode, align 4, !tbaa !60
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %land.lhs.true.15, %land.lhs.true, %if.end.9
  %38 = load i64, i64* %id.addr, align 8, !tbaa !73
  %cmp21 = icmp eq i64 %38, 0
  br i1 %cmp21, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %39 = load i32, i32* %width_bits, align 4, !tbaa !60
  %conv23 = zext i32 %39 to i64
  %40 = load i32, i32* %height.addr, align 4, !tbaa !60
  %conv24 = sext i32 %40 to i64
  %mul25 = mul i64 %conv23, %conv24
  %cmp26 = icmp ugt i64 %mul25, 8000
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %lor.lhs.false, %if.end.20
  %41 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %42 = load i32, i32* %encode, align 4, !tbaa !60
  %idxprom = sext i32 %42 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @psw_image_write.uncached, i32 0, i64 %idxprom
  %43 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call29 = call i32 @stream_puts(%struct.stream_s* %41, i8* %43) #7
  %44 = load i8*, i8** %imagestr.addr, align 8, !tbaa !1
  store i8* %44, i8** %op, align 8, !tbaa !1
  %arraydecay30 = getelementptr inbounds [20 x i8], [20 x i8]* %endstr, i32 0, i32 0
  %call31 = call i8* @strcpy(i8* %arraydecay30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i32 0, i32 0)) #8
  br label %if.end.53

if.else:                                          ; preds = %lor.lhs.false
  %45 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %46 = load i64, i64* %id.addr, align 8, !tbaa !73
  %47 = load i32, i32* %width_bits, align 4, !tbaa !60
  %48 = load i32, i32* %height.addr, align 4, !tbaa !60
  %call32 = call i32 @image_cache_lookup(%struct.gx_device_pswrite_s* %45, i64 %46, i32 %47, i32 %48, i32 1) #7
  store i32 %call32, i32* %index, align 4, !tbaa !60
  %arraydecay33 = getelementptr inbounds [40 x i8], [40 x i8]* %str, i32 0, i32 0
  %49 = load i32, i32* %index, align 4, !tbaa !60
  %div34 = sdiv i32 %49, 26
  %50 = load i32, i32* %index, align 4, !tbaa !60
  %rem35 = srem i32 %50, 26
  %add36 = add nsw i32 %rem35, 65
  %call37 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 %div34, i32 %add36) #7
  %51 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay38 = getelementptr inbounds [40 x i8], [40 x i8]* %str, i32 0, i32 0
  %call39 = call i32 @stream_puts(%struct.stream_s* %51, i8* %arraydecay38) #7
  %52 = load i32, i32* %depth.addr, align 4, !tbaa !60
  %cmp40 = icmp ne i32 %52, 1
  br i1 %cmp40, label %if.then.42, label %if.end.48

if.then.42:                                       ; preds = %if.else
  %53 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %54 = load i32, i32* %width_bits, align 4, !tbaa !60
  %add43 = add i32 %54, 7
  %shr = lshr i32 %add43, 3
  %conv44 = zext i32 %shr to i64
  %55 = load i32, i32* %height.addr, align 4, !tbaa !60
  %conv45 = sext i32 %55 to i64
  %mul46 = mul i64 %conv44, %conv45
  %call47 = call i8* @pprintld1(%struct.stream_s* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i64 %mul46) #7
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.42, %if.else
  %56 = load i32, i32* %encode, align 4, !tbaa !60
  %idxprom49 = sext i32 %56 to i64
  %arrayidx50 = getelementptr inbounds [4 x i8*], [4 x i8*]* @psw_image_write.cached, i32 0, i64 %idxprom49
  %57 = load i8*, i8** %arrayidx50, align 8, !tbaa !1
  store i8* %57, i8** %op, align 8, !tbaa !1
  %arraydecay51 = getelementptr inbounds [20 x i8], [20 x i8]* %endstr, i32 0, i32 0
  %58 = load i8*, i8** %imagestr.addr, align 8, !tbaa !1
  %call52 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i8* %58) #7
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.48, %if.then.28
  %59 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status54 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %59, i32 0, i32 9
  %60 = load i16, i16* %end_status54, align 2, !tbaa !110
  %conv55 = sext i16 %60 to i32
  %cmp56 = icmp eq i32 %conv55, -2
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.53
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.59:                                        ; preds = %if.end.53
  %61 = load i32, i32* %encode, align 4, !tbaa !60
  %and = and i32 %61, 1
  %tobool60 = icmp ne i32 %and, 0
  br i1 %tobool60, label %if.then.61, label %if.else.68

if.then.61:                                       ; preds = %if.end.59
  %62 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call62 = call i32 @spputc(%struct.stream_s* %62, i8 zeroext 10) #7
  %63 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %64 = load i8*, i8** %op, align 8, !tbaa !1
  %65 = load i32, i32* %encode, align 4, !tbaa !60
  %66 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %67 = load i32, i32* %data_x.addr, align 4, !tbaa !60
  %68 = load i32, i32* %raster.addr, align 4, !tbaa !60
  %69 = load i32, i32* %width.addr, align 4, !tbaa !60
  %70 = load i32, i32* %height.addr, align 4, !tbaa !60
  %71 = load i32, i32* %depth.addr, align 4, !tbaa !60
  %call63 = call i32 @psw_put_image(%struct.gx_device_pswrite_s* %63, i8* %64, i32 %65, i8* %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71) #7
  store i32 %call63, i32* %code, align 4, !tbaa !60
  %72 = load i32, i32* %code, align 4, !tbaa !60
  %cmp64 = icmp slt i32 %72, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.61
  %73 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.67:                                        ; preds = %if.then.61
  br label %if.end.83

if.else.68:                                       ; preds = %if.end.59
  %74 = bitcast %struct.stream_s* %poss to i8*
  call void @llvm.lifetime.start(i64 352, i8* %74) #2
  %75 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %76 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %76, i32 0, i32 3
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !151
  call void @s_init(%struct.stream_s* %75, %struct.gs_memory_s* %77) #7
  call void @swrite_position_only(%struct.stream_s* %poss) #7
  %78 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %78, i32 0, i32 47
  store %struct.stream_s* %poss, %struct.stream_s** %strm, align 8, !tbaa !59
  %79 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %80 = load i8*, i8** %op, align 8, !tbaa !1
  %81 = load i32, i32* %encode, align 4, !tbaa !60
  %82 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %83 = load i32, i32* %data_x.addr, align 4, !tbaa !60
  %84 = load i32, i32* %raster.addr, align 4, !tbaa !60
  %85 = load i32, i32* %width.addr, align 4, !tbaa !60
  %86 = load i32, i32* %height.addr, align 4, !tbaa !60
  %87 = load i32, i32* %depth.addr, align 4, !tbaa !60
  %call69 = call i32 @psw_put_image(%struct.gx_device_pswrite_s* %79, i8* %80, i32 %81, i8* %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87) #7
  store i32 %call69, i32* %code, align 4, !tbaa !60
  %88 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %89 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %strm70 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %89, i32 0, i32 47
  store %struct.stream_s* %88, %struct.stream_s** %strm70, align 8, !tbaa !59
  %90 = load i32, i32* %code, align 4, !tbaa !60
  %cmp71 = icmp slt i32 %90, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.else.68
  %91 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %91, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.74:                                        ; preds = %if.else.68
  %92 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call75 = call i64 @stell(%struct.stream_s* %poss) #7
  %call76 = call i8* @pprintld1(%struct.stream_s* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.89, i32 0, i32 0), i64 %call75) #7
  %93 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %94 = load i8*, i8** %op, align 8, !tbaa !1
  %95 = load i32, i32* %encode, align 4, !tbaa !60
  %96 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %97 = load i32, i32* %data_x.addr, align 4, !tbaa !60
  %98 = load i32, i32* %raster.addr, align 4, !tbaa !60
  %99 = load i32, i32* %width.addr, align 4, !tbaa !60
  %100 = load i32, i32* %height.addr, align 4, !tbaa !60
  %101 = load i32, i32* %depth.addr, align 4, !tbaa !60
  %call77 = call i32 @psw_put_image(%struct.gx_device_pswrite_s* %93, i8* %94, i32 %95, i8* %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101) #7
  store i32 %call77, i32* %code, align 4, !tbaa !60
  %102 = load i32, i32* %code, align 4, !tbaa !60
  %cmp78 = icmp slt i32 %102, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.74
  %103 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %103, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.81:                                        ; preds = %if.end.74
  %104 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call82 = call i32 @stream_puts(%struct.stream_s* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0)) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.81, %if.then.80, %if.then.73
  %105 = bitcast %struct.stream_s* %poss to i8*
  call void @llvm.lifetime.end(i64 352, i8* %105) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.92 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.83

if.end.83:                                        ; preds = %cleanup.cont, %if.end.67
  %106 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %arraydecay84 = getelementptr inbounds [20 x i8], [20 x i8]* %endstr, i32 0, i32 0
  %call85 = call i32 @stream_puts(%struct.stream_s* %106, i8* %arraydecay84) #7
  %107 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status86 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %107, i32 0, i32 9
  %108 = load i16, i16* %end_status86, align 2, !tbaa !110
  %conv87 = sext i16 %108 to i32
  %cmp88 = icmp eq i32 %conv87, -2
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.83
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.91:                                        ; preds = %if.end.83
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

cleanup.92:                                       ; preds = %if.end.91, %if.then.90, %cleanup, %if.then.66, %if.then.58, %if.end, %if.then.8
  %109 = bitcast i8** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = bitcast i32* %encode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast [20 x i8]* %endstr to i8*
  call void @llvm.lifetime.end(i64 20, i8* %112) #2
  %113 = bitcast [40 x i8]* %str to i8*
  call void @llvm.lifetime.end(i64 40, i8* %113) #2
  %114 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast i32* %width_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #2
  %116 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #2
  %117 = load i32, i32* %retval
  ret i32 %117
}

; Function Attrs: nounwind uwtable
define internal i32 @image_cache_lookup(%struct.gx_device_pswrite_s* %pdev, i64 %id, i32 %width, i32 %height, i32 %enter) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pswrite_s*, align 8
  %id.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %enter.addr = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %pip1 = alloca %struct.psw_image_params_s*, align 8
  %pip2 = alloca %struct.psw_image_params_s*, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %pip = alloca %struct.psw_image_params_s*, align 8
  store %struct.gx_device_pswrite_s* %pdev, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  store i64 %id, i64* %id.addr, align 8, !tbaa !73
  store i32 %width, i32* %width.addr, align 4, !tbaa !60
  store i32 %height, i32* %height.addr, align 4, !tbaa !60
  store i32 %enter, i32* %enter.addr, align 4, !tbaa !60
  %0 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.psw_image_params_s** %pip1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct.psw_image_params_s** %pip2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i64, i64* %id.addr, align 8, !tbaa !73
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %id.addr, align 8, !tbaa !73
  %rem = urem i64 %5, 197
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %i1, align 4, !tbaa !60
  %6 = load i32, i32* %i1, align 4, !tbaa !60
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %image_cache = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %7, i32 0, i32 77
  %arrayidx = getelementptr inbounds [197 x %struct.psw_image_params_s], [197 x %struct.psw_image_params_s]* %image_cache, i32 0, i64 %idxprom
  store %struct.psw_image_params_s* %arrayidx, %struct.psw_image_params_s** %pip1, align 8, !tbaa !1
  %8 = load %struct.psw_image_params_s*, %struct.psw_image_params_s** %pip1, align 8, !tbaa !1
  %id1 = getelementptr inbounds %struct.psw_image_params_s, %struct.psw_image_params_s* %8, i32 0, i32 0
  %9 = load i64, i64* %id1, align 8, !tbaa !141
  %10 = load i64, i64* %id.addr, align 8, !tbaa !73
  %cmp2 = icmp eq i64 %9, %10
  br i1 %cmp2, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct.psw_image_params_s*, %struct.psw_image_params_s** %pip1, align 8, !tbaa !1
  %width4 = getelementptr inbounds %struct.psw_image_params_s, %struct.psw_image_params_s* %11, i32 0, i32 1
  %12 = load i16, i16* %width4, align 2, !tbaa !152
  %conv5 = zext i16 %12 to i32
  %13 = load i32, i32* %width.addr, align 4, !tbaa !60
  %cmp6 = icmp eq i32 %conv5, %13
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.14

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %14 = load %struct.psw_image_params_s*, %struct.psw_image_params_s** %pip1, align 8, !tbaa !1
  %height9 = getelementptr inbounds %struct.psw_image_params_s, %struct.psw_image_params_s* %14, i32 0, i32 2
  %15 = load i16, i16* %height9, align 2, !tbaa !153
  %conv10 = zext i16 %15 to i32
  %16 = load i32, i32* %height.addr, align 4, !tbaa !60
  %cmp11 = icmp eq i32 %conv10, %16
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.8
  %17 = load i32, i32* %i1, align 4, !tbaa !60
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %land.lhs.true.8, %land.lhs.true, %if.end
  %18 = load i32, i32* %i1, align 4, !tbaa !60
  %add = add nsw i32 %18, 121
  %rem15 = srem i32 %add, 197
  store i32 %rem15, i32* %i2, align 4, !tbaa !60
  %19 = load i32, i32* %i2, align 4, !tbaa !60
  %idxprom16 = sext i32 %19 to i64
  %20 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %image_cache17 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %20, i32 0, i32 77
  %arrayidx18 = getelementptr inbounds [197 x %struct.psw_image_params_s], [197 x %struct.psw_image_params_s]* %image_cache17, i32 0, i64 %idxprom16
  store %struct.psw_image_params_s* %arrayidx18, %struct.psw_image_params_s** %pip2, align 8, !tbaa !1
  %21 = load %struct.psw_image_params_s*, %struct.psw_image_params_s** %pip2, align 8, !tbaa !1
  %id19 = getelementptr inbounds %struct.psw_image_params_s, %struct.psw_image_params_s* %21, i32 0, i32 0
  %22 = load i64, i64* %id19, align 8, !tbaa !141
  %23 = load i64, i64* %id.addr, align 8, !tbaa !73
  %cmp20 = icmp eq i64 %22, %23
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.33

land.lhs.true.22:                                 ; preds = %if.end.14
  %24 = load %struct.psw_image_params_s*, %struct.psw_image_params_s** %pip2, align 8, !tbaa !1
  %width23 = getelementptr inbounds %struct.psw_image_params_s, %struct.psw_image_params_s* %24, i32 0, i32 1
  %25 = load i16, i16* %width23, align 2, !tbaa !152
  %conv24 = zext i16 %25 to i32
  %26 = load i32, i32* %width.addr, align 4, !tbaa !60
  %cmp25 = icmp eq i32 %conv24, %26
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.33

land.lhs.true.27:                                 ; preds = %land.lhs.true.22
  %27 = load %struct.psw_image_params_s*, %struct.psw_image_params_s** %pip2, align 8, !tbaa !1
  %height28 = getelementptr inbounds %struct.psw_image_params_s, %struct.psw_image_params_s* %27, i32 0, i32 2
  %28 = load i16, i16* %height28, align 2, !tbaa !153
  %conv29 = zext i16 %28 to i32
  %29 = load i32, i32* %height.addr, align 4, !tbaa !60
  %cmp30 = icmp eq i32 %conv29, %29
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true.27
  %30 = load i32, i32* %i2, align 4, !tbaa !60
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %land.lhs.true.27, %land.lhs.true.22, %if.end.14
  %31 = load i32, i32* %enter.addr, align 4, !tbaa !60
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.then.34, label %if.end.45

if.then.34:                                       ; preds = %if.end.33
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %cache_toggle = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %33, i32 0, i32 78
  %34 = load i32, i32* %cache_toggle, align 4, !tbaa !143
  %tobool35 = icmp ne i32 %34, 0
  %lnot = xor i1 %tobool35, true
  %lnot.ext = zext i1 %lnot to i32
  %35 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %cache_toggle36 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %35, i32 0, i32 78
  store i32 %lnot.ext, i32* %cache_toggle36, align 4, !tbaa !143
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.34
  %36 = load i32, i32* %i2, align 4, !tbaa !60
  br label %cond.end

cond.false:                                       ; preds = %if.then.34
  %37 = load i32, i32* %i1, align 4, !tbaa !60
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %36, %cond.true ], [ %37, %cond.false ]
  store i32 %cond, i32* %i, align 4, !tbaa !60
  %38 = bitcast %struct.psw_image_params_s** %pip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #2
  %39 = load i32, i32* %i, align 4, !tbaa !60
  %idxprom37 = sext i32 %39 to i64
  %40 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %image_cache38 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %40, i32 0, i32 77
  %arrayidx39 = getelementptr inbounds [197 x %struct.psw_image_params_s], [197 x %struct.psw_image_params_s]* %image_cache38, i32 0, i64 %idxprom37
  store %struct.psw_image_params_s* %arrayidx39, %struct.psw_image_params_s** %pip, align 8, !tbaa !1
  %41 = load i64, i64* %id.addr, align 8, !tbaa !73
  %42 = load %struct.psw_image_params_s*, %struct.psw_image_params_s** %pip, align 8, !tbaa !1
  %id40 = getelementptr inbounds %struct.psw_image_params_s, %struct.psw_image_params_s* %42, i32 0, i32 0
  store i64 %41, i64* %id40, align 8, !tbaa !141
  %43 = load i32, i32* %width.addr, align 4, !tbaa !60
  %conv41 = trunc i32 %43 to i16
  %44 = load %struct.psw_image_params_s*, %struct.psw_image_params_s** %pip, align 8, !tbaa !1
  %width42 = getelementptr inbounds %struct.psw_image_params_s, %struct.psw_image_params_s* %44, i32 0, i32 1
  store i16 %conv41, i16* %width42, align 2, !tbaa !152
  %45 = load i32, i32* %height.addr, align 4, !tbaa !60
  %conv43 = trunc i32 %45 to i16
  %46 = load %struct.psw_image_params_s*, %struct.psw_image_params_s** %pip, align 8, !tbaa !1
  %height44 = getelementptr inbounds %struct.psw_image_params_s, %struct.psw_image_params_s* %46, i32 0, i32 2
  store i16 %conv43, i16* %height44, align 2, !tbaa !153
  %47 = load i32, i32* %i, align 4, !tbaa !60
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %48 = bitcast %struct.psw_image_params_s** %pip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  br label %cleanup

if.end.45:                                        ; preds = %if.end.33
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %cond.end, %if.then.32, %if.then.13, %if.then
  %50 = bitcast %struct.psw_image_params_s** %pip2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast %struct.psw_image_params_s** %pip1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare i32 @gs_sprintf(i8*, i8*, ...) #0

declare i8* @pprints2(%struct.stream_s*, i8*, i8*, i8*) #0

declare i8* @pprintd4(%struct.stream_s*, i8*, i32, i32, i32, i32) #0

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i8* @pprintld1(%struct.stream_s*, i8*, i64) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_put_image(%struct.gx_device_pswrite_s* %pdev, i8* %op, i32 %encode, i8* %data, i32 %data_x, i32 %raster, i32 %width, i32 %height, i32 %depth) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pswrite_s*, align 8
  %op.addr = alloca i8*, align 8
  %encode.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pswrite_s* %pdev, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  store i8* %op, i8** %op.addr, align 8, !tbaa !1
  store i32 %encode, i32* %encode.addr, align 4, !tbaa !60
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !60
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !60
  store i32 %width, i32* %width.addr, align 4, !tbaa !60
  store i32 %height, i32* %height.addr, align 4, !tbaa !60
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !60
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %2 = load i32, i32* %encode.addr, align 4, !tbaa !60
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %call = call i32 @psw_image_stream_setup(%struct.gx_device_pswrite_s* %1, i32 %lnot.ext) #7
  store i32 %call, i32* %code, align 4, !tbaa !60
  %3 = load i32, i32* %code, align 4, !tbaa !60
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %encode.addr, align 4, !tbaa !60
  %and1 = and i32 %5, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %image_writer = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %6, i32 0, i32 76
  %7 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %image_writer, align 8, !tbaa !58
  %8 = load i32, i32* %width.addr, align 4, !tbaa !60
  %9 = load i32, i32* %height.addr, align 4, !tbaa !60
  %call4 = call i32 @psdf_CFE_binary(%struct.psdf_binary_writer_s* %7, i32 %8, i32 %9, i32 0) #7
  store i32 %call4, i32* %code, align 4, !tbaa !60
  %10 = load i32, i32* %code, align 4, !tbaa !60
  %cmp5 = icmp slt i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  %11 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  %12 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %op.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %15 = load i32, i32* %data_x.addr, align 4, !tbaa !60
  %16 = load i32, i32* %raster.addr, align 4, !tbaa !60
  %17 = load i32, i32* %width.addr, align 4, !tbaa !60
  %18 = load i32, i32* %height.addr, align 4, !tbaa !60
  %19 = load i32, i32* %depth.addr, align 4, !tbaa !60
  %call9 = call i32 @psw_put_image_bits(%struct.gx_device_pswrite_s* %12, i8* %13, i8* %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19) #7
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.6, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #0

declare void @swrite_position_only(%struct.stream_s*) #0

declare i64 @stell(%struct.stream_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_image_stream_setup(%struct.gx_device_pswrite_s* %pdev, i32 %binary_ok) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pswrite_s*, align 8
  %binary_ok.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %save = alloca i32, align 4
  %st = alloca %struct.stream_state_s*, align 8
  store %struct.gx_device_pswrite_s* %pdev, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  store i32 %binary_ok, i32* %binary_ok.addr, align 4, !tbaa !60
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %save to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %binary_ok1 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %2, i32 0, i32 68
  %3 = load i32, i32* %binary_ok1, align 4, !tbaa !56
  store i32 %3, i32* %save, align 4, !tbaa !60
  %4 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %pswrite_common = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %4, i32 0, i32 74
  %LanguageLevel = getelementptr inbounds %struct.gx_device_pswrite_common_s, %struct.gx_device_pswrite_common_s* %pswrite_common, i32 0, i32 0
  %5 = load float, float* %LanguageLevel, align 4, !tbaa !96
  %cmp = fcmp oge float %5, 2.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %binary_ok.addr, align 4, !tbaa !60
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load i32, i32* %binary_ok.addr, align 4, !tbaa !60
  %8 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %binary_ok2 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %8, i32 0, i32 68
  store i32 %7, i32* %binary_ok2, align 4, !tbaa !56
  %9 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_pswrite_s* %9 to %struct.gx_device_psdf_s*
  %11 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %image_writer = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %11, i32 0, i32 76
  %12 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %image_writer, align 8, !tbaa !58
  %call = call i32 @psdf_begin_binary(%struct.gx_device_psdf_s* %10, %struct.psdf_binary_writer_s* %12) #7
  store i32 %call, i32* %code, align 4, !tbaa !60
  br label %if.end.18

if.else:                                          ; preds = %lor.lhs.false
  %13 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %binary_ok3 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %13, i32 0, i32 68
  store i32 1, i32* %binary_ok3, align 4, !tbaa !56
  %14 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_pswrite_s* %14 to %struct.gx_device_psdf_s*
  %16 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %image_writer4 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %16, i32 0, i32 76
  %17 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %image_writer4, align 8, !tbaa !58
  %call5 = call i32 @psdf_begin_binary(%struct.gx_device_psdf_s* %15, %struct.psdf_binary_writer_s* %17) #7
  store i32 %call5, i32* %code, align 4, !tbaa !60
  %18 = load i32, i32* %code, align 4, !tbaa !60
  %cmp6 = icmp sge i32 %18, 0
  br i1 %cmp6, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %if.else
  %19 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %20, i32 0, i32 43
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !70
  %22 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_AXE_template, i32 0, i32 0), align 8, !tbaa !154
  %call8 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %21, %struct.gs_memory_struct_type_s* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i32 0, i32 0)) #7
  store %struct.stream_state_s* %call8, %struct.stream_state_s** %st, align 8, !tbaa !1
  %23 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.stream_state_s* %23, null
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.then.7
  store i32 -25, i32* %code, align 4, !tbaa !60
  br label %if.end.16

if.else.11:                                       ; preds = %if.then.7
  %24 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %image_writer12 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %24, i32 0, i32 76
  %25 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %image_writer12, align 8, !tbaa !58
  %26 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %call13 = call i32 @psdf_encode_binary(%struct.psdf_binary_writer_s* %25, %struct.stream_template_s* @s_AXE_template, %struct.stream_state_s* %26) #7
  store i32 %call13, i32* %code, align 4, !tbaa !60
  %27 = load i32, i32* %code, align 4, !tbaa !60
  %cmp14 = icmp sge i32 %27, 0
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else.11
  %28 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %29 = bitcast %struct.stream_state_s* %28 to %struct.stream_AXE_state_s*
  %EndOfData = getelementptr inbounds %struct.stream_AXE_state_s, %struct.stream_AXE_state_s* %29, i32 0, i32 5
  store i32 0, i32* %EndOfData, align 4, !tbaa !156
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.else.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then.10
  %30 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  %31 = load i32, i32* %save, align 4, !tbaa !60
  %32 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %binary_ok19 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %32, i32 0, i32 68
  store i32 %31, i32* %binary_ok19, align 4, !tbaa !56
  %33 = load i32, i32* %code, align 4, !tbaa !60
  %cmp20 = icmp slt i32 %33, 0
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %34 = load i32, i32* %code, align 4, !tbaa !60
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %35 = load i32, i32* %binary_ok.addr, align 4, !tbaa !60
  %tobool21 = icmp ne i32 %35, 0
  %lnot = xor i1 %tobool21, true
  %lnot.ext = zext i1 %lnot to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %34, %cond.true ], [ %lnot.ext, %cond.false ]
  %36 = bitcast i32* %save to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  ret i32 %cond
}

declare i32 @psdf_CFE_binary(%struct.psdf_binary_writer_s*, i32, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_put_image_bits(%struct.gx_device_pswrite_s* %pdev, i8* %op, i8* %data, i32 %data_x, i32 %raster, i32 %width, i32 %height, i32 %depth) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pswrite_s*, align 8
  %op.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pswrite_s* %pdev, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  store i8* %op, i8** %op.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !60
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !60
  store i32 %width, i32* %width.addr, align 4, !tbaa !60
  store i32 %height, i32* %height.addr, align 4, !tbaa !60
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !60
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %1, i32 0, i32 47
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !59
  %3 = load i8*, i8** %op.addr, align 8, !tbaa !1
  %call = call i8* @pprints1(%struct.stream_s* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i8* %3) #7
  %4 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %image_writer = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %4, i32 0, i32 76
  %5 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %image_writer, align 8, !tbaa !58
  %strm1 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %5, i32 0, i32 2
  %6 = load %struct.stream_s*, %struct.stream_s** %strm1, align 8, !tbaa !158
  %7 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %8 = load i32, i32* %data_x.addr, align 4, !tbaa !60
  %9 = load i32, i32* %depth.addr, align 4, !tbaa !60
  %mul = mul nsw i32 %8, %9
  %10 = load i32, i32* %raster.addr, align 4, !tbaa !60
  %11 = load i32, i32* %width.addr, align 4, !tbaa !60
  %12 = load i32, i32* %depth.addr, align 4, !tbaa !60
  %mul2 = mul nsw i32 %11, %12
  %13 = load i32, i32* %height.addr, align 4, !tbaa !60
  %call3 = call i32 @psw_put_bits(%struct.stream_s* %6, i8* %7, i32 %mul, i32 %10, i32 %mul2, i32 %13) #7
  store i32 %call3, i32* %code, align 4, !tbaa !60
  %14 = load i32, i32* %code, align 4, !tbaa !60
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %call4 = call i32 @psw_image_cleanup(%struct.gx_device_pswrite_s* %16) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @psdf_begin_binary(%struct.gx_device_psdf_s*, %struct.psdf_binary_writer_s*) #0

declare %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*) #0

declare i32 @psdf_encode_binary(%struct.psdf_binary_writer_s*, %struct.stream_template_s*, %struct.stream_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_put_bits(%struct.stream_s* %s, i8* %data, i32 %data_x_bit, i32 %raster, i32 %width_bits, i32 %height) #1 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x_bit.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %width_bits.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %row = alloca i8*, align 8
  %shift = alloca i32, align 4
  %y = alloca i32, align 4
  %src = alloca i8*, align 8
  %wleft = alloca i32, align 4
  %cshift = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x_bit, i32* %data_x_bit.addr, align 4, !tbaa !60
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !60
  store i32 %width_bits, i32* %width_bits.addr, align 4, !tbaa !60
  store i32 %height, i32* %height.addr, align 4, !tbaa !60
  %0 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i32, i32* %data_x_bit.addr, align 4, !tbaa !60
  %shr = ashr i32 %2, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %row, align 8, !tbaa !1
  %3 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %data_x_bit.addr, align 4, !tbaa !60
  %and = and i32 %4, 7
  store i32 %and, i32* %shift, align 4, !tbaa !60
  %5 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %y, align 4, !tbaa !60
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %entry
  %6 = load i32, i32* %y, align 4, !tbaa !60
  %7 = load i32, i32* %height.addr, align 4, !tbaa !60
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %shift, align 4, !tbaa !60
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %row, align 8, !tbaa !1
  %11 = load i32, i32* %width_bits.addr, align 4, !tbaa !60
  %add = add i32 %11, 7
  %shr2 = lshr i32 %add, 3
  %call = call i32 @stream_write(%struct.stream_s* %9, i8* %10, i32 %shr2) #7
  br label %if.end.24

if.else:                                          ; preds = %for.body
  %12 = bitcast i8** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load i8*, i8** %row, align 8, !tbaa !1
  store i8* %13, i8** %src, align 8, !tbaa !1
  %14 = bitcast i32* %wleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i32, i32* %width_bits.addr, align 4, !tbaa !60
  store i32 %15, i32* %wleft, align 4, !tbaa !60
  %16 = bitcast i32* %cshift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load i32, i32* %shift, align 4, !tbaa !60
  %sub = sub nsw i32 8, %17
  store i32 %sub, i32* %cshift, align 4, !tbaa !60
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.else
  %18 = load i32, i32* %wleft, align 4, !tbaa !60
  %19 = load i32, i32* %shift, align 4, !tbaa !60
  %add4 = add nsw i32 %18, %19
  %cmp5 = icmp sgt i32 %add4, 8
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %src, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !95
  %conv = zext i8 %22 to i32
  %23 = load i32, i32* %shift, align 4, !tbaa !60
  %shl = shl i32 %conv, %23
  %24 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !95
  %conv7 = zext i8 %25 to i32
  %26 = load i32, i32* %cshift, align 4, !tbaa !60
  %shr8 = ashr i32 %conv7, %26
  %add9 = add nsw i32 %shl, %shr8
  %conv10 = trunc i32 %add9 to i8
  %call11 = call i32 @spputc(%struct.stream_s* %20, i8 zeroext %conv10) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %27 = load i8*, i8** %src, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %src, align 8, !tbaa !1
  %28 = load i32, i32* %wleft, align 4, !tbaa !60
  %sub12 = sub nsw i32 %28, 8
  store i32 %sub12, i32* %wleft, align 4, !tbaa !60
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %29 = load i32, i32* %wleft, align 4, !tbaa !60
  %cmp13 = icmp sgt i32 %29, 0
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %for.end
  %30 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %31 = load i8*, i8** %src, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !95
  %conv16 = zext i8 %32 to i32
  %33 = load i32, i32* %shift, align 4, !tbaa !60
  %shl17 = shl i32 %conv16, %33
  %34 = load i32, i32* %wleft, align 4, !tbaa !60
  %shr18 = ashr i32 65280, %34
  %conv19 = trunc i32 %shr18 to i8
  %conv20 = zext i8 %conv19 to i32
  %and21 = and i32 %shl17, %conv20
  %conv22 = trunc i32 %and21 to i8
  %call23 = call i32 @spputc(%struct.stream_s* %30, i8 zeroext %conv22) #7
  br label %if.end

if.end:                                           ; preds = %if.then.15, %for.end
  %35 = bitcast i32* %cshift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %wleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i8** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then
  %38 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %38, i32 0, i32 9
  %39 = load i16, i16* %end_status, align 2, !tbaa !110
  %conv25 = sext i16 %39 to i32
  %cmp26 = icmp eq i32 %conv25, -2
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.24
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %40 = load i32, i32* %y, align 4, !tbaa !60
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %y, align 4, !tbaa !60
  %41 = load i32, i32* %raster.addr, align 4, !tbaa !60
  %42 = load i8*, i8** %row, align 8, !tbaa !1
  %idx.ext31 = zext i32 %41 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %42, i64 %idx.ext31
  store i8* %add.ptr32, i8** %row, align 8, !tbaa !1
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.33, %if.then.28
  %43 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_image_cleanup(%struct.gx_device_pswrite_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_pswrite_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_pswrite_s* %pdev, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !60
  %1 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %image_writer = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %1, i32 0, i32 76
  %2 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %image_writer, align 8, !tbaa !58
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %2, i32 0, i32 2
  %3 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !158
  %cmp = icmp ne %struct.stream_s* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %image_writer1 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %4, i32 0, i32 76
  %5 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %image_writer1, align 8, !tbaa !58
  %call = call i32 @psdf_end_binary(%struct.psdf_binary_writer_s* %5) #7
  store i32 %call, i32* %code, align 4, !tbaa !60
  %6 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev.addr, align 8, !tbaa !1
  %image_writer2 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %6, i32 0, i32 76
  %7 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %image_writer2, align 8, !tbaa !58
  %8 = bitcast %struct.psdf_binary_writer_s* %7 to i8*
  %call3 = call i8* @memset(i8* %8, i32 0, i64 32) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %code, align 4, !tbaa !60
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  ret i32 %9
}

declare i32 @stream_write(%struct.stream_s*, i8*, i32) #0

declare i32 @psdf_end_binary(%struct.psdf_binary_writer_s*) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

declare i32 @gx_path_is_void(%struct.gx_path_s*) #0

declare i32 @gdev_vector_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #0

declare i32 @gx_path_is_null(%struct.gx_path_s*) #0

declare i32 @gs_currentlinecap(%struct.gs_state_s*) #0

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #0

declare i32 @gdev_vector_stroke_scaling(%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, double*, %struct.gs_matrix_s*) #0

declare i32 @gdev_vector_prepare_stroke(%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, double) #0

; Function Attrs: nounwind uwtable
define internal void @psw_put_matrix(%struct.stream_s* %s, %struct.gs_matrix_s* %pmat) #1 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i32 0, i32 0
  %2 = load float, float* %xx, align 4, !tbaa !108
  %conv = fpext float %2 to double
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 1
  %4 = load float, float* %xy, align 4, !tbaa !104
  %conv1 = fpext float %4 to double
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %5, i32 0, i32 2
  %6 = load float, float* %yx, align 4, !tbaa !105
  %conv2 = fpext float %6 to double
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %7, i32 0, i32 3
  %8 = load float, float* %yy, align 4, !tbaa !109
  %conv3 = fpext float %8 to double
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 4
  %10 = load float, float* %tx, align 4, !tbaa !106
  %conv4 = fpext float %10 to double
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 5
  %12 = load float, float* %ty, align 4, !tbaa !107
  %conv5 = fpext float %12 to double
  %call = call i8* @pprintg6(%struct.stream_s* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.98, i32 0, i32 0), double %conv, double %conv1, double %conv2, double %conv3, double %conv4, double %conv5) #7
  ret void
}

declare i8* @pprintg6(%struct.stream_s*, i8*, double, double, double, double, double, double) #0

declare i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s*, i32) #0

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #0

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #0

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #0

declare i32 @gdev_vector_begin_image(%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_procs_s*, %struct.gdev_vector_image_enum_s*) #0

declare %struct.stream_s* @s_alloc(%struct.gs_memory_s*, i8*) #0

declare void @swrite_string(%struct.stream_s*, i8*, i32) #0

declare i32 @gs_matrix_scale(%struct.gs_matrix_s*, double, double, %struct.gs_matrix_s*) #0

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #0

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #0

declare void @s_write_ps_string(%struct.stream_s*, i8*, i32, i32) #0

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_image_plane_data(%struct.gx_image_enum_common_s* %info, %struct.gx_image_plane_s* %planes, i32 %height, i32* %rows_used) #1 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %height.addr = alloca i32, align 4
  %rows_used.addr = alloca i32*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %pie = alloca %struct.gdev_vector_image_enum_s*, align 8
  %code = alloca i32, align 4
  %pi = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %planes, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !60
  store i32* %rows_used, i32** %rows_used.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %1, i32 0, i32 2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !160
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %5, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %6 = bitcast %struct.gdev_vector_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_image_enum_common_s* %7 to %struct.gdev_vector_image_enum_s*
  store %struct.gdev_vector_image_enum_s* %8, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %bbox_info = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %10, i32 0, i32 10
  %11 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %bbox_info, align 8, !tbaa !162
  %12 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %13 = load i32, i32* %height.addr, align 4, !tbaa !60
  %14 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  %call = call i32 @gx_image_plane_data_rows(%struct.gx_image_enum_common_s* %11, %struct.gx_image_plane_s* %12, i32 %13, i32* %14) #7
  store i32 %call, i32* %code, align 4, !tbaa !60
  %15 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  store i32 0, i32* %j, align 4, !tbaa !60
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %17 = load i32, i32* %j, align 4, !tbaa !60
  %18 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  %19 = load i32, i32* %18, align 4, !tbaa !60
  %cmp = icmp slt i32 %17, %19
  br i1 %cmp, label %for.body, label %for.end.31

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %pi, align 4, !tbaa !60
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %20 = load i32, i32* %pi, align 4, !tbaa !60
  %21 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %21, i32 0, i32 6
  %22 = load i32, i32* %num_planes, align 4, !tbaa !163
  %cmp3 = icmp slt i32 %20, %22
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %23 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %bits_per_row = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %23, i32 0, i32 14
  %24 = load i32, i32* %bits_per_row, align 4, !tbaa !132
  %25 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %25, i32 0, i32 11
  %26 = load i32, i32* %width, align 4, !tbaa !136
  %27 = load i32, i32* %pi, align 4, !tbaa !60
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %plane_depths = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %28, i32 0, i32 7
  %arrayidx = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths, i32 0, i64 %idxprom
  %29 = load i32, i32* %arrayidx, align 4, !tbaa !60
  %mul = mul nsw i32 %26, %29
  %cmp5 = icmp ne i32 %24, %mul
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body.4
  %30 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %image_writer = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %30, i32 0, i32 76
  %31 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %image_writer, align 8, !tbaa !58
  %strm = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %31, i32 0, i32 2
  %32 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !158
  %33 = load i32, i32* %pi, align 4, !tbaa !60
  %idxprom6 = sext i32 %33 to i64
  %34 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %34, i64 %idxprom6
  %data = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx7, i32 0, i32 0
  %35 = load i8*, i8** %data, align 8, !tbaa !164
  %36 = load i32, i32* %pi, align 4, !tbaa !60
  %idxprom8 = sext i32 %36 to i64
  %37 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %37, i64 %idxprom8
  %data_x = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx9, i32 0, i32 1
  %38 = load i32, i32* %data_x, align 4, !tbaa !166
  %39 = load i32, i32* %pi, align 4, !tbaa !60
  %idxprom10 = sext i32 %39 to i64
  %40 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %plane_depths11 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %40, i32 0, i32 7
  %arrayidx12 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths11, i32 0, i64 %idxprom10
  %41 = load i32, i32* %arrayidx12, align 4, !tbaa !60
  %mul13 = mul nsw i32 %38, %41
  %42 = load i32, i32* %pi, align 4, !tbaa !60
  %idxprom14 = sext i32 %42 to i64
  %43 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %43, i64 %idxprom14
  %raster = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx15, i32 0, i32 2
  %44 = load i32, i32* %raster, align 4, !tbaa !167
  %45 = load i32, i32* %j, align 4, !tbaa !60
  %mul16 = mul i32 %44, %45
  %mul17 = mul i32 %mul16, 8
  %add = add i32 %mul13, %mul17
  %46 = load i32, i32* %pi, align 4, !tbaa !60
  %idxprom18 = sext i32 %46 to i64
  %47 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %47, i64 %idxprom18
  %raster20 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx19, i32 0, i32 2
  %48 = load i32, i32* %raster20, align 4, !tbaa !167
  %49 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %bits_per_row21 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %49, i32 0, i32 14
  %50 = load i32, i32* %bits_per_row21, align 4, !tbaa !132
  %call22 = call i32 @psw_put_bits(%struct.stream_s* %32, i8* %35, i32 %add, i32 %48, i32 %50, i32 1) #7
  %51 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %image_writer23 = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %51, i32 0, i32 76
  %52 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %image_writer23, align 8, !tbaa !58
  %strm24 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %52, i32 0, i32 2
  %53 = load %struct.stream_s*, %struct.stream_s** %strm24, align 8, !tbaa !158
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %53, i32 0, i32 9
  %54 = load i16, i16* %end_status, align 2, !tbaa !110
  %conv = sext i16 %54 to i32
  %cmp25 = icmp eq i32 %conv, -2
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %55 = load i32, i32* %pi, align 4, !tbaa !60
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !60
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %56 = load i32, i32* %j, align 4, !tbaa !60
  %inc30 = add nsw i32 %56, 1
  store i32 %inc30, i32* %j, align 4, !tbaa !60
  br label %for.cond

for.end.31:                                       ; preds = %for.cond
  %57 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  %58 = load i32, i32* %57, align 4, !tbaa !60
  %59 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %59, i32 0, i32 15
  %60 = load i32, i32* %y, align 4, !tbaa !168
  %add32 = add nsw i32 %60, %58
  store i32 %add32, i32* %y, align 4, !tbaa !168
  %61 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.31, %if.then.27, %if.then
  %62 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast %struct.gdev_vector_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_image_end_image(%struct.gx_image_enum_common_s* %info, i32 %draw_last) #1 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pdev = alloca %struct.gx_device_pswrite_s*, align 8
  %pie = alloca %struct.gdev_vector_image_enum_s*, align 8
  %code = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %bs = alloca %struct.stream_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %buffer = alloca i8*, align 8
  %len = alloca i64, align 8
  %ignore = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !60
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %1, i32 0, i32 2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !160
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_vector_s*
  store %struct.gx_device_vector_s* %5, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_vector_s* %7 to %struct.gx_device_pswrite_s*
  store %struct.gx_device_pswrite_s* %8, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %9 = bitcast %struct.gdev_vector_image_enum_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_image_enum_common_s* %10 to %struct.gdev_vector_image_enum_s*
  store %struct.gdev_vector_image_enum_s* %11, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %14 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie, align 8, !tbaa !1
  %15 = load i32, i32* %draw_last.addr, align 4, !tbaa !60
  %16 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %white = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %16, i32 0, i32 66
  %17 = load i64, i64* %white, align 8, !tbaa !169
  %call = call i32 @gdev_vector_end_image(%struct.gx_device_vector_s* %13, %struct.gdev_vector_image_enum_s* %14, i32 %15, i64 %17) #7
  store i32 %call, i32* %code, align 4, !tbaa !60
  %18 = load i32, i32* %code, align 4, !tbaa !60
  %cmp = icmp sgt i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %19 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %20, i32 0, i32 47
  %21 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !59
  store %struct.stream_s* %21, %struct.stream_s** %s, align 8, !tbaa !1
  %22 = bitcast %struct.stream_s** %bs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %image_writer = getelementptr inbounds %struct.gx_device_pswrite_s, %struct.gx_device_pswrite_s* %23, i32 0, i32 76
  %24 = load %struct.psdf_binary_writer_s*, %struct.psdf_binary_writer_s** %image_writer, align 8, !tbaa !58
  %strm2 = getelementptr inbounds %struct.psdf_binary_writer_s, %struct.psdf_binary_writer_s* %24, i32 0, i32 2
  %25 = load %struct.stream_s*, %struct.stream_s** %strm2, align 8, !tbaa !158
  store %struct.stream_s* %25, %struct.stream_s** %bs, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %26 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %27 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp3 = icmp ne %struct.stream_s* %26, %27
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %28 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %strm4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 15
  %29 = load %struct.stream_s*, %struct.stream_s** %strm4, align 8, !tbaa !170
  %cmp5 = icmp ne %struct.stream_s* %29, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %31 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %strm6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 15
  %32 = load %struct.stream_s*, %struct.stream_s** %strm6, align 8, !tbaa !170
  store %struct.stream_s* %32, %struct.stream_s** %bs, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %33 = load %struct.gx_device_pswrite_s*, %struct.gx_device_pswrite_s** %pdev, align 8, !tbaa !1
  %call7 = call i32 @psw_image_cleanup(%struct.gx_device_pswrite_s* %33) #7
  %34 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp8 = icmp ne %struct.stream_s* %34, %35
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %while.end
  %36 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #2
  %37 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 1
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !171
  store %struct.gs_memory_s* %38, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %39 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #2
  %40 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 6
  %41 = load i8*, i8** %cbuf, align 8, !tbaa !172
  store i8* %41, i8** %buffer, align 8, !tbaa !1
  %42 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #2
  %43 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %call10 = call i64 @stell(%struct.stream_s* %43) #7
  store i64 %call10, i64* %len, align 8, !tbaa !73
  %44 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  %45 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %46 = load i64, i64* %len, align 8, !tbaa !73
  %call11 = call i8* @pprintld1(%struct.stream_s* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.119, i32 0, i32 0), i64 %46) #7
  %47 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %48 = load i8*, i8** %buffer, align 8, !tbaa !1
  %49 = load i64, i64* %len, align 8, !tbaa !73
  %conv = trunc i64 %49 to i32
  %call12 = call i32 @sputs(%struct.stream_s* %47, i8* %48, i32 %conv, i32* %ignore) #7
  %50 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call13 = call i32 @stream_puts(%struct.stream_s* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0)) #7
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %52 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !71
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %54 = load %struct.stream_s*, %struct.stream_s** %bs, align 8, !tbaa !1
  %55 = bitcast %struct.stream_s* %54 to i8*
  call void %52(%struct.gs_memory_s* %53, i8* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.120, i32 0, i32 0)) #7
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 1
  %free_object15 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %57 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object15, align 8, !tbaa !71
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %59 = load i8*, i8** %buffer, align 8, !tbaa !1
  call void %57(%struct.gs_memory_s* %58, i8* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.121, i32 0, i32 0)) #7
  %60 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  br label %if.end

if.end:                                           ; preds = %if.then.9, %while.end
  %64 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call16 = call i32 @stream_puts(%struct.stream_s* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i32 0, i32 0)) #7
  %65 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %65, i32 0, i32 9
  %66 = load i16, i16* %end_status, align 2, !tbaa !110
  %conv17 = sext i16 %66 to i32
  %cmp18 = icmp eq i32 %conv17, -2
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20
  %67 = bitcast %struct.stream_s** %bs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.24 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.23

if.end.23:                                        ; preds = %cleanup.cont, %entry
  %69 = load i32, i32* %code, align 4, !tbaa !60
  store i32 %69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

cleanup.24:                                       ; preds = %if.end.23, %cleanup
  %70 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast %struct.gdev_vector_image_enum_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #2
  %72 = bitcast %struct.gx_device_pswrite_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %75 = load i32, i32* %retval
  ret i32 %75
}

declare i32 @gx_image_plane_data_rows(%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*) #0

declare i32 @gdev_vector_end_image(%struct.gx_device_vector_s*, %struct.gdev_vector_image_enum_s*, i32, i64) #0

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readonly }
attributes #10 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 24}
!6 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!7 = !{!"int", !3, i64 0}
!8 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!"long", !3, i64 0}
!10 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !11, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !12, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !9, i64 704, !7, i64 712}
!11 = !{!"short", !3, i64 0}
!12 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!13 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!14 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!15 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !16, i64 16, !7, i64 32, !3, i64 36}
!16 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !9, i64 8}
!17 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!18 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!19 = !{!20, !2, i64 32}
!20 = !{!"gs_memory_s", !2, i64 0, !21, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!21 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!22 = !{!23, !2, i64 1728}
!23 = !{!"gx_device_vector_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !7, i64 5864, !7, i64 5868, !24, i64 5872, !2, i64 7488, !7, i64 7496, !7, i64 7500, !7, i64 7504, !37, i64 7512, !37, i64 8144, !9, i64 8776, !9, i64 8784, !3, i64 8792, !3, i64 8796, !30, i64 8800, !7, i64 8816, !2, i64 8824, !9, i64 8832, !9, i64 8840}
!24 = !{!"gs_imager_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !25, i64 24, !7, i64 128, !29, i64 132, !7, i64 168, !30, i64 176, !30, i64 192, !7, i64 208, !7, i64 212, !11, i64 216, !3, i64 220, !32, i64 224, !32, i64 228, !33, i64 232, !9, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !26, i64 296, !34, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !26, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !35, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !36, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !36, i64 1336}
!25 = !{!"gx_line_params_s", !26, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !26, i64 24, !26, i64 28, !26, i64 32, !7, i64 36, !27, i64 40, !28, i64 64}
!26 = !{!"float", !3, i64 0}
!27 = !{!"gs_matrix_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20}
!28 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !26, i64 12, !7, i64 16, !26, i64 20, !7, i64 24, !7, i64 28, !26, i64 32}
!29 = !{!"gs_matrix_fixed_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!30 = !{!"gs_point_s", !31, i64 0, !31, i64 8}
!31 = !{!"double", !3, i64 0}
!32 = !{!"gs_transparency_source_s", !26, i64 0}
!33 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!34 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!35 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!36 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !9, i64 16, !3, i64 24}
!37 = !{!"gx_hl_saved_color_s", !9, i64 0, !9, i64 8, !7, i64 16, !38, i64 24, !40, i64 288}
!38 = !{!"gs_client_color_s", !2, i64 0, !39, i64 8}
!39 = !{!"gs_paint_color_s", !3, i64 0}
!40 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !41, i64 336}
!41 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!42 = !{!23, !2, i64 1736}
!43 = !{!23, !3, i64 8796}
!44 = !{!23, !3, i64 8792}
!45 = !{!46, !7, i64 8880}
!46 = !{!"gx_device_pswrite_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !7, i64 5864, !7, i64 5868, !24, i64 5872, !2, i64 7488, !7, i64 7496, !7, i64 7500, !7, i64 7504, !37, i64 7512, !37, i64 8144, !9, i64 8776, !9, i64 8784, !3, i64 8792, !3, i64 8796, !30, i64 8800, !7, i64 8816, !2, i64 8824, !9, i64 8832, !9, i64 8840, !3, i64 8848, !7, i64 8852, !7, i64 8856, !7, i64 8860, !7, i64 8864, !31, i64 8872, !47, i64 8880, !52, i64 9360, !7, i64 9384, !2, i64 9392, !3, i64 9400, !7, i64 12552, !53, i64 12560, !55, i64 12584}
!47 = !{!"psdf_distiller_params_s", !7, i64 0, !3, i64 4, !3, i64 8, !7, i64 12, !3, i64 16, !7, i64 20, !7, i64 24, !9, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !48, i64 64, !48, i64 80, !48, i64 96, !48, i64 112, !3, i64 128, !7, i64 132, !7, i64 136, !3, i64 140, !3, i64 144, !49, i64 152, !7, i64 232, !7, i64 236, !49, i64 240, !49, i64 320, !50, i64 400, !50, i64 416, !3, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !51, i64 448, !50, i64 464}
!48 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!49 = !{!"psdf_image_params_s", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !2, i64 24, !7, i64 32, !26, i64 36, !3, i64 40, !7, i64 44, !2, i64 48, !7, i64 56, !2, i64 64, !2, i64 72}
!50 = !{!"gs_param_string_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!51 = !{!"gs_param_string_s", !2, i64 0, !7, i64 8, !7, i64 12}
!52 = !{!"gx_device_pswrite_common_s", !26, i64 0, !7, i64 4, !7, i64 8, !9, i64 16}
!53 = !{!"pf_", !54, i64 0, !9, i64 16}
!54 = !{!"gs_int_rect_s", !41, i64 0, !41, i64 8}
!55 = !{!"psw_path_state_s", !7, i64 0, !7, i64 4, !3, i64 8}
!56 = !{!46, !7, i64 8852}
!57 = !{!20, !2, i64 72}
!58 = !{!46, !2, i64 9392}
!59 = !{!46, !2, i64 5848}
!60 = !{!7, !7, i64 0}
!61 = !{!62, !2, i64 208}
!62 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !7, i64 144, !7, i64 148, !11, i64 152, !3, i64 154, !3, i64 155, !63, i64 160, !9, i64 176, !64, i64 184, !2, i64 240, !7, i64 248, !7, i64 252, !2, i64 256, !11, i64 264, !11, i64 266, !2, i64 272, !2, i64 280, !7, i64 288, !7, i64 292, !2, i64 296, !2, i64 304, !48, i64 312, !7, i64 328, !9, i64 336, !9, i64 344}
!63 = !{!"gs_string_s", !2, i64 0, !7, i64 8}
!64 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!65 = !{!23, !2, i64 5840}
!66 = !{!23, !7, i64 8816}
!67 = !{!46, !7, i64 9384}
!68 = !{!6, !9, i64 928}
!69 = !{!23, !2, i64 24}
!70 = !{!46, !2, i64 1728}
!71 = !{!20, !2, i64 24}
!72 = !{!23, !2, i64 5848}
!73 = !{!9, !9, i64 0}
!74 = !{!46, !7, i64 8816}
!75 = !{!46, !9, i64 12576}
!76 = !{!46, !7, i64 12560}
!77 = !{!46, !7, i64 12564}
!78 = !{!46, !7, i64 12568}
!79 = !{!46, !7, i64 12572}
!80 = !{!23, !2, i64 8824}
!81 = !{!82, !2, i64 1216}
!82 = !{!"gx_device_bbox_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728, !7, i64 1736, !7, i64 1740, !83, i64 1744, !2, i64 1776, !7, i64 1784, !84, i64 1788, !9, i64 1808, !9, i64 1816, !9, i64 1824}
!83 = !{!"gx_device_bbox_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!84 = !{!"gs_fixed_rect_s", !34, i64 0, !34, i64 8}
!85 = !{!86, !2, i64 0}
!86 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !41, i64 352, !7, i64 360, !38, i64 368, !87, i64 632}
!87 = !{!"_mask", !88, i64 0, !9, i64 8, !2, i64 16}
!88 = !{!"mp_", !7, i64 0, !7, i64 4}
!89 = !{!86, !7, i64 360}
!90 = !{!23, !9, i64 8832}
!91 = !{!23, !9, i64 8840}
!92 = !{!6, !2, i64 1200}
!93 = !{!6, !11, i64 108}
!94 = !{!82, !2, i64 1224}
!95 = !{!3, !3, i64 0}
!96 = !{!46, !26, i64 9360}
!97 = !{!26, !26, i64 0}
!98 = !{!46, !3, i64 8848}
!99 = !{!100, !2, i64 0}
!100 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !7, i64 16}
!101 = !{!102, !2, i64 56}
!102 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!103 = !{!31, !31, i64 0}
!104 = !{!27, !26, i64 4}
!105 = !{!27, !26, i64 8}
!106 = !{!27, !26, i64 16}
!107 = !{!27, !26, i64 20}
!108 = !{!27, !26, i64 0}
!109 = !{!27, !26, i64 12}
!110 = !{!62, !11, i64 152}
!111 = !{!82, !2, i64 1344}
!112 = !{!82, !2, i64 1352}
!113 = !{!114, !2, i64 576}
!114 = !{!"gs_image1_s", !2, i64 0, !27, i64 8, !7, i64 32, !7, i64 36, !7, i64 40, !3, i64 44, !7, i64 564, !3, i64 568, !7, i64 572, !2, i64 576, !7, i64 584, !7, i64 588, !3, i64 592, !3, i64 596}
!115 = !{!54, !7, i64 0}
!116 = !{!54, !7, i64 4}
!117 = !{!54, !7, i64 8}
!118 = !{!114, !7, i64 32}
!119 = !{!54, !7, i64 12}
!120 = !{!114, !7, i64 36}
!121 = !{!114, !3, i64 568}
!122 = !{!123, !2, i64 24}
!123 = !{!"gdev_vector_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !7, i64 40, !7, i64 44, !3, i64 48, !3, i64 308, !2, i64 568, !2, i64 576, !7, i64 584, !7, i64 588, !7, i64 592, !7, i64 596, !7, i64 600}
!124 = !{!123, !2, i64 568}
!125 = !{!114, !7, i64 584}
!126 = !{!114, !7, i64 572}
!127 = !{!128, !7, i64 24}
!128 = !{!"gs_indexed_params_s", !7, i64 0, !7, i64 4, !3, i64 8, !7, i64 24}
!129 = !{!114, !7, i64 40}
!130 = !{!131, !2, i64 40}
!131 = !{!"gs_color_space_s", !2, i64 0, !8, i64 8, !9, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!132 = !{!123, !7, i64 596}
!133 = !{!123, !7, i64 588}
!134 = !{!20, !2, i64 64}
!135 = !{!6, !2, i64 1152}
!136 = !{!123, !7, i64 584}
!137 = !{!128, !7, i64 0}
!138 = !{!48, !2, i64 0}
!139 = !{!48, !7, i64 8}
!140 = !{!114, !7, i64 564}
!141 = !{!142, !9, i64 0}
!142 = !{!"psw_image_params_s", !9, i64 0, !11, i64 8, !11, i64 10}
!143 = !{!46, !7, i64 12552}
!144 = !{!23, !9, i64 928}
!145 = !{!46, !7, i64 12584}
!146 = !{!46, !7, i64 12588}
!147 = !{!30, !31, i64 0}
!148 = !{!30, !31, i64 8}
!149 = !{i64 0, i64 8, !103, i64 8, i64 8, !103}
!150 = !{!46, !2, i64 5840}
!151 = !{!46, !2, i64 24}
!152 = !{!142, !11, i64 8}
!153 = !{!142, !11, i64 10}
!154 = !{!155, !2, i64 0}
!155 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!156 = !{!157, !7, i64 108}
!157 = !{!"stream_AXE_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112}
!158 = !{!159, !2, i64 16}
!159 = !{!"psdf_binary_writer_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!160 = !{!161, !2, i64 16}
!161 = !{!"gx_image_enum_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !7, i64 40, !7, i64 44, !3, i64 48, !3, i64 308}
!162 = !{!123, !2, i64 576}
!163 = !{!123, !7, i64 44}
!164 = !{!165, !2, i64 0}
!165 = !{!"gx_image_plane_s", !2, i64 0, !7, i64 8, !7, i64 12}
!166 = !{!165, !7, i64 8}
!167 = !{!165, !7, i64 12}
!168 = !{!123, !7, i64 600}
!169 = !{!46, !9, i64 8840}
!170 = !{!62, !2, i64 240}
!171 = !{!62, !2, i64 8}
!172 = !{!62, !2, i64 136}
