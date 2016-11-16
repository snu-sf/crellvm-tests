; ModuleID = './gdevvec.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
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
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, {}*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type { %struct.gx_path_s, %struct.gx_clip_rect_list_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_rect_list_s*, i32, %struct.gx_cpath_path_list_s*, i64 }
%struct.gx_clip_rect_list_s = type { %struct.rc_header_s, %struct.gx_clip_list_s }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gx_cpath_path_list_s = type { %struct.gx_path_s, %struct.rc_header_s, i32, %struct.gx_cpath_path_list_s* }
%struct.gx_stroke_params_s = type { float, i32 }
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
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
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_device_vector_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64 }
%struct.gx_device_vector_procs_s = type { i32 (%struct.gx_device_vector_s*)*, {}*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, {}*, i32 (%struct.gx_device_vector_s*, float*, i32, double)*, {}*, i32 (%struct.gx_device_vector_s*, i32, i32)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, i32)* }
%struct.gx_hl_saved_color_s = type { i64, i64, i32, %struct.gs_client_color_s, %struct.gx_device_color_saved_s }
%struct.gx_device_bbox_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64 }
%struct.gx_device_bbox_procs_s = type { i32 (i8*)*, void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, i32, i32, i32, i32)*, i32 (i8*, %struct.gs_fixed_rect_s*)* }
%struct.gs_path_enum_s = type { %struct.gs_memory_s*, %struct.gs_matrix_s, %struct.segment_s*, %struct.gx_path_s*, %struct.gx_path_s*, i32, i32 }
%struct.gdev_vector_dopath_state_s = type { %struct.gx_device_vector_s*, i32, i32, %struct.gs_matrix_s, %struct.gs_point_s, %struct.gs_point_s }
%struct.gdev_vector_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s*, i32, i32, i32, i32, i32 }
%struct.gs_data_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32 }

@.str = private unnamed_addr constant [17 x i8] c"gx_device_vector\00", align 1
@device_vector_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 4, i16 0, %struct.gs_memory_struct_type_s* @st_device, %struct.gc_ptr_element_s* getelementptr inbounds ([4 x %struct.gc_ptr_element_s], [4 x %struct.gc_ptr_element_s]* @device_vector_enum_ptrs, i32 0, i32 0) }, align 8
@st_device_vector = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 8848, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* bitcast (%struct.gc_struct_data_s* @device_vector_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"gdev_vector_image_enum_t\00", align 1
@vector_image_enum_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @vector_image_enum_enum_ptrs, i32 0, i32 0) }, align 8
@st_vector_image_enum = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 608, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @vector_image_enum_reloc_ptrs to i8*) }, align 8
@gdev_vector_reset.state_initial = internal constant %struct.gs_imager_state_s { i32 0, %struct.gs_memory_s* null, i8* null, %struct.gx_line_params_s { float 0.000000e+00, i32 0, i32 0, i32 0, i32 0, i32 -1, float 1.000000e+01, float 0x3FC9FDD380000000, float 0.000000e+00, i32 0, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %struct.gx_dash_params_s { float* null, i32 0, float 0.000000e+00, i32 0, float 0.000000e+00, i32 1, i32 0, float 0.000000e+00 } }, i32 0, %struct.gs_matrix_fixed_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0 }, i32 0, %struct.gs_point_s zeroinitializer, %struct.gs_point_s zeroinitializer, i32 0, i32 252, i16 -1, i32 16, %struct.gs_transparency_source_s { float 1.000000e+00 }, %struct.gs_transparency_source_s { float 1.000000e+00 }, %struct.gs_xstate_trans_flags zeroinitializer, i64 0, i32 0, i32 0, i32 0, %struct.gx_device_s* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, float 1.000000e+00, %struct.gs_fixed_point_s { i32 128, i32 128 }, i32 0, i32 0, i32 0, float 1.000000e+00, i32 1, i32 1, %struct.gsicc_manager_s* null, %struct.gsicc_link_cache_s* null, %struct.gsicc_profile_cache_s* null, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)* @gx_default_get_cmap_procs, %struct.gs_halftone_s* null, [2 x %struct.gs_int_point_s] zeroinitializer, %struct.gx_device_halftone_s* null, %struct.gs_cie_render_s* null, i32 0, %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s* null, %struct.gx_transfer_s zeroinitializer, [64 x %struct.gx_transfer_map_s*] zeroinitializer, %struct.gx_cie_joint_caches_s* null, %struct.gx_color_map_procs_s* null, %struct.gs_devicen_color_map_s zeroinitializer, %struct.gx_pattern_cache_s* null, %struct.gs_color_space_s* null, %struct.gs_color_space_s* null, %struct.gx_cie_joint_caches_s* null, %struct.gs_devicen_color_map_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"vector_open(strmbuf)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"vector_open(strm)\00", align 1
@st_device_bbox = external constant %struct.gs_memory_struct_type_s, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"vector_open(bbox_device)\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"vector allocate dash pattern\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"vector free old dash pattern\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"vector free dash pattern\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"vector_close(bbox_device->icc_struct\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"vector_close(bbox_device)\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"vector_close(strm)\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"vector_close(strmbuf)\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"gdev_vector_end_image(fill)\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"OutputFile\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"HighLevelDevice\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"\0AERROR: Output filename too long (maximum %d bytes).\0A\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@st_device = external constant %struct.gs_memory_struct_type_s, align 8
@device_vector_enum_ptrs = internal constant [4 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 5848 }, %struct.gc_ptr_element_s { i16 0, i16 5856 }, %struct.gc_ptr_element_s { i16 0, i16 7488 }, %struct.gc_ptr_element_s { i16 0, i16 8824 }], align 16
@vector_image_enum_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 568 }, %struct.gc_ptr_element_s { i16 0, i16 576 }], align 2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #0

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_setflat(%struct.gx_device_vector_s* %vdev, double %flatness) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %flatness.addr = alloca double, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store double %flatness, double* %flatness.addr, align 8, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_dopath(%struct.gx_device_vector_s* %vdev, %struct.gx_path_s* %ppath, i32 %type, %struct.gs_matrix_s* %pmat) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %type.addr = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %do_close = alloca i32, align 4
  %rbox = alloca %struct.gs_fixed_rect_s, align 4
  %rtype = alloca i32, align 4
  %cenum = alloca %struct.gs_path_enum_s, align 8
  %state = alloca %struct.gdev_vector_dopath_state_s, align 8
  %line_start = alloca %struct.gs_fixed_point_s, align 4
  %line_end = alloca %struct.gs_fixed_point_s, align 4
  %incomplete_line = alloca i32, align 4
  %need_moveto = alloca i32, align 4
  %code = alloca i32, align 4
  %p = alloca %struct.gs_point_s, align 8
  %q = alloca %struct.gs_point_s, align 8
  %cleanup.dest.slot = alloca i32
  %vs = alloca [3 x %struct.gs_fixed_point_s], align 16
  %pe_op = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !7
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast i32* %do_close to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %type.addr, align 4, !tbaa !7
  %and = and i32 %1, 34
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %do_close, align 4, !tbaa !8
  %2 = bitcast %struct.gs_fixed_rect_s* %rbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = bitcast i32* %rtype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_is_rectangular(%struct.gx_path_s* %4, %struct.gs_fixed_rect_s* %rbox) #6
  store i32 %call, i32* %rtype, align 4, !tbaa !7
  %5 = bitcast %struct.gs_path_enum_s* %cenum to i8*
  call void @llvm.lifetime.start(i64 64, i8* %5) #2
  %6 = bitcast %struct.gdev_vector_dopath_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 72, i8* %6) #2
  %7 = bitcast %struct.gs_fixed_point_s* %line_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast %struct.gs_fixed_point_s* %line_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32* %incomplete_line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  store i32 0, i32* %incomplete_line, align 4, !tbaa !8
  %10 = bitcast i32* %need_moveto to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  store i32 0, i32* %need_moveto, align 4, !tbaa !8
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %13 = load i32, i32* %type.addr, align 4, !tbaa !7
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  call void @gdev_vector_dopath_init(%struct.gdev_vector_dopath_state_s* %state, %struct.gx_device_vector_s* %12, i32 %13, %struct.gs_matrix_s* %14) #6
  %15 = load i32, i32* %rtype, align 4, !tbaa !7
  %cmp1 = icmp ne i32 %15, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.85

land.lhs.true:                                    ; preds = %entry
  %16 = load i32, i32* %type.addr, align 4, !tbaa !7
  %and3 = and i32 %16, 2
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true.6

lor.lhs.false:                                    ; preds = %land.lhs.true
  %17 = load i32, i32* %rtype, align 4, !tbaa !7
  %cmp4 = icmp eq i32 %17, 3
  br i1 %cmp4, label %land.lhs.true.6, label %if.end.85

land.lhs.true.6:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.gs_matrix_s* %18, null
  br i1 %cmp7, label %land.lhs.true.25, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true.6
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 1
  %20 = load float, float* %xy, align 4, !tbaa !10
  %conv10 = fpext float %20 to double
  %cmp11 = fcmp oeq double %conv10, 0.000000e+00
  br i1 %cmp11, label %land.lhs.true.13, label %lor.lhs.false.17

land.lhs.true.13:                                 ; preds = %lor.lhs.false.9
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 2
  %22 = load float, float* %yx, align 4, !tbaa !13
  %conv14 = fpext float %22 to double
  %cmp15 = fcmp oeq double %conv14, 0.000000e+00
  br i1 %cmp15, label %land.lhs.true.25, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %land.lhs.true.13, %lor.lhs.false.9
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %23, i32 0, i32 0
  %24 = load float, float* %xx, align 4, !tbaa !14
  %conv18 = fpext float %24 to double
  %cmp19 = fcmp oeq double %conv18, 0.000000e+00
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.85

land.lhs.true.21:                                 ; preds = %lor.lhs.false.17
  %25 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %25, i32 0, i32 3
  %26 = load float, float* %yy, align 4, !tbaa !15
  %conv22 = fpext float %26 to double
  %cmp23 = fcmp oeq double %conv22, 0.000000e+00
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.85

land.lhs.true.25:                                 ; preds = %land.lhs.true.21, %land.lhs.true.13, %land.lhs.true.6
  %scale_mat = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %state, i32 0, i32 3
  %xx26 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat, i32 0, i32 0
  %27 = load float, float* %xx26, align 4, !tbaa !16
  %conv27 = fpext float %27 to double
  %cmp28 = fcmp oeq double %conv27, 1.000000e+00
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.85

land.lhs.true.30:                                 ; preds = %land.lhs.true.25
  %scale_mat31 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %state, i32 0, i32 3
  %yy32 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat31, i32 0, i32 3
  %28 = load float, float* %yy32, align 4, !tbaa !19
  %conv33 = fpext float %28 to double
  %cmp34 = fcmp oeq double %conv33, 1.000000e+00
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.85

land.lhs.true.36:                                 ; preds = %land.lhs.true.30
  %scale_mat37 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %state, i32 0, i32 3
  %xy38 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat37, i32 0, i32 1
  %29 = load float, float* %xy38, align 4, !tbaa !10
  %conv39 = fpext float %29 to double
  %cmp40 = fcmp oeq double %conv39, 0.000000e+00
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.85

land.lhs.true.42:                                 ; preds = %land.lhs.true.36
  %scale_mat43 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %state, i32 0, i32 3
  %yx44 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat43, i32 0, i32 2
  %30 = load float, float* %yx44, align 4, !tbaa !13
  %conv45 = fpext float %30 to double
  %cmp46 = fcmp oeq double %conv45, 0.000000e+00
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.85

land.lhs.true.48:                                 ; preds = %land.lhs.true.42
  %scale_mat49 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %state, i32 0, i32 3
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat49, i32 0, i32 4
  %31 = load float, float* %tx, align 4, !tbaa !20
  %conv50 = fpext float %31 to double
  %cmp51 = fcmp oeq double %conv50, 0.000000e+00
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.85

land.lhs.true.53:                                 ; preds = %land.lhs.true.48
  %scale_mat54 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %state, i32 0, i32 3
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %scale_mat54, i32 0, i32 5
  %32 = load float, float* %ty, align 4, !tbaa !21
  %conv55 = fpext float %32 to double
  %cmp56 = fcmp oeq double %conv55, 0.000000e+00
  br i1 %cmp56, label %if.then, label %if.end.85

if.then:                                          ; preds = %land.lhs.true.53
  %33 = bitcast %struct.gs_point_s* %p to i8*
  call void @llvm.lifetime.start(i64 16, i8* %33) #2
  %34 = bitcast %struct.gs_point_s* %q to i8*
  call void @llvm.lifetime.start(i64 16, i8* %34) #2
  %p58 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p58, i32 0, i32 0
  %35 = load i32, i32* %x, align 4, !tbaa !22
  %conv59 = sitofp i32 %35 to double
  %p60 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p60, i32 0, i32 1
  %36 = load i32, i32* %y, align 4, !tbaa !25
  %conv61 = sitofp i32 %36 to double
  %scale_mat62 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %state, i32 0, i32 3
  %call63 = call i32 @gs_point_transform_inverse(double %conv59, double %conv61, %struct.gs_matrix_s* %scale_mat62, %struct.gs_point_s* %p) #6
  %q64 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rbox, i32 0, i32 1
  %x65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q64, i32 0, i32 0
  %37 = load i32, i32* %x65, align 4, !tbaa !26
  %conv66 = sitofp i32 %37 to double
  %q67 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rbox, i32 0, i32 1
  %y68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q67, i32 0, i32 1
  %38 = load i32, i32* %y68, align 4, !tbaa !27
  %conv69 = sitofp i32 %38 to double
  %scale_mat70 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %state, i32 0, i32 3
  %call71 = call i32 @gs_point_transform_inverse(double %conv66, double %conv69, %struct.gs_matrix_s* %scale_mat70, %struct.gs_point_s* %q) #6
  %39 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %39, i32 0, i32 44
  %40 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !28
  %dorect = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %40, i32 0, i32 12
  %41 = load i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)** %dorect, align 8, !tbaa !54
  %42 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %x72 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %43 = load double, double* %x72, align 8, !tbaa !56
  %conv73 = fptosi double %43 to i32
  %y74 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 1
  %44 = load double, double* %y74, align 8, !tbaa !57
  %conv75 = fptosi double %44 to i32
  %x76 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %45 = load double, double* %x76, align 8, !tbaa !56
  %conv77 = fptosi double %45 to i32
  %y78 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 1
  %46 = load double, double* %y78, align 8, !tbaa !57
  %conv79 = fptosi double %46 to i32
  %47 = load i32, i32* %type.addr, align 4, !tbaa !7
  %call80 = call i32 %41(%struct.gx_device_vector_s* %42, i32 %conv73, i32 %conv75, i32 %conv77, i32 %conv79, i32 %47) #6
  store i32 %call80, i32* %code, align 4, !tbaa !8
  %48 = load i32, i32* %code, align 4, !tbaa !8
  %cmp81 = icmp sge i32 %48, 0
  br i1 %cmp81, label %if.then.83, label %if.end

if.then.83:                                       ; preds = %if.then
  %49 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.83
  %50 = bitcast %struct.gs_point_s* %q to i8*
  call void @llvm.lifetime.end(i64 16, i8* %50) #2
  %51 = bitcast %struct.gs_point_s* %p to i8*
  call void @llvm.lifetime.end(i64 16, i8* %51) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.231 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.85

if.end.85:                                        ; preds = %cleanup.cont, %land.lhs.true.53, %land.lhs.true.48, %land.lhs.true.42, %land.lhs.true.36, %land.lhs.true.30, %land.lhs.true.25, %land.lhs.true.21, %lor.lhs.false.17, %lor.lhs.false, %entry
  %52 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs86 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %52, i32 0, i32 44
  %53 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs86, align 8, !tbaa !28
  %beginpath = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %53, i32 0, i32 13
  %54 = load i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)** %beginpath, align 8, !tbaa !58
  %55 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %56 = load i32, i32* %type.addr, align 4, !tbaa !7
  %call87 = call i32 %54(%struct.gx_device_vector_s* %55, i32 %56) #6
  store i32 %call87, i32* %code, align 4, !tbaa !8
  %57 = load i32, i32* %code, align 4, !tbaa !8
  %cmp88 = icmp slt i32 %57, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.85
  %58 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.231

if.end.91:                                        ; preds = %if.end.85
  %59 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %call92 = call i32 @gx_path_enum_init(%struct.gs_path_enum_s* %cenum, %struct.gx_path_s* %59) #6
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.230, %cleanup.227, %if.end.91
  %60 = bitcast [3 x %struct.gs_fixed_point_s]* %vs to i8*
  call void @llvm.lifetime.start(i64 24, i8* %60) #2
  %61 = bitcast i32* %pe_op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #2
  %arraydecay = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i32 0
  %call93 = call i32 @gx_path_enum_next(%struct.gs_path_enum_s* %cenum, %struct.gs_fixed_point_s* %arraydecay) #6
  store i32 %call93, i32* %pe_op, align 4, !tbaa !8
  br label %sw

sw:                                               ; preds = %if.end.219, %for.cond
  %62 = load i32, i32* %type.addr, align 4, !tbaa !7
  %and94 = and i32 %62, 16
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.then.96, label %if.end.168

if.then.96:                                       ; preds = %sw
  br label %opt

opt:                                              ; preds = %if.end.166, %if.then.96
  %63 = load i32, i32* %pe_op, align 4, !tbaa !8
  %cmp97 = icmp eq i32 %63, 2
  br i1 %cmp97, label %if.then.99, label %if.end.151

if.then.99:                                       ; preds = %opt
  %64 = load i32, i32* %incomplete_line, align 4, !tbaa !8
  %tobool100 = icmp ne i32 %64, 0
  br i1 %tobool100, label %if.end.102, label %if.then.101

if.then.101:                                      ; preds = %if.then.99
  %arrayidx = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i64 0
  %65 = bitcast %struct.gs_fixed_point_s* %line_end to i8*
  %66 = bitcast %struct.gs_fixed_point_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 8, i32 4, i1 false), !tbaa.struct !59
  store i32 1, i32* %incomplete_line, align 4, !tbaa !8
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.227

if.end.102:                                       ; preds = %if.then.99
  %arrayidx103 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i64 0
  %x104 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx103, i32 0, i32 0
  %67 = load i32, i32* %x104, align 4, !tbaa !60
  %x105 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %line_end, i32 0, i32 0
  %68 = load i32, i32* %x105, align 4, !tbaa !60
  %cmp106 = icmp eq i32 %67, %68
  br i1 %cmp106, label %if.then.108, label %if.else

if.then.108:                                      ; preds = %if.end.102
  %arrayidx109 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i64 0
  %x110 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx109, i32 0, i32 0
  %69 = load i32, i32* %x110, align 4, !tbaa !60
  %x111 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %line_start, i32 0, i32 0
  %70 = load i32, i32* %x111, align 4, !tbaa !60
  %cmp112 = icmp eq i32 %69, %70
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.125

land.lhs.true.114:                                ; preds = %if.then.108
  %y115 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %line_start, i32 0, i32 1
  %71 = load i32, i32* %y115, align 4, !tbaa !61
  %y116 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %line_end, i32 0, i32 1
  %72 = load i32, i32* %y116, align 4, !tbaa !61
  %arrayidx117 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i64 0
  %y118 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx117, i32 0, i32 1
  %73 = load i32, i32* %y118, align 4, !tbaa !61
  %call119 = call i32 @coord_between(i32 %71, i32 %72, i32 %73) #6
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.then.121, label %if.end.125

if.then.121:                                      ; preds = %land.lhs.true.114
  %arrayidx122 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i64 0
  %y123 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx122, i32 0, i32 1
  %74 = load i32, i32* %y123, align 4, !tbaa !61
  %y124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %line_end, i32 0, i32 1
  store i32 %74, i32* %y124, align 4, !tbaa !61
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.227

if.end.125:                                       ; preds = %land.lhs.true.114, %if.then.108
  br label %if.end.150

if.else:                                          ; preds = %if.end.102
  %arrayidx126 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i64 0
  %y127 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx126, i32 0, i32 1
  %75 = load i32, i32* %y127, align 4, !tbaa !61
  %y128 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %line_end, i32 0, i32 1
  %76 = load i32, i32* %y128, align 4, !tbaa !61
  %cmp129 = icmp eq i32 %75, %76
  br i1 %cmp129, label %if.then.131, label %if.end.149

if.then.131:                                      ; preds = %if.else
  %arrayidx132 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i64 0
  %y133 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx132, i32 0, i32 1
  %77 = load i32, i32* %y133, align 4, !tbaa !61
  %y134 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %line_start, i32 0, i32 1
  %78 = load i32, i32* %y134, align 4, !tbaa !61
  %cmp135 = icmp eq i32 %77, %78
  br i1 %cmp135, label %land.lhs.true.137, label %if.end.148

land.lhs.true.137:                                ; preds = %if.then.131
  %x138 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %line_start, i32 0, i32 0
  %79 = load i32, i32* %x138, align 4, !tbaa !60
  %x139 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %line_end, i32 0, i32 0
  %80 = load i32, i32* %x139, align 4, !tbaa !60
  %arrayidx140 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i64 0
  %x141 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx140, i32 0, i32 0
  %81 = load i32, i32* %x141, align 4, !tbaa !60
  %call142 = call i32 @coord_between(i32 %79, i32 %80, i32 %81) #6
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.then.144, label %if.end.148

if.then.144:                                      ; preds = %land.lhs.true.137
  %arrayidx145 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i64 0
  %x146 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx145, i32 0, i32 0
  %82 = load i32, i32* %x146, align 4, !tbaa !60
  %x147 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %line_end, i32 0, i32 0
  store i32 %82, i32* %x147, align 4, !tbaa !60
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.227

if.end.148:                                       ; preds = %land.lhs.true.137, %if.then.131
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.else
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.125
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %opt
  %83 = load i32, i32* %incomplete_line, align 4, !tbaa !8
  %tobool152 = icmp ne i32 %83, 0
  br i1 %tobool152, label %if.then.153, label %if.end.167

if.then.153:                                      ; preds = %if.end.151
  %84 = load i32, i32* %need_moveto, align 4, !tbaa !8
  %tobool154 = icmp ne i32 %84, 0
  br i1 %tobool154, label %if.then.155, label %if.end.161

if.then.155:                                      ; preds = %if.then.153
  %call156 = call i32 @gdev_vector_dopath_segment(%struct.gdev_vector_dopath_state_s* %state, i32 1, %struct.gs_fixed_point_s* %line_start) #6
  store i32 %call156, i32* %code, align 4, !tbaa !8
  %85 = load i32, i32* %code, align 4, !tbaa !8
  %cmp157 = icmp slt i32 %85, 0
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.then.155
  %86 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.227

if.end.160:                                       ; preds = %if.then.155
  store i32 0, i32* %need_moveto, align 4, !tbaa !8
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.then.153
  %call162 = call i32 @gdev_vector_dopath_segment(%struct.gdev_vector_dopath_state_s* %state, i32 2, %struct.gs_fixed_point_s* %line_end) #6
  store i32 %call162, i32* %code, align 4, !tbaa !8
  %87 = load i32, i32* %code, align 4, !tbaa !8
  %cmp163 = icmp slt i32 %87, 0
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.161
  %88 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %88, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.227

if.end.166:                                       ; preds = %if.end.161
  %89 = bitcast %struct.gs_fixed_point_s* %line_start to i8*
  %90 = bitcast %struct.gs_fixed_point_s* %line_end to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 8, i32 4, i1 false), !tbaa.struct !59
  store i32 0, i32* %incomplete_line, align 4, !tbaa !8
  br label %opt

if.end.167:                                       ; preds = %if.end.151
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %sw
  %91 = load i32, i32* %pe_op, align 4, !tbaa !8
  switch i32 %91, label %sw.epilog [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.173
    i32 1, label %sw.bb.183
    i32 2, label %sw.bb.192
    i32 5, label %sw.bb.192
    i32 4, label %sw.bb.202
  ]

sw.bb:                                            ; preds = %if.end.168
  br label %done

done:                                             ; preds = %if.then.212, %sw.bb
  %92 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs169 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %92, i32 0, i32 44
  %93 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs169, align 8, !tbaa !28
  %endpath = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %93, i32 0, i32 18
  %94 = load i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)** %endpath, align 8, !tbaa !62
  %95 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %96 = load i32, i32* %type.addr, align 4, !tbaa !7
  %call170 = call i32 %94(%struct.gx_device_vector_s* %95, i32 %96) #6
  store i32 %call170, i32* %code, align 4, !tbaa !8
  %97 = load i32, i32* %code, align 4, !tbaa !8
  %cmp171 = icmp slt i32 %97, 0
  br i1 %cmp171, label %cond.true, label %cond.false

cond.true:                                        ; preds = %done
  %98 = load i32, i32* %code, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %done
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %98, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.227

sw.bb.173:                                        ; preds = %if.end.168
  %99 = load i32, i32* %need_moveto, align 4, !tbaa !8
  %tobool174 = icmp ne i32 %99, 0
  br i1 %tobool174, label %if.then.175, label %if.end.181

if.then.175:                                      ; preds = %sw.bb.173
  %call176 = call i32 @gdev_vector_dopath_segment(%struct.gdev_vector_dopath_state_s* %state, i32 1, %struct.gs_fixed_point_s* %line_start) #6
  store i32 %call176, i32* %code, align 4, !tbaa !8
  %100 = load i32, i32* %code, align 4, !tbaa !8
  %cmp177 = icmp slt i32 %100, 0
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.then.175
  %101 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.227

if.end.180:                                       ; preds = %if.then.175
  store i32 0, i32* %need_moveto, align 4, !tbaa !8
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %sw.bb.173
  %arrayidx182 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i64 2
  %102 = bitcast %struct.gs_fixed_point_s* %line_start to i8*
  %103 = bitcast %struct.gs_fixed_point_s* %arrayidx182 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 8, i32 4, i1 false), !tbaa.struct !59
  br label %draw

sw.bb.183:                                        ; preds = %if.end.168
  %arrayidx184 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i64 0
  %104 = bitcast %struct.gs_fixed_point_s* %line_start to i8*
  %105 = bitcast %struct.gs_fixed_point_s* %arrayidx184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 8, i32 4, i1 false), !tbaa.struct !59
  %106 = load i32, i32* %type.addr, align 4, !tbaa !7
  %and185 = and i32 %106, 2
  %tobool186 = icmp ne i32 %and185, 0
  br i1 %tobool186, label %if.end.191, label %land.lhs.true.187

land.lhs.true.187:                                ; preds = %sw.bb.183
  %107 = load i32, i32* %type.addr, align 4, !tbaa !7
  %and188 = and i32 %107, 1
  %tobool189 = icmp ne i32 %and188, 0
  br i1 %tobool189, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %land.lhs.true.187
  store i32 1, i32* %need_moveto, align 4, !tbaa !8
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.227

if.end.191:                                       ; preds = %land.lhs.true.187, %sw.bb.183
  br label %draw

sw.bb.192:                                        ; preds = %if.end.168, %if.end.168
  %108 = load i32, i32* %need_moveto, align 4, !tbaa !8
  %tobool193 = icmp ne i32 %108, 0
  br i1 %tobool193, label %if.then.194, label %if.end.200

if.then.194:                                      ; preds = %sw.bb.192
  %call195 = call i32 @gdev_vector_dopath_segment(%struct.gdev_vector_dopath_state_s* %state, i32 1, %struct.gs_fixed_point_s* %line_start) #6
  store i32 %call195, i32* %code, align 4, !tbaa !8
  %109 = load i32, i32* %code, align 4, !tbaa !8
  %cmp196 = icmp slt i32 %109, 0
  br i1 %cmp196, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %if.then.194
  %110 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %110, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.227

if.end.199:                                       ; preds = %if.then.194
  store i32 0, i32* %need_moveto, align 4, !tbaa !8
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %sw.bb.192
  %arrayidx201 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i64 0
  %111 = bitcast %struct.gs_fixed_point_s* %line_start to i8*
  %112 = bitcast %struct.gs_fixed_point_s* %arrayidx201 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %112, i64 8, i32 4, i1 false), !tbaa.struct !59
  br label %draw

sw.bb.202:                                        ; preds = %if.end.168
  %113 = load i32, i32* %need_moveto, align 4, !tbaa !8
  %tobool203 = icmp ne i32 %113, 0
  br i1 %tobool203, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %sw.bb.202
  store i32 0, i32* %need_moveto, align 4, !tbaa !8
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.227

if.end.205:                                       ; preds = %sw.bb.202
  %114 = load i32, i32* %do_close, align 4, !tbaa !8
  %tobool206 = icmp ne i32 %114, 0
  br i1 %tobool206, label %if.end.220, label %if.then.207

if.then.207:                                      ; preds = %if.end.205
  %arraydecay208 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i32 0
  %call209 = call i32 @gx_path_enum_next(%struct.gs_path_enum_s* %cenum, %struct.gs_fixed_point_s* %arraydecay208) #6
  store i32 %call209, i32* %pe_op, align 4, !tbaa !8
  %115 = load i32, i32* %pe_op, align 4, !tbaa !8
  %cmp210 = icmp eq i32 %115, 0
  br i1 %cmp210, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %if.then.207
  br label %done

if.end.213:                                       ; preds = %if.then.207
  %arraydecay214 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i32 0
  %call215 = call i32 @gdev_vector_dopath_segment(%struct.gdev_vector_dopath_state_s* %state, i32 4, %struct.gs_fixed_point_s* %arraydecay214) #6
  store i32 %call215, i32* %code, align 4, !tbaa !8
  %116 = load i32, i32* %code, align 4, !tbaa !8
  %cmp216 = icmp slt i32 %116, 0
  br i1 %cmp216, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %if.end.213
  %117 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %117, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.227

if.end.219:                                       ; preds = %if.end.213
  br label %sw

if.end.220:                                       ; preds = %if.end.205
  br label %draw

draw:                                             ; preds = %if.end.220, %if.end.200, %if.end.191, %if.end.181
  %118 = load i32, i32* %pe_op, align 4, !tbaa !8
  %arraydecay221 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %vs, i32 0, i32 0
  %call222 = call i32 @gdev_vector_dopath_segment(%struct.gdev_vector_dopath_state_s* %state, i32 %118, %struct.gs_fixed_point_s* %arraydecay221) #6
  store i32 %call222, i32* %code, align 4, !tbaa !8
  %119 = load i32, i32* %code, align 4, !tbaa !8
  %cmp223 = icmp slt i32 %119, 0
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %draw
  %120 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %120, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.227

if.end.226:                                       ; preds = %draw
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.226, %if.end.168
  store i32 0, i32* %incomplete_line, align 4, !tbaa !8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.227

cleanup.227:                                      ; preds = %sw.epilog, %if.then.225, %if.then.218, %if.then.204, %if.then.198, %if.then.190, %if.then.179, %cond.end, %if.then.165, %if.then.159, %if.then.144, %if.then.121, %if.then.101
  %121 = bitcast i32* %pe_op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast [3 x %struct.gs_fixed_point_s]* %vs to i8*
  call void @llvm.lifetime.end(i64 24, i8* %122) #2
  %cleanup.dest.229 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.229, label %cleanup.231 [
    i32 0, label %cleanup.cont.230
    i32 3, label %for.cond
  ]

cleanup.cont.230:                                 ; preds = %cleanup.227
  br label %for.cond

cleanup.231:                                      ; preds = %cleanup.227, %if.then.90, %cleanup
  %123 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #2
  %124 = bitcast i32* %need_moveto to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast i32* %incomplete_line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  %126 = bitcast %struct.gs_fixed_point_s* %line_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #2
  %127 = bitcast %struct.gs_fixed_point_s* %line_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %128 = bitcast %struct.gdev_vector_dopath_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 72, i8* %128) #2
  %129 = bitcast %struct.gs_path_enum_s* %cenum to i8*
  call void @llvm.lifetime.end(i64 64, i8* %129) #2
  %130 = bitcast i32* %rtype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #2
  %131 = bitcast %struct.gs_fixed_rect_s* %rbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %131) #2
  %132 = bitcast i32* %do_close to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #2
  %133 = load i32, i32* %retval
  ret i32 %133
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gx_path_is_rectangular(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #0

; Function Attrs: nounwind uwtable
define void @gdev_vector_dopath_init(%struct.gdev_vector_dopath_state_s* %state, %struct.gx_device_vector_s* %vdev, i32 %type, %struct.gs_matrix_s* %pmat) #1 {
entry:
  %state.addr = alloca %struct.gdev_vector_dopath_state_s*, align 8
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %type.addr = alloca i32, align 4
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gdev_vector_dopath_state_s* %state, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !7
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %1 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %vdev1 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %1, i32 0, i32 0
  store %struct.gx_device_vector_s* %0, %struct.gx_device_vector_s** %vdev1, align 8, !tbaa !63
  %2 = load i32, i32* %type.addr, align 4, !tbaa !7
  %3 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %type2 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %3, i32 0, i32 1
  store i32 %2, i32* %type2, align 4, !tbaa !64
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_matrix_s* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %scale_mat = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %5, i32 0, i32 3
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_matrix_s* %scale_mat to i8*
  %8 = bitcast %struct.gs_matrix_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 4, i1 false), !tbaa.struct !65
  %9 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %scale_mat3 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %9, i32 0, i32 3
  %10 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %scale = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %10, i32 0, i32 62
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale, i32 0, i32 0
  %11 = load double, double* %x, align 8, !tbaa !67
  %div = fdiv double 1.000000e+00, %11
  %12 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %scale4 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %12, i32 0, i32 62
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale4, i32 0, i32 1
  %13 = load double, double* %y, align 8, !tbaa !68
  %div5 = fdiv double 1.000000e+00, %13
  %14 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %scale_mat6 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %14, i32 0, i32 3
  %call = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %scale_mat3, double %div, double %div5, %struct.gs_matrix_s* %scale_mat6) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %scale7 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %15, i32 0, i32 62
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale7, i32 0, i32 0
  %16 = load double, double* %x8, align 8, !tbaa !67
  %17 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %scale9 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %17, i32 0, i32 62
  %y10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale9, i32 0, i32 1
  %18 = load double, double* %y10, align 8, !tbaa !68
  %19 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %scale_mat11 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %19, i32 0, i32 3
  %call12 = call i32 @gs_make_scaling(double %16, double %18, %struct.gs_matrix_s* %scale_mat11) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %first = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %20, i32 0, i32 2
  store i32 1, i32* %first, align 4, !tbaa !69
  ret void
}

declare i32 @gs_point_transform_inverse(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gx_path_enum_init(%struct.gs_path_enum_s*, %struct.gx_path_s*) #0

declare i32 @gx_path_enum_next(%struct.gs_path_enum_s*, %struct.gs_fixed_point_s*) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @coord_between(i32 %start, i32 %mid, i32 %end) #1 {
entry:
  %start.addr = alloca i32, align 4
  %mid.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  store i32 %start, i32* %start.addr, align 4, !tbaa !8
  store i32 %mid, i32* %mid.addr, align 4, !tbaa !8
  store i32 %end, i32* %end.addr, align 4, !tbaa !8
  %0 = load i32, i32* %start.addr, align 4, !tbaa !8
  %1 = load i32, i32* %end.addr, align 4, !tbaa !8
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %start.addr, align 4, !tbaa !8
  %3 = load i32, i32* %mid.addr, align 4, !tbaa !8
  %cmp1 = icmp sle i32 %2, %3
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.true
  %4 = load i32, i32* %mid.addr, align 4, !tbaa !8
  %5 = load i32, i32* %end.addr, align 4, !tbaa !8
  %cmp2 = icmp sle i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.true
  %6 = phi i1 [ false, %cond.true ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %start.addr, align 4, !tbaa !8
  %8 = load i32, i32* %mid.addr, align 4, !tbaa !8
  %cmp3 = icmp sge i32 %7, %8
  br i1 %cmp3, label %land.rhs.4, label %land.end.6

land.rhs.4:                                       ; preds = %cond.false
  %9 = load i32, i32* %mid.addr, align 4, !tbaa !8
  %10 = load i32, i32* %end.addr, align 4, !tbaa !8
  %cmp5 = icmp sge i32 %9, %10
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.4, %cond.false
  %11 = phi i1 [ false, %cond.false ], [ %cmp5, %land.rhs.4 ]
  %land.ext7 = zext i1 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %land.end.6, %land.end
  %cond = phi i32 [ %land.ext, %land.end ], [ %land.ext7, %land.end.6 ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_dopath_segment(%struct.gdev_vector_dopath_state_s* %state, i32 %pe_op, %struct.gs_fixed_point_s* %vs) #1 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.gdev_vector_dopath_state_s*, align 8
  %pe_op.addr = alloca i32, align 4
  %vs.addr = alloca %struct.gs_fixed_point_s*, align 8
  %vdev = alloca %struct.gx_device_vector_s*, align 8
  %pmat = alloca %struct.gs_matrix_s*, align 8
  %vp = alloca [3 x %struct.gs_point_s], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gdev_vector_dopath_state_s* %state, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  store i32 %pe_op, i32* %pe_op.addr, align 4, !tbaa !8
  store %struct.gs_fixed_point_s* %vs, %struct.gs_fixed_point_s** %vs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %vdev1 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev1, align 8, !tbaa !63
  store %struct.gx_device_vector_s* %2, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_matrix_s** %pmat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %scale_mat = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %4, i32 0, i32 3
  store %struct.gs_matrix_s* %scale_mat, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %5 = bitcast [3 x %struct.gs_point_s]* %vp to i8*
  call void @llvm.lifetime.start(i64 48, i8* %5) #2
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %pe_op.addr, align 4, !tbaa !8
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.17
    i32 5, label %sw.bb.17
    i32 3, label %sw.bb.45
    i32 4, label %sw.bb.105
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %vs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i64 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  %9 = load i32, i32* %x, align 4, !tbaa !60
  %conv = sitofp i32 %9 to double
  %mul = fmul double %conv, 3.906250e-03
  %10 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %vs.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i64 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx2, i32 0, i32 1
  %11 = load i32, i32* %y, align 4, !tbaa !61
  %conv3 = sitofp i32 %11 to double
  %mul4 = fmul double %conv3, 3.906250e-03
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 0
  %call = call i32 @gs_point_transform_inverse(double %mul, double %mul4, %struct.gs_matrix_s* %12, %struct.gs_point_s* %arrayidx5) #6
  store i32 %call, i32* %code, align 4, !tbaa !8
  %13 = load i32, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %14 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %15 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %first = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %15, i32 0, i32 2
  %16 = load i32, i32* %first, align 4, !tbaa !69
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %17 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %17, i32 0, i32 4
  %arrayidx8 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 0
  %18 = bitcast %struct.gs_point_s* %start to i8*
  %19 = bitcast %struct.gs_point_s* %arrayidx8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false), !tbaa.struct !70
  %20 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %first9 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %20, i32 0, i32 2
  store i32 0, i32* %first9, align 4, !tbaa !69
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %21 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %21, i32 0, i32 44
  %22 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !28
  %moveto = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %22, i32 0, i32 14
  %23 = load i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)** %moveto, align 8, !tbaa !71
  %24 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 0
  %x12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx11, i32 0, i32 0
  %25 = load double, double* %x12, align 8, !tbaa !56
  %arrayidx13 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 0
  %y14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx13, i32 0, i32 1
  %26 = load double, double* %y14, align 8, !tbaa !57
  %27 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %27, i32 0, i32 1
  %28 = load i32, i32* %type, align 4, !tbaa !64
  %call15 = call i32 %23(%struct.gx_device_vector_s* %24, double 0.000000e+00, double 0.000000e+00, double %25, double %26, i32 %28) #6
  store i32 %call15, i32* %code, align 4, !tbaa !8
  %29 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %29, i32 0, i32 5
  %arrayidx16 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 0
  %30 = bitcast %struct.gs_point_s* %prev to i8*
  %31 = bitcast %struct.gs_point_s* %arrayidx16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false), !tbaa.struct !70
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry, %entry
  %32 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %vs.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %32, i64 0
  %x19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx18, i32 0, i32 0
  %33 = load i32, i32* %x19, align 4, !tbaa !60
  %conv20 = sitofp i32 %33 to double
  %mul21 = fmul double %conv20, 3.906250e-03
  %34 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %vs.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %34, i64 0
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx22, i32 0, i32 1
  %35 = load i32, i32* %y23, align 4, !tbaa !61
  %conv24 = sitofp i32 %35 to double
  %mul25 = fmul double %conv24, 3.906250e-03
  %36 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 0
  %call27 = call i32 @gs_point_transform_inverse(double %mul21, double %mul25, %struct.gs_matrix_s* %36, %struct.gs_point_s* %arrayidx26) #6
  store i32 %call27, i32* %code, align 4, !tbaa !8
  %37 = load i32, i32* %code, align 4, !tbaa !8
  %cmp28 = icmp slt i32 %37, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %sw.bb.17
  %38 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %sw.bb.17
  %39 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %vec_procs32 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %39, i32 0, i32 44
  %40 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs32, align 8, !tbaa !28
  %lineto = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %40, i32 0, i32 15
  %41 = load i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)** %lineto, align 8, !tbaa !72
  %42 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %43 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %prev33 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %43, i32 0, i32 5
  %x34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %prev33, i32 0, i32 0
  %44 = load double, double* %x34, align 8, !tbaa !73
  %45 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %prev35 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %45, i32 0, i32 5
  %y36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %prev35, i32 0, i32 1
  %46 = load double, double* %y36, align 8, !tbaa !74
  %arrayidx37 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 0
  %x38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx37, i32 0, i32 0
  %47 = load double, double* %x38, align 8, !tbaa !56
  %arrayidx39 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 0
  %y40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx39, i32 0, i32 1
  %48 = load double, double* %y40, align 8, !tbaa !57
  %49 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %type41 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %49, i32 0, i32 1
  %50 = load i32, i32* %type41, align 4, !tbaa !64
  %call42 = call i32 %41(%struct.gx_device_vector_s* %42, double %44, double %46, double %47, double %48, i32 %50) #6
  store i32 %call42, i32* %code, align 4, !tbaa !8
  %51 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %prev43 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %51, i32 0, i32 5
  %arrayidx44 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 0
  %52 = bitcast %struct.gs_point_s* %prev43 to i8*
  %53 = bitcast %struct.gs_point_s* %arrayidx44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 16, i32 8, i1 false), !tbaa.struct !70
  br label %sw.epilog

sw.bb.45:                                         ; preds = %entry
  %54 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %vs.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %54, i64 0
  %x47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx46, i32 0, i32 0
  %55 = load i32, i32* %x47, align 4, !tbaa !60
  %conv48 = sitofp i32 %55 to double
  %mul49 = fmul double %conv48, 3.906250e-03
  %56 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %vs.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %56, i64 0
  %y51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx50, i32 0, i32 1
  %57 = load i32, i32* %y51, align 4, !tbaa !61
  %conv52 = sitofp i32 %57 to double
  %mul53 = fmul double %conv52, 3.906250e-03
  %58 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 0
  %call55 = call i32 @gs_point_transform_inverse(double %mul49, double %mul53, %struct.gs_matrix_s* %58, %struct.gs_point_s* %arrayidx54) #6
  store i32 %call55, i32* %code, align 4, !tbaa !8
  %59 = load i32, i32* %code, align 4, !tbaa !8
  %cmp56 = icmp slt i32 %59, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %sw.bb.45
  %60 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %sw.bb.45
  %61 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %vs.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %61, i64 1
  %x61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx60, i32 0, i32 0
  %62 = load i32, i32* %x61, align 4, !tbaa !60
  %conv62 = sitofp i32 %62 to double
  %mul63 = fmul double %conv62, 3.906250e-03
  %63 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %vs.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %63, i64 1
  %y65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx64, i32 0, i32 1
  %64 = load i32, i32* %y65, align 4, !tbaa !61
  %conv66 = sitofp i32 %64 to double
  %mul67 = fmul double %conv66, 3.906250e-03
  %65 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 1
  %call69 = call i32 @gs_point_transform_inverse(double %mul63, double %mul67, %struct.gs_matrix_s* %65, %struct.gs_point_s* %arrayidx68) #6
  store i32 %call69, i32* %code, align 4, !tbaa !8
  %66 = load i32, i32* %code, align 4, !tbaa !8
  %cmp70 = icmp slt i32 %66, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.59
  %67 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %if.end.59
  %68 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %vs.addr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %68, i64 2
  %x75 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx74, i32 0, i32 0
  %69 = load i32, i32* %x75, align 4, !tbaa !60
  %conv76 = sitofp i32 %69 to double
  %mul77 = fmul double %conv76, 3.906250e-03
  %70 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %vs.addr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %70, i64 2
  %y79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx78, i32 0, i32 1
  %71 = load i32, i32* %y79, align 4, !tbaa !61
  %conv80 = sitofp i32 %71 to double
  %mul81 = fmul double %conv80, 3.906250e-03
  %72 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 2
  %call83 = call i32 @gs_point_transform_inverse(double %mul77, double %mul81, %struct.gs_matrix_s* %72, %struct.gs_point_s* %arrayidx82) #6
  %73 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %vec_procs84 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %73, i32 0, i32 44
  %74 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs84, align 8, !tbaa !28
  %curveto = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %74, i32 0, i32 16
  %75 = load i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)** %curveto, align 8, !tbaa !75
  %76 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %77 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %prev85 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %77, i32 0, i32 5
  %x86 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %prev85, i32 0, i32 0
  %78 = load double, double* %x86, align 8, !tbaa !73
  %79 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %prev87 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %79, i32 0, i32 5
  %y88 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %prev87, i32 0, i32 1
  %80 = load double, double* %y88, align 8, !tbaa !74
  %arrayidx89 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 0
  %x90 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx89, i32 0, i32 0
  %81 = load double, double* %x90, align 8, !tbaa !56
  %arrayidx91 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 0
  %y92 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx91, i32 0, i32 1
  %82 = load double, double* %y92, align 8, !tbaa !57
  %arrayidx93 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 1
  %x94 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx93, i32 0, i32 0
  %83 = load double, double* %x94, align 8, !tbaa !56
  %arrayidx95 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 1
  %y96 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx95, i32 0, i32 1
  %84 = load double, double* %y96, align 8, !tbaa !57
  %arrayidx97 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 2
  %x98 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx97, i32 0, i32 0
  %85 = load double, double* %x98, align 8, !tbaa !56
  %arrayidx99 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 2
  %y100 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx99, i32 0, i32 1
  %86 = load double, double* %y100, align 8, !tbaa !57
  %87 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %type101 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %87, i32 0, i32 1
  %88 = load i32, i32* %type101, align 4, !tbaa !64
  %call102 = call i32 %75(%struct.gx_device_vector_s* %76, double %78, double %80, double %81, double %82, double %83, double %84, double %85, double %86, i32 %88) #6
  store i32 %call102, i32* %code, align 4, !tbaa !8
  %89 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %prev103 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %89, i32 0, i32 5
  %arrayidx104 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %vp, i32 0, i64 2
  %90 = bitcast %struct.gs_point_s* %prev103 to i8*
  %91 = bitcast %struct.gs_point_s* %arrayidx104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 16, i32 8, i1 false), !tbaa.struct !70
  br label %sw.epilog

sw.bb.105:                                        ; preds = %entry
  %92 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %vec_procs106 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %92, i32 0, i32 44
  %93 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs106, align 8, !tbaa !28
  %closepath = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %93, i32 0, i32 17
  %94 = load i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)** %closepath, align 8, !tbaa !76
  %95 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev, align 8, !tbaa !1
  %96 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %prev107 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %96, i32 0, i32 5
  %x108 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %prev107, i32 0, i32 0
  %97 = load double, double* %x108, align 8, !tbaa !73
  %98 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %prev109 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %98, i32 0, i32 5
  %y110 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %prev109, i32 0, i32 1
  %99 = load double, double* %y110, align 8, !tbaa !74
  %100 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %start111 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %100, i32 0, i32 4
  %x112 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start111, i32 0, i32 0
  %101 = load double, double* %x112, align 8, !tbaa !77
  %102 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %start113 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %102, i32 0, i32 4
  %y114 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start113, i32 0, i32 1
  %103 = load double, double* %y114, align 8, !tbaa !78
  %104 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %type115 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %104, i32 0, i32 1
  %105 = load i32, i32* %type115, align 4, !tbaa !64
  %call116 = call i32 %94(%struct.gx_device_vector_s* %95, double %97, double %99, double %101, double %103, i32 %105) #6
  store i32 %call116, i32* %code, align 4, !tbaa !8
  %106 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %prev117 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %106, i32 0, i32 5
  %107 = load %struct.gdev_vector_dopath_state_s*, %struct.gdev_vector_dopath_state_s** %state.addr, align 8, !tbaa !1
  %start118 = getelementptr inbounds %struct.gdev_vector_dopath_state_s, %struct.gdev_vector_dopath_state_s* %107, i32 0, i32 4
  %108 = bitcast %struct.gs_point_s* %prev117 to i8*
  %109 = bitcast %struct.gs_point_s* %start118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 16, i32 8, i1 false), !tbaa.struct !70
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.105, %if.end.73, %if.end.31, %if.end.10
  %110 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %110, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.72, %if.then.58, %if.then.30, %if.then
  %111 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast [3 x %struct.gs_point_s]* %vp to i8*
  call void @llvm.lifetime.end(i64 48, i8* %112) #2
  %113 = bitcast %struct.gs_matrix_s** %pmat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #2
  %114 = bitcast %struct.gx_device_vector_s** %vdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #2
  %115 = load i32, i32* %retval
  ret i32 %115
}

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_dorect(%struct.gx_device_vector_s* %vdev, i32 %x0, i32 %y0, i32 %x1, i32 %y1, i32 %type) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !8
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !8
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !8
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !8
  store i32 %type, i32* %type.addr, align 4, !tbaa !7
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %1, i32 0, i32 44
  %2 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !28
  %beginpath = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %2, i32 0, i32 13
  %3 = load i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)** %beginpath, align 8, !tbaa !58
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %5 = load i32, i32* %type.addr, align 4, !tbaa !7
  %call = call i32 %3(%struct.gx_device_vector_s* %4, i32 %5) #6
  store i32 %call, i32* %code, align 4, !tbaa !8
  %6 = load i32, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %9 = load i32, i32* %x0.addr, align 4, !tbaa !8
  %10 = load i32, i32* %y0.addr, align 4, !tbaa !8
  %11 = load i32, i32* %x1.addr, align 4, !tbaa !8
  %12 = load i32, i32* %y1.addr, align 4, !tbaa !8
  %13 = load i32, i32* %type.addr, align 4, !tbaa !7
  %and = and i32 %13, 2
  %cmp1 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp1 to i32
  %call2 = call i32 @gdev_vector_write_rectangle(%struct.gx_device_vector_s* %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %conv, i32 0) #6
  store i32 %call2, i32* %code, align 4, !tbaa !8
  %14 = load i32, i32* %code, align 4, !tbaa !8
  %cmp3 = icmp slt i32 %14, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %16 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs7 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %16, i32 0, i32 44
  %17 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs7, align 8, !tbaa !28
  %endpath = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %17, i32 0, i32 18
  %18 = load i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)** %endpath, align 8, !tbaa !62
  %19 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %20 = load i32, i32* %type.addr, align 4, !tbaa !7
  %call8 = call i32 %18(%struct.gx_device_vector_s* %19, i32 %20) #6
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_write_rectangle(%struct.gx_device_vector_s* %vdev, i32 %x0, i32 %y0, i32 %x1, i32 %y1, i32 %close, i32 %direction) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %close.addr = alloca i32, align 4
  %direction.addr = alloca i32, align 4
  %points = alloca [4 x %struct.gs_fixed_point_s], align 16
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !8
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !8
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !8
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !8
  store i32 %close, i32* %close.addr, align 4, !tbaa !8
  store i32 %direction, i32* %direction.addr, align 4, !tbaa !7
  %0 = bitcast [4 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #2
  %1 = load i32, i32* %x0.addr, align 4, !tbaa !8
  %arrayidx = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  store i32 %1, i32* %x, align 4, !tbaa !60
  %2 = load i32, i32* %y0.addr, align 4, !tbaa !8
  %arrayidx1 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx1, i32 0, i32 1
  store i32 %2, i32* %y, align 4, !tbaa !61
  %3 = load i32, i32* %x1.addr, align 4, !tbaa !8
  %arrayidx2 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx2, i32 0, i32 0
  store i32 %3, i32* %x3, align 4, !tbaa !60
  %4 = load i32, i32* %y1.addr, align 4, !tbaa !8
  %arrayidx4 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx4, i32 0, i32 1
  store i32 %4, i32* %y5, align 4, !tbaa !61
  %5 = load i32, i32* %direction.addr, align 4, !tbaa !7
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %x1.addr, align 4, !tbaa !8
  %arrayidx6 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx6, i32 0, i32 0
  store i32 %6, i32* %x7, align 4, !tbaa !60
  %7 = load i32, i32* %y0.addr, align 4, !tbaa !8
  %arrayidx8 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx8, i32 0, i32 1
  store i32 %7, i32* %y9, align 4, !tbaa !61
  %8 = load i32, i32* %x0.addr, align 4, !tbaa !8
  %arrayidx10 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 3
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx10, i32 0, i32 0
  store i32 %8, i32* %x11, align 4, !tbaa !60
  %9 = load i32, i32* %y1.addr, align 4, !tbaa !8
  %arrayidx12 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 3
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx12, i32 0, i32 1
  store i32 %9, i32* %y13, align 4, !tbaa !61
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %x0.addr, align 4, !tbaa !8
  %arrayidx14 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx14, i32 0, i32 0
  store i32 %10, i32* %x15, align 4, !tbaa !60
  %11 = load i32, i32* %y1.addr, align 4, !tbaa !8
  %arrayidx16 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %y17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx16, i32 0, i32 1
  store i32 %11, i32* %y17, align 4, !tbaa !61
  %12 = load i32, i32* %x1.addr, align 4, !tbaa !8
  %arrayidx18 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 3
  %x19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx18, i32 0, i32 0
  store i32 %12, i32* %x19, align 4, !tbaa !60
  %13 = load i32, i32* %y0.addr, align 4, !tbaa !8
  %arrayidx20 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 3
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx20, i32 0, i32 1
  store i32 %13, i32* %y21, align 4, !tbaa !61
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %15 = load i32, i32* %close.addr, align 4, !tbaa !8
  %call = call i32 @gdev_vector_write_polygon(%struct.gx_device_vector_s* %14, %struct.gs_fixed_point_s* %arraydecay, i32 4, i32 %15, i32 0) #6
  %16 = bitcast [4 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.end(i64 32, i8* %16) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @gdev_vector_init(%struct.gx_device_vector_s* %vdev) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  call void @gdev_vector_reset(%struct.gx_device_vector_s* %0) #6
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %scale = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %1, i32 0, i32 62
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale, i32 0, i32 1
  store double 1.000000e+00, double* %y, align 8, !tbaa !68
  %2 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %scale1 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %2, i32 0, i32 62
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale1, i32 0, i32 0
  store double 1.000000e+00, double* %x, align 8, !tbaa !67
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %in_page = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %3, i32 0, i32 63
  store i32 0, i32* %in_page, align 4, !tbaa !79
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  call void @gdev_vector_load_cache(%struct.gx_device_vector_s* %4) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @gdev_vector_reset(%struct.gx_device_vector_s* %vdev) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %0, i32 0, i32 51
  %1 = bitcast %struct.gs_imager_state_s* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.gs_imager_state_s* @gdev_vector_reset.state_initial to i8*), i64 1616, i32 8, i1 false), !tbaa.struct !80
  %2 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %saved_fill_color = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %2, i32 0, i32 56
  call void @gx_hld_saved_color_init(%struct.gx_hl_saved_color_s* %saved_fill_color) #6
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %saved_stroke_color = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %3, i32 0, i32 57
  call void @gx_hld_saved_color_init(%struct.gx_hl_saved_color_s* %saved_stroke_color) #6
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !83
  %call = call i64 @gs_next_ids(%struct.gs_memory_s* %5, i32 1) #6
  %6 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %no_clip_path_id = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %6, i32 0, i32 58
  store i64 %call, i64* %no_clip_path_id, align 8, !tbaa !84
  %7 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %clip_path_id = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %7, i32 0, i32 59
  store i64 %call, i64* %clip_path_id, align 8, !tbaa !85
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gdev_vector_load_cache(%struct.gx_device_vector_s* %vdev) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_vector_s* %0 to %struct.gx_device_s*
  %call = call i64 @gx_device_black(%struct.gx_device_s* %1) #6
  %2 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %black = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %2, i32 0, i32 65
  store i64 %call, i64* %black, align 8, !tbaa !86
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_vector_s* %3 to %struct.gx_device_s*
  %call1 = call i64 @gx_device_white(%struct.gx_device_s* %4) #6
  %5 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %white = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %5, i32 0, i32 66
  store i64 %call1, i64* %white, align 8, !tbaa !87
  ret void
}

declare %struct.gx_color_map_procs_s* @gx_default_get_cmap_procs(%struct.gs_imager_state_s*, %struct.gx_device_s*) #0

declare void @gx_hld_saved_color_init(%struct.gx_hl_saved_color_s*) #0

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #0

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_open_file_options(%struct.gx_device_vector_s* %vdev, i32 %strmbuf_size, i32 %open_options) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %strmbuf_size.addr = alloca i32, align 4
  %open_options.addr = alloca i32, align 4
  %binary = alloca i32, align 4
  %code = alloca i32, align 4
  %icc_struct = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %strmbuf_size, i32* %strmbuf_size.addr, align 4, !tbaa !8
  store i32 %open_options, i32* %open_options.addr, align 4, !tbaa !8
  %0 = bitcast i32* %binary to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %open_options.addr, align 4, !tbaa !8
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %binary, align 4, !tbaa !8
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 -1, i32* %code, align 4, !tbaa !8
  %3 = bitcast %struct.cmm_dev_profile_s** %icc_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i32, i32* %open_options.addr, align 4, !tbaa !8
  %and1 = and i32 %4, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_vector_s* %5 to %struct.gx_device_s*
  %7 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %7, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %8 = load i32, i32* %binary, align 4, !tbaa !8
  %9 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %9, i32 0, i32 46
  %call = call i32 @gx_device_open_output_file(%struct.gx_device_s* %6, i8* %arraydecay, i32 %8, i32 1, %struct._IO_FILE** %file) #6
  store i32 %call, i32* %code, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %open_options.addr, align 4, !tbaa !8
  %and3 = and i32 %11, 6
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %land.lhs.true
  %12 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_vector_s* %12 to %struct.gx_device_s*
  %14 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %fname6 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %14, i32 0, i32 45
  %arraydecay7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname6, i32 0, i32 0
  %15 = load i32, i32* %binary, align 4, !tbaa !8
  %16 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %file8 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %16, i32 0, i32 46
  %call9 = call i32 @gx_device_open_output_file(%struct.gx_device_s* %13, i8* %arraydecay7, i32 %15, i32 0, %struct._IO_FILE** %file8) #6
  store i32 %call9, i32* %code, align 4, !tbaa !8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %land.lhs.true, %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !8
  %cmp11 = icmp sge i32 %17, 0
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.18

land.lhs.true.12:                                 ; preds = %if.end.10
  %18 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %18, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %19 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !88
  %cmp13 = icmp ne i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %19, null
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %land.lhs.true.12
  %20 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %20, i32 0, i32 42
  %get_profile16 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs15, i32 0, i32 67
  %21 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile16, align 8, !tbaa !88
  %22 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_vector_s* %22 to %struct.gx_device_s*
  %call17 = call i32 %21(%struct.gx_device_s* %23, %struct.cmm_dev_profile_s** %icc_struct) #6
  store i32 %call17, i32* %code, align 4, !tbaa !8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %land.lhs.true.12, %if.end.10
  %24 = load i32, i32* %code, align 4, !tbaa !8
  %cmp19 = icmp slt i32 %24, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %25 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.18
  %26 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %26, i32 0, i32 43
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !89
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 7
  %28 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !90
  %29 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory23 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %29, i32 0, i32 43
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory23, align 8, !tbaa !89
  %31 = load i32, i32* %strmbuf_size.addr, align 4, !tbaa !8
  %call24 = call i8* %28(%struct.gs_memory_s* %30, i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #6
  %32 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strmbuf = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %32, i32 0, i32 48
  store i8* %call24, i8** %strmbuf, align 8, !tbaa !93
  %cmp25 = icmp eq i8* %call24, null
  br i1 %cmp25, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.21
  %33 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory26 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %33, i32 0, i32 43
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory26, align 8, !tbaa !89
  %call27 = call %struct.stream_s* @s_alloc(%struct.gs_memory_s* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)) #6
  %35 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %35, i32 0, i32 47
  store %struct.stream_s* %call27, %struct.stream_s** %strm, align 8, !tbaa !94
  %cmp28 = icmp eq %struct.stream_s* %call27, null
  br i1 %cmp28, label %if.then.38, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false
  %36 = load i32, i32* %open_options.addr, align 4, !tbaa !8
  %and30 = and i32 %36, 8
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.73

land.lhs.true.32:                                 ; preds = %lor.lhs.false.29
  %37 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory33 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %37, i32 0, i32 43
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory33, align 8, !tbaa !89
  %procs34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %alloc_struct_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs34, i32 0, i32 9
  %39 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_immovable, align 8, !tbaa !95
  %40 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory35 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %40, i32 0, i32 43
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory35, align 8, !tbaa !89
  %call36 = call i8* %39(%struct.gs_memory_s* %41, %struct.gs_memory_struct_type_s* @st_device_bbox, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #6
  %42 = bitcast i8* %call36 to %struct.gx_device_bbox_s*
  %43 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %43, i32 0, i32 64
  store %struct.gx_device_bbox_s* %42, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !96
  %cmp37 = icmp eq %struct.gx_device_bbox_s* %42, null
  br i1 %cmp37, label %if.then.38, label %if.end.73

if.then.38:                                       ; preds = %land.lhs.true.32, %lor.lhs.false, %if.end.21
  %44 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device39 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %44, i32 0, i32 64
  %45 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device39, align 8, !tbaa !96
  %tobool40 = icmp ne %struct.gx_device_bbox_s* %45, null
  br i1 %tobool40, label %if.then.41, label %if.end.46

if.then.41:                                       ; preds = %if.then.38
  %46 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory42 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %46, i32 0, i32 43
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory42, align 8, !tbaa !89
  %procs43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs43, i32 0, i32 2
  %48 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !97
  %49 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory44 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %49, i32 0, i32 43
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory44, align 8, !tbaa !89
  %51 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device45 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %51, i32 0, i32 64
  %52 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device45, align 8, !tbaa !96
  %53 = bitcast %struct.gx_device_bbox_s* %52 to i8*
  call void %48(%struct.gs_memory_s* %50, i8* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #6
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.41, %if.then.38
  %54 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device47 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %54, i32 0, i32 64
  store %struct.gx_device_bbox_s* null, %struct.gx_device_bbox_s** %bbox_device47, align 8, !tbaa !96
  %55 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strm48 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %55, i32 0, i32 47
  %56 = load %struct.stream_s*, %struct.stream_s** %strm48, align 8, !tbaa !94
  %tobool49 = icmp ne %struct.stream_s* %56, null
  br i1 %tobool49, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %if.end.46
  %57 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory51 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %57, i32 0, i32 43
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory51, align 8, !tbaa !89
  %procs52 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 1
  %free_object53 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs52, i32 0, i32 2
  %59 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object53, align 8, !tbaa !97
  %60 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory54 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %60, i32 0, i32 43
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory54, align 8, !tbaa !89
  %62 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strm55 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %62, i32 0, i32 47
  %63 = load %struct.stream_s*, %struct.stream_s** %strm55, align 8, !tbaa !94
  %64 = bitcast %struct.stream_s* %63 to i8*
  call void %59(%struct.gs_memory_s* %61, i8* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)) #6
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.50, %if.end.46
  %65 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strm57 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %65, i32 0, i32 47
  store %struct.stream_s* null, %struct.stream_s** %strm57, align 8, !tbaa !94
  %66 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strmbuf58 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %66, i32 0, i32 48
  %67 = load i8*, i8** %strmbuf58, align 8, !tbaa !93
  %tobool59 = icmp ne i8* %67, null
  br i1 %tobool59, label %if.then.60, label %if.end.66

if.then.60:                                       ; preds = %if.end.56
  %68 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory61 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %68, i32 0, i32 43
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory61, align 8, !tbaa !89
  %procs62 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 1
  %free_object63 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs62, i32 0, i32 2
  %70 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object63, align 8, !tbaa !97
  %71 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory64 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %71, i32 0, i32 43
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory64, align 8, !tbaa !89
  %73 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strmbuf65 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %73, i32 0, i32 48
  %74 = load i8*, i8** %strmbuf65, align 8, !tbaa !93
  call void %70(%struct.gs_memory_s* %72, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #6
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.60, %if.end.56
  %75 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strmbuf67 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %75, i32 0, i32 48
  store i8* null, i8** %strmbuf67, align 8, !tbaa !93
  %76 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %77 = bitcast %struct.gx_device_vector_s* %76 to %struct.gx_device_s*
  %78 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %fname68 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %78, i32 0, i32 45
  %arraydecay69 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname68, i32 0, i32 0
  %79 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %file70 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %79, i32 0, i32 46
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %file70, align 8, !tbaa !98
  %call71 = call i32 @gx_device_close_output_file(%struct.gx_device_s* %77, i8* %arraydecay69, %struct._IO_FILE* %80) #6
  %81 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %file72 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %81, i32 0, i32 46
  store %struct._IO_FILE* null, %struct._IO_FILE** %file72, align 8, !tbaa !98
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %land.lhs.true.32, %lor.lhs.false.29
  %82 = load i32, i32* %strmbuf_size.addr, align 4, !tbaa !8
  %83 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strmbuf_size74 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %83, i32 0, i32 49
  store i32 %82, i32* %strmbuf_size74, align 4, !tbaa !99
  %84 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strm75 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %84, i32 0, i32 47
  %85 = load %struct.stream_s*, %struct.stream_s** %strm75, align 8, !tbaa !94
  %86 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %file76 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %86, i32 0, i32 46
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %file76, align 8, !tbaa !98
  %88 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strmbuf77 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %88, i32 0, i32 48
  %89 = load i8*, i8** %strmbuf77, align 8, !tbaa !93
  %90 = load i32, i32* %strmbuf_size.addr, align 4, !tbaa !8
  call void @swrite_file(%struct.stream_s* %85, %struct._IO_FILE* %87, i8* %89, i32 %90) #6
  %91 = load i32, i32* %open_options.addr, align 4, !tbaa !8
  %92 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %open_options78 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %92, i32 0, i32 50
  store i32 %91, i32* %open_options78, align 4, !tbaa !100
  %93 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strm79 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %93, i32 0, i32 47
  %94 = load %struct.stream_s*, %struct.stream_s** %strm79, align 8, !tbaa !94
  %procs80 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %94, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs80, i32 0, i32 3
  %95 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !101
  %96 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strm81 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %96, i32 0, i32 47
  %97 = load %struct.stream_s*, %struct.stream_s** %strm81, align 8, !tbaa !94
  %procs82 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %97, i32 0, i32 14
  %close = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs82, i32 0, i32 4
  store i32 (%struct.stream_s*)* %95, i32 (%struct.stream_s*)** %close, align 8, !tbaa !106
  %98 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device83 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %98, i32 0, i32 64
  %99 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device83, align 8, !tbaa !96
  %tobool84 = icmp ne %struct.gx_device_bbox_s* %99, null
  br i1 %tobool84, label %if.then.85, label %if.end.132

if.then.85:                                       ; preds = %if.end.73
  %100 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device86 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %100, i32 0, i32 64
  %101 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device86, align 8, !tbaa !96
  %102 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory87 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %102, i32 0, i32 43
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory87, align 8, !tbaa !89
  call void @gx_device_bbox_init(%struct.gx_device_bbox_s* %101, %struct.gx_device_s* null, %struct.gs_memory_s* %103) #6
  br label %do.body

do.body:                                          ; preds = %if.then.85
  %104 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device88 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %104, i32 0, i32 64
  %105 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device88, align 8, !tbaa !96
  %tobool89 = icmp ne %struct.gx_device_bbox_s* %105, null
  br i1 %tobool89, label %if.then.90, label %if.end.96

if.then.90:                                       ; preds = %do.body
  br label %do.body.91

do.body.91:                                       ; preds = %if.then.90
  %106 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device92 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %106, i32 0, i32 64
  %107 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device92, align 8, !tbaa !96
  %rc = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %107, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %108 = load i64, i64* %ref_count, align 8, !tbaa !107
  %inc = add nsw i64 %108, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !107
  br label %do.body.93

do.body.93:                                       ; preds = %do.body.91
  br label %do.cond

do.cond:                                          ; preds = %do.body.93
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.94

do.cond.94:                                       ; preds = %do.end
  br label %do.end.95

do.end.95:                                        ; preds = %do.cond.94
  br label %if.end.96

if.end.96:                                        ; preds = %do.end.95, %do.body
  br label %do.cond.97

do.cond.97:                                       ; preds = %if.end.96
  br label %do.end.98

do.end.98:                                        ; preds = %do.cond.97
  %109 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !1
  %110 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device99 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %110, i32 0, i32 64
  %111 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device99, align 8, !tbaa !96
  %icc_struct100 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %111, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %109, %struct.cmm_dev_profile_s** %icc_struct100, align 8, !tbaa !110
  br label %do.body.101

do.body.101:                                      ; preds = %do.end.98
  %112 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device102 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %112, i32 0, i32 64
  %113 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device102, align 8, !tbaa !96
  %icc_struct103 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %113, i32 0, i32 39
  %114 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct103, align 8, !tbaa !110
  %tobool104 = icmp ne %struct.cmm_dev_profile_s* %114, null
  br i1 %tobool104, label %if.then.105, label %if.end.117

if.then.105:                                      ; preds = %do.body.101
  br label %do.body.106

do.body.106:                                      ; preds = %if.then.105
  %115 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device107 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %115, i32 0, i32 64
  %116 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device107, align 8, !tbaa !96
  %icc_struct108 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %116, i32 0, i32 39
  %117 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct108, align 8, !tbaa !110
  %rc109 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %117, i32 0, i32 14
  %ref_count110 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc109, i32 0, i32 0
  %118 = load i64, i64* %ref_count110, align 8, !tbaa !111
  %inc111 = add nsw i64 %118, 1
  store i64 %inc111, i64* %ref_count110, align 8, !tbaa !111
  br label %do.body.112

do.body.112:                                      ; preds = %do.body.106
  br label %do.cond.113

do.cond.113:                                      ; preds = %do.body.112
  br label %do.end.114

do.end.114:                                       ; preds = %do.cond.113
  br label %do.cond.115

do.cond.115:                                      ; preds = %do.end.114
  br label %do.end.116

do.end.116:                                       ; preds = %do.cond.115
  br label %if.end.117

if.end.117:                                       ; preds = %do.end.116, %do.body.101
  br label %do.cond.118

do.cond.118:                                      ; preds = %if.end.117
  br label %do.end.119

do.end.119:                                       ; preds = %do.cond.118
  %119 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device120 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %119, i32 0, i32 64
  %120 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device120, align 8, !tbaa !96
  %121 = bitcast %struct.gx_device_bbox_s* %120 to %struct.gx_device_s*
  %122 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %122, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %123 = load float, float* %arrayidx, align 4, !tbaa !66
  %conv = fpext float %123 to double
  %124 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %HWResolution121 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %124, i32 0, i32 22
  %arrayidx122 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution121, i32 0, i64 1
  %125 = load float, float* %arrayidx122, align 4, !tbaa !66
  %conv123 = fpext float %125 to double
  call void @gx_device_set_resolution(%struct.gx_device_s* %121, double %conv, double %conv123) #6
  %126 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %procs124 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %126, i32 0, i32 42
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs124, i32 0, i32 1
  %127 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8, !tbaa !113
  %128 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device125 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %128, i32 0, i32 64
  %129 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device125, align 8, !tbaa !96
  %procs126 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %129, i32 0, i32 42
  %get_initial_matrix127 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs126, i32 0, i32 1
  store void (%struct.gx_device_s*, %struct.gs_matrix_s*)* %127, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix127, align 8, !tbaa !114
  %130 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device128 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %130, i32 0, i32 64
  %131 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device128, align 8, !tbaa !96
  %procs129 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %131, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs129, i32 0, i32 0
  %132 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !115
  %133 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device130 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %133, i32 0, i32 64
  %134 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device130, align 8, !tbaa !96
  %135 = bitcast %struct.gx_device_bbox_s* %134 to %struct.gx_device_s*
  %call131 = call i32 %132(%struct.gx_device_s* %135) #6
  br label %if.end.132

if.end.132:                                       ; preds = %do.end.119, %if.end.73
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.132, %if.end.66, %if.then.20
  %136 = bitcast %struct.cmm_dev_profile_s** %icc_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  %137 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %138 = bitcast i32* %binary to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  %139 = load i32, i32* %retval
  ret i32 %139
}

declare i32 @gx_device_open_output_file(%struct.gx_device_s*, i8*, i32, i32, %struct._IO_FILE**) #0

declare %struct.stream_s* @s_alloc(%struct.gs_memory_s*, i8*) #0

declare i32 @gx_device_close_output_file(%struct.gx_device_s*, i8*, %struct._IO_FILE*) #0

declare void @swrite_file(%struct.stream_s*, %struct._IO_FILE*, i8*, i32) #0

declare void @gx_device_bbox_init(%struct.gx_device_bbox_s*, %struct.gx_device_s*, %struct.gs_memory_s*) #0

declare void @gx_device_set_resolution(%struct.gx_device_s*, double, double) #0

; Function Attrs: nounwind uwtable
define %struct.stream_s* @gdev_vector_stream(%struct.gx_device_vector_s* %vdev) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %in_page = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %0, i32 0, i32 63
  %1 = load i32, i32* %in_page, align 4, !tbaa !79
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %2, i32 0, i32 44
  %3 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !28
  %beginpage = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %3, i32 0, i32 0
  %4 = load i32 (%struct.gx_device_vector_s*)*, i32 (%struct.gx_device_vector_s*)** %beginpage, align 8, !tbaa !116
  %5 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call = call i32 %4(%struct.gx_device_vector_s* %5) #6
  %6 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %in_page1 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %6, i32 0, i32 63
  store i32 1, i32* %in_page1, align 4, !tbaa !79
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %7, i32 0, i32 47
  %8 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !94
  ret %struct.stream_s* %8
}

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s* %vdev, i32 %lop) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %lop.addr = alloca i32, align 4
  %diff = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !8
  %0 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %lop.addr, align 4, !tbaa !8
  %2 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %2, i32 0, i32 51
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state, i32 0, i32 10
  %3 = load i32, i32* %log_op, align 4, !tbaa !117
  %xor = xor i32 %1, %3
  store i32 %xor, i32* %diff, align 4, !tbaa !8
  %4 = load i32, i32* %diff, align 4, !tbaa !8
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %6, i32 0, i32 44
  %7 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !28
  %setlogop = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %7, i32 0, i32 7
  %8 = load i32 (%struct.gx_device_vector_s*, i32, i32)*, i32 (%struct.gx_device_vector_s*, i32, i32)** %setlogop, align 8, !tbaa !118
  %9 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %10 = load i32, i32* %lop.addr, align 4, !tbaa !8
  %11 = load i32, i32* %diff, align 4, !tbaa !8
  %call = call i32 %8(%struct.gx_device_vector_s* %9, i32 %10, i32 %11) #6
  store i32 %call, i32* %code, align 4, !tbaa !8
  %12 = load i32, i32* %code, align 4, !tbaa !8
  %cmp1 = icmp slt i32 %12, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %13 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = load i32, i32* %lop.addr, align 4, !tbaa !8
  %15 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state3 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %15, i32 0, i32 51
  %log_op4 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state3, i32 0, i32 10
  store i32 %14, i32* %log_op4, align 4, !tbaa !117
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.2
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
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
  %17 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_update_fill_color(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdcolor) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %saved_fill_color = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %3, i32 0, i32 56
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %4, i32 0, i32 44
  %5 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !28
  %setfillcolor = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %5, i32 0, i32 9
  %6 = load i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %setfillcolor, align 8, !tbaa !119
  %call = call i32 @gdev_vector_update_color(%struct.gx_device_vector_s* %0, %struct.gs_imager_state_s* %1, %struct.gx_device_color_s* %2, %struct.gx_hl_saved_color_s* %saved_fill_color, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* %6) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gdev_vector_update_color(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdcolor, %struct.gx_hl_saved_color_s* %sc, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* %setcolor) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %sc.addr = alloca %struct.gx_hl_saved_color_s*, align 8
  %setcolor.addr = alloca i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, align 8
  %temp = alloca %struct.gx_hl_saved_color_s, align 8
  %code = alloca i32, align 4
  %hl_color = alloca i32, align 4
  %pis_for_hl_color = alloca %struct.gs_imager_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_hl_saved_color_s* %sc, %struct.gx_hl_saved_color_s** %sc.addr, align 8, !tbaa !1
  store i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* %setcolor, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %setcolor.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.lifetime.start(i64 632, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %hl_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %3, i32 0, i32 44
  %4 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !28
  %can_handle_hl_color = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %4, i32 0, i32 8
  %5 = load i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %can_handle_hl_color, align 8, !tbaa !120
  %6 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call = call i32 %5(%struct.gx_device_vector_s* %6, %struct.gs_imager_state_s* %7, %struct.gx_device_color_s* %8) #6
  store i32 %call, i32* %hl_color, align 4, !tbaa !8
  %9 = bitcast %struct.gs_imager_state_s** %pis_for_hl_color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load i32, i32* %hl_color, align 4, !tbaa !8
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_imager_state_s* [ %11, %cond.true ], [ null, %cond.false ]
  store %struct.gs_imager_state_s* %cond, %struct.gs_imager_state_s** %pis_for_hl_color, align 8, !tbaa !1
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_for_hl_color, align 8, !tbaa !1
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_hld_save_color(%struct.gs_imager_state_s* %12, %struct.gx_device_color_s* %13, %struct.gx_hl_saved_color_s* %temp) #6
  %14 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %sc.addr, align 8, !tbaa !1
  %call2 = call i32 @gx_hld_saved_color_equal(%struct.gx_hl_saved_color_s* %temp, %struct.gx_hl_saved_color_s* %14) #6
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %15 = load i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %setcolor.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis_for_hl_color, align 8, !tbaa !1
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call4 = call i32 %15(%struct.gx_device_vector_s* %16, %struct.gs_imager_state_s* %17, %struct.gx_device_color_s* %18) #6
  store i32 %call4, i32* %code, align 4, !tbaa !8
  %19 = load i32, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %19, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %20 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %21 = load %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s** %sc.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_hl_saved_color_s* %21 to i8*
  %23 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 632, i32 8, i1 false), !tbaa.struct !121
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %24 = bitcast %struct.gs_imager_state_s** %pis_for_hl_color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast i32* %hl_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast %struct.gx_hl_saved_color_s* %temp to i8*
  call void @llvm.lifetime.end(i64 632, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_prepare_fill(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %pdcolor) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %params.addr = alloca %struct.gx_fill_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_fill_params_s* %params, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %0 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %flatness = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %0, i32 0, i32 2
  %1 = load float, float* %flatness, align 4, !tbaa !122
  %2 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %2, i32 0, i32 51
  %flatness1 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state, i32 0, i32 27
  %3 = load float, float* %flatness1, align 4, !tbaa !124
  %cmp = fcmp une float %1, %3
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %5, i32 0, i32 44
  %6 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !28
  %setflat = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %6, i32 0, i32 6
  %setflat2 = bitcast {}** %setflat to i32 (%struct.gx_device_vector_s*, double)**
  %7 = load i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, double)** %setflat2, align 8, !tbaa !125
  %8 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %9 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %flatness3 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %9, i32 0, i32 2
  %10 = load float, float* %flatness3, align 4, !tbaa !122
  %conv = fpext float %10 to double
  %call = call i32 %7(%struct.gx_device_vector_s* %8, double %conv) #6
  store i32 %call, i32* %code, align 4, !tbaa !8
  %11 = load i32, i32* %code, align 4, !tbaa !8
  %cmp4 = icmp slt i32 %11, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %12 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %13 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %flatness7 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %13, i32 0, i32 2
  %14 = load float, float* %flatness7, align 4, !tbaa !122
  %15 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state8 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %15, i32 0, i32 51
  %flatness9 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state8, i32 0, i32 27
  store float %14, float* %flatness9, align 4, !tbaa !124
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.6
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.10

if.end.10:                                        ; preds = %cleanup.cont, %entry
  %17 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %18 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 10
  %21 = load i32, i32* %log_op, align 4, !tbaa !126
  %call11 = call i32 @update_fill(%struct.gx_device_vector_s* %17, %struct.gs_imager_state_s* %18, %struct.gx_device_color_s* %19, i32 %21) #6
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %cleanup
  %22 = load i32, i32* %retval
  ret i32 %22

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @update_fill(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdcolor, i32 %lop) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !8
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call = call i32 @gdev_vector_update_fill_color(%struct.gx_device_vector_s* %1, %struct.gs_imager_state_s* %2, %struct.gx_device_color_s* %3) #6
  store i32 %call, i32* %code, align 4, !tbaa !8
  %4 = load i32, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %7 = load i32, i32* %lop.addr, align 4, !tbaa !8
  %call1 = call i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s* %6, i32 %7) #6
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_prepare_stroke(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gx_stroke_params_s* %params, %struct.gx_device_color_s* %pdcolor, double %scale) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %scale.addr = alloca double, align 8
  %pattern_size = alloca i32, align 4
  %dash_offset = alloca float, align 4
  %half_width = alloca float, align 4
  %pattern = alloca float*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code76 = alloca i32, align 4
  %code100 = alloca i32, align 4
  %code128 = alloca i32, align 4
  %code153 = alloca i32, align 4
  %code171 = alloca i32, align 4
  %code193 = alloca i32, align 4
  %code213 = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store double %scale, double* %scale.addr, align 8, !tbaa !5
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_imager_state_s* %0, null
  br i1 %tobool, label %if.then, label %if.end.185

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %pattern_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 3
  %dash = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params, i32 0, i32 11
  %pattern_size1 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash, i32 0, i32 1
  %3 = load i32, i32* %pattern_size1, align 4, !tbaa !127
  store i32 %3, i32* %pattern_size, align 4, !tbaa !8
  %4 = bitcast float* %dash_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params2 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %5, i32 0, i32 3
  %dash3 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params2, i32 0, i32 11
  %offset = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash3, i32 0, i32 2
  %6 = load float, float* %offset, align 4, !tbaa !128
  %conv = fpext float %6 to double
  %7 = load double, double* %scale.addr, align 8, !tbaa !5
  %mul = fmul double %conv, %7
  %conv4 = fptrunc double %mul to float
  store float %conv4, float* %dash_offset, align 4, !tbaa !66
  %8 = bitcast float* %half_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params5 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %9, i32 0, i32 3
  %half_width6 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params5, i32 0, i32 0
  %10 = load float, float* %half_width6, align 4, !tbaa !129
  %conv7 = fpext float %10 to double
  %11 = load double, double* %scale.addr, align 8, !tbaa !5
  %mul8 = fmul double %conv7, %11
  %conv9 = fptrunc double %mul8 to float
  store float %conv9, float* %half_width, align 4, !tbaa !66
  %12 = load float, float* %dash_offset, align 4, !tbaa !66
  %13 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %13, i32 0, i32 51
  %line_params10 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state, i32 0, i32 3
  %dash11 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params10, i32 0, i32 11
  %offset12 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash11, i32 0, i32 2
  %14 = load float, float* %offset12, align 4, !tbaa !130
  %cmp = fcmp une float %12, %14
  br i1 %cmp, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %15 = load i32, i32* %pattern_size, align 4, !tbaa !8
  %16 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state14 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %16, i32 0, i32 51
  %line_params15 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state14, i32 0, i32 3
  %dash16 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params15, i32 0, i32 11
  %pattern_size17 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash16, i32 0, i32 1
  %17 = load i32, i32* %pattern_size17, align 4, !tbaa !131
  %cmp18 = icmp ne i32 %15, %17
  br i1 %cmp18, label %if.then.26, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %18 = load i32, i32* %pattern_size, align 4, !tbaa !8
  %cmp21 = icmp ne i32 %18, 0
  br i1 %cmp21, label %land.lhs.true, label %if.end.69

land.lhs.true:                                    ; preds = %lor.lhs.false.20
  %19 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %dash_pattern = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %19, i32 0, i32 52
  %20 = load float*, float** %dash_pattern, align 8, !tbaa !132
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params23 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %21, i32 0, i32 3
  %dash24 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params23, i32 0, i32 11
  %22 = load double, double* %scale.addr, align 8, !tbaa !5
  %call = call i32 @dash_pattern_eq(float* %20, %struct.gx_dash_params_s* %dash24, double %22) #6
  %tobool25 = icmp ne i32 %call, 0
  br i1 %tobool25, label %if.end.69, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true, %lor.lhs.false, %if.then
  %23 = bitcast float** %pattern to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !83
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 0
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !133
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %29 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !90
  %30 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !83
  %stable_memory28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 0
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory28, align 8, !tbaa !133
  %33 = load i32, i32* %pattern_size, align 4, !tbaa !8
  %conv29 = sext i32 %33 to i64
  %mul30 = mul i64 %conv29, 4
  %conv31 = trunc i64 %mul30 to i32
  %call32 = call i8* %29(%struct.gs_memory_s* %32, i32 %conv31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0)) #6
  %34 = bitcast i8* %call32 to float*
  store float* %34, float** %pattern, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.26
  %35 = load i32, i32* %i, align 4, !tbaa !8
  %36 = load i32, i32* %pattern_size, align 4, !tbaa !8
  %cmp33 = icmp slt i32 %35, %36
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %37 to i64
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params35 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %38, i32 0, i32 3
  %dash36 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params35, i32 0, i32 11
  %pattern37 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash36, i32 0, i32 0
  %39 = load float*, float** %pattern37, align 8, !tbaa !134
  %arrayidx = getelementptr inbounds float, float* %39, i64 %idxprom
  %40 = load float, float* %arrayidx, align 4, !tbaa !66
  %conv38 = fpext float %40 to double
  %41 = load double, double* %scale.addr, align 8, !tbaa !5
  %mul39 = fmul double %conv38, %41
  %conv40 = fptrunc double %mul39 to float
  %42 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom41 = sext i32 %42 to i64
  %43 = load float*, float** %pattern, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds float, float* %43, i64 %idxprom41
  store float %conv40, float* %arrayidx42, align 4, !tbaa !66
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %45, i32 0, i32 44
  %46 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !28
  %setdash = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %46, i32 0, i32 5
  %47 = load i32 (%struct.gx_device_vector_s*, float*, i32, double)*, i32 (%struct.gx_device_vector_s*, float*, i32, double)** %setdash, align 8, !tbaa !135
  %48 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %49 = load float*, float** %pattern, align 8, !tbaa !1
  %50 = load i32, i32* %pattern_size, align 4, !tbaa !8
  %51 = load float, float* %dash_offset, align 4, !tbaa !66
  %conv43 = fpext float %51 to double
  %call44 = call i32 %47(%struct.gx_device_vector_s* %48, float* %49, i32 %50, double %conv43) #6
  store i32 %call44, i32* %code, align 4, !tbaa !8
  %52 = load i32, i32* %code, align 4, !tbaa !8
  %cmp45 = icmp slt i32 %52, 0
  br i1 %cmp45, label %if.then.47, label %if.end

if.then.47:                                       ; preds = %for.end
  %53 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end
  %54 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %dash_pattern48 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %54, i32 0, i32 52
  %55 = load float*, float** %dash_pattern48, align 8, !tbaa !132
  %tobool49 = icmp ne float* %55, null
  br i1 %tobool49, label %if.then.50, label %if.end.57

if.then.50:                                       ; preds = %if.end
  %56 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory51 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory51, align 8, !tbaa !83
  %stable_memory52 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %57, i32 0, i32 0
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory52, align 8, !tbaa !133
  %procs53 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs53, i32 0, i32 2
  %59 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !97
  %60 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory54 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %60, i32 0, i32 3
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory54, align 8, !tbaa !83
  %stable_memory55 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 0
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory55, align 8, !tbaa !133
  %63 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %dash_pattern56 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %63, i32 0, i32 52
  %64 = load float*, float** %dash_pattern56, align 8, !tbaa !132
  %65 = bitcast float* %64 to i8*
  call void %59(%struct.gs_memory_s* %62, i8* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0)) #6
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.50, %if.end
  %66 = load float*, float** %pattern, align 8, !tbaa !1
  %67 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %dash_pattern58 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %67, i32 0, i32 52
  store float* %66, float** %dash_pattern58, align 8, !tbaa !132
  %68 = load i32, i32* %pattern_size, align 4, !tbaa !8
  %69 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %dash_pattern_size = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %69, i32 0, i32 53
  store i32 %68, i32* %dash_pattern_size, align 4, !tbaa !136
  %70 = load i32, i32* %pattern_size, align 4, !tbaa !8
  %71 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state59 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %71, i32 0, i32 51
  %line_params60 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state59, i32 0, i32 3
  %dash61 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params60, i32 0, i32 11
  %pattern_size62 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash61, i32 0, i32 1
  store i32 %70, i32* %pattern_size62, align 4, !tbaa !131
  %72 = load float, float* %dash_offset, align 4, !tbaa !66
  %73 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state63 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %73, i32 0, i32 51
  %line_params64 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state63, i32 0, i32 3
  %dash65 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params64, i32 0, i32 11
  %offset66 = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %dash65, i32 0, i32 2
  store float %72, float* %offset66, align 4, !tbaa !130
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.then.47
  %74 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast float** %pattern to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.180 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.69

if.end.69:                                        ; preds = %cleanup.cont, %land.lhs.true, %lor.lhs.false.20
  %77 = load float, float* %half_width, align 4, !tbaa !66
  %78 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state70 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %78, i32 0, i32 51
  %line_params71 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state70, i32 0, i32 3
  %half_width72 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params71, i32 0, i32 0
  %79 = load float, float* %half_width72, align 4, !tbaa !137
  %cmp73 = fcmp une float %77, %79
  br i1 %cmp73, label %if.then.75, label %if.end.92

if.then.75:                                       ; preds = %if.end.69
  %80 = bitcast i32* %code76 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #2
  %81 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs77 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %81, i32 0, i32 44
  %82 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs77, align 8, !tbaa !28
  %setlinewidth = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %82, i32 0, i32 1
  %setlinewidth78 = bitcast {}** %setlinewidth to i32 (%struct.gx_device_vector_s*, double)**
  %83 = load i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, double)** %setlinewidth78, align 8, !tbaa !138
  %84 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %85 = load float, float* %half_width, align 4, !tbaa !66
  %mul79 = fmul float %85, 2.000000e+00
  %conv80 = fpext float %mul79 to double
  %call81 = call i32 %83(%struct.gx_device_vector_s* %84, double %conv80) #6
  store i32 %call81, i32* %code76, align 4, !tbaa !8
  %86 = load i32, i32* %code76, align 4, !tbaa !8
  %cmp82 = icmp slt i32 %86, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.then.75
  %87 = load i32, i32* %code76, align 4, !tbaa !8
  store i32 %87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.89

if.end.85:                                        ; preds = %if.then.75
  %88 = load float, float* %half_width, align 4, !tbaa !66
  %89 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state86 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %89, i32 0, i32 51
  %line_params87 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state86, i32 0, i32 3
  %half_width88 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params87, i32 0, i32 0
  store float %88, float* %half_width88, align 4, !tbaa !137
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.89

cleanup.89:                                       ; preds = %if.end.85, %if.then.84
  %90 = bitcast i32* %code76 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %cleanup.dest.90 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.90, label %cleanup.180 [
    i32 0, label %cleanup.cont.91
  ]

cleanup.cont.91:                                  ; preds = %cleanup.89
  br label %if.end.92

if.end.92:                                        ; preds = %cleanup.cont.91, %if.end.69
  %91 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params93 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %91, i32 0, i32 3
  %miter_limit = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params93, i32 0, i32 6
  %92 = load float, float* %miter_limit, align 4, !tbaa !139
  %93 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state94 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %93, i32 0, i32 51
  %line_params95 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state94, i32 0, i32 3
  %miter_limit96 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params95, i32 0, i32 6
  %94 = load float, float* %miter_limit96, align 4, !tbaa !140
  %cmp97 = fcmp une float %92, %94
  br i1 %cmp97, label %if.then.99, label %if.end.120

if.then.99:                                       ; preds = %if.end.92
  %95 = bitcast i32* %code100 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #2
  %96 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs101 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %96, i32 0, i32 44
  %97 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs101, align 8, !tbaa !28
  %setmiterlimit = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %97, i32 0, i32 4
  %setmiterlimit102 = bitcast {}** %setmiterlimit to i32 (%struct.gx_device_vector_s*, double)**
  %98 = load i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, double)** %setmiterlimit102, align 8, !tbaa !141
  %99 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %100 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params103 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %100, i32 0, i32 3
  %miter_limit104 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params103, i32 0, i32 6
  %101 = load float, float* %miter_limit104, align 4, !tbaa !139
  %conv105 = fpext float %101 to double
  %call106 = call i32 %98(%struct.gx_device_vector_s* %99, double %conv105) #6
  store i32 %call106, i32* %code100, align 4, !tbaa !8
  %102 = load i32, i32* %code100, align 4, !tbaa !8
  %cmp107 = icmp slt i32 %102, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.then.99
  %103 = load i32, i32* %code100, align 4, !tbaa !8
  store i32 %103, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.110:                                       ; preds = %if.then.99
  %104 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state111 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %104, i32 0, i32 51
  %line_params112 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state111, i32 0, i32 3
  %105 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params113 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %105, i32 0, i32 3
  %miter_limit114 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params113, i32 0, i32 6
  %106 = load float, float* %miter_limit114, align 4, !tbaa !139
  %conv115 = fpext float %106 to double
  %call116 = call i32 @gx_set_miter_limit(%struct.gx_line_params_s* %line_params112, double %conv115) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.117

cleanup.117:                                      ; preds = %if.end.110, %if.then.109
  %107 = bitcast i32* %code100 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %cleanup.dest.118 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.118, label %cleanup.180 [
    i32 0, label %cleanup.cont.119
  ]

cleanup.cont.119:                                 ; preds = %cleanup.117
  br label %if.end.120

if.end.120:                                       ; preds = %cleanup.cont.119, %if.end.92
  %108 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params121 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %108, i32 0, i32 3
  %start_cap = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params121, i32 0, i32 1
  %109 = load i32, i32* %start_cap, align 4, !tbaa !142
  %110 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state122 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %110, i32 0, i32 51
  %line_params123 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state122, i32 0, i32 3
  %start_cap124 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params123, i32 0, i32 1
  %111 = load i32, i32* %start_cap124, align 4, !tbaa !143
  %cmp125 = icmp ne i32 %109, %111
  br i1 %cmp125, label %if.then.127, label %if.end.145

if.then.127:                                      ; preds = %if.end.120
  %112 = bitcast i32* %code128 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #2
  %113 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs129 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %113, i32 0, i32 44
  %114 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs129, align 8, !tbaa !28
  %setlinecap = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %114, i32 0, i32 2
  %115 = load i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)** %setlinecap, align 8, !tbaa !144
  %116 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %117 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params130 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %117, i32 0, i32 3
  %start_cap131 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params130, i32 0, i32 1
  %118 = load i32, i32* %start_cap131, align 4, !tbaa !142
  %call132 = call i32 %115(%struct.gx_device_vector_s* %116, i32 %118) #6
  store i32 %call132, i32* %code128, align 4, !tbaa !8
  %119 = load i32, i32* %code128, align 4, !tbaa !8
  %cmp133 = icmp slt i32 %119, 0
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.then.127
  %120 = load i32, i32* %code128, align 4, !tbaa !8
  store i32 %120, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.142

if.end.136:                                       ; preds = %if.then.127
  %121 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params137 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %121, i32 0, i32 3
  %start_cap138 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params137, i32 0, i32 1
  %122 = load i32, i32* %start_cap138, align 4, !tbaa !142
  %123 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state139 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %123, i32 0, i32 51
  %line_params140 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state139, i32 0, i32 3
  %start_cap141 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params140, i32 0, i32 1
  store i32 %122, i32* %start_cap141, align 4, !tbaa !143
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.142

cleanup.142:                                      ; preds = %if.end.136, %if.then.135
  %124 = bitcast i32* %code128 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %cleanup.dest.143 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.143, label %cleanup.180 [
    i32 0, label %cleanup.cont.144
  ]

cleanup.cont.144:                                 ; preds = %cleanup.142
  br label %if.end.145

if.end.145:                                       ; preds = %cleanup.cont.144, %if.end.120
  %125 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params146 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %125, i32 0, i32 3
  %join = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params146, i32 0, i32 4
  %126 = load i32, i32* %join, align 4, !tbaa !145
  %127 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state147 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %127, i32 0, i32 51
  %line_params148 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state147, i32 0, i32 3
  %join149 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params148, i32 0, i32 4
  %128 = load i32, i32* %join149, align 4, !tbaa !146
  %cmp150 = icmp ne i32 %126, %128
  br i1 %cmp150, label %if.then.152, label %if.end.170

if.then.152:                                      ; preds = %if.end.145
  %129 = bitcast i32* %code153 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #2
  %130 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs154 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %130, i32 0, i32 44
  %131 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs154, align 8, !tbaa !28
  %setlinejoin = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %131, i32 0, i32 3
  %132 = load i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)** %setlinejoin, align 8, !tbaa !147
  %133 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %134 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params155 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %134, i32 0, i32 3
  %join156 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params155, i32 0, i32 4
  %135 = load i32, i32* %join156, align 4, !tbaa !145
  %call157 = call i32 %132(%struct.gx_device_vector_s* %133, i32 %135) #6
  store i32 %call157, i32* %code153, align 4, !tbaa !8
  %136 = load i32, i32* %code153, align 4, !tbaa !8
  %cmp158 = icmp slt i32 %136, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.then.152
  %137 = load i32, i32* %code153, align 4, !tbaa !8
  store i32 %137, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.167

if.end.161:                                       ; preds = %if.then.152
  %138 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %line_params162 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %138, i32 0, i32 3
  %join163 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params162, i32 0, i32 4
  %139 = load i32, i32* %join163, align 4, !tbaa !145
  %140 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state164 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %140, i32 0, i32 51
  %line_params165 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state164, i32 0, i32 3
  %join166 = getelementptr inbounds %struct.gx_line_params_s, %struct.gx_line_params_s* %line_params165, i32 0, i32 4
  store i32 %139, i32* %join166, align 4, !tbaa !146
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.167

cleanup.167:                                      ; preds = %if.end.161, %if.then.160
  %141 = bitcast i32* %code153 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %cleanup.dest.168 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.168, label %cleanup.180 [
    i32 0, label %cleanup.cont.169
  ]

cleanup.cont.169:                                 ; preds = %cleanup.167
  br label %if.end.170

if.end.170:                                       ; preds = %cleanup.cont.169, %if.end.145
  %142 = bitcast i32* %code171 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #2
  %143 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %144 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %144, i32 0, i32 10
  %145 = load i32, i32* %log_op, align 4, !tbaa !126
  %call172 = call i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s* %143, i32 %145) #6
  store i32 %call172, i32* %code171, align 4, !tbaa !8
  %146 = load i32, i32* %code171, align 4, !tbaa !8
  %cmp173 = icmp slt i32 %146, 0
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.end.170
  %147 = load i32, i32* %code171, align 4, !tbaa !8
  store i32 %147, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

if.end.176:                                       ; preds = %if.end.170
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.177

cleanup.177:                                      ; preds = %if.end.176, %if.then.175
  %148 = bitcast i32* %code171 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #2
  %cleanup.dest.178 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.178, label %cleanup.180 [
    i32 0, label %cleanup.cont.179
  ]

cleanup.cont.179:                                 ; preds = %cleanup.177
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.180

cleanup.180:                                      ; preds = %cleanup.cont.179, %cleanup.177, %cleanup.167, %cleanup.142, %cleanup.117, %cleanup.89, %cleanup
  %149 = bitcast float* %half_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #2
  %150 = bitcast float* %dash_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #2
  %151 = bitcast i32* %pattern_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #2
  %cleanup.dest.183 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.183, label %unreachable [
    i32 0, label %cleanup.cont.184
    i32 1, label %return
  ]

cleanup.cont.184:                                 ; preds = %cleanup.180
  br label %if.end.185

if.end.185:                                       ; preds = %cleanup.cont.184, %entry
  %152 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %tobool186 = icmp ne %struct.gx_stroke_params_s* %152, null
  br i1 %tobool186, label %if.then.187, label %if.end.210

if.then.187:                                      ; preds = %if.end.185
  %153 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %flatness = getelementptr inbounds %struct.gx_stroke_params_s, %struct.gx_stroke_params_s* %153, i32 0, i32 0
  %154 = load float, float* %flatness, align 4, !tbaa !148
  %155 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state188 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %155, i32 0, i32 51
  %flatness189 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state188, i32 0, i32 27
  %156 = load float, float* %flatness189, align 4, !tbaa !124
  %cmp190 = fcmp une float %154, %156
  br i1 %cmp190, label %if.then.192, label %if.end.209

if.then.192:                                      ; preds = %if.then.187
  %157 = bitcast i32* %code193 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %157) #2
  %158 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs194 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %158, i32 0, i32 44
  %159 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs194, align 8, !tbaa !28
  %setflat = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %159, i32 0, i32 6
  %setflat195 = bitcast {}** %setflat to i32 (%struct.gx_device_vector_s*, double)**
  %160 = load i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, double)** %setflat195, align 8, !tbaa !125
  %161 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %162 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %flatness196 = getelementptr inbounds %struct.gx_stroke_params_s, %struct.gx_stroke_params_s* %162, i32 0, i32 0
  %163 = load float, float* %flatness196, align 4, !tbaa !148
  %conv197 = fpext float %163 to double
  %call198 = call i32 %160(%struct.gx_device_vector_s* %161, double %conv197) #6
  store i32 %call198, i32* %code193, align 4, !tbaa !8
  %164 = load i32, i32* %code193, align 4, !tbaa !8
  %cmp199 = icmp slt i32 %164, 0
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.then.192
  %165 = load i32, i32* %code193, align 4, !tbaa !8
  store i32 %165, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

if.end.202:                                       ; preds = %if.then.192
  %166 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %flatness203 = getelementptr inbounds %struct.gx_stroke_params_s, %struct.gx_stroke_params_s* %166, i32 0, i32 0
  %167 = load float, float* %flatness203, align 4, !tbaa !148
  %168 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %state204 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %168, i32 0, i32 51
  %flatness205 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %state204, i32 0, i32 27
  store float %167, float* %flatness205, align 4, !tbaa !124
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.206

cleanup.206:                                      ; preds = %if.end.202, %if.then.201
  %169 = bitcast i32* %code193 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %cleanup.dest.207 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.207, label %unreachable [
    i32 0, label %cleanup.cont.208
    i32 1, label %return
  ]

cleanup.cont.208:                                 ; preds = %cleanup.206
  br label %if.end.209

if.end.209:                                       ; preds = %cleanup.cont.208, %if.then.187
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.end.185
  %170 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %tobool211 = icmp ne %struct.gx_device_color_s* %170, null
  br i1 %tobool211, label %if.then.212, label %if.end.223

if.then.212:                                      ; preds = %if.end.210
  %171 = bitcast i32* %code213 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #2
  %172 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %173 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %174 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %175 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %saved_stroke_color = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %175, i32 0, i32 57
  %176 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs214 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %176, i32 0, i32 44
  %177 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs214, align 8, !tbaa !28
  %setstrokecolor = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %177, i32 0, i32 10
  %178 = load i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %setstrokecolor, align 8, !tbaa !150
  %call215 = call i32 @gdev_vector_update_color(%struct.gx_device_vector_s* %172, %struct.gs_imager_state_s* %173, %struct.gx_device_color_s* %174, %struct.gx_hl_saved_color_s* %saved_stroke_color, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* %178) #6
  store i32 %call215, i32* %code213, align 4, !tbaa !8
  %179 = load i32, i32* %code213, align 4, !tbaa !8
  %cmp216 = icmp slt i32 %179, 0
  br i1 %cmp216, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %if.then.212
  %180 = load i32, i32* %code213, align 4, !tbaa !8
  store i32 %180, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

if.end.219:                                       ; preds = %if.then.212
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.220

cleanup.220:                                      ; preds = %if.end.219, %if.then.218
  %181 = bitcast i32* %code213 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #2
  %cleanup.dest.221 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.221, label %unreachable [
    i32 0, label %cleanup.cont.222
    i32 1, label %return
  ]

cleanup.cont.222:                                 ; preds = %cleanup.220
  br label %if.end.223

if.end.223:                                       ; preds = %cleanup.cont.222, %if.end.210
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.223, %cleanup.220, %cleanup.206, %cleanup.180
  %182 = load i32, i32* %retval
  ret i32 %182

unreachable:                                      ; preds = %cleanup.220, %cleanup.206, %cleanup.180
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @dash_pattern_eq(float* %stored, %struct.gx_dash_params_s* %set, double %scale) #1 {
entry:
  %retval = alloca i32, align 4
  %stored.addr = alloca float*, align 8
  %set.addr = alloca %struct.gx_dash_params_s*, align 8
  %scale.addr = alloca double, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store float* %stored, float** %stored.addr, align 8, !tbaa !1
  store %struct.gx_dash_params_s* %set, %struct.gx_dash_params_s** %set.addr, align 8, !tbaa !1
  store double %scale, double* %scale.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !8
  %2 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %set.addr, align 8, !tbaa !1
  %pattern_size = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %2, i32 0, i32 1
  %3 = load i32, i32* %pattern_size, align 4, !tbaa !151
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %4 to i64
  %5 = load float*, float** %stored.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom
  %6 = load float, float* %arrayidx, align 4, !tbaa !66
  %7 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.gx_dash_params_s*, %struct.gx_dash_params_s** %set.addr, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gx_dash_params_s, %struct.gx_dash_params_s* %8, i32 0, i32 0
  %9 = load float*, float** %pattern, align 8, !tbaa !152
  %arrayidx2 = getelementptr inbounds float, float* %9, i64 %idxprom1
  %10 = load float, float* %arrayidx2, align 4, !tbaa !66
  %conv = fpext float %10 to double
  %11 = load double, double* %scale.addr, align 8, !tbaa !5
  %mul = fmul double %conv, %11
  %conv3 = fptrunc double %mul to float
  %cmp4 = fcmp une float %6, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @gx_set_miter_limit(%struct.gx_line_params_s*, double) #0

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_stroke_scaling(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, double* %pscale, %struct.gs_matrix_s* %pmat) #1 {
entry:
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pscale.addr = alloca double*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %set_ctm = alloca i32, align 4
  %scale = alloca double, align 8
  %mxx = alloca double, align 8
  %mxy = alloca double, align 8
  %myx = alloca double, align 8
  %myy = alloca double, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store double* %pscale, double** %pscale.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast i32* %set_ctm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 1, i32* %set_ctm, align 4, !tbaa !8
  %1 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  store double 1.000000e+00, double* %scale, align 8, !tbaa !5
  %2 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %2, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 1
  %3 = load float, float* %xy, align 4, !tbaa !153
  %conv = fpext float %3 to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm2 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %4, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm2, i32 0, i32 2
  %5 = load float, float* %yx, align 4, !tbaa !154
  %conv3 = fpext float %5 to double
  %cmp4 = fcmp oeq double %conv3, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %6, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm6, i32 0, i32 0
  %7 = load float, float* %xx, align 4, !tbaa !155
  %conv7 = fpext float %7 to double
  %call = call double @fabs(double %conv7) #7
  store double %call, double* %scale, align 8, !tbaa !5
  %8 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm8 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %8, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm8, i32 0, i32 3
  %9 = load float, float* %yy, align 4, !tbaa !156
  %conv9 = fpext float %9 to double
  %call10 = call double @fabs(double %conv9) #7
  %10 = load double, double* %scale, align 8, !tbaa !5
  %cmp11 = fcmp une double %call10, %10
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, i32* %set_ctm, align 4, !tbaa !8
  br label %if.end.79

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm13 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %11, i32 0, i32 5
  %xx14 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm13, i32 0, i32 0
  %12 = load float, float* %xx14, align 4, !tbaa !157
  %conv15 = fpext float %12 to double
  %cmp16 = fcmp oeq double %conv15, 0.000000e+00
  br i1 %cmp16, label %land.lhs.true.18, label %if.else.35

land.lhs.true.18:                                 ; preds = %if.else
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm19 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 5
  %yy20 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm19, i32 0, i32 3
  %14 = load float, float* %yy20, align 4, !tbaa !158
  %conv21 = fpext float %14 to double
  %cmp22 = fcmp oeq double %conv21, 0.000000e+00
  br i1 %cmp22, label %if.then.24, label %if.else.35

if.then.24:                                       ; preds = %land.lhs.true.18
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm25 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %15, i32 0, i32 5
  %xy26 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm25, i32 0, i32 1
  %16 = load float, float* %xy26, align 4, !tbaa !159
  %conv27 = fpext float %16 to double
  %call28 = call double @fabs(double %conv27) #7
  store double %call28, double* %scale, align 8, !tbaa !5
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm29 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %17, i32 0, i32 5
  %yx30 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm29, i32 0, i32 2
  %18 = load float, float* %yx30, align 4, !tbaa !160
  %conv31 = fpext float %18 to double
  %call32 = call double @fabs(double %conv31) #7
  %19 = load double, double* %scale, align 8, !tbaa !5
  %cmp33 = fcmp une double %call32, %19
  %conv34 = zext i1 %cmp33 to i32
  store i32 %conv34, i32* %set_ctm, align 4, !tbaa !8
  br label %if.end.78

if.else.35:                                       ; preds = %land.lhs.true.18, %if.else
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm36 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 5
  %xx37 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm36, i32 0, i32 0
  %21 = load float, float* %xx37, align 4, !tbaa !155
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm38 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %22, i32 0, i32 5
  %yy39 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm38, i32 0, i32 3
  %23 = load float, float* %yy39, align 4, !tbaa !156
  %cmp40 = fcmp oeq float %21, %23
  br i1 %cmp40, label %land.lhs.true.42, label %lor.lhs.false

land.lhs.true.42:                                 ; preds = %if.else.35
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm43 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %24, i32 0, i32 5
  %xy44 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm43, i32 0, i32 1
  %25 = load float, float* %xy44, align 4, !tbaa !159
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm45 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %26, i32 0, i32 5
  %yx46 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm45, i32 0, i32 2
  %27 = load float, float* %yx46, align 4, !tbaa !160
  %sub = fsub float -0.000000e+00, %27
  %cmp47 = fcmp oeq float %25, %sub
  br i1 %cmp47, label %if.then.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.42, %if.else.35
  %28 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm49 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %28, i32 0, i32 5
  %xx50 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm49, i32 0, i32 0
  %29 = load float, float* %xx50, align 4, !tbaa !155
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm51 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 5
  %yy52 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm51, i32 0, i32 3
  %31 = load float, float* %yy52, align 4, !tbaa !156
  %sub53 = fsub float -0.000000e+00, %31
  %cmp54 = fcmp oeq float %29, %sub53
  br i1 %cmp54, label %land.lhs.true.56, label %if.end

land.lhs.true.56:                                 ; preds = %lor.lhs.false
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm57 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %32, i32 0, i32 5
  %xy58 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm57, i32 0, i32 1
  %33 = load float, float* %xy58, align 4, !tbaa !159
  %34 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm59 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %34, i32 0, i32 5
  %yx60 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm59, i32 0, i32 2
  %35 = load float, float* %yx60, align 4, !tbaa !160
  %cmp61 = fcmp oeq float %33, %35
  br i1 %cmp61, label %if.then.63, label %if.end

if.then.63:                                       ; preds = %land.lhs.true.56, %land.lhs.true.42
  %36 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm64 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %36, i32 0, i32 5
  %xx65 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm64, i32 0, i32 0
  %37 = load float, float* %xx65, align 4, !tbaa !155
  %conv66 = fpext float %37 to double
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm67 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %38, i32 0, i32 5
  %xx68 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm67, i32 0, i32 0
  %39 = load float, float* %xx68, align 4, !tbaa !155
  %conv69 = fpext float %39 to double
  %mul = fmul double %conv66, %conv69
  %40 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm70 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %40, i32 0, i32 5
  %xy71 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm70, i32 0, i32 1
  %41 = load float, float* %xy71, align 4, !tbaa !159
  %conv72 = fpext float %41 to double
  %42 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm73 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %42, i32 0, i32 5
  %xy74 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm73, i32 0, i32 1
  %43 = load float, float* %xy74, align 4, !tbaa !159
  %conv75 = fpext float %43 to double
  %mul76 = fmul double %conv72, %conv75
  %add = fadd double %mul, %mul76
  %call77 = call double @sqrt(double %add) #8
  store double %call77, double* %scale, align 8, !tbaa !5
  store i32 0, i32* %set_ctm, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then.63, %land.lhs.true.56, %lor.lhs.false
  br label %if.end.78

if.end.78:                                        ; preds = %if.end, %if.then.24
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then
  %44 = load i32, i32* %set_ctm, align 4, !tbaa !8
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.then.80, label %if.end.122

if.then.80:                                       ; preds = %if.end.79
  %45 = bitcast double* %mxx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #2
  %46 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm81 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %46, i32 0, i32 5
  %xx82 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm81, i32 0, i32 0
  %47 = load float, float* %xx82, align 4, !tbaa !155
  %conv83 = fpext float %47 to double
  %48 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %scale84 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %48, i32 0, i32 62
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale84, i32 0, i32 0
  %49 = load double, double* %x, align 8, !tbaa !67
  %div = fdiv double %conv83, %49
  store double %div, double* %mxx, align 8, !tbaa !5
  %50 = bitcast double* %mxy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #2
  %51 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm85 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %51, i32 0, i32 5
  %xy86 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm85, i32 0, i32 1
  %52 = load float, float* %xy86, align 4, !tbaa !159
  %conv87 = fpext float %52 to double
  %53 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %scale88 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %53, i32 0, i32 62
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale88, i32 0, i32 1
  %54 = load double, double* %y, align 8, !tbaa !68
  %div89 = fdiv double %conv87, %54
  store double %div89, double* %mxy, align 8, !tbaa !5
  %55 = bitcast double* %myx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #2
  %56 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm90 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %56, i32 0, i32 5
  %yx91 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm90, i32 0, i32 2
  %57 = load float, float* %yx91, align 4, !tbaa !160
  %conv92 = fpext float %57 to double
  %58 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %scale93 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %58, i32 0, i32 62
  %x94 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale93, i32 0, i32 0
  %59 = load double, double* %x94, align 8, !tbaa !67
  %div95 = fdiv double %conv92, %59
  store double %div95, double* %myx, align 8, !tbaa !5
  %60 = bitcast double* %myy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #2
  %61 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm96 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %61, i32 0, i32 5
  %yy97 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm96, i32 0, i32 3
  %62 = load float, float* %yy97, align 4, !tbaa !156
  %conv98 = fpext float %62 to double
  %63 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %scale99 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %63, i32 0, i32 62
  %y100 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale99, i32 0, i32 1
  %64 = load double, double* %y100, align 8, !tbaa !68
  %div101 = fdiv double %conv98, %64
  store double %div101, double* %myy, align 8, !tbaa !5
  %65 = load double, double* %mxx, align 8, !tbaa !5
  %call102 = call double @fabs(double %65) #7
  %66 = load double, double* %mxy, align 8, !tbaa !5
  %call103 = call double @fabs(double %66) #7
  %add104 = fadd double %call102, %call103
  %67 = load double, double* %myx, align 8, !tbaa !5
  %call105 = call double @fabs(double %67) #7
  %add106 = fadd double %add104, %call105
  %68 = load double, double* %myy, align 8, !tbaa !5
  %call107 = call double @fabs(double %68) #7
  %add108 = fadd double %add106, %call107
  %mul109 = fmul double 5.000000e-01, %add108
  store double %mul109, double* %scale, align 8, !tbaa !5
  %69 = load double, double* %mxx, align 8, !tbaa !5
  %70 = load double, double* %scale, align 8, !tbaa !5
  %div110 = fdiv double %69, %70
  %conv111 = fptrunc double %div110 to float
  %71 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx112 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %71, i32 0, i32 0
  store float %conv111, float* %xx112, align 4, !tbaa !14
  %72 = load double, double* %mxy, align 8, !tbaa !5
  %73 = load double, double* %scale, align 8, !tbaa !5
  %div113 = fdiv double %72, %73
  %conv114 = fptrunc double %div113 to float
  %74 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy115 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %74, i32 0, i32 1
  store float %conv114, float* %xy115, align 4, !tbaa !10
  %75 = load double, double* %myx, align 8, !tbaa !5
  %76 = load double, double* %scale, align 8, !tbaa !5
  %div116 = fdiv double %75, %76
  %conv117 = fptrunc double %div116 to float
  %77 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx118 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %77, i32 0, i32 2
  store float %conv117, float* %yx118, align 4, !tbaa !13
  %78 = load double, double* %myy, align 8, !tbaa !5
  %79 = load double, double* %scale, align 8, !tbaa !5
  %div119 = fdiv double %78, %79
  %conv120 = fptrunc double %div119 to float
  %80 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy121 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %80, i32 0, i32 3
  store float %conv120, float* %yy121, align 4, !tbaa !15
  %81 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %81, i32 0, i32 5
  store float 0.000000e+00, float* %ty, align 4, !tbaa !161
  %82 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %82, i32 0, i32 4
  store float 0.000000e+00, float* %tx, align 4, !tbaa !162
  %83 = bitcast double* %myy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = bitcast double* %myx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  %85 = bitcast double* %mxy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %86 = bitcast double* %mxx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #2
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.80, %if.end.79
  %87 = load double, double* %scale, align 8, !tbaa !5
  %88 = load double*, double** %pscale.addr, align 8, !tbaa !1
  store double %87, double* %88, align 8, !tbaa !5
  %89 = load i32, i32* %set_ctm, align 4, !tbaa !8
  %90 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = bitcast i32* %set_ctm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  ret i32 %89
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare i32 @gs_matrix_scale(%struct.gs_matrix_s*, double, double, %struct.gs_matrix_s*) #0

declare i32 @gs_make_scaling(double, double, %struct.gs_matrix_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_write_polygon(%struct.gx_device_vector_s* %vdev, %struct.gs_fixed_point_s* %points, i32 %count, i32 %close, i32 %type) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %points.addr = alloca %struct.gs_fixed_point_s*, align 8
  %count.addr = alloca i32, align 4
  %close.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %x = alloca double, align 8
  %y = alloca double, align 8
  %x_start = alloca double, align 8
  %y_start = alloca double, align 8
  %x_prev = alloca double, align 8
  %y_prev = alloca double, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %points, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !8
  store i32 %close, i32* %close.addr, align 4, !tbaa !8
  store i32 %type, i32* %type.addr, align 4, !tbaa !7
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !8
  %1 = load i32, i32* %type.addr, align 4, !tbaa !7
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %2, i32 0, i32 44
  %3 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !28
  %beginpath = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %3, i32 0, i32 13
  %4 = load i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)** %beginpath, align 8, !tbaa !58
  %5 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %6 = load i32, i32* %type.addr, align 4, !tbaa !7
  %call = call i32 %4(%struct.gx_device_vector_s* %5, i32 %6) #6
  store i32 %call, i32* %code, align 4, !tbaa !8
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load i32, i32* %count.addr, align 4, !tbaa !8
  %cmp2 = icmp ugt i32 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.end.47

if.then.3:                                        ; preds = %if.end
  %9 = bitcast double* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i64 0
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  %11 = load i32, i32* %x4, align 4, !tbaa !60
  %conv = sitofp i32 %11 to double
  %mul = fmul double %conv, 3.906250e-03
  %12 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %scale = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %12, i32 0, i32 62
  %x5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale, i32 0, i32 0
  %13 = load double, double* %x5, align 8, !tbaa !67
  %div = fdiv double %mul, %13
  store double %div, double* %x, align 8, !tbaa !5
  %14 = bitcast double* %y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %15, i64 0
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx6, i32 0, i32 1
  %16 = load i32, i32* %y7, align 4, !tbaa !61
  %conv8 = sitofp i32 %16 to double
  %mul9 = fmul double %conv8, 3.906250e-03
  %17 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %scale10 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %17, i32 0, i32 62
  %y11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale10, i32 0, i32 1
  %18 = load double, double* %y11, align 8, !tbaa !68
  %div12 = fdiv double %mul9, %18
  store double %div12, double* %y, align 8, !tbaa !5
  %19 = bitcast double* %x_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load double, double* %x, align 8, !tbaa !5
  store double %20, double* %x_start, align 8, !tbaa !5
  %21 = bitcast double* %y_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = load double, double* %y, align 8, !tbaa !5
  store double %22, double* %y_start, align 8, !tbaa !5
  %23 = bitcast double* %x_prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = bitcast double* %y_prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs13 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %26, i32 0, i32 44
  %27 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs13, align 8, !tbaa !28
  %moveto = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %27, i32 0, i32 14
  %28 = load i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)** %moveto, align 8, !tbaa !71
  %29 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %30 = load double, double* %x, align 8, !tbaa !5
  %31 = load double, double* %y, align 8, !tbaa !5
  %32 = load i32, i32* %type.addr, align 4, !tbaa !7
  %call14 = call i32 %28(%struct.gx_device_vector_s* %29, double 0.000000e+00, double 0.000000e+00, double %30, double %31, i32 %32) #6
  store i32 %call14, i32* %code, align 4, !tbaa !8
  %33 = load i32, i32* %code, align 4, !tbaa !8
  %cmp15 = icmp sge i32 %33, 0
  br i1 %cmp15, label %if.then.17, label %if.end.39

if.then.17:                                       ; preds = %if.then.3
  store i32 1, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %34 = load i32, i32* %i, align 4, !tbaa !8
  %35 = load i32, i32* %count.addr, align 4, !tbaa !8
  %cmp18 = icmp ult i32 %34, %35
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %36 = load i32, i32* %code, align 4, !tbaa !8
  %cmp20 = icmp sge i32 %36, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %37 = phi i1 [ false, %for.cond ], [ %cmp20, %land.rhs ]
  br i1 %37, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %38 = load double, double* %x, align 8, !tbaa !5
  store double %38, double* %x_prev, align 8, !tbaa !5
  %39 = load double, double* %y, align 8, !tbaa !5
  store double %39, double* %y_prev, align 8, !tbaa !5
  %40 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs22 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %40, i32 0, i32 44
  %41 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs22, align 8, !tbaa !28
  %lineto = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %41, i32 0, i32 15
  %42 = load i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)** %lineto, align 8, !tbaa !72
  %43 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %44 = load double, double* %x_prev, align 8, !tbaa !5
  %45 = load double, double* %y_prev, align 8, !tbaa !5
  %46 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = zext i32 %46 to i64
  %47 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %47, i64 %idxprom
  %x24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx23, i32 0, i32 0
  %48 = load i32, i32* %x24, align 4, !tbaa !60
  %conv25 = sitofp i32 %48 to double
  %mul26 = fmul double %conv25, 3.906250e-03
  %49 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %scale27 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %49, i32 0, i32 62
  %x28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale27, i32 0, i32 0
  %50 = load double, double* %x28, align 8, !tbaa !67
  %div29 = fdiv double %mul26, %50
  store double %div29, double* %x, align 8, !tbaa !5
  %51 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom30 = zext i32 %51 to i64
  %52 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %52, i64 %idxprom30
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx31, i32 0, i32 1
  %53 = load i32, i32* %y32, align 4, !tbaa !61
  %conv33 = sitofp i32 %53 to double
  %mul34 = fmul double %conv33, 3.906250e-03
  %54 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %scale35 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %54, i32 0, i32 62
  %y36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %scale35, i32 0, i32 1
  %55 = load double, double* %y36, align 8, !tbaa !68
  %div37 = fdiv double %mul34, %55
  store double %div37, double* %y, align 8, !tbaa !5
  %56 = load i32, i32* %type.addr, align 4, !tbaa !7
  %call38 = call i32 %42(%struct.gx_device_vector_s* %43, double %44, double %45, double %div29, double %div37, i32 %56) #6
  store i32 %call38, i32* %code, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add i32 %57, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.39

if.end.39:                                        ; preds = %for.end, %if.then.3
  %58 = load i32, i32* %code, align 4, !tbaa !8
  %cmp40 = icmp sge i32 %58, 0
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.46

land.lhs.true.42:                                 ; preds = %if.end.39
  %59 = load i32, i32* %close.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %59, 0
  br i1 %tobool, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %land.lhs.true.42
  %60 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs44 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %60, i32 0, i32 44
  %61 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs44, align 8, !tbaa !28
  %closepath = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %61, i32 0, i32 17
  %62 = load i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)** %closepath, align 8, !tbaa !76
  %63 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %64 = load double, double* %x, align 8, !tbaa !5
  %65 = load double, double* %y, align 8, !tbaa !5
  %66 = load double, double* %x_start, align 8, !tbaa !5
  %67 = load double, double* %y_start, align 8, !tbaa !5
  %68 = load i32, i32* %type.addr, align 4, !tbaa !7
  %call45 = call i32 %62(%struct.gx_device_vector_s* %63, double %64, double %65, double %66, double %67, i32 %68) #6
  store i32 %call45, i32* %code, align 4, !tbaa !8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %land.lhs.true.42, %if.end.39
  %69 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast double* %y_prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %71 = bitcast double* %x_prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #2
  %72 = bitcast double* %y_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = bitcast double* %x_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = bitcast double* %y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %75 = bitcast double* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end
  %76 = load i32, i32* %code, align 4, !tbaa !8
  %cmp48 = icmp sge i32 %76, 0
  br i1 %cmp48, label %land.lhs.true.50, label %cond.false

land.lhs.true.50:                                 ; preds = %if.end.47
  %77 = load i32, i32* %type.addr, align 4, !tbaa !7
  %cmp51 = icmp ne i32 %77, 0
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.50
  %78 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs53 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %78, i32 0, i32 44
  %79 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs53, align 8, !tbaa !28
  %endpath = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %79, i32 0, i32 18
  %80 = load i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)** %endpath, align 8, !tbaa !62
  %81 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %82 = load i32, i32* %type.addr, align 4, !tbaa !7
  %call54 = call i32 %80(%struct.gx_device_vector_s* %81, i32 %82) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.50, %if.end.47
  %83 = load i32, i32* %code, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call54, %cond.true ], [ %83, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %84 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = load i32, i32* %retval
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_write_clip_path(%struct.gx_device_vector_s* %vdev, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %prect = alloca %struct.gx_clip_rect_s*, align 8
  %page_rect = alloca %struct.gx_clip_rect_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %list = alloca %struct.gx_clip_list_s*, align 8
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_clip_rect_s** %prect to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gx_clip_rect_s* %page_rect to i8*
  call void @llvm.lifetime.start(i64 40, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_clip_path_s* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ymin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %page_rect, i32 0, i32 2
  store i32 0, i32* %ymin, align 4, !tbaa !163
  %xmin = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %page_rect, i32 0, i32 4
  store i32 0, i32* %xmin, align 4, !tbaa !165
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %4, i32 0, i32 13
  %5 = load i32, i32* %width, align 4, !tbaa !166
  %xmax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %page_rect, i32 0, i32 5
  store i32 %5, i32* %xmax, align 4, !tbaa !167
  %6 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %6, i32 0, i32 14
  %7 = load i32, i32* %height, align 4, !tbaa !168
  %ymax = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %page_rect, i32 0, i32 3
  store i32 %7, i32* %ymax, align 4, !tbaa !169
  %next = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %page_rect, i32 0, i32 0
  store %struct.gx_clip_rect_s* null, %struct.gx_clip_rect_s** %next, align 8, !tbaa !170
  store %struct.gx_clip_rect_s* %page_rect, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  br label %if.end.8

if.else:                                          ; preds = %entry
  %8 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path_valid = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %8, i32 0, i32 6
  %9 = load i32, i32* %path_valid, align 4, !tbaa !171
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.1, label %if.else.3

if.then.1:                                        ; preds = %if.else
  %10 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %10, i32 0, i32 44
  %11 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !28
  %dopath = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %11, i32 0, i32 11
  %12 = load i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)** %dopath, align 8, !tbaa !178
  %13 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %14 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %14, i32 0, i32 0
  %15 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %rule = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %15, i32 0, i32 2
  %16 = load i32, i32* %rule, align 4, !tbaa !179
  %cmp2 = icmp sle i32 %16, 0
  %cond = select i1 %cmp2, i32 4, i32 12
  %call = call i32 %12(%struct.gx_device_vector_s* %13, %struct.gx_path_s* %path, i32 %cond, %struct.gs_matrix_s* null) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.3:                                        ; preds = %if.else
  %17 = bitcast %struct.gx_clip_list_s** %list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call4 = call %struct.gx_clip_list_s* @gx_cpath_list(%struct.gx_clip_path_s* %18) #6
  store %struct.gx_clip_list_s* %call4, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %19 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %19, i32 0, i32 1
  %20 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %head, align 8, !tbaa !180
  store %struct.gx_clip_rect_s* %20, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %21 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.gx_clip_rect_s* %21, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else.3
  %22 = load %struct.gx_clip_list_s*, %struct.gx_clip_list_s** %list, align 8, !tbaa !1
  %single = getelementptr inbounds %struct.gx_clip_list_s, %struct.gx_clip_list_s* %22, i32 0, i32 0
  store %struct.gx_clip_rect_s* %single, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else.3
  %23 = bitcast %struct.gx_clip_list_s** %list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then
  %24 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs9 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %24, i32 0, i32 44
  %25 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs9, align 8, !tbaa !28
  %beginpath = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %25, i32 0, i32 13
  %26 = load i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)** %beginpath, align 8, !tbaa !58
  %27 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call10 = call i32 %26(%struct.gx_device_vector_s* %27, i32 4) #6
  store i32 %call10, i32* %code, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %28 = load i32, i32* %code, align 4, !tbaa !8
  %cmp11 = icmp sge i32 %28, 0
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %29 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %cmp12 = icmp ne %struct.gx_clip_rect_s* %29, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %30 = phi i1 [ false, %for.cond ], [ %cmp12, %land.rhs ]
  br i1 %30, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %31 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %xmax13 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %31, i32 0, i32 5
  %32 = load i32, i32* %xmax13, align 4, !tbaa !167
  %33 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %xmin14 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %33, i32 0, i32 4
  %34 = load i32, i32* %xmin14, align 4, !tbaa !165
  %cmp15 = icmp sgt i32 %32, %34
  br i1 %cmp15, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %for.body
  %35 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %ymax16 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %35, i32 0, i32 3
  %36 = load i32, i32* %ymax16, align 4, !tbaa !169
  %37 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %ymin17 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %37, i32 0, i32 2
  %38 = load i32, i32* %ymin17, align 4, !tbaa !163
  %cmp18 = icmp sgt i32 %36, %38
  br i1 %cmp18, label %if.then.19, label %if.end.28

if.then.19:                                       ; preds = %land.lhs.true
  %39 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %40 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %xmin20 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %40, i32 0, i32 4
  %41 = load i32, i32* %xmin20, align 4, !tbaa !165
  %shl = shl i32 %41, 8
  %42 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %ymin21 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %42, i32 0, i32 2
  %43 = load i32, i32* %ymin21, align 4, !tbaa !163
  %shl22 = shl i32 %43, 8
  %44 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %xmax23 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %44, i32 0, i32 5
  %45 = load i32, i32* %xmax23, align 4, !tbaa !167
  %shl24 = shl i32 %45, 8
  %46 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %ymax25 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %46, i32 0, i32 3
  %47 = load i32, i32* %ymax25, align 4, !tbaa !169
  %shl26 = shl i32 %47, 8
  %call27 = call i32 @gdev_vector_write_rectangle(%struct.gx_device_vector_s* %39, i32 %shl, i32 %shl22, i32 %shl24, i32 %shl26, i32 0, i32 0) #6
  store i32 %call27, i32* %code, align 4, !tbaa !8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.19, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %48 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  %next29 = getelementptr inbounds %struct.gx_clip_rect_s, %struct.gx_clip_rect_s* %48, i32 0, i32 0
  %49 = load %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s** %next29, align 8, !tbaa !170
  store %struct.gx_clip_rect_s* %49, %struct.gx_clip_rect_s** %prect, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end
  %50 = load i32, i32* %code, align 4, !tbaa !8
  %cmp30 = icmp sge i32 %50, 0
  br i1 %cmp30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %for.end
  %51 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %vec_procs32 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %51, i32 0, i32 44
  %52 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs32, align 8, !tbaa !28
  %endpath = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %52, i32 0, i32 18
  %53 = load i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)** %endpath, align 8, !tbaa !62
  %54 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call33 = call i32 %53(%struct.gx_device_vector_s* %54, i32 4) #6
  store i32 %call33, i32* %code, align 4, !tbaa !8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %for.end
  %55 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.1
  %56 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast %struct.gx_clip_rect_s* %page_rect to i8*
  call void @llvm.lifetime.end(i64 40, i8* %57) #2
  %58 = bitcast %struct.gx_clip_rect_s** %prect to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare %struct.gx_clip_list_s* @gx_cpath_list(%struct.gx_clip_path_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %vdev, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code10 = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_clip_path_s* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %1, i32 0, i32 8
  %2 = load i64, i64* %id, align 8, !tbaa !181
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %clip_path_id = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %3, i32 0, i32 59
  %4 = load i64, i64* %clip_path_id, align 8, !tbaa !85
  %cmp = icmp ne i64 %2, %4
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.then
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %7 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @gdev_vector_write_clip_path(%struct.gx_device_vector_s* %6, %struct.gx_clip_path_s* %7) #6
  store i32 %call, i32* %code, align 4, !tbaa !8
  %8 = load i32, i32* %code, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then.1
  %9 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.1
  %10 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %id4 = getelementptr inbounds %struct.gx_clip_path_s, %struct.gx_clip_path_s* %10, i32 0, i32 8
  %11 = load i64, i64* %id4, align 8, !tbaa !181
  %12 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %clip_path_id5 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %12, i32 0, i32 59
  store i64 %11, i64* %clip_path_id5, align 8, !tbaa !85
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.3
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.6

if.end.6:                                         ; preds = %cleanup.cont, %if.then
  br label %if.end.21

if.else:                                          ; preds = %entry
  %14 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %clip_path_id7 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %14, i32 0, i32 59
  %15 = load i64, i64* %clip_path_id7, align 8, !tbaa !85
  %16 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %no_clip_path_id = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %16, i32 0, i32 58
  %17 = load i64, i64* %no_clip_path_id, align 8, !tbaa !84
  %cmp8 = icmp ne i64 %15, %17
  br i1 %cmp8, label %if.then.9, label %if.end.20

if.then.9:                                        ; preds = %if.else
  %18 = bitcast i32* %code10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %call11 = call i32 @gdev_vector_write_clip_path(%struct.gx_device_vector_s* %19, %struct.gx_clip_path_s* null) #6
  store i32 %call11, i32* %code10, align 4, !tbaa !8
  %20 = load i32, i32* %code10, align 4, !tbaa !8
  %cmp12 = icmp slt i32 %20, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  %21 = load i32, i32* %code10, align 4, !tbaa !8
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17

if.end.14:                                        ; preds = %if.then.9
  %22 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %no_clip_path_id15 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %22, i32 0, i32 58
  %23 = load i64, i64* %no_clip_path_id15, align 8, !tbaa !84
  %24 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %clip_path_id16 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %24, i32 0, i32 59
  store i64 %23, i64* %clip_path_id16, align 8, !tbaa !85
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.17

cleanup.17:                                       ; preds = %if.end.14, %if.then.13
  %25 = bitcast i32* %code10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %cleanup.dest.18 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.18, label %unreachable [
    i32 0, label %cleanup.cont.19
    i32 1, label %return
  ]

cleanup.cont.19:                                  ; preds = %cleanup.17
  br label %if.end.20

if.end.20:                                        ; preds = %cleanup.cont.19, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %cleanup.17, %cleanup
  %26 = load i32, i32* %retval
  ret i32 %26

unreachable:                                      ; preds = %cleanup.17, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_close_file(%struct.gx_device_vector_s* %vdev) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %1, i32 0, i32 46
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !98
  store %struct._IO_FILE* %2, %struct._IO_FILE** %f, align 8, !tbaa !1
  %3 = bitcast i32* %err to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %dash_pattern = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %4, i32 0, i32 52
  %5 = load float*, float** %dash_pattern, align 8, !tbaa !132
  %tobool = icmp ne float* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !83
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 0
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !133
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %9 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !97
  %10 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !83
  %stable_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 0
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory2, align 8, !tbaa !133
  %13 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %dash_pattern3 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %13, i32 0, i32 52
  %14 = load float*, float** %dash_pattern3, align 8, !tbaa !132
  %15 = bitcast float* %14 to i8*
  call void %9(%struct.gs_memory_s* %12, i8* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0)) #6
  %16 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %dash_pattern4 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %16, i32 0, i32 52
  store float* null, float** %dash_pattern4, align 8, !tbaa !132
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %17, i32 0, i32 64
  %18 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !96
  %tobool5 = icmp ne %struct.gx_device_bbox_s* %18, null
  br i1 %tobool5, label %if.then.6, label %if.end.53

if.then.6:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %19 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device7 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %19, i32 0, i32 64
  %20 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device7, align 8, !tbaa !96
  %icc_struct = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %20, i32 0, i32 39
  %21 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !110
  %tobool8 = icmp ne %struct.cmm_dev_profile_s* %21, null
  br i1 %tobool8, label %if.then.9, label %if.end.43

if.then.9:                                        ; preds = %do.body
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.body.10
  br label %do.cond

do.cond:                                          ; preds = %do.body.11
  br label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device12 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %22, i32 0, i32 64
  %23 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device12, align 8, !tbaa !96
  %icc_struct13 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %23, i32 0, i32 39
  %24 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct13, align 8, !tbaa !110
  %rc = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %24, i32 0, i32 14
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %25 = load i64, i64* %ref_count, align 8, !tbaa !111
  %add = add nsw i64 %25, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !111
  br label %do.cond.14

do.cond.14:                                       ; preds = %do.end
  br label %do.end.15

do.end.15:                                        ; preds = %do.cond.14
  %26 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device16 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %26, i32 0, i32 64
  %27 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device16, align 8, !tbaa !96
  %icc_struct17 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %27, i32 0, i32 39
  %28 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct17, align 8, !tbaa !110
  %rc18 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %28, i32 0, i32 14
  %ref_count19 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 0
  %29 = load i64, i64* %ref_count19, align 8, !tbaa !111
  %tobool20 = icmp ne i64 %29, 0
  br i1 %tobool20, label %if.else, label %if.then.21

if.then.21:                                       ; preds = %do.end.15
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.body.22
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.body.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  %30 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device26 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %30, i32 0, i32 64
  %31 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device26, align 8, !tbaa !96
  %icc_struct27 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %31, i32 0, i32 39
  %32 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct27, align 8, !tbaa !110
  %rc28 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %32, i32 0, i32 14
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc28, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !182
  %34 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device29 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %34, i32 0, i32 64
  %35 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device29, align 8, !tbaa !96
  %icc_struct30 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %35, i32 0, i32 39
  %36 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct30, align 8, !tbaa !110
  %rc31 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %36, i32 0, i32 14
  %memory32 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc31, i32 0, i32 1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !183
  %38 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device33 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %38, i32 0, i32 64
  %39 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device33, align 8, !tbaa !96
  %icc_struct34 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %39, i32 0, i32 39
  %40 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct34, align 8, !tbaa !110
  %41 = bitcast %struct.cmm_dev_profile_s* %40 to i8*
  call void %33(%struct.gs_memory_s* %37, i8* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0)) #6
  br label %do.cond.35

do.cond.35:                                       ; preds = %do.end.25
  br label %do.end.36

do.end.36:                                        ; preds = %do.cond.35
  %42 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device37 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %42, i32 0, i32 64
  %43 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device37, align 8, !tbaa !96
  %icc_struct38 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %43, i32 0, i32 39
  store %struct.cmm_dev_profile_s* null, %struct.cmm_dev_profile_s** %icc_struct38, align 8, !tbaa !110
  br label %if.end.42

if.else:                                          ; preds = %do.end.15
  br label %do.body.39

do.body.39:                                       ; preds = %if.else
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.body.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %do.end.36
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %do.body
  br label %do.cond.44

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45

do.end.45:                                        ; preds = %do.cond.44
  %44 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device46 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %44, i32 0, i32 64
  %45 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device46, align 8, !tbaa !96
  %icc_struct47 = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %45, i32 0, i32 39
  store %struct.cmm_dev_profile_s* null, %struct.cmm_dev_profile_s** %icc_struct47, align 8, !tbaa !110
  %46 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %46, i32 0, i32 43
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !89
  %procs48 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 1
  %free_object49 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs48, i32 0, i32 2
  %48 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object49, align 8, !tbaa !97
  %49 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory50 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %49, i32 0, i32 43
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory50, align 8, !tbaa !89
  %51 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device51 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %51, i32 0, i32 64
  %52 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device51, align 8, !tbaa !96
  %53 = bitcast %struct.gx_device_bbox_s* %52 to i8*
  call void %48(%struct.gs_memory_s* %50, i8* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #6
  %54 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device52 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %54, i32 0, i32 64
  store %struct.gx_device_bbox_s* null, %struct.gx_device_bbox_s** %bbox_device52, align 8, !tbaa !96
  br label %if.end.53

if.end.53:                                        ; preds = %do.end.45, %if.end
  %55 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %55, i32 0, i32 47
  %56 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !94
  %tobool54 = icmp ne %struct.stream_s* %56, null
  br i1 %tobool54, label %if.then.55, label %if.end.68

if.then.55:                                       ; preds = %if.end.53
  %57 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strm56 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %57, i32 0, i32 47
  %58 = load %struct.stream_s*, %struct.stream_s** %strm56, align 8, !tbaa !94
  %call = call i32 @sclose(%struct.stream_s* %58) #6
  %59 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory57 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %59, i32 0, i32 43
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory57, align 8, !tbaa !89
  %procs58 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %60, i32 0, i32 1
  %free_object59 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs58, i32 0, i32 2
  %61 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object59, align 8, !tbaa !97
  %62 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory60 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %62, i32 0, i32 43
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory60, align 8, !tbaa !89
  %64 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strm61 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %64, i32 0, i32 47
  %65 = load %struct.stream_s*, %struct.stream_s** %strm61, align 8, !tbaa !94
  %66 = bitcast %struct.stream_s* %65 to i8*
  call void %61(%struct.gs_memory_s* %63, i8* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0)) #6
  %67 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strm62 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %67, i32 0, i32 47
  store %struct.stream_s* null, %struct.stream_s** %strm62, align 8, !tbaa !94
  %68 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory63 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %68, i32 0, i32 43
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory63, align 8, !tbaa !89
  %procs64 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 1
  %free_object65 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs64, i32 0, i32 2
  %70 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object65, align 8, !tbaa !97
  %71 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %v_memory66 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %71, i32 0, i32 43
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory66, align 8, !tbaa !89
  %73 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strmbuf = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %73, i32 0, i32 48
  %74 = load i8*, i8** %strmbuf, align 8, !tbaa !93
  call void %70(%struct.gs_memory_s* %72, i8* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0)) #6
  %75 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %strmbuf67 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %75, i32 0, i32 48
  store i8* null, i8** %strmbuf67, align 8, !tbaa !93
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.55, %if.end.53
  %76 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %file69 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %76, i32 0, i32 46
  store %struct._IO_FILE* null, %struct._IO_FILE** %file69, align 8, !tbaa !98
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %tobool70 = icmp ne %struct._IO_FILE* %77, null
  br i1 %tobool70, label %if.then.71, label %if.end.77

if.then.71:                                       ; preds = %if.end.68
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call72 = call i32 @ferror(%struct._IO_FILE* %78) #8
  store i32 %call72, i32* %err, align 4, !tbaa !8
  %79 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %80 = bitcast %struct.gx_device_vector_s* %79 to %struct.gx_device_s*
  %81 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %81, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call73 = call i32 @gx_device_close_output_file(%struct.gx_device_s* %80, i8* %arraydecay, %struct._IO_FILE* %82) #6
  %cmp = icmp ne i32 %call73, 0
  br i1 %cmp, label %if.then.75, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.71
  %83 = load i32, i32* %err, align 4, !tbaa !8
  %cmp74 = icmp ne i32 %83, 0
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %lor.lhs.false, %if.then.71
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %lor.lhs.false
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.68
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.77, %if.then.75
  %84 = bitcast i32* %err to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %86 = load i32, i32* %retval
  ret i32 %86
}

declare i32 @sclose(%struct.stream_s*) #0

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_begin_image(%struct.gx_device_vector_s* %vdev, %struct.gs_imager_state_s* %pis, %struct.gs_image1_s* %pim, i32 %format, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_procs_s* %pprocs, %struct.gdev_vector_image_enum_s* %pie) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pim.addr = alloca %struct.gs_image1_s*, align 8
  %format.addr = alloca i32, align 4
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pprocs.addr = alloca %struct.gx_image_enum_procs_s*, align 8
  %pie.addr = alloca %struct.gdev_vector_image_enum_s*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %num_components = alloca i32, align 4
  %bits_per_pixel = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_image1_s* %pim, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !7
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_procs_s* %pprocs, %struct.gx_image_enum_procs_s** %pprocs.addr, align 8, !tbaa !1
  store %struct.gdev_vector_image_enum_s* %pie, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %1, i32 0, i32 9
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !184
  store %struct.gs_color_space_s* %2, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %3 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMask = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %6, i32 0, i32 10
  %7 = load i32, i32* %ImageMask, align 4, !tbaa !186
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %num_components, align 4, !tbaa !8
  store i32 1, i32* %bits_per_pixel, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %8) #6
  store i32 %call, i32* %num_components, align 4, !tbaa !8
  %9 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %9, i32 0, i32 4
  %10 = load i32, i32* %BitsPerComponent, align 4, !tbaa !187
  store i32 %10, i32* %bits_per_pixel, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gdev_vector_image_enum_s* %11 to %struct.gx_image_enum_common_s*
  %13 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gs_image1_s* %13 to %struct.gs_data_image_s*
  %15 = load %struct.gx_image_enum_procs_s*, %struct.gx_image_enum_procs_s** %pprocs.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_vector_s* %16 to %struct.gx_device_s*
  %18 = load i32, i32* %num_components, align 4, !tbaa !8
  %19 = load i32, i32* %format.addr, align 4, !tbaa !7
  %call1 = call i32 @gx_image_enum_common_init(%struct.gx_image_enum_common_s* %12, %struct.gs_data_image_s* %14, %struct.gx_image_enum_procs_s* %15, %struct.gx_device_s* %17, i32 %18, i32 %19) #6
  store i32 %call1, i32* %code, align 4, !tbaa !8
  %20 = load i32, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %21 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %22 = load i32, i32* %bits_per_pixel, align 4, !tbaa !8
  %23 = load i32, i32* %num_components, align 4, !tbaa !8
  %mul = mul nsw i32 %22, %23
  %24 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %24, i32 0, i32 6
  %25 = load i32, i32* %num_planes, align 4, !tbaa !188
  %div = sdiv i32 %mul, %25
  %26 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %bits_per_pixel4 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %26, i32 0, i32 13
  store i32 %div, i32* %bits_per_pixel4, align 4, !tbaa !190
  %27 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %default_info = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %27, i32 0, i32 9
  store %struct.gx_image_enum_common_s* null, %struct.gx_image_enum_common_s** %default_info, align 8, !tbaa !191
  %28 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %bbox_info = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %28, i32 0, i32 10
  store %struct.gx_image_enum_common_s* null, %struct.gx_image_enum_common_s** %bbox_info, align 8, !tbaa !192
  %29 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %30 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %30, i32 0, i32 10
  %31 = load i32, i32* %log_op, align 4, !tbaa !126
  %call5 = call i32 @gdev_vector_update_log_op(%struct.gx_device_vector_s* %29, i32 %31) #6
  store i32 %call5, i32* %code, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %32 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %33 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call7 = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %32, %struct.gx_clip_path_s* %33) #6
  store i32 %call7, i32* %code, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.28, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %34 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %ImageMask10 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %34, i32 0, i32 10
  %35 = load i32, i32* %ImageMask10, align 4, !tbaa !186
  %tobool11 = icmp ne i32 %35, 0
  br i1 %tobool11, label %land.lhs.true.17, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %36 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %CombineWithColor = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %36, i32 0, i32 8
  %37 = load i32, i32* %CombineWithColor, align 4, !tbaa !193
  %tobool13 = icmp ne i32 %37, 0
  br i1 %tobool13, label %land.lhs.true, label %lor.lhs.false.20

land.lhs.true:                                    ; preds = %lor.lhs.false.12
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op14 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %38, i32 0, i32 10
  %39 = load i32, i32* %log_op14, align 4, !tbaa !126
  %shl = shl i32 %39, 4
  %40 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op15 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %40, i32 0, i32 10
  %41 = load i32, i32* %log_op15, align 4, !tbaa !126
  %xor = xor i32 %shl, %41
  %and = and i32 %xor, 240
  %cmp16 = icmp ne i32 %and, 0
  br i1 %cmp16, label %land.lhs.true.17, label %lor.lhs.false.20

land.lhs.true.17:                                 ; preds = %land.lhs.true, %lor.lhs.false.9
  %42 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %43 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %44 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call18 = call i32 @gdev_vector_update_fill_color(%struct.gx_device_vector_s* %42, %struct.gs_imager_state_s* %43, %struct.gx_device_color_s* %44) #6
  store i32 %call18, i32* %code, align 4, !tbaa !8
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.28, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %land.lhs.true.17, %land.lhs.true, %lor.lhs.false.12
  %45 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %45, i32 0, i32 64
  %46 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !96
  %tobool21 = icmp ne %struct.gx_device_bbox_s* %46, null
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.29

land.lhs.true.22:                                 ; preds = %lor.lhs.false.20
  %47 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device23 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %47, i32 0, i32 64
  %48 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device23, align 8, !tbaa !96
  %procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %48, i32 0, i32 42
  %begin_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 31
  %49 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_image, align 8, !tbaa !194
  %50 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device24 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %50, i32 0, i32 64
  %51 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device24, align 8, !tbaa !96
  %52 = bitcast %struct.gx_device_bbox_s* %51 to %struct.gx_device_s*
  %53 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %54 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %55 = load i32, i32* %format.addr, align 4, !tbaa !7
  %56 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %57 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %58 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %60 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %bbox_info25 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %60, i32 0, i32 10
  %call26 = call i32 %49(%struct.gx_device_s* %52, %struct.gs_imager_state_s* %53, %struct.gs_image1_s* %54, i32 %55, %struct.gs_int_rect_s* %56, %struct.gx_device_color_s* %57, %struct.gx_clip_path_s* %58, %struct.gs_memory_s* %59, %struct.gx_image_enum_common_s** %bbox_info25) #6
  store i32 %call26, i32* %code, align 4, !tbaa !8
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.22, %land.lhs.true.17, %lor.lhs.false, %if.end.3
  %61 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %land.lhs.true.22, %lor.lhs.false.20
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %63 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %63, i32 0, i32 3
  store %struct.gs_memory_s* %62, %struct.gs_memory_s** %memory, align 8, !tbaa !195
  %64 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %tobool30 = icmp ne %struct.gs_int_rect_s* %64, null
  br i1 %tobool30, label %if.then.31, label %if.else.37

if.then.31:                                       ; preds = %if.end.29
  %65 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %65, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %66 = load i32, i32* %x, align 4, !tbaa !196
  %67 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %67, i32 0, i32 0
  %x32 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %68 = load i32, i32* %x32, align 4, !tbaa !198
  %sub = sub nsw i32 %66, %68
  %69 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %69, i32 0, i32 11
  store i32 %sub, i32* %width, align 4, !tbaa !199
  %70 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q33 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %70, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q33, i32 0, i32 1
  %71 = load i32, i32* %y, align 4, !tbaa !200
  %72 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p34 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %72, i32 0, i32 0
  %y35 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p34, i32 0, i32 1
  %73 = load i32, i32* %y35, align 4, !tbaa !201
  %sub36 = sub nsw i32 %71, %73
  %74 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %74, i32 0, i32 12
  store i32 %sub36, i32* %height, align 4, !tbaa !202
  br label %if.end.40

if.else.37:                                       ; preds = %if.end.29
  %75 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %75, i32 0, i32 2
  %76 = load i32, i32* %Width, align 4, !tbaa !203
  %77 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %width38 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %77, i32 0, i32 11
  store i32 %76, i32* %width38, align 4, !tbaa !199
  %78 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %78, i32 0, i32 3
  %79 = load i32, i32* %Height, align 4, !tbaa !204
  %80 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %height39 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %80, i32 0, i32 12
  store i32 %79, i32* %height39, align 4, !tbaa !202
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.31
  %81 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %width41 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %81, i32 0, i32 11
  %82 = load i32, i32* %width41, align 4, !tbaa !199
  %83 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %bits_per_pixel42 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %83, i32 0, i32 13
  %84 = load i32, i32* %bits_per_pixel42, align 4, !tbaa !190
  %mul43 = mul nsw i32 %82, %84
  %85 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %bits_per_row = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %85, i32 0, i32 14
  store i32 %mul43, i32* %bits_per_row, align 4, !tbaa !205
  %86 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %y44 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %86, i32 0, i32 15
  store i32 0, i32* %y44, align 4, !tbaa !206
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.then.28, %if.then.2
  %87 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = load i32, i32* %retval
  ret i32 %91
}

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #0

declare i32 @gx_image_enum_common_init(%struct.gx_image_enum_common_s*, %struct.gs_data_image_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_end_image(%struct.gx_device_vector_s* %vdev, %struct.gdev_vector_image_enum_s* %pie, i32 %draw_last, i64 %pad) #1 {
entry:
  %retval = alloca i32, align 4
  %vdev.addr = alloca %struct.gx_device_vector_s*, align 8
  %pie.addr = alloca %struct.gdev_vector_image_enum_s*, align 8
  %draw_last.addr = alloca i32, align 4
  %pad.addr = alloca i64, align 8
  %code = alloca i32, align 4
  %bytes_per_row = alloca i32, align 4
  %row = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %bcode = alloca i32, align 4
  store %struct.gx_device_vector_s* %vdev, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  store %struct.gdev_vector_image_enum_s* %pie, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !8
  store i64 %pad, i64* %pad.addr, align 8, !tbaa !82
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %default_info = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %1, i32 0, i32 9
  %2 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %default_info, align 8, !tbaa !191
  %tobool = icmp ne %struct.gx_image_enum_common_s* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_vector_s* %3 to %struct.gx_device_s*
  %5 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %default_info1 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %5, i32 0, i32 9
  %6 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %default_info1, align 8, !tbaa !191
  %7 = load i32, i32* %draw_last.addr, align 4, !tbaa !8
  %call = call i32 @gx_default_end_image(%struct.gx_device_s* %4, %struct.gx_image_enum_common_s* %6, i32 %7) #6
  store i32 %call, i32* %code, align 4, !tbaa !8
  %8 = load i32, i32* %code, align 4, !tbaa !8
  %cmp = icmp sge i32 %8, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %code, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.25

if.else:                                          ; preds = %entry
  %9 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %9, i32 0, i32 15
  %10 = load i32, i32* %y, align 4, !tbaa !206
  %11 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %11, i32 0, i32 12
  %12 = load i32, i32* %height, align 4, !tbaa !202
  %cmp3 = icmp slt i32 %10, %12
  br i1 %cmp3, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.else
  %13 = load i64, i64* %pad.addr, align 8, !tbaa !82
  %cmp4 = icmp ne i64 %13, -1
  br i1 %cmp4, label %if.then.5, label %if.end.24

if.then.5:                                        ; preds = %land.lhs.true
  %14 = bitcast i32* %bytes_per_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %bits_per_row = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %15, i32 0, i32 14
  %16 = load i32, i32* %bits_per_row, align 4, !tbaa !205
  %add = add i32 %16, 7
  %shr = lshr i32 %add, 3
  store i32 %shr, i32* %bytes_per_row, align 4, !tbaa !8
  %17 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !195
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %20 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !90
  %21 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !195
  %23 = load i32, i32* %bytes_per_row, align 4, !tbaa !8
  %call7 = call i8* %20(%struct.gs_memory_s* %22, i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0)) #6
  store i8* %call7, i8** %row, align 8, !tbaa !1
  %24 = load i8*, i8** %row, align 8, !tbaa !1
  %cmp8 = icmp eq i8* %24, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.then.5
  %25 = load i8*, i8** %row, align 8, !tbaa !1
  %26 = load i64, i64* %pad.addr, align 8, !tbaa !82
  %conv = trunc i64 %26 to i8
  %conv11 = zext i8 %conv to i32
  %27 = load i32, i32* %bytes_per_row, align 4, !tbaa !8
  %conv12 = zext i32 %27 to i64
  %call13 = call i8* @memset(i8* %25, i32 %conv11, i64 %conv12) #8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %28 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %y14 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %28, i32 0, i32 15
  %29 = load i32, i32* %y14, align 4, !tbaa !206
  %30 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %height15 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %30, i32 0, i32 12
  %31 = load i32, i32* %height15, align 4, !tbaa !202
  %cmp16 = icmp slt i32 %29, %31
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %33 = bitcast %struct.gdev_vector_image_enum_s* %32 to %struct.gx_image_enum_common_s*
  %34 = load i32, i32* %bytes_per_row, align 4, !tbaa !8
  %call18 = call i32 @gx_image_data(%struct.gx_image_enum_common_s* %33, i8** %row, i32 0, i32 %34, i32 1) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %y19 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %35, i32 0, i32 15
  %36 = load i32, i32* %y19, align 4, !tbaa !206
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %y19, align 4, !tbaa !206
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !195
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 2
  %39 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !97
  %40 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !195
  %42 = load i8*, i8** %row, align 8, !tbaa !1
  call void %39(%struct.gs_memory_s* %41, i8* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0)) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.9
  %43 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = bitcast i32* %bytes_per_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.34 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.24

if.end.24:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.else
  store i32 1, i32* %code, align 4, !tbaa !8
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  %45 = load %struct.gx_device_vector_s*, %struct.gx_device_vector_s** %vdev.addr, align 8, !tbaa !1
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %45, i32 0, i32 64
  %46 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !96
  %tobool26 = icmp ne %struct.gx_device_bbox_s* %46, null
  br i1 %tobool26, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %if.end.25
  %47 = bitcast i32* %bcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #2
  %48 = load %struct.gdev_vector_image_enum_s*, %struct.gdev_vector_image_enum_s** %pie.addr, align 8, !tbaa !1
  %bbox_info = getelementptr inbounds %struct.gdev_vector_image_enum_s, %struct.gdev_vector_image_enum_s* %48, i32 0, i32 10
  %49 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %bbox_info, align 8, !tbaa !192
  %50 = load i32, i32* %draw_last.addr, align 4, !tbaa !8
  %call28 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %49, i32 %50) #6
  store i32 %call28, i32* %bcode, align 4, !tbaa !8
  %51 = load i32, i32* %bcode, align 4, !tbaa !8
  %cmp29 = icmp slt i32 %51, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.27
  %52 = load i32, i32* %bcode, align 4, !tbaa !8
  store i32 %52, i32* %code, align 4, !tbaa !8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.27
  %53 = bitcast i32* %bcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.25
  %54 = bitcast %struct.gdev_vector_image_enum_s** %pie.addr to %struct.gx_image_enum_common_s**
  call void @gx_image_free_enum(%struct.gx_image_enum_common_s** %54) #6
  %55 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

cleanup.34:                                       ; preds = %if.end.33, %cleanup
  %56 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i32 @gx_default_end_image(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare i32 @gx_image_data(%struct.gx_image_enum_common_s*, i8**, i32, i32, i32) #0

declare i32 @gx_image_end(%struct.gx_image_enum_common_s*, i32) #0

declare void @gx_image_free_enum(%struct.gx_image_enum_common_s**) #0

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  %ofns = alloca %struct.gs_param_string_s, align 8
  %bool_true = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_get_params(%struct.gx_device_s* %1, %struct.gs_param_list_s* %2) #6
  store i32 %call, i32* %code, align 4, !tbaa !8
  %3 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast %struct.gs_param_string_s* %ofns to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #2
  %5 = bitcast i32* %bool_true to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 1, i32* %bool_true, align 4, !tbaa !8
  %6 = load i32, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_s* %8 to %struct.gx_device_vector_s*
  %fname = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %9, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 0
  store i8* %arraydecay, i8** %data, align 8, !tbaa !207
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_s* %10 to %struct.gx_device_vector_s*
  %fname1 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %11, i32 0, i32 45
  %arraydecay2 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname1, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay2) #9
  %conv = trunc i64 %call3 to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !209
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !210
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call4 = call i32 @param_write_string(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %struct.gs_param_string_s* %ofns) #6
  store i32 %call4, i32* %ecode, align 4, !tbaa !8
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %13 = load i32, i32* %ecode, align 4, !tbaa !8
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call9 = call i32 @param_write_bool(%struct.gs_param_list_s* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32* %bool_true) #6
  store i32 %call9, i32* %ecode, align 4, !tbaa !8
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  %15 = load i32, i32* %ecode, align 4, !tbaa !8
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.8
  %16 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.then.7, %if.then
  %17 = bitcast i32* %bool_true to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast %struct.gs_param_string_s* %ofns to i8*
  call void @llvm.lifetime.end(i64 16, i8* %18) #2
  %19 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @gx_default_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %param_name = alloca i8*, align 8
  %ofns = alloca %struct.gs_param_string_s, align 8
  %open = alloca i32, align 4
  %HighLevelDevice = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bbdev = alloca %struct.gx_device_bbox_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %ecode, align 4, !tbaa !8
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct.gs_param_string_s* %ofns to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = bitcast i32* %open to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 9
  %6 = load i32, i32* %is_open, align 4, !tbaa !211
  store i32 %6, i32* %open, align 4, !tbaa !8
  %7 = bitcast i32* %HighLevelDevice to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_bool(%struct.gs_param_list_s* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32* %HighLevelDevice) #6
  store i32 %call, i32* %code, align 4, !tbaa !8
  %9 = load i32, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call1 = call i32 @param_read_string(%struct.gs_param_list_s* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %struct.gs_param_string_s* %ofns) #6
  store i32 %call1, i32* %code, align 4, !tbaa !8
  switch i32 %call1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %if.end
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 1
  %12 = load i32, i32* %size, align 4, !tbaa !209
  %cmp2 = icmp ugt i32 %12, 4095
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %sw.bb
  %call4 = call i8* @gs_program_name() #6
  %call5 = call i64 @gs_revision_number() #6
  call void @eprintf_program_ident(i8* %call4, i64 %call5) #6
  %call6 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i32 4095) #6
  store i32 -13, i32* %ecode, align 4, !tbaa !8
  br label %if.end.19

if.else:                                          ; preds = %sw.bb
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8, !tbaa !207
  %size7 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 1
  %14 = load i32, i32* %size7, align 4, !tbaa !209
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_s* %15 to %struct.gx_device_vector_s*
  %fname = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %16, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_s* %17 to %struct.gx_device_vector_s*
  %fname8 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %18, i32 0, i32 45
  %arraydecay9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname8, i32 0, i32 0
  %call10 = call i64 @strlen(i8* %arraydecay9) #9
  %conv = trunc i64 %call10 to i32
  %call11 = call i32 @bytes_compare(i8* %13, i32 %14, i8* %arraydecay, i32 %conv) #6
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.else.14, label %if.then.12

if.then.12:                                       ; preds = %if.else
  %data13 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 0
  store i8* null, i8** %data13, align 8, !tbaa !207
  br label %sw.epilog

if.else.14:                                       ; preds = %if.else
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LockSafetyParams = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 32
  %20 = load i32, i32* %LockSafetyParams, align 4, !tbaa !213
  %tobool15 = icmp ne i32 %20, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else.14
  store i32 -7, i32* %ecode, align 4, !tbaa !8
  br label %ofe

if.end.17:                                        ; preds = %if.else.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %21 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %21, i32* %ecode, align 4, !tbaa !8
  br label %ofe

ofe:                                              ; preds = %sw.default, %if.then.16
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %22, i32 0, i32 0
  %23 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !214
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %23, i32 0, i32 7
  %24 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !216
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %param_name, align 8, !tbaa !1
  %27 = load i32, i32* %ecode, align 4, !tbaa !8
  %call20 = call i32 %24(%struct.gs_param_list_s* %25, i8* %26, i32 %27) #6
  br label %sw.bb.21

sw.bb.21:                                         ; preds = %if.end, %ofe
  %data22 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 0
  store i8* null, i8** %data22, align 8, !tbaa !207
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.21, %if.end.19, %if.then.12
  %28 = load i32, i32* %ecode, align 4, !tbaa !8
  %cmp23 = icmp slt i32 %28, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %sw.epilog
  %29 = load i32, i32* %ecode, align 4, !tbaa !8
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end.26:                                        ; preds = %sw.epilog
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 9
  store i32 0, i32* %is_open27, align 4, !tbaa !211
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %32 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call28 = call i32 @gx_default_put_params(%struct.gx_device_s* %31, %struct.gs_param_list_s* %32) #6
  store i32 %call28, i32* %code, align 4, !tbaa !8
  %33 = load i32, i32* %open, align 4, !tbaa !8
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open29 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 9
  store i32 %33, i32* %is_open29, align 4, !tbaa !211
  %35 = load i32, i32* %code, align 4, !tbaa !8
  %cmp30 = icmp slt i32 %35, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.26
  %36 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end.33:                                        ; preds = %if.end.26
  %data34 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 0
  %37 = load i8*, i8** %data34, align 8, !tbaa !207
  %cmp35 = icmp ne i8* %37, null
  br i1 %cmp35, label %if.then.37, label %if.end.90

if.then.37:                                       ; preds = %if.end.33
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %39 = bitcast %struct.gx_device_s* %38 to %struct.gx_device_vector_s*
  %fname38 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %39, i32 0, i32 45
  %arraydecay39 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname38, i32 0, i32 0
  %data40 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 0
  %40 = load i8*, i8** %data40, align 8, !tbaa !207
  %size41 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 1
  %41 = load i32, i32* %size41, align 4, !tbaa !209
  %conv42 = zext i32 %41 to i64
  %call43 = call i8* @memcpy(i8* %arraydecay39, i8* %40, i64 %conv42) #8
  %size44 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ofns, i32 0, i32 1
  %42 = load i32, i32* %size44, align 4, !tbaa !209
  %idxprom = zext i32 %42 to i64
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %44 = bitcast %struct.gx_device_s* %43 to %struct.gx_device_vector_s*
  %fname45 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %44, i32 0, i32 45
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname45, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !7
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open46 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 9
  %46 = load i32, i32* %is_open46, align 4, !tbaa !211
  %tobool47 = icmp ne i32 %46, 0
  br i1 %tobool47, label %land.lhs.true, label %if.else.83

land.lhs.true:                                    ; preds = %if.then.37
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %48 = bitcast %struct.gx_device_s* %47 to %struct.gx_device_vector_s*
  %strm = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %48, i32 0, i32 47
  %49 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !94
  %cmp48 = icmp ne %struct.stream_s* %49, null
  br i1 %cmp48, label %land.lhs.true.50, label %if.else.83

land.lhs.true.50:                                 ; preds = %land.lhs.true
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %51 = bitcast %struct.gx_device_s* %50 to %struct.gx_device_vector_s*
  %strm51 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %51, i32 0, i32 47
  %52 = load %struct.stream_s*, %struct.stream_s** %strm51, align 8, !tbaa !94
  %call52 = call i64 @stell(%struct.stream_s* %52) #6
  %cmp53 = icmp ne i64 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.else.83

if.then.55:                                       ; preds = %land.lhs.true.50
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call56 = call i32 @gs_closedevice(%struct.gx_device_s* %53) #6
  store i32 %call56, i32* %ecode, align 4, !tbaa !8
  %54 = load i32, i32* %ecode, align 4, !tbaa !8
  %cmp57 = icmp slt i32 %54, 0
  br i1 %cmp57, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %if.then.55
  %55 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs60 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %55, i32 0, i32 0
  %56 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs60, align 8, !tbaa !214
  %signal_error61 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %56, i32 0, i32 7
  %57 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error61, align 8, !tbaa !216
  %58 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %59 = load i8*, i8** %param_name, align 8, !tbaa !1
  %60 = load i32, i32* %ecode, align 4, !tbaa !8
  %call62 = call i32 %57(%struct.gs_param_list_s* %58, i8* %59, i32 %60) #6
  %61 = load i32, i32* %ecode, align 4, !tbaa !8
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end.63:                                        ; preds = %if.then.55
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %63 = bitcast %struct.gx_device_s* %62 to %struct.gx_device_vector_s*
  %file = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %63, i32 0, i32 46
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !98
  %cmp64 = icmp ne %struct._IO_FILE* %64, null
  br i1 %cmp64, label %if.then.66, label %if.end.74

if.then.66:                                       ; preds = %if.end.63
  %65 = bitcast %struct.gx_device_bbox_s** %bbdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #2
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %67 = bitcast %struct.gx_device_s* %66 to %struct.gx_device_vector_s*
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %67, i32 0, i32 64
  %68 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !96
  store %struct.gx_device_bbox_s* %68, %struct.gx_device_bbox_s** %bbdev, align 8, !tbaa !1
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %70 = bitcast %struct.gx_device_s* %69 to %struct.gx_device_vector_s*
  %bbox_device67 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %70, i32 0, i32 64
  store %struct.gx_device_bbox_s* null, %struct.gx_device_bbox_s** %bbox_device67, align 8, !tbaa !96
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %72 = bitcast %struct.gx_device_s* %71 to %struct.gx_device_vector_s*
  %call68 = call i32 @gdev_vector_close_file(%struct.gx_device_vector_s* %72) #6
  store i32 %call68, i32* %code, align 4, !tbaa !8
  %73 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbdev, align 8, !tbaa !1
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %75 = bitcast %struct.gx_device_s* %74 to %struct.gx_device_vector_s*
  %bbox_device69 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %75, i32 0, i32 64
  store %struct.gx_device_bbox_s* %73, %struct.gx_device_bbox_s** %bbox_device69, align 8, !tbaa !96
  %76 = load i32, i32* %code, align 4, !tbaa !8
  %cmp70 = icmp slt i32 %76, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.66
  %77 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %if.then.66
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.73, %if.then.72
  %78 = bitcast %struct.gx_device_bbox_s** %bbdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.91 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.74

if.end.74:                                        ; preds = %cleanup.cont, %if.end.63
  %79 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call75 = call i32 @gs_opendevice(%struct.gx_device_s* %79) #6
  store i32 %call75, i32* %ecode, align 4, !tbaa !8
  %80 = load i32, i32* %ecode, align 4, !tbaa !8
  %cmp76 = icmp slt i32 %80, 0
  br i1 %cmp76, label %if.then.78, label %if.end.82

if.then.78:                                       ; preds = %if.end.74
  %81 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs79 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %81, i32 0, i32 0
  %82 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs79, align 8, !tbaa !214
  %signal_error80 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %82, i32 0, i32 7
  %83 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error80, align 8, !tbaa !216
  %84 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %85 = load i8*, i8** %param_name, align 8, !tbaa !1
  %86 = load i32, i32* %ecode, align 4, !tbaa !8
  %call81 = call i32 %83(%struct.gs_param_list_s* %84, i8* %85, i32 %86) #6
  %87 = load i32, i32* %ecode, align 4, !tbaa !8
  store i32 %87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end.82:                                        ; preds = %if.end.74
  br label %if.end.89

if.else.83:                                       ; preds = %land.lhs.true.50, %land.lhs.true, %if.then.37
  %88 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open84 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %88, i32 0, i32 9
  %89 = load i32, i32* %is_open84, align 4, !tbaa !211
  %tobool85 = icmp ne i32 %89, 0
  br i1 %tobool85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.else.83
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %91 = bitcast %struct.gx_device_s* %90 to %struct.gx_device_vector_s*
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %93 = bitcast %struct.gx_device_s* %92 to %struct.gx_device_vector_s*
  %strmbuf_size = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %93, i32 0, i32 49
  %94 = load i32, i32* %strmbuf_size, align 4, !tbaa !99
  %95 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %96 = bitcast %struct.gx_device_s* %95 to %struct.gx_device_vector_s*
  %open_options = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %96, i32 0, i32 50
  %97 = load i32, i32* %open_options, align 4, !tbaa !100
  %call87 = call i32 @gdev_vector_open_file_options(%struct.gx_device_vector_s* %91, i32 %94, i32 %97) #6
  store i32 %call87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end.88:                                        ; preds = %if.else.83
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.82
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

cleanup.91:                                       ; preds = %if.end.90, %if.then.86, %if.then.78, %cleanup, %if.then.59, %if.then.32, %if.then.25, %if.then
  %98 = bitcast i32* %HighLevelDevice to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  %99 = bitcast i32* %open to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  %100 = bitcast %struct.gs_param_string_s* %ofns to i8*
  call void @llvm.lifetime.end(i64 16, i8* %100) #2
  %101 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #2
  %102 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #2
  %103 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = load i32, i32* %retval
  ret i32 %104
}

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

declare void @eprintf_program_ident(i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare i32 @errprintf_nomem(i8*, ...) #0

declare i32 @bytes_compare(i8*, i32, i8*, i32) #0

declare i32 @gx_default_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare i64 @stell(%struct.stream_s*) #0

declare i32 @gs_closedevice(%struct.gx_device_s*) #0

declare i32 @gs_opendevice(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %dcolor = alloca %struct.gx_device_color_s, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %code10 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !8
  store i32 %y, i32* %y.addr, align 4, !tbaa !8
  store i32 %w, i32* %w.addr, align 4, !tbaa !8
  store i32 %h, i32* %h.addr, align 4, !tbaa !8
  store i64 %color, i64* %color.addr, align 8, !tbaa !82
  %0 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.start(i64 656, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  %in_page = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %2, i32 0, i32 63
  %3 = load i32, i32* %in_page, align 4, !tbaa !79
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, i64* %color.addr, align 8, !tbaa !82
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_vector_s*
  %white = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %6, i32 0, i32 66
  %7 = load i64, i64* %white, align 8, !tbaa !87
  %cmp = icmp eq i64 %4, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load i64, i64* %color.addr, align 8, !tbaa !82
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %8, i64* %pure, align 8, !tbaa !82
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !218
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !222
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_s* %10 to %struct.gx_device_vector_s*
  %call = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %11, %struct.gx_clip_path_s* null) #6
  store i32 %call, i32* %code, align 4, !tbaa !8
  %12 = load i32, i32* %code, align 4, !tbaa !8
  %cmp1 = icmp slt i32 %12, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_s* %14 to %struct.gx_device_vector_s*
  %call4 = call i32 @update_fill(%struct.gx_device_vector_s* %15, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %dcolor, i32 240) #6
  store i32 %call4, i32* %code, align 4, !tbaa !8
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %16 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then.2
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.26 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gx_device_s* %18 to %struct.gx_device_vector_s*
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %19, i32 0, i32 64
  %20 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !96
  %tobool8 = icmp ne %struct.gx_device_bbox_s* %20, null
  br i1 %tobool8, label %if.then.9, label %if.end.20

if.then.9:                                        ; preds = %cleanup.cont
  %21 = bitcast i32* %code10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_s* %22 to %struct.gx_device_vector_s*
  %bbox_device11 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %23, i32 0, i32 64
  %24 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device11, align 8, !tbaa !96
  %procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %24, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %25 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !223
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %27 = bitcast %struct.gx_device_s* %26 to %struct.gx_device_vector_s*
  %bbox_device12 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %27, i32 0, i32 64
  %28 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device12, align 8, !tbaa !96
  %29 = bitcast %struct.gx_device_bbox_s* %28 to %struct.gx_device_s*
  %30 = load i32, i32* %x.addr, align 4, !tbaa !8
  %31 = load i32, i32* %y.addr, align 4, !tbaa !8
  %32 = load i32, i32* %w.addr, align 4, !tbaa !8
  %33 = load i32, i32* %h.addr, align 4, !tbaa !8
  %34 = load i64, i64* %color.addr, align 8, !tbaa !82
  %call13 = call i32 %25(%struct.gx_device_s* %29, i32 %30, i32 %31, i32 %32, i32 %33, i64 %34) #6
  store i32 %call13, i32* %code10, align 4, !tbaa !8
  %35 = load i32, i32* %code10, align 4, !tbaa !8
  %cmp14 = icmp slt i32 %35, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.9
  %36 = load i32, i32* %code10, align 4, !tbaa !8
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17

if.end.16:                                        ; preds = %if.then.9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.17

cleanup.17:                                       ; preds = %if.end.16, %if.then.15
  %37 = bitcast i32* %code10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %cleanup.dest.18 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.18, label %cleanup.26 [
    i32 0, label %cleanup.cont.19
  ]

cleanup.cont.19:                                  ; preds = %cleanup.17
  br label %if.end.20

if.end.20:                                        ; preds = %cleanup.cont.19, %cleanup.cont
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %39 = bitcast %struct.gx_device_s* %38 to %struct.gx_device_vector_s*
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %39, i32 0, i32 44
  %40 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !28
  %dorect = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %40, i32 0, i32 12
  %41 = load i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)** %dorect, align 8, !tbaa !54
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gx_device_s* %42 to %struct.gx_device_vector_s*
  %44 = load i32, i32* %x.addr, align 4, !tbaa !8
  %shl = shl i32 %44, 8
  %45 = load i32, i32* %y.addr, align 4, !tbaa !8
  %shl21 = shl i32 %45, 8
  %46 = load i32, i32* %x.addr, align 4, !tbaa !8
  %47 = load i32, i32* %w.addr, align 4, !tbaa !8
  %add = add nsw i32 %46, %47
  %shl22 = shl i32 %add, 8
  %48 = load i32, i32* %y.addr, align 4, !tbaa !8
  %49 = load i32, i32* %h.addr, align 4, !tbaa !8
  %add23 = add nsw i32 %48, %49
  %shl24 = shl i32 %add23, 8
  %call25 = call i32 %41(%struct.gx_device_vector_s* %43, i32 %shl, i32 %shl21, i32 %shl22, i32 %shl24, i32 1) #6
  store i32 %call25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

cleanup.26:                                       ; preds = %if.end.20, %cleanup.17, %cleanup, %if.then
  %50 = bitcast %struct.gx_device_color_s* %dcolor to i8*
  call void @llvm.lifetime.end(i64 656, i8* %50) #2
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_fill_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %pdevc, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_fill_params_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_fill_params_s* %params, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  %3 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %2, %struct.gx_clip_path_s* %3) #6
  store i32 %call, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_vector_s*
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %7 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call1 = call i32 @gdev_vector_prepare_fill(%struct.gx_device_vector_s* %5, %struct.gs_imager_state_s* %6, %struct.gx_fill_params_s* %7, %struct.gx_device_color_s* %8) #6
  store i32 %call1, i32* %code, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_s* %9 to %struct.gx_device_vector_s*
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %10, i32 0, i32 64
  %11 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !96
  %tobool = icmp ne %struct.gx_device_bbox_s* %11, null
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false.8

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_s* %12 to %struct.gx_device_vector_s*
  %bbox_device4 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %13, i32 0, i32 64
  %14 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device4, align 8, !tbaa !96
  %procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %14, i32 0, i32 42
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 24
  %15 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !224
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_s* %16 to %struct.gx_device_vector_s*
  %bbox_device5 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %17, i32 0, i32 64
  %18 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device5, align 8, !tbaa !96
  %19 = bitcast %struct.gx_device_bbox_s* %18 to %struct.gx_device_s*
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %22 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %23 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %24 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call6 = call i32 %15(%struct.gx_device_s* %19, %struct.gs_imager_state_s* %20, %struct.gx_path_s* %21, %struct.gx_fill_params_s* %22, %struct.gx_device_color_s* %23, %struct.gx_clip_path_s* %24) #6
  store i32 %call6, i32* %code, align 4, !tbaa !8
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %land.lhs.true, %lor.lhs.false.3
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_s* %25 to %struct.gx_device_vector_s*
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %26, i32 0, i32 44
  %27 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !28
  %dopath = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %27, i32 0, i32 11
  %28 = load i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)** %dopath, align 8, !tbaa !178
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %30 = bitcast %struct.gx_device_s* %29 to %struct.gx_device_vector_s*
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %32 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %rule = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %32, i32 0, i32 0
  %33 = load i32, i32* %rule, align 4, !tbaa !225
  %cmp9 = icmp sgt i32 %33, 0
  %cond = select i1 %cmp9, i32 8, i32 0
  %or = or i32 %cond, 1
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %35 = bitcast %struct.gx_device_s* %34 to %struct.gx_device_vector_s*
  %fill_options = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %35, i32 0, i32 60
  %36 = load i32, i32* %fill_options, align 4, !tbaa !226
  %or10 = or i32 %or, %36
  %call11 = call i32 %28(%struct.gx_device_vector_s* %30, %struct.gx_path_s* %31, i32 %or10, %struct.gs_matrix_s* null) #6
  store i32 %call11, i32* %code, align 4, !tbaa !8
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.8, %land.lhs.true, %lor.lhs.false, %entry
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %38 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %39 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %40 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %41 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %42 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call13 = call i32 @gx_default_fill_path(%struct.gx_device_s* %37, %struct.gs_imager_state_s* %38, %struct.gx_path_s* %39, %struct.gx_fill_params_s* %40, %struct.gx_device_color_s* %41, %struct.gx_clip_path_s* %42) #6
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.8
  %43 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_stroke_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_stroke_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %code = alloca i32, align 4
  %scale = alloca double, align 8
  %set_ctm = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %set_ctm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_vector_s*
  %6 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %5, %struct.gx_clip_path_s* %6) #6
  store i32 %call, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %struct.gx_device_vector_s*
  %9 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call1 = call i32 @gdev_vector_stroke_scaling(%struct.gx_device_vector_s* %8, %struct.gs_imager_state_s* %9, double* %scale, %struct.gs_matrix_s* %mat) #6
  store i32 %call1, i32* %set_ctm, align 4, !tbaa !8
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_s* %10 to %struct.gx_device_vector_s*
  %12 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %13 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %15 = load double, double* %scale, align 8, !tbaa !5
  %call4 = call i32 @gdev_vector_prepare_stroke(%struct.gx_device_vector_s* %11, %struct.gs_imager_state_s* %12, %struct.gx_stroke_params_s* %13, %struct.gx_device_color_s* %14, double %15) #6
  store i32 %call4, i32* %code, align 4, !tbaa !8
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_s* %16 to %struct.gx_device_vector_s*
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %17, i32 0, i32 64
  %18 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !96
  %tobool = icmp ne %struct.gx_device_bbox_s* %18, null
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false.11

land.lhs.true:                                    ; preds = %lor.lhs.false.6
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_s* %19 to %struct.gx_device_vector_s*
  %bbox_device7 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %20, i32 0, i32 64
  %21 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device7, align 8, !tbaa !96
  %procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %21, i32 0, i32 42
  %stroke_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 25
  %22 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %stroke_path, align 8, !tbaa !227
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gx_device_s* %23 to %struct.gx_device_vector_s*
  %bbox_device8 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %24, i32 0, i32 64
  %25 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device8, align 8, !tbaa !96
  %26 = bitcast %struct.gx_device_bbox_s* %25 to %struct.gx_device_s*
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %29 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %30 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %31 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call9 = call i32 %22(%struct.gx_device_s* %26, %struct.gs_imager_state_s* %27, %struct.gx_path_s* %28, %struct.gx_stroke_params_s* %29, %struct.gx_device_color_s* %30, %struct.gx_clip_path_s* %31) #6
  store i32 %call9, i32* %code, align 4, !tbaa !8
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true, %lor.lhs.false.6
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %33 = bitcast %struct.gx_device_s* %32 to %struct.gx_device_vector_s*
  %vec_procs = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %33, i32 0, i32 44
  %34 = load %struct.gx_device_vector_procs_s*, %struct.gx_device_vector_procs_s** %vec_procs, align 8, !tbaa !28
  %dopath = getelementptr inbounds %struct.gx_device_vector_procs_s, %struct.gx_device_vector_procs_s* %34, i32 0, i32 11
  %35 = load i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)** %dopath, align 8, !tbaa !178
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %37 = bitcast %struct.gx_device_s* %36 to %struct.gx_device_vector_s*
  %38 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %40 = bitcast %struct.gx_device_s* %39 to %struct.gx_device_vector_s*
  %stroke_options = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %40, i32 0, i32 61
  %41 = load i32, i32* %stroke_options, align 4, !tbaa !228
  %or = or i32 2, %41
  %call12 = call i32 %35(%struct.gx_device_vector_s* %37, %struct.gx_path_s* %38, i32 %or, %struct.gs_matrix_s* null) #6
  store i32 %call12, i32* %code, align 4, !tbaa !8
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.11, %land.lhs.true, %lor.lhs.false.3, %lor.lhs.false, %entry
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %43 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %44 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %45 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %46 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %47 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call14 = call i32 @gx_default_stroke_path(%struct.gx_device_s* %42, %struct.gs_imager_state_s* %43, %struct.gx_path_s* %44, %struct.gx_stroke_params_s* %45, %struct.gx_device_color_s* %46, %struct.gx_clip_path_s* %47) #6
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.11
  %48 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %49 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %49) #2
  %50 = bitcast i32* %set_ctm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_fill_trapezoid(%struct.gx_device_s* %dev, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %ybot, i32 %ytop, i32 %swap_axes, %struct.gx_device_color_s* %pdevc, i32 %lop) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %left.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %right.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %swap_axes.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %xl = alloca i32, align 4
  %wl = alloca i32, align 4
  %yl = alloca i32, align 4
  %hl = alloca i32, align 4
  %xr = alloca i32, align 4
  %wr = alloca i32, align 4
  %yr = alloca i32, align 4
  %hr = alloca i32, align 4
  %x0l = alloca i32, align 4
  %x1l = alloca i32, align 4
  %x0r = alloca i32, align 4
  %x1r = alloca i32, align 4
  %code = alloca i32, align 4
  %points = alloca [4 x %struct.gs_fixed_point_s], align 16
  %cleanup.dest.slot = alloca i32
  %code67 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %right, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !8
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !8
  store i32 %swap_axes, i32* %swap_axes.addr, align 4, !tbaa !8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !8
  %0 = bitcast i32* %xl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %1, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !229
  store i32 %2, i32* %xl, align 4, !tbaa !8
  %3 = bitcast i32* %wl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %4, i32 0, i32 1
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  %5 = load i32, i32* %x1, align 4, !tbaa !231
  %6 = load i32, i32* %xl, align 4, !tbaa !8
  %sub = sub nsw i32 %5, %6
  store i32 %sub, i32* %wl, align 4, !tbaa !8
  %7 = bitcast i32* %yl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start2 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %8, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start2, i32 0, i32 1
  %9 = load i32, i32* %y, align 4, !tbaa !232
  store i32 %9, i32* %yl, align 4, !tbaa !8
  %10 = bitcast i32* %hl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end3 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %11, i32 0, i32 1
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end3, i32 0, i32 1
  %12 = load i32, i32* %y4, align 4, !tbaa !233
  %13 = load i32, i32* %yl, align 4, !tbaa !8
  %sub5 = sub nsw i32 %12, %13
  store i32 %sub5, i32* %hl, align 4, !tbaa !8
  %14 = bitcast i32* %xr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start6 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %15, i32 0, i32 0
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start6, i32 0, i32 0
  %16 = load i32, i32* %x7, align 4, !tbaa !229
  store i32 %16, i32* %xr, align 4, !tbaa !8
  %17 = bitcast i32* %wr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end8 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %18, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end8, i32 0, i32 0
  %19 = load i32, i32* %x9, align 4, !tbaa !231
  %20 = load i32, i32* %xr, align 4, !tbaa !8
  %sub10 = sub nsw i32 %19, %20
  store i32 %sub10, i32* %wr, align 4, !tbaa !8
  %21 = bitcast i32* %yr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start11 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %22, i32 0, i32 0
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start11, i32 0, i32 1
  %23 = load i32, i32* %y12, align 4, !tbaa !232
  store i32 %23, i32* %yr, align 4, !tbaa !8
  %24 = bitcast i32* %hr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end13 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %25, i32 0, i32 1
  %y14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end13, i32 0, i32 1
  %26 = load i32, i32* %y14, align 4, !tbaa !233
  %27 = load i32, i32* %yr, align 4, !tbaa !8
  %sub15 = sub nsw i32 %26, %27
  store i32 %sub15, i32* %hr, align 4, !tbaa !8
  %28 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load i32, i32* %xl, align 4, !tbaa !8
  %30 = load i32, i32* %wl, align 4, !tbaa !8
  %31 = load i32, i32* %ybot.addr, align 4, !tbaa !8
  %32 = load i32, i32* %yl, align 4, !tbaa !8
  %sub16 = sub nsw i32 %31, %32
  %33 = load i32, i32* %hl, align 4, !tbaa !8
  %call = call i32 @fixed_mult_quo(i32 %30, i32 %sub16, i32 %33) #6
  %add = add nsw i32 %29, %call
  store i32 %add, i32* %x0l, align 4, !tbaa !8
  %34 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  %35 = load i32, i32* %xl, align 4, !tbaa !8
  %36 = load i32, i32* %wl, align 4, !tbaa !8
  %37 = load i32, i32* %ytop.addr, align 4, !tbaa !8
  %38 = load i32, i32* %yl, align 4, !tbaa !8
  %sub17 = sub nsw i32 %37, %38
  %39 = load i32, i32* %hl, align 4, !tbaa !8
  %call18 = call i32 @fixed_mult_quo(i32 %36, i32 %sub17, i32 %39) #6
  %add19 = add nsw i32 %35, %call18
  store i32 %add19, i32* %x1l, align 4, !tbaa !8
  %40 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #2
  %41 = load i32, i32* %xr, align 4, !tbaa !8
  %42 = load i32, i32* %wr, align 4, !tbaa !8
  %43 = load i32, i32* %ybot.addr, align 4, !tbaa !8
  %44 = load i32, i32* %yr, align 4, !tbaa !8
  %sub20 = sub nsw i32 %43, %44
  %45 = load i32, i32* %hr, align 4, !tbaa !8
  %call21 = call i32 @fixed_mult_quo(i32 %42, i32 %sub20, i32 %45) #6
  %add22 = add nsw i32 %41, %call21
  store i32 %add22, i32* %x0r, align 4, !tbaa !8
  %46 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #2
  %47 = load i32, i32* %xr, align 4, !tbaa !8
  %48 = load i32, i32* %wr, align 4, !tbaa !8
  %49 = load i32, i32* %ytop.addr, align 4, !tbaa !8
  %50 = load i32, i32* %yr, align 4, !tbaa !8
  %sub23 = sub nsw i32 %49, %50
  %51 = load i32, i32* %hr, align 4, !tbaa !8
  %call24 = call i32 @fixed_mult_quo(i32 %48, i32 %sub23, i32 %51) #6
  %add25 = add nsw i32 %47, %call24
  store i32 %add25, i32* %x1r, align 4, !tbaa !8
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #2
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %54 = bitcast %struct.gx_device_s* %53 to %struct.gx_device_vector_s*
  %55 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %56 = load i32, i32* %lop.addr, align 4, !tbaa !8
  %call26 = call i32 @update_fill(%struct.gx_device_vector_s* %54, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %55, i32 %56) #6
  store i32 %call26, i32* %code, align 4, !tbaa !8
  %57 = bitcast [4 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.start(i64 32, i8* %57) #2
  %58 = load i32, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %58, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %59 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %60 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %61 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %62 = load i32, i32* %ybot.addr, align 4, !tbaa !8
  %63 = load i32, i32* %ytop.addr, align 4, !tbaa !8
  %64 = load i32, i32* %swap_axes.addr, align 4, !tbaa !8
  %65 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %66 = load i32, i32* %lop.addr, align 4, !tbaa !8
  %call27 = call i32 @gx_default_fill_trapezoid(%struct.gx_device_s* %59, %struct.gs_fixed_edge_s* %60, %struct.gs_fixed_edge_s* %61, i32 %62, i32 %63, i32 %64, %struct.gx_device_color_s* %65, i32 %66) #6
  store i32 %call27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end:                                           ; preds = %entry
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %68 = bitcast %struct.gx_device_s* %67 to %struct.gx_device_vector_s*
  %call28 = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %68, %struct.gx_clip_path_s* null) #6
  store i32 %call28, i32* %code, align 4, !tbaa !8
  %69 = load i32, i32* %code, align 4, !tbaa !8
  %cmp29 = icmp slt i32 %69, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end
  %70 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %70, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end.31:                                        ; preds = %if.end
  %71 = load i32, i32* %swap_axes.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %71, 0
  br i1 %tobool, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.end.31
  %72 = load i32, i32* %x0l, align 4, !tbaa !8
  %arrayidx = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %y33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 1
  store i32 %72, i32* %y33, align 4, !tbaa !61
  %73 = load i32, i32* %x0r, align 4, !tbaa !8
  %arrayidx34 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx34, i32 0, i32 1
  store i32 %73, i32* %y35, align 4, !tbaa !61
  %74 = load i32, i32* %ybot.addr, align 4, !tbaa !8
  %arrayidx36 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %x37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx36, i32 0, i32 0
  store i32 %74, i32* %x37, align 4, !tbaa !60
  %arrayidx38 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %x39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx38, i32 0, i32 0
  store i32 %74, i32* %x39, align 4, !tbaa !60
  %75 = load i32, i32* %x1r, align 4, !tbaa !8
  %arrayidx40 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %y41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx40, i32 0, i32 1
  store i32 %75, i32* %y41, align 4, !tbaa !61
  %76 = load i32, i32* %x1l, align 4, !tbaa !8
  %arrayidx42 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 3
  %y43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx42, i32 0, i32 1
  store i32 %76, i32* %y43, align 4, !tbaa !61
  %77 = load i32, i32* %ytop.addr, align 4, !tbaa !8
  %arrayidx44 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 3
  %x45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx44, i32 0, i32 0
  store i32 %77, i32* %x45, align 4, !tbaa !60
  %arrayidx46 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %x47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx46, i32 0, i32 0
  store i32 %77, i32* %x47, align 4, !tbaa !60
  br label %if.end.64

if.else:                                          ; preds = %if.end.31
  %78 = load i32, i32* %x0l, align 4, !tbaa !8
  %arrayidx48 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %x49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx48, i32 0, i32 0
  store i32 %78, i32* %x49, align 4, !tbaa !60
  %79 = load i32, i32* %x0r, align 4, !tbaa !8
  %arrayidx50 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %x51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx50, i32 0, i32 0
  store i32 %79, i32* %x51, align 4, !tbaa !60
  %80 = load i32, i32* %ybot.addr, align 4, !tbaa !8
  %arrayidx52 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %y53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx52, i32 0, i32 1
  store i32 %80, i32* %y53, align 4, !tbaa !61
  %arrayidx54 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %y55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx54, i32 0, i32 1
  store i32 %80, i32* %y55, align 4, !tbaa !61
  %81 = load i32, i32* %x1r, align 4, !tbaa !8
  %arrayidx56 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %x57 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx56, i32 0, i32 0
  store i32 %81, i32* %x57, align 4, !tbaa !60
  %82 = load i32, i32* %x1l, align 4, !tbaa !8
  %arrayidx58 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 3
  %x59 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx58, i32 0, i32 0
  store i32 %82, i32* %x59, align 4, !tbaa !60
  %83 = load i32, i32* %ytop.addr, align 4, !tbaa !8
  %arrayidx60 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 3
  %y61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx60, i32 0, i32 1
  store i32 %83, i32* %y61, align 4, !tbaa !61
  %arrayidx62 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %y63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx62, i32 0, i32 1
  store i32 %83, i32* %y63, align 4, !tbaa !61
  br label %if.end.64

if.end.64:                                        ; preds = %if.else, %if.then.32
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %85 = bitcast %struct.gx_device_s* %84 to %struct.gx_device_vector_s*
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %85, i32 0, i32 64
  %86 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !96
  %tobool65 = icmp ne %struct.gx_device_bbox_s* %86, null
  br i1 %tobool65, label %if.then.66, label %if.end.74

if.then.66:                                       ; preds = %if.end.64
  %87 = bitcast i32* %code67 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #2
  %88 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %89 = bitcast %struct.gx_device_s* %88 to %struct.gx_device_vector_s*
  %bbox_device68 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %89, i32 0, i32 64
  %90 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device68, align 8, !tbaa !96
  %procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %90, i32 0, i32 42
  %fill_trapezoid = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 27
  %91 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid, align 8, !tbaa !234
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %93 = bitcast %struct.gx_device_s* %92 to %struct.gx_device_vector_s*
  %bbox_device69 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %93, i32 0, i32 64
  %94 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device69, align 8, !tbaa !96
  %95 = bitcast %struct.gx_device_bbox_s* %94 to %struct.gx_device_s*
  %96 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %97 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %98 = load i32, i32* %ybot.addr, align 4, !tbaa !8
  %99 = load i32, i32* %ytop.addr, align 4, !tbaa !8
  %100 = load i32, i32* %swap_axes.addr, align 4, !tbaa !8
  %101 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %102 = load i32, i32* %lop.addr, align 4, !tbaa !8
  %call70 = call i32 %91(%struct.gx_device_s* %95, %struct.gs_fixed_edge_s* %96, %struct.gs_fixed_edge_s* %97, i32 %98, i32 %99, i32 %100, %struct.gx_device_color_s* %101, i32 %102) #6
  store i32 %call70, i32* %code67, align 4, !tbaa !8
  %103 = load i32, i32* %code67, align 4, !tbaa !8
  %cmp71 = icmp slt i32 %103, 0
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.66
  %104 = load i32, i32* %code67, align 4, !tbaa !8
  store i32 %104, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %if.then.66
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.73, %if.then.72
  %105 = bitcast i32* %code67 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.76 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.74

if.end.74:                                        ; preds = %cleanup.cont, %if.end.64
  %106 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %107 = bitcast %struct.gx_device_s* %106 to %struct.gx_device_vector_s*
  %arraydecay = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %call75 = call i32 @gdev_vector_write_polygon(%struct.gx_device_vector_s* %107, %struct.gs_fixed_point_s* %arraydecay, i32 4, i32 1, i32 1) #6
  store i32 %call75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

cleanup.76:                                       ; preds = %if.end.74, %cleanup, %if.then.30, %if.then
  %108 = bitcast [4 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.end(i64 32, i8* %108) #2
  %109 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast i32* %hr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast i32* %yr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #2
  %116 = bitcast i32* %wr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %117 = bitcast i32* %xr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i32* %hl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %yl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i32* %wl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  %121 = bitcast i32* %xl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = load i32, i32* %retval
  ret i32 %122
}

declare i32 @fixed_mult_quo(i32, i32, i32) #0

declare i32 @gx_default_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #0

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_fill_parallelogram(%struct.gx_device_s* %dev, i32 %px, i32 %py, i32 %ax, i32 %ay, i32 %bx, i32 %by, %struct.gx_device_color_s* %pdevc, i32 %lop) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %pax = alloca i32, align 4
  %pay = alloca i32, align 4
  %code = alloca i32, align 4
  %points = alloca [4 x %struct.gs_fixed_point_s], align 16
  %need_color_reset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !8
  store i32 %py, i32* %py.addr, align 4, !tbaa !8
  store i32 %ax, i32* %ax.addr, align 4, !tbaa !8
  store i32 %ay, i32* %ay.addr, align 4, !tbaa !8
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !8
  store i32 %by, i32* %by.addr, align 4, !tbaa !8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !8
  %0 = bitcast i32* %pax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %px.addr, align 4, !tbaa !8
  %2 = load i32, i32* %ax.addr, align 4, !tbaa !8
  %add = add nsw i32 %1, %2
  store i32 %add, i32* %pax, align 4, !tbaa !8
  %3 = bitcast i32* %pay to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %py.addr, align 4, !tbaa !8
  %5 = load i32, i32* %ay.addr, align 4, !tbaa !8
  %add1 = add nsw i32 %4, %5
  store i32 %add1, i32* %pay, align 4, !tbaa !8
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %struct.gx_device_vector_s*
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %10 = load i32, i32* %lop.addr, align 4, !tbaa !8
  %call = call i32 @update_fill(%struct.gx_device_vector_s* %8, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %9, i32 %10) #6
  store i32 %call, i32* %code, align 4, !tbaa !8
  %11 = bitcast [4 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.start(i64 32, i8* %11) #2
  %12 = bitcast i32* %need_color_reset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  store i32 0, i32* %need_color_reset, align 4, !tbaa !8
  %13 = load i32, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %15 = load i32, i32* %px.addr, align 4, !tbaa !8
  %16 = load i32, i32* %py.addr, align 4, !tbaa !8
  %17 = load i32, i32* %ax.addr, align 4, !tbaa !8
  %18 = load i32, i32* %ay.addr, align 4, !tbaa !8
  %19 = load i32, i32* %bx.addr, align 4, !tbaa !8
  %20 = load i32, i32* %by.addr, align 4, !tbaa !8
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %22 = load i32, i32* %lop.addr, align 4, !tbaa !8
  %call2 = call i32 @gx_default_fill_parallelogram(%struct.gx_device_s* %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, %struct.gx_device_color_s* %21, i32 %22) #6
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gx_device_s* %23 to %struct.gx_device_vector_s*
  %clip_path_id = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %24, i32 0, i32 59
  %25 = load i64, i64* %clip_path_id, align 8, !tbaa !85
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %27 = bitcast %struct.gx_device_s* %26 to %struct.gx_device_vector_s*
  %no_clip_path_id = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %27, i32 0, i32 58
  %28 = load i64, i64* %no_clip_path_id, align 8, !tbaa !84
  %cmp3 = icmp ne i64 %25, %28
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %need_color_reset, align 4, !tbaa !8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %30 = bitcast %struct.gx_device_s* %29 to %struct.gx_device_vector_s*
  %call6 = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %30, %struct.gx_clip_path_s* null) #6
  store i32 %call6, i32* %code, align 4, !tbaa !8
  %31 = load i32, i32* %code, align 4, !tbaa !8
  %cmp7 = icmp slt i32 %31, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %32 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %33 = load i32, i32* %need_color_reset, align 4, !tbaa !8
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.9
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %35 = bitcast %struct.gx_device_s* %34 to %struct.gx_device_vector_s*
  %36 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %37 = load i32, i32* %lop.addr, align 4, !tbaa !8
  %call11 = call i32 @update_fill(%struct.gx_device_vector_s* %35, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %36, i32 %37) #6
  store i32 %call11, i32* %code, align 4, !tbaa !8
  %38 = load i32, i32* %code, align 4, !tbaa !8
  %cmp12 = icmp slt i32 %38, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  %39 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.9
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %41 = bitcast %struct.gx_device_s* %40 to %struct.gx_device_vector_s*
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %41, i32 0, i32 64
  %42 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !96
  %tobool16 = icmp ne %struct.gx_device_bbox_s* %42, null
  br i1 %tobool16, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %if.end.15
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %44 = bitcast %struct.gx_device_s* %43 to %struct.gx_device_vector_s*
  %bbox_device18 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %44, i32 0, i32 64
  %45 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device18, align 8, !tbaa !96
  %procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %45, i32 0, i32 42
  %fill_parallelogram = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 28
  %46 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram, align 8, !tbaa !235
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %48 = bitcast %struct.gx_device_s* %47 to %struct.gx_device_vector_s*
  %bbox_device19 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %48, i32 0, i32 64
  %49 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device19, align 8, !tbaa !96
  %50 = bitcast %struct.gx_device_bbox_s* %49 to %struct.gx_device_s*
  %51 = load i32, i32* %px.addr, align 4, !tbaa !8
  %52 = load i32, i32* %py.addr, align 4, !tbaa !8
  %53 = load i32, i32* %ax.addr, align 4, !tbaa !8
  %54 = load i32, i32* %ay.addr, align 4, !tbaa !8
  %55 = load i32, i32* %bx.addr, align 4, !tbaa !8
  %56 = load i32, i32* %by.addr, align 4, !tbaa !8
  %57 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %58 = load i32, i32* %lop.addr, align 4, !tbaa !8
  %call20 = call i32 %46(%struct.gx_device_s* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, %struct.gx_device_color_s* %57, i32 %58) #6
  store i32 %call20, i32* %code, align 4, !tbaa !8
  %59 = load i32, i32* %code, align 4, !tbaa !8
  %cmp21 = icmp slt i32 %59, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.17
  %60 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.then.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.15
  %61 = load i32, i32* %px.addr, align 4, !tbaa !8
  %arrayidx = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  store i32 %61, i32* %x, align 4, !tbaa !60
  %62 = load i32, i32* %py.addr, align 4, !tbaa !8
  %arrayidx25 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx25, i32 0, i32 1
  store i32 %62, i32* %y, align 4, !tbaa !61
  %63 = load i32, i32* %pax, align 4, !tbaa !8
  %arrayidx26 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %x27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx26, i32 0, i32 0
  store i32 %63, i32* %x27, align 4, !tbaa !60
  %64 = load i32, i32* %pay, align 4, !tbaa !8
  %arrayidx28 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %y29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx28, i32 0, i32 1
  store i32 %64, i32* %y29, align 4, !tbaa !61
  %65 = load i32, i32* %pax, align 4, !tbaa !8
  %66 = load i32, i32* %bx.addr, align 4, !tbaa !8
  %add30 = add nsw i32 %65, %66
  %arrayidx31 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %x32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx31, i32 0, i32 0
  store i32 %add30, i32* %x32, align 4, !tbaa !60
  %67 = load i32, i32* %pay, align 4, !tbaa !8
  %68 = load i32, i32* %by.addr, align 4, !tbaa !8
  %add33 = add nsw i32 %67, %68
  %arrayidx34 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx34, i32 0, i32 1
  store i32 %add33, i32* %y35, align 4, !tbaa !61
  %69 = load i32, i32* %px.addr, align 4, !tbaa !8
  %70 = load i32, i32* %bx.addr, align 4, !tbaa !8
  %add36 = add nsw i32 %69, %70
  %arrayidx37 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 3
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx37, i32 0, i32 0
  store i32 %add36, i32* %x38, align 4, !tbaa !60
  %71 = load i32, i32* %py.addr, align 4, !tbaa !8
  %72 = load i32, i32* %by.addr, align 4, !tbaa !8
  %add39 = add nsw i32 %71, %72
  %arrayidx40 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i64 3
  %y41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx40, i32 0, i32 1
  store i32 %add39, i32* %y41, align 4, !tbaa !61
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %74 = bitcast %struct.gx_device_s* %73 to %struct.gx_device_vector_s*
  %arraydecay = getelementptr inbounds [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %call42 = call i32 @gdev_vector_write_polygon(%struct.gx_device_vector_s* %74, %struct.gs_fixed_point_s* %arraydecay, i32 4, i32 1, i32 1) #6
  store i32 %call42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.22, %if.then.13, %if.then.8, %if.then
  %75 = bitcast i32* %need_color_reset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast [4 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.end(i64 32, i8* %76) #2
  %77 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %pay to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast i32* %pax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = load i32, i32* %retval
  ret i32 %80
}

declare i32 @gx_default_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #0

; Function Attrs: nounwind uwtable
define i32 @gdev_vector_fill_triangle(%struct.gx_device_s* %dev, i32 %px, i32 %py, i32 %ax, i32 %ay, i32 %bx, i32 %by, %struct.gx_device_color_s* %pdevc, i32 %lop) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %points = alloca [3 x %struct.gs_fixed_point_s], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !8
  store i32 %py, i32* %py.addr, align 4, !tbaa !8
  store i32 %ax, i32* %ax.addr, align 4, !tbaa !8
  store i32 %ay, i32* %ay.addr, align 4, !tbaa !8
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !8
  store i32 %by, i32* %by.addr, align 4, !tbaa !8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !8
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_vector_s*
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %4 = load i32, i32* %lop.addr, align 4, !tbaa !8
  %call = call i32 @update_fill(%struct.gx_device_vector_s* %2, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %3, i32 %4) #6
  store i32 %call, i32* %code, align 4, !tbaa !8
  %5 = bitcast [3 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #2
  %6 = load i32, i32* %code, align 4, !tbaa !8
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load i32, i32* %px.addr, align 4, !tbaa !8
  %9 = load i32, i32* %py.addr, align 4, !tbaa !8
  %10 = load i32, i32* %ax.addr, align 4, !tbaa !8
  %11 = load i32, i32* %ay.addr, align 4, !tbaa !8
  %12 = load i32, i32* %bx.addr, align 4, !tbaa !8
  %13 = load i32, i32* %by.addr, align 4, !tbaa !8
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %15 = load i32, i32* %lop.addr, align 4, !tbaa !8
  %call1 = call i32 @gx_default_fill_triangle(%struct.gx_device_s* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, %struct.gx_device_color_s* %14, i32 %15) #6
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_s* %16 to %struct.gx_device_vector_s*
  %call2 = call i32 @gdev_vector_update_clip_path(%struct.gx_device_vector_s* %17, %struct.gx_clip_path_s* null) #6
  store i32 %call2, i32* %code, align 4, !tbaa !8
  %18 = load i32, i32* %code, align 4, !tbaa !8
  %cmp3 = icmp slt i32 %18, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %19 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_s* %20 to %struct.gx_device_vector_s*
  %bbox_device = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %21, i32 0, i32 64
  %22 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device, align 8, !tbaa !96
  %tobool = icmp ne %struct.gx_device_bbox_s* %22, null
  br i1 %tobool, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.end.5
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gx_device_s* %23 to %struct.gx_device_vector_s*
  %bbox_device7 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %24, i32 0, i32 64
  %25 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device7, align 8, !tbaa !96
  %procs = getelementptr inbounds %struct.gx_device_bbox_s, %struct.gx_device_bbox_s* %25, i32 0, i32 42
  %fill_triangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 29
  %26 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_triangle, align 8, !tbaa !236
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gx_device_s* %27 to %struct.gx_device_vector_s*
  %bbox_device8 = getelementptr inbounds %struct.gx_device_vector_s, %struct.gx_device_vector_s* %28, i32 0, i32 64
  %29 = load %struct.gx_device_bbox_s*, %struct.gx_device_bbox_s** %bbox_device8, align 8, !tbaa !96
  %30 = bitcast %struct.gx_device_bbox_s* %29 to %struct.gx_device_s*
  %31 = load i32, i32* %px.addr, align 4, !tbaa !8
  %32 = load i32, i32* %py.addr, align 4, !tbaa !8
  %33 = load i32, i32* %ax.addr, align 4, !tbaa !8
  %34 = load i32, i32* %ay.addr, align 4, !tbaa !8
  %35 = load i32, i32* %bx.addr, align 4, !tbaa !8
  %36 = load i32, i32* %by.addr, align 4, !tbaa !8
  %37 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %38 = load i32, i32* %lop.addr, align 4, !tbaa !8
  %call9 = call i32 %26(%struct.gx_device_s* %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, %struct.gx_device_color_s* %37, i32 %38) #6
  store i32 %call9, i32* %code, align 4, !tbaa !8
  %39 = load i32, i32* %code, align 4, !tbaa !8
  %cmp10 = icmp slt i32 %39, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.6
  %40 = load i32, i32* %code, align 4, !tbaa !8
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.then.6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end.5
  %41 = load i32, i32* %px.addr, align 4, !tbaa !8
  %arrayidx = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  store i32 %41, i32* %x, align 4, !tbaa !60
  %42 = load i32, i32* %py.addr, align 4, !tbaa !8
  %arrayidx14 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %points, i32 0, i64 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx14, i32 0, i32 1
  store i32 %42, i32* %y, align 4, !tbaa !61
  %43 = load i32, i32* %px.addr, align 4, !tbaa !8
  %44 = load i32, i32* %ax.addr, align 4, !tbaa !8
  %add = add nsw i32 %43, %44
  %arrayidx15 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx15, i32 0, i32 0
  store i32 %add, i32* %x16, align 4, !tbaa !60
  %45 = load i32, i32* %py.addr, align 4, !tbaa !8
  %46 = load i32, i32* %ay.addr, align 4, !tbaa !8
  %add17 = add nsw i32 %45, %46
  %arrayidx18 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %points, i32 0, i64 1
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx18, i32 0, i32 1
  store i32 %add17, i32* %y19, align 4, !tbaa !61
  %47 = load i32, i32* %px.addr, align 4, !tbaa !8
  %48 = load i32, i32* %bx.addr, align 4, !tbaa !8
  %add20 = add nsw i32 %47, %48
  %arrayidx21 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx21, i32 0, i32 0
  store i32 %add20, i32* %x22, align 4, !tbaa !60
  %49 = load i32, i32* %py.addr, align 4, !tbaa !8
  %50 = load i32, i32* %by.addr, align 4, !tbaa !8
  %add23 = add nsw i32 %49, %50
  %arrayidx24 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %points, i32 0, i64 2
  %y25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx24, i32 0, i32 1
  store i32 %add23, i32* %y25, align 4, !tbaa !61
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %52 = bitcast %struct.gx_device_s* %51 to %struct.gx_device_vector_s*
  %arraydecay = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %call26 = call i32 @gdev_vector_write_polygon(%struct.gx_device_vector_s* %52, %struct.gs_fixed_point_s* %arraydecay, i32 3, i32 1, i32 1) #6
  store i32 %call26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.11, %if.then.4, %if.then
  %53 = bitcast [3 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.end(i64 24, i8* %53) #2
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = load i32, i32* %retval
  ret i32 %55
}

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #0

declare i64 @gx_device_black(%struct.gx_device_s*) #0

declare i64 @gx_device_white(%struct.gx_device_s*) #0

declare i32 @gx_hld_save_color(%struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_hl_saved_color_s*) #0

declare i32 @gx_hld_saved_color_equal(%struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readnone }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !3, i64 0}
!10 = !{!11, !12, i64 4}
!11 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!12 = !{!"float", !3, i64 0}
!13 = !{!11, !12, i64 8}
!14 = !{!11, !12, i64 0}
!15 = !{!11, !12, i64 12}
!16 = !{!17, !12, i64 16}
!17 = !{!"gdev_vector_dopath_state_s", !2, i64 0, !3, i64 8, !9, i64 12, !11, i64 16, !18, i64 40, !18, i64 56}
!18 = !{!"gs_point_s", !6, i64 0, !6, i64 8}
!19 = !{!17, !12, i64 28}
!20 = !{!17, !12, i64 32}
!21 = !{!17, !12, i64 36}
!22 = !{!23, !9, i64 0}
!23 = !{!"gs_fixed_rect_s", !24, i64 0, !24, i64 8}
!24 = !{!"gs_fixed_point_s", !9, i64 0, !9, i64 4}
!25 = !{!23, !9, i64 4}
!26 = !{!23, !9, i64 8}
!27 = !{!23, !9, i64 12}
!28 = !{!29, !2, i64 1736}
!29 = !{!"gx_device_vector_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !30, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !32, i64 96, !35, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !31, i64 928, !31, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !31, i64 968, !31, i64 976, !36, i64 984, !9, i64 1052, !9, i64 1056, !37, i64 1064, !2, i64 1104, !3, i64 1112, !39, i64 1120, !40, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !9, i64 5864, !9, i64 5868, !41, i64 5872, !2, i64 7488, !9, i64 7496, !9, i64 7500, !9, i64 7504, !49, i64 7512, !49, i64 8144, !31, i64 8776, !31, i64 8784, !3, i64 8792, !3, i64 8796, !18, i64 8800, !9, i64 8816, !2, i64 8824, !31, i64 8832, !31, i64 8840}
!30 = !{!"rc_header_s", !31, i64 0, !2, i64 8, !2, i64 16}
!31 = !{!"long", !3, i64 0}
!32 = !{!"gx_device_color_info_s", !9, i64 0, !9, i64 4, !3, i64 8, !33, i64 12, !3, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !34, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !31, i64 704, !9, i64 712}
!33 = !{!"short", !3, i64 0}
!34 = !{!"gx_device_anti_alias_info_s", !9, i64 0, !9, i64 4}
!35 = !{!"gx_device_cached_colors_s", !31, i64 0, !31, i64 8}
!36 = !{!"gx_stroked_gradient_recognizer_s", !9, i64 0, !3, i64 4, !3, i64 36}
!37 = !{!"gdev_space_params_s", !31, i64 0, !31, i64 8, !38, i64 16, !9, i64 32, !3, i64 36}
!38 = !{!"gx_band_params_s", !9, i64 0, !9, i64 4, !31, i64 8}
!39 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!40 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!41 = !{!"gs_imager_state_s", !9, i64 0, !2, i64 8, !2, i64 16, !42, i64 24, !9, i64 128, !44, i64 132, !9, i64 168, !18, i64 176, !18, i64 192, !9, i64 208, !9, i64 212, !33, i64 216, !3, i64 220, !45, i64 224, !45, i64 228, !46, i64 232, !31, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !2, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !12, i64 296, !24, i64 300, !9, i64 308, !9, i64 312, !9, i64 316, !12, i64 320, !9, i64 324, !9, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !9, i64 408, !2, i64 416, !2, i64 424, !47, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !48, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !48, i64 1336}
!42 = !{!"gx_line_params_s", !12, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !9, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !9, i64 36, !11, i64 40, !43, i64 64}
!43 = !{!"gx_dash_params_s", !2, i64 0, !9, i64 8, !12, i64 12, !9, i64 16, !12, i64 20, !9, i64 24, !9, i64 28, !12, i64 32}
!44 = !{!"gs_matrix_fixed_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!45 = !{!"gs_transparency_source_s", !12, i64 0}
!46 = !{!"gs_xstate_trans_flags", !9, i64 0, !9, i64 4}
!47 = !{!"gx_transfer_s", !9, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !9, i64 32, !2, i64 40, !9, i64 48, !2, i64 56}
!48 = !{!"gs_devicen_color_map_s", !9, i64 0, !3, i64 4, !9, i64 8, !9, i64 12, !31, i64 16, !3, i64 24}
!49 = !{!"gx_hl_saved_color_s", !31, i64 0, !31, i64 8, !9, i64 16, !50, i64 24, !52, i64 288}
!50 = !{!"gs_client_color_s", !2, i64 0, !51, i64 8}
!51 = !{!"gs_paint_color_s", !3, i64 0}
!52 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !53, i64 336}
!53 = !{!"gs_int_point_s", !9, i64 0, !9, i64 4}
!54 = !{!55, !2, i64 96}
!55 = !{!"gx_device_vector_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144}
!56 = !{!18, !6, i64 0}
!57 = !{!18, !6, i64 8}
!58 = !{!55, !2, i64 104}
!59 = !{i64 0, i64 4, !8, i64 4, i64 4, !8}
!60 = !{!24, !9, i64 0}
!61 = !{!24, !9, i64 4}
!62 = !{!55, !2, i64 144}
!63 = !{!17, !2, i64 0}
!64 = !{!17, !3, i64 8}
!65 = !{i64 0, i64 4, !66, i64 4, i64 4, !66, i64 8, i64 4, !66, i64 12, i64 4, !66, i64 16, i64 4, !66, i64 20, i64 4, !66}
!66 = !{!12, !12, i64 0}
!67 = !{!29, !6, i64 8800}
!68 = !{!29, !6, i64 8808}
!69 = !{!17, !9, i64 12}
!70 = !{i64 0, i64 8, !5, i64 8, i64 8, !5}
!71 = !{!55, !2, i64 112}
!72 = !{!55, !2, i64 120}
!73 = !{!17, !6, i64 56}
!74 = !{!17, !6, i64 64}
!75 = !{!55, !2, i64 128}
!76 = !{!55, !2, i64 136}
!77 = !{!17, !6, i64 40}
!78 = !{!17, !6, i64 48}
!79 = !{!29, !9, i64 8816}
!80 = !{i64 0, i64 4, !8, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !66, i64 28, i64 4, !7, i64 32, i64 4, !7, i64 36, i64 4, !7, i64 40, i64 4, !7, i64 44, i64 4, !8, i64 48, i64 4, !66, i64 52, i64 4, !66, i64 56, i64 4, !66, i64 60, i64 4, !8, i64 64, i64 4, !66, i64 68, i64 4, !66, i64 72, i64 4, !66, i64 76, i64 4, !66, i64 80, i64 4, !66, i64 84, i64 4, !66, i64 88, i64 8, !1, i64 96, i64 4, !8, i64 100, i64 4, !66, i64 104, i64 4, !8, i64 108, i64 4, !66, i64 112, i64 4, !8, i64 116, i64 4, !8, i64 120, i64 4, !66, i64 128, i64 4, !8, i64 132, i64 4, !66, i64 136, i64 4, !66, i64 140, i64 4, !66, i64 144, i64 4, !66, i64 148, i64 4, !66, i64 152, i64 4, !66, i64 156, i64 4, !8, i64 160, i64 4, !8, i64 164, i64 4, !8, i64 168, i64 4, !8, i64 176, i64 8, !5, i64 184, i64 8, !5, i64 192, i64 8, !5, i64 200, i64 8, !5, i64 208, i64 4, !8, i64 212, i64 4, !8, i64 216, i64 2, !81, i64 220, i64 4, !7, i64 224, i64 4, !66, i64 228, i64 4, !66, i64 232, i64 4, !8, i64 236, i64 4, !8, i64 240, i64 8, !82, i64 248, i64 4, !8, i64 252, i64 4, !8, i64 256, i64 4, !8, i64 264, i64 8, !1, i64 272, i64 4, !8, i64 276, i64 4, !8, i64 280, i64 4, !8, i64 284, i64 4, !8, i64 288, i64 4, !8, i64 292, i64 4, !8, i64 296, i64 4, !66, i64 300, i64 4, !8, i64 304, i64 4, !8, i64 308, i64 4, !8, i64 312, i64 4, !8, i64 316, i64 4, !8, i64 320, i64 4, !66, i64 324, i64 4, !8, i64 328, i64 4, !8, i64 336, i64 8, !1, i64 344, i64 8, !1, i64 352, i64 8, !1, i64 360, i64 8, !1, i64 368, i64 8, !1, i64 376, i64 16, !7, i64 392, i64 8, !1, i64 400, i64 8, !1, i64 408, i64 4, !8, i64 416, i64 8, !1, i64 424, i64 8, !1, i64 432, i64 4, !8, i64 440, i64 8, !1, i64 448, i64 4, !8, i64 456, i64 8, !1, i64 464, i64 4, !8, i64 472, i64 8, !1, i64 480, i64 4, !8, i64 488, i64 8, !1, i64 496, i64 512, !7, i64 1008, i64 8, !1, i64 1016, i64 8, !1, i64 1024, i64 4, !8, i64 1028, i64 4, !7, i64 1032, i64 4, !8, i64 1036, i64 4, !8, i64 1040, i64 8, !82, i64 1048, i64 256, !7, i64 1304, i64 8, !1, i64 1312, i64 8, !1, i64 1320, i64 8, !1, i64 1328, i64 8, !1, i64 1336, i64 4, !8, i64 1340, i64 4, !7, i64 1344, i64 4, !8, i64 1348, i64 4, !8, i64 1352, i64 8, !82, i64 1360, i64 256, !7}
!81 = !{!33, !33, i64 0}
!82 = !{!31, !31, i64 0}
!83 = !{!29, !2, i64 24}
!84 = !{!29, !31, i64 8776}
!85 = !{!29, !31, i64 8784}
!86 = !{!29, !31, i64 8832}
!87 = !{!29, !31, i64 8840}
!88 = !{!29, !2, i64 1680}
!89 = !{!29, !2, i64 1728}
!90 = !{!91, !2, i64 64}
!91 = !{!"gs_memory_s", !2, i64 0, !92, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!92 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!93 = !{!29, !2, i64 5856}
!94 = !{!29, !2, i64 5848}
!95 = !{!91, !2, i64 80}
!96 = !{!29, !2, i64 8824}
!97 = !{!91, !2, i64 24}
!98 = !{!29, !2, i64 5840}
!99 = !{!29, !9, i64 5864}
!100 = !{!29, !9, i64 5868}
!101 = !{!102, !2, i64 208}
!102 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !9, i64 144, !9, i64 148, !33, i64 152, !3, i64 154, !3, i64 155, !103, i64 160, !31, i64 176, !104, i64 184, !2, i64 240, !9, i64 248, !9, i64 252, !2, i64 256, !33, i64 264, !33, i64 266, !2, i64 272, !2, i64 280, !9, i64 288, !9, i64 292, !2, i64 296, !2, i64 304, !105, i64 312, !9, i64 328, !31, i64 336, !31, i64 344}
!103 = !{!"gs_string_s", !2, i64 0, !9, i64 8}
!104 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!105 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!106 = !{!102, !2, i64 216}
!107 = !{!108, !31, i64 56}
!108 = !{!"gx_device_bbox_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !30, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !32, i64 96, !35, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !31, i64 928, !31, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !31, i64 968, !31, i64 976, !36, i64 984, !9, i64 1052, !9, i64 1056, !37, i64 1064, !2, i64 1104, !3, i64 1112, !39, i64 1120, !40, i64 1144, !2, i64 1728, !9, i64 1736, !9, i64 1740, !109, i64 1744, !2, i64 1776, !9, i64 1784, !23, i64 1788, !31, i64 1808, !31, i64 1816, !31, i64 1824}
!109 = !{!"gx_device_bbox_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!110 = !{!108, !2, i64 1104}
!111 = !{!112, !31, i64 200}
!112 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !2, i64 176, !9, i64 184, !2, i64 192, !30, i64 200}
!113 = !{!29, !2, i64 1152}
!114 = !{!108, !2, i64 1152}
!115 = !{!108, !2, i64 1144}
!116 = !{!55, !2, i64 0}
!117 = !{!29, !9, i64 6084}
!118 = !{!55, !2, i64 56}
!119 = !{!55, !2, i64 72}
!120 = !{!55, !2, i64 64}
!121 = !{i64 0, i64 8, !82, i64 8, i64 8, !82, i64 16, i64 4, !8, i64 24, i64 8, !1, i64 32, i64 256, !7, i64 288, i64 8, !1, i64 296, i64 8, !82, i64 296, i64 16, !7, i64 312, i64 4, !8, i64 316, i64 4, !8, i64 296, i64 64, !7, i64 360, i64 256, !7, i64 616, i64 2, !81, i64 296, i64 128, !7, i64 296, i64 8, !82, i64 304, i64 4, !8, i64 308, i64 4, !8, i64 296, i64 8, !82, i64 304, i64 4, !8, i64 624, i64 4, !8, i64 628, i64 4, !8}
!122 = !{!123, !12, i64 12}
!123 = !{!"gx_fill_params_s", !9, i64 0, !24, i64 4, !12, i64 12}
!124 = !{!29, !12, i64 6168}
!125 = !{!55, !2, i64 48}
!126 = !{!41, !9, i64 212}
!127 = !{!41, !9, i64 96}
!128 = !{!41, !12, i64 100}
!129 = !{!41, !12, i64 24}
!130 = !{!29, !12, i64 5972}
!131 = !{!29, !9, i64 5968}
!132 = !{!29, !2, i64 7488}
!133 = !{!91, !2, i64 0}
!134 = !{!41, !2, i64 88}
!135 = !{!55, !2, i64 40}
!136 = !{!29, !9, i64 7496}
!137 = !{!29, !12, i64 5896}
!138 = !{!55, !2, i64 8}
!139 = !{!41, !12, i64 48}
!140 = !{!29, !12, i64 5920}
!141 = !{!55, !2, i64 32}
!142 = !{!41, !3, i64 28}
!143 = !{!29, !3, i64 5900}
!144 = !{!55, !2, i64 16}
!145 = !{!41, !3, i64 40}
!146 = !{!29, !3, i64 5912}
!147 = !{!55, !2, i64 24}
!148 = !{!149, !12, i64 0}
!149 = !{!"gx_stroke_params_s", !12, i64 0, !9, i64 4}
!150 = !{!55, !2, i64 80}
!151 = !{!43, !9, i64 8}
!152 = !{!43, !2, i64 0}
!153 = !{!44, !12, i64 4}
!154 = !{!44, !12, i64 8}
!155 = !{!41, !12, i64 132}
!156 = !{!41, !12, i64 144}
!157 = !{!44, !12, i64 0}
!158 = !{!44, !12, i64 12}
!159 = !{!41, !12, i64 136}
!160 = !{!41, !12, i64 140}
!161 = !{!11, !12, i64 20}
!162 = !{!11, !12, i64 16}
!163 = !{!164, !9, i64 16}
!164 = !{!"gx_clip_rect_s", !2, i64 0, !2, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !3, i64 32}
!165 = !{!164, !9, i64 24}
!166 = !{!29, !9, i64 832}
!167 = !{!164, !9, i64 28}
!168 = !{!29, !9, i64 836}
!169 = !{!164, !9, i64 20}
!170 = !{!164, !2, i64 0}
!171 = !{!172, !9, i64 280}
!172 = !{!"gx_clip_path_s", !173, i64 0, !176, i64 128, !9, i64 232, !23, i64 236, !23, i64 252, !2, i64 272, !9, i64 280, !2, i64 288, !31, i64 296}
!173 = !{!"gx_path_s", !174, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !23, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !9, i64 104, !9, i64 108, !24, i64 112, !2, i64 120}
!174 = !{!"gx_path_segments_s", !30, i64 0, !175, i64 24}
!175 = !{!"psc_", !2, i64 0, !2, i64 8}
!176 = !{!"gx_clip_rect_list_s", !30, i64 0, !177, i64 24}
!177 = !{!"gx_clip_list_s", !164, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !9, i64 64, !9, i64 68, !9, i64 72}
!178 = !{!55, !2, i64 88}
!179 = !{!172, !9, i64 232}
!180 = !{!177, !2, i64 40}
!181 = !{!172, !31, i64 296}
!182 = !{!112, !2, i64 216}
!183 = !{!112, !2, i64 208}
!184 = !{!185, !2, i64 576}
!185 = !{!"gs_image1_s", !2, i64 0, !11, i64 8, !9, i64 32, !9, i64 36, !9, i64 40, !3, i64 44, !9, i64 564, !3, i64 568, !9, i64 572, !2, i64 576, !9, i64 584, !9, i64 588, !3, i64 592, !3, i64 596}
!186 = !{!185, !9, i64 584}
!187 = !{!185, !9, i64 40}
!188 = !{!189, !9, i64 44}
!189 = !{!"gdev_vector_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !31, i64 32, !9, i64 40, !9, i64 44, !3, i64 48, !3, i64 308, !2, i64 568, !2, i64 576, !9, i64 584, !9, i64 588, !9, i64 592, !9, i64 596, !9, i64 600}
!190 = !{!189, !9, i64 592}
!191 = !{!189, !2, i64 568}
!192 = !{!189, !2, i64 576}
!193 = !{!185, !9, i64 572}
!194 = !{!108, !2, i64 1392}
!195 = !{!189, !2, i64 24}
!196 = !{!197, !9, i64 8}
!197 = !{!"gs_int_rect_s", !53, i64 0, !53, i64 8}
!198 = !{!197, !9, i64 0}
!199 = !{!189, !9, i64 584}
!200 = !{!197, !9, i64 12}
!201 = !{!197, !9, i64 4}
!202 = !{!189, !9, i64 588}
!203 = !{!185, !9, i64 32}
!204 = !{!185, !9, i64 36}
!205 = !{!189, !9, i64 596}
!206 = !{!189, !9, i64 600}
!207 = !{!208, !2, i64 0}
!208 = !{!"gs_param_string_s", !2, i64 0, !9, i64 8, !9, i64 12}
!209 = !{!208, !9, i64 8}
!210 = !{!208, !9, i64 12}
!211 = !{!212, !9, i64 84}
!212 = !{!"gx_device_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !30, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !32, i64 96, !35, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !31, i64 928, !31, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !31, i64 968, !31, i64 976, !36, i64 984, !9, i64 1052, !9, i64 1056, !37, i64 1064, !2, i64 1104, !3, i64 1112, !39, i64 1120, !40, i64 1144}
!213 = !{!212, !9, i64 960}
!214 = !{!215, !2, i64 0}
!215 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !9, i64 16}
!216 = !{!217, !2, i64 56}
!217 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!218 = !{!219, !2, i64 0}
!219 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !53, i64 352, !9, i64 360, !50, i64 368, !220, i64 632}
!220 = !{!"_mask", !221, i64 0, !31, i64 8, !2, i64 16}
!221 = !{!"mp_", !9, i64 0, !9, i64 4}
!222 = !{!219, !9, i64 360}
!223 = !{!108, !2, i64 1200}
!224 = !{!108, !2, i64 1336}
!225 = !{!123, !9, i64 0}
!226 = !{!29, !3, i64 8792}
!227 = !{!108, !2, i64 1344}
!228 = !{!29, !3, i64 8796}
!229 = !{!230, !9, i64 0}
!230 = !{!"gs_fixed_edge_s", !24, i64 0, !24, i64 8}
!231 = !{!230, !9, i64 8}
!232 = !{!230, !9, i64 4}
!233 = !{!230, !9, i64 12}
!234 = !{!108, !2, i64 1360}
!235 = !{!108, !2, i64 1368}
!236 = !{!108, !2, i64 1376}
