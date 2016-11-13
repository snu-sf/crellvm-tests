; ModuleID = './gxclread.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
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
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
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
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.2 }
%union.anon.2 = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_ht_cache_s = type opaque
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
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
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type { i64, [64 x i8*], i32, i32, i32 }
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, i32, %struct.gx_clist_state_s*, i8*, i8*, i8*, %struct.cmd_list_s*, %struct.cmd_list_s, i32, i32, i32, i32, %struct.gx_strip_bitmap_s, i32, i32, i32, %struct.gs_imager_state_s, i32, i32, i32, i32, [11 x float], %struct.gx_clip_path_s*, i64, %struct.clist_color_space_s, [4 x i64], i64, i64, i64, i64, i32, i32, i32, i32, i32 (%struct.gx_device_s*, i32)*, i32, %struct.gs_pattern1_instance_s*, i32, i32, i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s*, i64, i32, i32, i32, i32, %struct.gx_device_color_info_s }
%struct.gx_device_buf_procs_s = type { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, void (%struct.gx_device_s*)* }
%struct.gx_colors_usage_s = type { i64, i32, %struct.gs_int_rect_s }
%struct.gx_device_buf_space_s = type { i64, i64, i32 }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.gx_bits_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32 }
%struct.tile_hash = type { i64 }
%struct.gx_band_page_info_s = type { [4096 x i8], i8*, [4096 x i8], i8*, %struct.clist_io_procs_s*, i32, i64, i64, %struct.gx_band_params_s }
%struct.clist_io_procs_s = type { i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32)*, i32 (i8*)*, i64 (i8*)*, void (i8*, i32, i8*)*, i32 (i8*, i64, i32, i8*)* }
%struct.clist_icctable_s = type { i32, %struct.gs_memory_s*, %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s* }
%struct.clist_icctable_entry_s = type { %struct.clist_icc_serial_entry_s, %struct.clist_icctable_entry_s*, %struct.cmm_profile_s*, i32 }
%struct.clist_icc_serial_entry_s = type { i64, i64, i32 }
%struct.gx_clist_state_s = type { [2 x i64], %struct.gx_device_color_saved_s, i32, i64, i64, %struct.gs_int_point_s, [2 x i64], [2 x %struct.gx_device_color_s], %struct.gx_cmd_rect, i32, i16, i16, i32, i32, i32, %struct.cmd_list_s, %struct.gx_colors_usage_s }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
%struct.cmd_list_s = type { %struct.cmd_prefix_s*, %struct.cmd_prefix_s* }
%struct.cmd_prefix_s = type { %struct.cmd_prefix_s*, i32, i64 }
%struct.clist_color_space_s = type { i8, i64, %struct.clist_icc_color_s, %struct.gs_color_space_s* }
%struct.clist_icc_color_s = type { i64, i8, i32, i32, i32 }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.clist_writer_cropping_buffer_s = type { i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s* }
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
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%union.gx_device_clist_s = type { %struct.gx_device_clist_writer_s }
%struct.gx_device_clist_reader_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, %struct.gx_render_plane_s, %struct.gx_placed_page_s*, %struct.gx_colors_usage_s*, i32, i8*, i32, %struct.clist_render_thread_control_s*, i8*, i32, i32, i32 }
%struct.gx_placed_page_s = type { %struct.gx_saved_page_s*, %struct.gs_int_point_s }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.clist_render_thread_control_s = type { i32, %struct.gs_memory_s*, %struct.gx_semaphore_s*, %struct.gx_semaphore_s*, %struct.gx_device_s*, %struct.gx_device_s*, i32, i8*, %struct.gx_process_page_options_s*, i8* }
%struct.stream_band_read_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.gx_band_page_info_s, i32, i32, i32, %struct.cmd_block_s, %struct.gs_memory_s* }
%struct.cmd_block_s = type { i32, i32, i64 }
%struct.gx_device_clist_common_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s** }

@.str = private unnamed_addr constant [31 x i8] c"clist reader color_usage_array\00", align 1
@s_band_read_template = internal constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_stream_state, i32 (%struct.stream_state_s*)* @s_band_read_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_band_read_process, i32 1, i32 4096, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@gp_fmode_rb = external constant [0 x i8], align 1
@clist_playback_file_bands.no_procs = internal constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_std_noavailable, i32 (%struct.stream_s*, i64)* @s_std_noseek, void (%struct.stream_s*)* @s_std_read_reset, i32 (%struct.stream_s*)* @s_std_read_flush, i32 (%struct.stream_s*)* @s_std_close, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_band_read_process, i32 (%struct.stream_s*, i32)* null }, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@gp_fmode_binary_suffix = external constant [0 x i8], align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"clist_read_icctable\00", align 1
@__func__.clist_unserialize_icctable = private unnamed_addr constant [27 x i8] c"clist_unserialize_icctable\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"./base/gxclread.c\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"insufficient memory for icc table buffer reader\00", align 1
@st_clist_icctable = internal constant %struct.gs_memory_struct_type_s { i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @clist_icctable_reloc_ptrs to i8*) }, align 8
@st_clist_icctable_entry = internal constant %struct.gs_memory_struct_type_s { i32 48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @clist_icctable_entry_reloc_ptrs to i8*) }, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"insufficient memory for icc table entry\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"clist_icctable\00", align 1
@clist_icctable_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @clist_icctable_enum_ptrs, i32 0, i32 0) }, align 8
@clist_icctable_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 16 }, %struct.gc_ptr_element_s { i16 0, i16 24 }], align 2
@.str.7 = private unnamed_addr constant [21 x i8] c"clist_icctable_entry\00", align 1
@clist_icctable_entry_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @clist_icctable_entry_enum_ptrs, i32 0, i32 0) }, align 8
@clist_icctable_entry_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 24 }], align 2
@st_stream_state = external constant %struct.gs_memory_struct_type_s, align 8

; Function Attrs: nounwind uwtable
define void @clist_select_render_plane(%struct.gx_device_s* %dev, i32 %y, i32 %height, %struct.gx_render_plane_s* %render_plane, i32 %index) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %render_plane.addr = alloca %struct.gx_render_plane_s*, align 8
  %index.addr = alloca i32, align 4
  %color_usage = alloca %struct.gx_colors_usage_s, align 8
  %ignore_start = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store %struct.gx_render_plane_s* %render_plane, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  %0 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.gx_colors_usage_s* %color_usage to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  %2 = bitcast i32* %ignore_start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load i32, i32* %y.addr, align 4, !tbaa !5
  %5 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call = call i32 @gdev_prn_color_usage(%struct.gx_device_s* %3, i32 %4, i32 %5, %struct.gx_colors_usage_s* %color_usage, i32* %ignore_start) #4
  %slow_rop = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage, i32 0, i32 1
  %6 = load i32, i32* %slow_rop, align 4, !tbaa !7
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i32 -1, i32* %index.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %7 = bitcast i32* %ignore_start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = bitcast %struct.gx_colors_usage_s* %color_usage to i8*
  call void @llvm.lifetime.end(i64 32, i8* %8) #1
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %9 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end.2
  %10 = load i32, i32* %index.addr, align 4, !tbaa !5
  %11 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %index5 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %11, i32 0, i32 2
  store i32 %10, i32* %index5, align 4, !tbaa !12
  br label %if.end.7

if.else:                                          ; preds = %if.end.2
  %12 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %14 = load i32, i32* %index.addr, align 4, !tbaa !5
  %call6 = call i32 @gx_render_plane_init(%struct.gx_render_plane_s* %12, %struct.gx_device_s* %13, i32 %14) #4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gdev_prn_color_usage(%struct.gx_device_s*, i32, i32, %struct.gx_colors_usage_s*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gx_render_plane_init(%struct.gx_render_plane_s*, %struct.gx_device_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @clist_setup_params(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cldev = alloca %union.gx_device_clist_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %2, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %4 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %reader, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %call = call i32 @clist_render_init(%union.gx_device_clist_s* %6) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %10 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %10, i32 0, i32 58
  %call1 = call i32 @clist_playback_file_bands(i32 2, %struct.gx_device_clist_reader_s* %9, %struct.gx_band_page_info_s* %page_info, %struct.gx_device_s* null, i32 0, i32 0, i32 0, i32 0) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %11 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %call2 = call i32 @clist_render_init(%union.gx_device_clist_s* %11) #4
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @clist_render_init(%union.gx_device_clist_s* %dev) #0 {
entry:
  %dev.addr = alloca %union.gx_device_clist_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  store %union.gx_device_clist_s* %dev, %union.gx_device_clist_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %dev.addr, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %1 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %reader, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %2 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %2, i32 0, i32 57
  store i32 0, i32* %ymax, align 4, !tbaa !14
  %3 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %3, i32 0, i32 56
  store i32 0, i32* %ymin, align 4, !tbaa !30
  %4 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %yplane = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %4, i32 0, i32 65
  %index = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %yplane, i32 0, i32 2
  store i32 -1, i32* %index, align 4, !tbaa !31
  %5 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %5, i32 0, i32 66
  store %struct.gx_placed_page_s* null, %struct.gx_placed_page_s** %pages, align 8, !tbaa !32
  %6 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_pages = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %6, i32 0, i32 68
  store i32 1, i32* %num_pages, align 4, !tbaa !33
  %7 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %offset_map = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %7, i32 0, i32 69
  store i8* null, i8** %offset_map, align 8, !tbaa !34
  %8 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_table = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %8, i32 0, i32 61
  store %struct.clist_icctable_s* null, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !35
  %9 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %color_usage_array = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %9, i32 0, i32 67
  store %struct.gx_colors_usage_s* null, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !36
  %10 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %10, i32 0, i32 62
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %icc_cache_cl, align 8, !tbaa !37
  %11 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %11, i32 0, i32 71
  store %struct.clist_render_thread_control_s* null, %struct.clist_render_thread_control_s** %render_threads, align 8, !tbaa !38
  %12 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @clist_playback_file_bands(i32 %action, %struct.gx_device_clist_reader_s* %crdev, %struct.gx_band_page_info_s* %page_info, %struct.gx_device_s* %target, i32 %band_first, i32 %band_last, i32 %x0, i32 %y0) #0 {
entry:
  %action.addr = alloca i32, align 4
  %crdev.addr = alloca %struct.gx_device_clist_reader_s*, align 8
  %page_info.addr = alloca %struct.gx_band_page_info_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %band_first.addr = alloca i32, align 4
  %band_last.addr = alloca i32, align 4
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %opened_bfile = alloca i32, align 4
  %opened_cfile = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %rs = alloca %struct.stream_band_read_state_s, align 8
  %s = alloca %struct.stream_s, align 8
  %sbuf = alloca [4096 x i8], align 16
  store i32 %action, i32* %action.addr, align 4, !tbaa !39
  store %struct.gx_device_clist_reader_s* %crdev, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  store %struct.gx_band_page_info_s* %page_info, %struct.gx_band_page_info_s** %page_info.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store i32 %band_first, i32* %band_first.addr, align 4, !tbaa !5
  store i32 %band_last, i32* %band_last.addr, align 4, !tbaa !5
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast i32* %opened_bfile to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %opened_bfile, align 4, !tbaa !5
  %2 = bitcast i32* %opened_cfile to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %opened_cfile, align 4, !tbaa !5
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !40
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast %struct.stream_band_read_state_s* %rs to i8*
  call void @llvm.lifetime.start(i64 8408, i8* %6) #1
  %7 = bitcast %struct.stream_band_read_state_s* %rs to %struct.stream_state_s*
  call void @s_init_state(%struct.stream_state_s* %7, %struct.stream_template_s* @s_band_read_template, %struct.gs_memory_s* null) #4
  %8 = load i32, i32* %band_first.addr, align 4, !tbaa !5
  %band_first1 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 6
  store i32 %8, i32* %band_first1, align 4, !tbaa !41
  %9 = load i32, i32* %band_last.addr, align 4, !tbaa !5
  %band_last2 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 7
  store i32 %9, i32* %band_last2, align 4, !tbaa !44
  %page_info3 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 5
  %10 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_band_page_info_s* %page_info3 to i8*
  %12 = bitcast %struct.gx_band_page_info_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8256, i32 8, i1 false), !tbaa.struct !45
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %local_memory = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 10
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %local_memory, align 8, !tbaa !47
  %page_info4 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 5
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info4, i32 0, i32 1
  %14 = load i8*, i8** %cfile, align 8, !tbaa !48
  %cmp = icmp eq i8* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info5 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %15, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info5, i32 0, i32 4
  %16 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !49
  %DO_NOT_USE_FOPEN = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %16, i32 0, i32 0
  %17 = load i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)** %DO_NOT_USE_FOPEN, align 8, !tbaa !50
  %page_info6 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 5
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info6, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %page_info7 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 5
  %cfile8 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info7, i32 0, i32 1
  %18 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %bandlist_memory = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %18, i32 0, i32 45
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory, align 8, !tbaa !52
  %20 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %bandlist_memory9 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %20, i32 0, i32 45
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory9, align 8, !tbaa !52
  %call = call i32 %17(i8* %arraydecay, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_fmode_rb, i32 0, i32 0), i8** %cfile8, %struct.gs_memory_s* %19, %struct.gs_memory_s* %21, i32 1) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp sge i32 %22, 0
  %conv = zext i1 %cmp10 to i32
  store i32 %conv, i32* %opened_cfile, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %page_info11 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 5
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info11, i32 0, i32 3
  %23 = load i8*, i8** %bfile, align 8, !tbaa !53
  %cmp12 = icmp eq i8* %23, null
  br i1 %cmp12, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp sge i32 %24, 0
  br i1 %cmp14, label %if.then.16, label %if.end.29

if.then.16:                                       ; preds = %land.lhs.true
  %25 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info17 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %25, i32 0, i32 58
  %io_procs18 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info17, i32 0, i32 4
  %26 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs18, align 8, !tbaa !49
  %DO_NOT_USE_FOPEN19 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %26, i32 0, i32 0
  %27 = load i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)** %DO_NOT_USE_FOPEN19, align 8, !tbaa !50
  %page_info20 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 5
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info20, i32 0, i32 2
  %arraydecay21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  %page_info22 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 5
  %bfile23 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info22, i32 0, i32 3
  %28 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %bandlist_memory24 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %28, i32 0, i32 45
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory24, align 8, !tbaa !52
  %30 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %bandlist_memory25 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %30, i32 0, i32 45
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory25, align 8, !tbaa !52
  %call26 = call i32 %27(i8* %arraydecay21, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_fmode_rb, i32 0, i32 0), i8** %bfile23, %struct.gs_memory_s* %29, %struct.gs_memory_s* %31, i32 0) #4
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp sge i32 %32, 0
  %conv28 = zext i1 %cmp27 to i32
  store i32 %conv28, i32* %opened_bfile, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.16, %land.lhs.true, %if.end
  %page_info30 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 5
  %cfile31 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info30, i32 0, i32 1
  %33 = load i8*, i8** %cfile31, align 8, !tbaa !48
  %cmp32 = icmp ne i8* %33, null
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.52

land.lhs.true.34:                                 ; preds = %if.end.29
  %page_info35 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 5
  %bfile36 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info35, i32 0, i32 3
  %34 = load i8*, i8** %bfile36, align 8, !tbaa !53
  %cmp37 = icmp ne i8* %34, null
  br i1 %cmp37, label %if.then.39, label %if.end.52

if.then.39:                                       ; preds = %land.lhs.true.34
  %35 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.start(i64 352, i8* %35) #1
  %36 = bitcast [4096 x i8]* %sbuf to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %36) #1
  %37 = bitcast %struct.stream_band_read_state_s* %rs to %struct.stream_state_s*
  %call40 = call i32 @s_band_read_init(%struct.stream_state_s* %37) #4
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* %38) #4
  %arraydecay41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %sbuf, i32 0, i32 0
  call void @s_std_init(%struct.stream_s* %s, i8* %arraydecay41, i32 4096, %struct.stream_procs* @clist_playback_file_bands.no_procs, i32 1) #4
  %foreign = getelementptr inbounds %struct.stream_s, %struct.stream_s* %s, i32 0, i32 10
  store i8 1, i8* %foreign, align 1, !tbaa !54
  %39 = bitcast %struct.stream_band_read_state_s* %rs to %struct.stream_state_s*
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %s, i32 0, i32 18
  store %struct.stream_state_s* %39, %struct.stream_state_s** %state, align 8, !tbaa !59
  br label %do.body

do.body:                                          ; preds = %if.then.39
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.42

do.body.42:                                       ; preds = %do.end
  br label %do.cond.43

do.cond.43:                                       ; preds = %do.body.42
  br label %do.end.44

do.end.44:                                        ; preds = %do.cond.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.body.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  %40 = load i32, i32* %action.addr, align 4, !tbaa !39
  %41 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %43 = load i32, i32* %x0.addr, align 4, !tbaa !5
  %44 = load i32, i32* %y0.addr, align 4, !tbaa !5
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call48 = call i32 @clist_playback_band(i32 %40, %struct.gx_device_clist_reader_s* %41, %struct.stream_s* %s, %struct.gx_device_s* %42, i32 %43, i32 %44, %struct.gs_memory_s* %45) #4
  store i32 %call48, i32* %code, align 4, !tbaa !5
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.47
  br label %do.cond.50

do.cond.50:                                       ; preds = %do.body.49
  br label %do.end.51

do.end.51:                                        ; preds = %do.cond.50
  %46 = bitcast [4096 x i8]* %sbuf to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %46) #1
  %47 = bitcast %struct.stream_s* %s to i8*
  call void @llvm.lifetime.end(i64 352, i8* %47) #1
  br label %if.end.52

if.end.52:                                        ; preds = %do.end.51, %land.lhs.true.34, %if.end.29
  %48 = load i32, i32* %opened_bfile, align 4, !tbaa !5
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %land.lhs.true.53, label %if.end.67

land.lhs.true.53:                                 ; preds = %if.end.52
  %page_info54 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 5
  %bfile55 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info54, i32 0, i32 3
  %49 = load i8*, i8** %bfile55, align 8, !tbaa !53
  %cmp56 = icmp ne i8* %49, null
  br i1 %cmp56, label %if.then.58, label %if.end.67

if.then.58:                                       ; preds = %land.lhs.true.53
  %50 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info59 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %50, i32 0, i32 58
  %io_procs60 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info59, i32 0, i32 4
  %51 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs60, align 8, !tbaa !49
  %fclose = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %51, i32 0, i32 1
  %52 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose, align 8, !tbaa !60
  %page_info61 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 5
  %bfile62 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info61, i32 0, i32 3
  %53 = load i8*, i8** %bfile62, align 8, !tbaa !53
  %page_info63 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 5
  %bfname64 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info63, i32 0, i32 2
  %arraydecay65 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname64, i32 0, i32 0
  %call66 = call i32 %52(i8* %53, i8* %arraydecay65, i32 0) #4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.58, %land.lhs.true.53, %if.end.52
  %54 = load i32, i32* %opened_cfile, align 4, !tbaa !5
  %tobool68 = icmp ne i32 %54, 0
  br i1 %tobool68, label %land.lhs.true.69, label %if.end.84

land.lhs.true.69:                                 ; preds = %if.end.67
  %page_info70 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 5
  %cfile71 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info70, i32 0, i32 1
  %55 = load i8*, i8** %cfile71, align 8, !tbaa !48
  %cmp72 = icmp ne i8* %55, null
  br i1 %cmp72, label %if.then.74, label %if.end.84

if.then.74:                                       ; preds = %land.lhs.true.69
  %56 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info75 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %56, i32 0, i32 58
  %io_procs76 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info75, i32 0, i32 4
  %57 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs76, align 8, !tbaa !49
  %fclose77 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %57, i32 0, i32 1
  %58 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose77, align 8, !tbaa !60
  %page_info78 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 5
  %cfile79 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info78, i32 0, i32 1
  %59 = load i8*, i8** %cfile79, align 8, !tbaa !48
  %page_info80 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %rs, i32 0, i32 5
  %cfname81 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info80, i32 0, i32 0
  %arraydecay82 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname81, i32 0, i32 0
  %call83 = call i32 %58(i8* %59, i8* %arraydecay82, i32 0) #4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.74, %land.lhs.true.69, %if.end.67
  %60 = load i32, i32* %code, align 4, !tbaa !5
  %61 = bitcast %struct.stream_band_read_state_s* %rs to i8*
  call void @llvm.lifetime.end(i64 8408, i8* %61) #1
  %62 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i32* %opened_cfile to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %opened_bfile to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define i32 @clist_close_writer_and_init_reader(%union.gx_device_clist_s* %cldev) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %union.gx_device_clist_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %base_mem = alloca %struct.gs_memory_s*, align 8
  %mem_status = alloca %struct.gs_memory_status_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %union.gx_device_clist_s* %cldev, %union.gx_device_clist_s** %cldev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev.addr, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %1 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %reader, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s** %base_mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !40
  %thread_safe_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 4
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory, align 8, !tbaa !61
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %base_mem, align 8, !tbaa !1
  %6 = bitcast %struct.gs_memory_status_s* %mem_status to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %8 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %8, i32 0, i32 56
  %9 = load i32, i32* %ymin, align 4, !tbaa !30
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %10 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev.addr, align 8, !tbaa !1
  %writer = bitcast %union.gx_device_clist_s* %10 to %struct.gx_device_clist_writer_s*
  %call = call i32 @clist_end_page(%struct.gx_device_clist_writer_s* %writer) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %11, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %13 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev.addr, align 8, !tbaa !1
  %call3 = call i32 @clist_render_init(%union.gx_device_clist_s* %13) #4
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %14, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %16 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %call7 = call i32 @clist_read_color_usage_array(%struct.gx_device_clist_reader_s* %16) #4
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %17, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.6
  %19 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %call11 = call i32 @clist_read_icctable(%struct.gx_device_clist_reader_s* %19) #4
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %20, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.10
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %base_mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %status = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 4
  %23 = load void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)** %status, align 8, !tbaa !64
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %base_mem, align 8, !tbaa !1
  call void %23(%struct.gs_memory_s* %24, %struct.gs_memory_status_s* %mem_status) #4
  %is_thread_safe = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %mem_status, i32 0, i32 2
  %25 = load i32, i32* %is_thread_safe, align 4, !tbaa !65
  %cmp15 = icmp eq i32 %25, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.14
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %base_mem, align 8, !tbaa !1
  %call18 = call %struct.gsicc_link_cache_s* @gsicc_cache_new(%struct.gs_memory_s* %26) #4
  %27 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %27, i32 0, i32 62
  store %struct.gsicc_link_cache_s* %call18, %struct.gsicc_link_cache_s** %icc_cache_cl, align 8, !tbaa !37
  %cmp19 = icmp eq %struct.gsicc_link_cache_s* %call18, null
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  %28 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -25, %cond.true ], [ %28, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %cond.end, %entry
  %29 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.16, %if.then.13, %if.then.9, %if.then.5, %if.then.2
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.gs_memory_status_s* %mem_status to i8*
  call void @llvm.lifetime.end(i64 24, i8* %31) #1
  %32 = bitcast %struct.gs_memory_s** %base_mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i32 @clist_end_page(%struct.gx_device_clist_writer_s*) #2

; Function Attrs: nounwind uwtable
define i32 @clist_read_color_usage_array(%struct.gx_device_clist_reader_s* %crdev) #0 {
entry:
  %retval = alloca i32, align 4
  %crdev.addr = alloca %struct.gx_device_clist_reader_s*, align 8
  %code = alloca i32, align 4
  %size_data = alloca i32, align 4
  %cb = alloca %struct.cmd_block_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_reader_s* %crdev, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %size_data to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %nbands = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %2, i32 0, i32 59
  %3 = load i32, i32* %nbands, align 4, !tbaa !67
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 32
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %size_data, align 4, !tbaa !5
  %4 = bitcast %struct.cmd_block_s* %cb to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %color_usage_array = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %5, i32 0, i32 67
  %6 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !36
  %cmp = icmp ne %struct.gx_colors_usage_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !40
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %9 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !68
  %10 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !40
  %12 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %color_usage_array4 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %12, i32 0, i32 67
  %13 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array4, align 8, !tbaa !36
  %14 = bitcast %struct.gx_colors_usage_s* %13 to i8*
  call void %9(%struct.gs_memory_s* %11, i8* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !40
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 7
  %17 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !69
  %18 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !40
  %20 = load i32, i32* %size_data, align 4, !tbaa !5
  %call = call i8* %17(%struct.gs_memory_s* %19, i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #4
  %21 = bitcast i8* %call to %struct.gx_colors_usage_s*
  %22 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %color_usage_array8 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %22, i32 0, i32 67
  store %struct.gx_colors_usage_s* %21, %struct.gx_colors_usage_s** %color_usage_array8, align 8, !tbaa !36
  %23 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %color_usage_array9 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %23, i32 0, i32 67
  %24 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array9, align 8, !tbaa !36
  %cmp10 = icmp eq %struct.gx_colors_usage_s* %24, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %25 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %nbands14 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %26, i32 0, i32 59
  %27 = load i32, i32* %nbands14, align 4, !tbaa !67
  %add = add nsw i32 %27, 1
  %sub = sub nsw i32 %add, 1
  %call15 = call i32 @clist_find_pseudoband(%struct.gx_device_clist_reader_s* %25, i32 %sub, %struct.cmd_block_s* %cb) #4
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %28, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.13
  %29 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.13
  %30 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %pos = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %cb, i32 0, i32 2
  %31 = load i64, i64* %pos, align 8, !tbaa !70
  %32 = load i32, i32* %size_data, align 4, !tbaa !5
  %33 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %color_usage_array20 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %33, i32 0, i32 67
  %34 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array20, align 8, !tbaa !36
  %35 = bitcast %struct.gx_colors_usage_s* %34 to i8*
  %call21 = call i32 @clist_read_chunk(%struct.gx_device_clist_reader_s* %30, i64 %31, i32 %32, i8* %35) #4
  store i32 %call21, i32* %code, align 4, !tbaa !5
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18, %if.then.12
  %37 = bitcast %struct.cmd_block_s* %cb to i8*
  call void @llvm.lifetime.end(i64 16, i8* %37) #1
  %38 = bitcast i32* %size_data to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define i32 @clist_read_icctable(%struct.gx_device_clist_reader_s* %crdev) #0 {
entry:
  %retval = alloca i32, align 4
  %crdev.addr = alloca %struct.gx_device_clist_reader_s*, align 8
  %cb = alloca %struct.cmd_block_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_reader_s* %crdev, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmd_block_s* %cb to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %3 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %nbands = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %3, i32 0, i32 59
  %4 = load i32, i32* %nbands, align 4, !tbaa !67
  %add = add nsw i32 %4, 2
  %sub = sub nsw i32 %add, 1
  %call = call i32 @clist_find_pseudoband(%struct.gx_device_clist_reader_s* %2, i32 %sub, %struct.cmd_block_s* %cb) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %call1 = call i32 @clist_unserialize_icctable(%struct.gx_device_clist_reader_s* %6, %struct.cmd_block_s* %cb) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast %struct.cmd_block_s* %cb to i8*
  call void @llvm.lifetime.end(i64 16, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare %struct.gsicc_link_cache_s* @gsicc_cache_new(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define i32 @clist_read_chunk(%struct.gx_device_clist_reader_s* %crdev, i64 %position, i32 %size, i8* %buf) #0 {
entry:
  %crdev.addr = alloca %struct.gx_device_clist_reader_s*, align 8
  %position.addr = alloca i64, align 8
  %size.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %cfile = alloca i8*, align 8
  %save_pos = alloca i64, align 8
  store %struct.gx_device_clist_reader_s* %crdev, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  store i64 %position, i64* %position.addr, align 8, !tbaa !46
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  %0 = bitcast i8** %cfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %1, i32 0, i32 58
  %cfile1 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 1
  %2 = load i8*, i8** %cfile1, align 8, !tbaa !71
  store i8* %2, i8** %cfile, align 8, !tbaa !1
  %3 = bitcast i64* %save_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info2 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %4, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info2, i32 0, i32 4
  %5 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !49
  %ftell = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %5, i32 0, i32 7
  %6 = load i64 (i8*)*, i64 (i8*)** %ftell, align 8, !tbaa !72
  %7 = load i8*, i8** %cfile, align 8, !tbaa !1
  %call = call i64 %6(i8* %7) #4
  store i64 %call, i64* %save_pos, align 8, !tbaa !46
  %8 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info3 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %8, i32 0, i32 58
  %io_procs4 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info3, i32 0, i32 4
  %9 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs4, align 8, !tbaa !49
  %fseek = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %9, i32 0, i32 9
  %10 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek, align 8, !tbaa !73
  %11 = load i8*, i8** %cfile, align 8, !tbaa !1
  %12 = load i64, i64* %position.addr, align 8, !tbaa !46
  %13 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info5 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %13, i32 0, i32 58
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info5, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %call6 = call i32 %10(i8* %11, i64 %12, i32 0, i8* %arraydecay) #4
  %14 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info7 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %14, i32 0, i32 58
  %io_procs8 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info7, i32 0, i32 4
  %15 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs8, align 8, !tbaa !49
  %fread_chars = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %15, i32 0, i32 4
  %16 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %fread_chars, align 8, !tbaa !74
  %17 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %18 = load i32, i32* %size.addr, align 4, !tbaa !5
  %19 = load i8*, i8** %cfile, align 8, !tbaa !1
  %call9 = call i32 %16(i8* %17, i32 %18, i8* %19) #4
  %20 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info10 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %20, i32 0, i32 58
  %io_procs11 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info10, i32 0, i32 4
  %21 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs11, align 8, !tbaa !49
  %fseek12 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %21, i32 0, i32 9
  %22 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek12, align 8, !tbaa !73
  %23 = load i8*, i8** %cfile, align 8, !tbaa !1
  %24 = load i64, i64* %save_pos, align 8, !tbaa !46
  %25 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info13 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %25, i32 0, i32 58
  %cfname14 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info13, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname14, i32 0, i32 0
  %call16 = call i32 %22(i8* %23, i64 %24, i32 0, i8* %arraydecay15) #4
  %26 = bitcast i64* %save_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i8** %cfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_find_pseudoband(%struct.gx_device_clist_reader_s* %crdev, i32 %band, %struct.cmd_block_s* %cb) #0 {
entry:
  %retval = alloca i32, align 4
  %crdev.addr = alloca %struct.gx_device_clist_reader_s*, align 8
  %band.addr = alloca i32, align 4
  %cb.addr = alloca %struct.cmd_block_s*, align 8
  %page_info = alloca %struct.gx_band_page_info_s*, align 8
  %bfile = alloca i8*, align 8
  %save_pos = alloca i64, align 8
  %start_pos = alloca i64, align 8
  %code = alloca i32, align 4
  %fmode = alloca [4 x i8], align 1
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_reader_s* %crdev, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  store i32 %band, i32* %band.addr, align 4, !tbaa !5
  store %struct.cmd_block_s* %cb, %struct.cmd_block_s** %cb.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_band_page_info_s** %page_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info1 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %1, i32 0, i32 58
  store %struct.gx_band_page_info_s* %page_info1, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %2 = bitcast i8** %bfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %bfile2 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %3, i32 0, i32 3
  %4 = load i8*, i8** %bfile2, align 8, !tbaa !75
  store i8* %4, i8** %bfile, align 8, !tbaa !1
  %5 = bitcast i64* %save_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %bfile_end_pos = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %6, i32 0, i32 7
  %7 = load i64, i64* %bfile_end_pos, align 8, !tbaa !76
  store i64 %7, i64* %save_pos, align 8, !tbaa !46
  %8 = bitcast i64* %start_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i8*, i8** %bfile, align 8, !tbaa !1
  %cmp = icmp eq i8* %10, null
  br i1 %cmp, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %11 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #5
  %arraydecay3 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call4 = call i8* @strncat(i8* %arraydecay3, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_fmode_binary_suffix, i32 0, i32 0), i64 1) #5
  %12 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %12, i32 0, i32 4
  %13 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !77
  %DO_NOT_USE_FOPEN = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %13, i32 0, i32 0
  %14 = load i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)** %DO_NOT_USE_FOPEN, align 8, !tbaa !50
  %15 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %15, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %16 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %16, i32 0, i32 1
  %17 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !40
  %19 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !40
  %call8 = call i32 %14(i8* %arraydecay5, i8* %arraydecay6, i8** %cfile, %struct.gs_memory_s* %18, %struct.gs_memory_s* %20, i32 1) #4
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %21 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %io_procs10 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %21, i32 0, i32 4
  %22 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs10, align 8, !tbaa !77
  %DO_NOT_USE_FOPEN11 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %22, i32 0, i32 0
  %23 = load i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)** %DO_NOT_USE_FOPEN11, align 8, !tbaa !50
  %24 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %24, i32 0, i32 2
  %arraydecay12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %25 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %bfile14 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %25, i32 0, i32 3
  %26 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !40
  %28 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !40
  %call17 = call i32 %23(i8* %arraydecay12, i8* %arraydecay13, i8** %bfile14, %struct.gs_memory_s* %27, %struct.gs_memory_s* %29, i32 0) #4
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %lor.lhs.false, %if.then
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %31 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %bfile20 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %31, i32 0, i32 3
  %32 = load i8*, i8** %bfile20, align 8, !tbaa !75
  store i8* %32, i8** %bfile, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.19
  %33 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.52 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.21

if.end.21:                                        ; preds = %cleanup.cont, %entry
  %34 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %bfile_end_pos22 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %34, i32 0, i32 7
  %35 = load i64, i64* %bfile_end_pos22, align 8, !tbaa !76
  %sub = sub i64 %35, 16
  store i64 %sub, i64* %start_pos, align 8, !tbaa !46
  %36 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %io_procs23 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %36, i32 0, i32 4
  %37 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs23, align 8, !tbaa !77
  %fseek = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %37, i32 0, i32 9
  %38 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek, align 8, !tbaa !73
  %39 = load i8*, i8** %bfile, align 8, !tbaa !1
  %40 = load i64, i64* %start_pos, align 8, !tbaa !46
  %41 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %bfname24 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %41, i32 0, i32 2
  %arraydecay25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname24, i32 0, i32 0
  %call26 = call i32 %38(i8* %39, i64 %40, i32 0, i8* %arraydecay25) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end.46, %if.end.21
  br label %while.body

while.body:                                       ; preds = %while.cond
  %42 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %io_procs27 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %42, i32 0, i32 4
  %43 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs27, align 8, !tbaa !77
  %fread_chars = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %43, i32 0, i32 4
  %44 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %fread_chars, align 8, !tbaa !74
  %45 = load %struct.cmd_block_s*, %struct.cmd_block_s** %cb.addr, align 8, !tbaa !1
  %46 = bitcast %struct.cmd_block_s* %45 to i8*
  %47 = load i8*, i8** %bfile, align 8, !tbaa !1
  %call28 = call i32 %44(i8* %46, i32 16, i8* %47) #4
  %48 = load %struct.cmd_block_s*, %struct.cmd_block_s** %cb.addr, align 8, !tbaa !1
  %band_max = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %48, i32 0, i32 1
  %49 = load i32, i32* %band_max, align 4, !tbaa !78
  %50 = load i32, i32* %band.addr, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %49, %50
  br i1 %cmp29, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %while.body
  %51 = load %struct.cmd_block_s*, %struct.cmd_block_s** %cb.addr, align 8, !tbaa !1
  %band_min = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %51, i32 0, i32 0
  %52 = load i32, i32* %band_min, align 4, !tbaa !79
  %53 = load i32, i32* %band.addr, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %52, %53
  br i1 %cmp30, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %land.lhs.true
  %54 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %io_procs32 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %54, i32 0, i32 4
  %55 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs32, align 8, !tbaa !77
  %fseek33 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %55, i32 0, i32 9
  %56 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek33, align 8, !tbaa !73
  %57 = load i8*, i8** %bfile, align 8, !tbaa !1
  %58 = load i64, i64* %save_pos, align 8, !tbaa !46
  %59 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %bfname34 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %59, i32 0, i32 2
  %arraydecay35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname34, i32 0, i32 0
  %call36 = call i32 %56(i8* %57, i64 %58, i32 0, i8* %arraydecay35) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

if.end.37:                                        ; preds = %land.lhs.true, %while.body
  %60 = load i64, i64* %start_pos, align 8, !tbaa !46
  %sub38 = sub i64 %60, 16
  store i64 %sub38, i64* %start_pos, align 8, !tbaa !46
  %61 = load i64, i64* %start_pos, align 8, !tbaa !46
  %cmp39 = icmp slt i64 %61, 0
  br i1 %cmp39, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %if.end.37
  %62 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %io_procs41 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %62, i32 0, i32 4
  %63 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs41, align 8, !tbaa !77
  %fseek42 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %63, i32 0, i32 9
  %64 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek42, align 8, !tbaa !73
  %65 = load i8*, i8** %bfile, align 8, !tbaa !1
  %66 = load i64, i64* %save_pos, align 8, !tbaa !46
  %67 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %bfname43 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %67, i32 0, i32 2
  %arraydecay44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname43, i32 0, i32 0
  %call45 = call i32 %64(i8* %65, i64 %66, i32 0, i8* %arraydecay44) #4
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

if.end.46:                                        ; preds = %if.end.37
  %68 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %io_procs47 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %68, i32 0, i32 4
  %69 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs47, align 8, !tbaa !77
  %fseek48 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %69, i32 0, i32 9
  %70 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek48, align 8, !tbaa !73
  %71 = load i8*, i8** %bfile, align 8, !tbaa !1
  %72 = load i64, i64* %start_pos, align 8, !tbaa !46
  %73 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %page_info, align 8, !tbaa !1
  %bfname49 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %73, i32 0, i32 2
  %arraydecay50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname49, i32 0, i32 0
  %call51 = call i32 %70(i8* %71, i64 %72, i32 0, i8* %arraydecay50) #4
  br label %while.cond

cleanup.52:                                       ; preds = %if.then.40, %if.then.31, %cleanup
  %74 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i64* %start_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i64* %save_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i8** %bfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast %struct.gx_band_page_info_s** %page_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_unserialize_icctable(%struct.gx_device_clist_reader_s* %crdev, %struct.cmd_block_s* %cb) #0 {
entry:
  %retval = alloca i32, align 4
  %crdev.addr = alloca %struct.gx_device_clist_reader_s*, align 8
  %cb.addr = alloca %struct.cmd_block_s*, align 8
  %cfile = alloca i8*, align 8
  %icc_table = alloca %struct.clist_icctable_s*, align 8
  %save_pos = alloca i64, align 8
  %number_entries = alloca i32, align 4
  %size_data = alloca i32, align 4
  %buf = alloca i8*, align 8
  %buf_start = alloca i8*, align 8
  %curr_entry = alloca %struct.clist_icctable_entry_s*, align 8
  %k = alloca i32, align 4
  %stable_mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_reader_s* %crdev, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  store %struct.cmd_block_s* %cb, %struct.cmd_block_s** %cb.addr, align 8, !tbaa !1
  %0 = bitcast i8** %cfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %1, i32 0, i32 58
  %cfile1 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 1
  %2 = load i8*, i8** %cfile1, align 8, !tbaa !71
  store i8* %2, i8** %cfile, align 8, !tbaa !1
  %3 = bitcast %struct.clist_icctable_s** %icc_table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %icc_table2 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %4, i32 0, i32 61
  %5 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table2, align 8, !tbaa !35
  store %struct.clist_icctable_s* %5, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %6 = bitcast i64* %save_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %number_entries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %size_data to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %buf_start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.clist_icctable_entry_s** %curr_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast %struct.gs_memory_s** %stable_mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %14, i32 0, i32 3
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !40
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 0
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !80
  store %struct.gs_memory_s* %16, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %17 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %cmp = icmp ne %struct.clist_icctable_s* %17, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info3 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %18, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info3, i32 0, i32 4
  %19 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !49
  %ftell = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %19, i32 0, i32 7
  %20 = load i64 (i8*)*, i64 (i8*)** %ftell, align 8, !tbaa !72
  %21 = load i8*, i8** %cfile, align 8, !tbaa !1
  %call = call i64 %20(i8* %21) #4
  store i64 %call, i64* %save_pos, align 8, !tbaa !46
  %22 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info4 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %22, i32 0, i32 58
  %io_procs5 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info4, i32 0, i32 4
  %23 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs5, align 8, !tbaa !49
  %fseek = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %23, i32 0, i32 9
  %24 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek, align 8, !tbaa !73
  %25 = load i8*, i8** %cfile, align 8, !tbaa !1
  %26 = load %struct.cmd_block_s*, %struct.cmd_block_s** %cb.addr, align 8, !tbaa !1
  %pos = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %26, i32 0, i32 2
  %27 = load i64, i64* %pos, align 8, !tbaa !70
  %28 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info6 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %28, i32 0, i32 58
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info6, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %call7 = call i32 %24(i8* %25, i64 %27, i32 0, i8* %arraydecay) #4
  %29 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info8 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %29, i32 0, i32 58
  %io_procs9 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info8, i32 0, i32 4
  %30 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs9, align 8, !tbaa !49
  %fread_chars = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %30, i32 0, i32 4
  %31 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %fread_chars, align 8, !tbaa !74
  %32 = bitcast i32* %number_entries to i8*
  %33 = load i8*, i8** %cfile, align 8, !tbaa !1
  %call10 = call i32 %31(i8* %32, i32 4, i8* %33) #4
  %34 = load i32, i32* %number_entries, align 4, !tbaa !5
  %conv = sext i32 %34 to i64
  %mul = mul i64 %conv, 24
  %conv11 = trunc i64 %mul to i32
  store i32 %conv11, i32* %size_data, align 4, !tbaa !5
  %35 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !40
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %37 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !69
  %38 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !40
  %40 = load i32, i32* %size_data, align 4, !tbaa !5
  %call14 = call i8* %37(%struct.gs_memory_s* %39, i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #4
  store i8* %call14, i8** %buf, align 8, !tbaa !1
  %41 = load i8*, i8** %buf, align 8, !tbaa !1
  store i8* %41, i8** %buf_start, align 8, !tbaa !1
  %42 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp15 = icmp eq i8* %42, null
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end
  %call18 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.clist_unserialize_icctable, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 489, i32 1, i32 -1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0)) #4
  store i32 %call18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end
  %43 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %44 = load %struct.cmd_block_s*, %struct.cmd_block_s** %cb.addr, align 8, !tbaa !1
  %pos20 = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %44, i32 0, i32 2
  %45 = load i64, i64* %pos20, align 8, !tbaa !70
  %add = add nsw i64 %45, 4
  %46 = load i32, i32* %size_data, align 4, !tbaa !5
  %47 = load i8*, i8** %buf, align 8, !tbaa !1
  %call21 = call i32 @clist_read_chunk(%struct.gx_device_clist_reader_s* %43, i64 %add, i32 %46, i8* %47) #4
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 8
  %49 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !81
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %call23 = call i8* %49(%struct.gs_memory_s* %50, %struct.gs_memory_struct_type_s* @st_clist_icctable, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #4
  %51 = bitcast i8* %call23 to %struct.clist_icctable_s*
  store %struct.clist_icctable_s* %51, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %52 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %cmp24 = icmp eq %struct.clist_icctable_s* %52, null
  br i1 %cmp24, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.19
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %procs27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs27, i32 0, i32 2
  %54 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !68
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %56 = load i8*, i8** %buf_start, align 8, !tbaa !1
  call void %54(%struct.gs_memory_s* %55, i8* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #4
  %call28 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.clist_unserialize_icctable, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 496, i32 1, i32 -1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0)) #4
  store i32 %call28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.19
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %58 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %58, i32 0, i32 1
  store %struct.gs_memory_s* %57, %struct.gs_memory_s** %memory30, align 8, !tbaa !82
  %59 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %59, i32 0, i32 2
  store %struct.clist_icctable_entry_s* null, %struct.clist_icctable_entry_s** %head, align 8, !tbaa !84
  %60 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %final = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %60, i32 0, i32 3
  store %struct.clist_icctable_entry_s* null, %struct.clist_icctable_entry_s** %final, align 8, !tbaa !85
  %61 = load i32, i32* %number_entries, align 4, !tbaa !5
  %62 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %tablesize = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %62, i32 0, i32 0
  store i32 %61, i32* %tablesize, align 4, !tbaa !86
  %63 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %64 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %icc_table31 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %64, i32 0, i32 61
  store %struct.clist_icctable_s* %63, %struct.clist_icctable_s** %icc_table31, align 8, !tbaa !35
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %65 = load i32, i32* %k, align 4, !tbaa !5
  %66 = load i32, i32* %number_entries, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %65, %66
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %procs34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %67, i32 0, i32 1
  %alloc_struct35 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs34, i32 0, i32 8
  %68 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct35, align 8, !tbaa !81
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %call36 = call i8* %68(%struct.gs_memory_s* %69, %struct.gs_memory_struct_type_s* @st_clist_icctable_entry, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #4
  %70 = bitcast i8* %call36 to %struct.clist_icctable_entry_s*
  store %struct.clist_icctable_entry_s* %70, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %71 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %cmp37 = icmp eq %struct.clist_icctable_entry_s* %71, null
  br i1 %cmp37, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %for.body
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %procs40 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %72, i32 0, i32 1
  %free_object41 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs40, i32 0, i32 2
  %73 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object41, align 8, !tbaa !68
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %75 = load i8*, i8** %buf_start, align 8, !tbaa !1
  call void %73(%struct.gs_memory_s* %74, i8* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #4
  %call42 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.clist_unserialize_icctable, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 509, i32 1, i32 -1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0)) #4
  store i32 %call42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %for.body
  %76 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %serial_data = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %76, i32 0, i32 0
  %77 = bitcast %struct.clist_icc_serial_entry_s* %serial_data to i8*
  %78 = load i8*, i8** %buf, align 8, !tbaa !1
  %call44 = call i8* @memcpy(i8* %77, i8* %78, i64 24) #5
  %79 = load i8*, i8** %buf, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %79, i64 24
  store i8* %add.ptr, i8** %buf, align 8, !tbaa !1
  %80 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %icc_profile = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %80, i32 0, i32 2
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !87
  %81 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %head45 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %81, i32 0, i32 2
  %82 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %head45, align 8, !tbaa !84
  %cmp46 = icmp eq %struct.clist_icctable_entry_s* %82, null
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.end.43
  %83 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %84 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %head49 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %84, i32 0, i32 2
  store %struct.clist_icctable_entry_s* %83, %struct.clist_icctable_entry_s** %head49, align 8, !tbaa !84
  %85 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %86 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %final50 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %86, i32 0, i32 3
  store %struct.clist_icctable_entry_s* %85, %struct.clist_icctable_entry_s** %final50, align 8, !tbaa !85
  br label %if.end.53

if.else:                                          ; preds = %if.end.43
  %87 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %88 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %final51 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %88, i32 0, i32 3
  %89 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %final51, align 8, !tbaa !85
  %next = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %89, i32 0, i32 1
  store %struct.clist_icctable_entry_s* %87, %struct.clist_icctable_entry_s** %next, align 8, !tbaa !90
  %90 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %91 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %final52 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %91, i32 0, i32 3
  store %struct.clist_icctable_entry_s* %90, %struct.clist_icctable_entry_s** %final52, align 8, !tbaa !85
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.48
  %92 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %next54 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %92, i32 0, i32 1
  store %struct.clist_icctable_entry_s* null, %struct.clist_icctable_entry_s** %next54, align 8, !tbaa !90
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %93 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %94 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %memory55 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %94, i32 0, i32 3
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory55, align 8, !tbaa !40
  %procs56 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 1
  %free_object57 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs56, i32 0, i32 2
  %96 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object57, align 8, !tbaa !68
  %97 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %memory58 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %97, i32 0, i32 3
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory58, align 8, !tbaa !40
  %99 = load i8*, i8** %buf_start, align 8, !tbaa !1
  call void %96(%struct.gs_memory_s* %98, i8* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #4
  %100 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info59 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %100, i32 0, i32 58
  %io_procs60 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info59, i32 0, i32 4
  %101 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs60, align 8, !tbaa !49
  %fseek61 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %101, i32 0, i32 9
  %102 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek61, align 8, !tbaa !73
  %103 = load i8*, i8** %cfile, align 8, !tbaa !1
  %104 = load i64, i64* %save_pos, align 8, !tbaa !46
  %105 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev.addr, align 8, !tbaa !1
  %page_info62 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %105, i32 0, i32 58
  %cfname63 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info62, i32 0, i32 0
  %arraydecay64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname63, i32 0, i32 0
  %call65 = call i32 %102(i8* %103, i64 %104, i32 0, i8* %arraydecay64) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.39, %if.then.26, %if.then.17, %if.then
  %106 = bitcast %struct.gs_memory_s** %stable_mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast %struct.clist_icctable_entry_s** %curr_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast i8** %buf_start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i32* %size_data to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %number_entries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i64* %save_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast %struct.clist_icctable_s** %icc_table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast i8** %cfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = load i32, i32* %retval
  ret i32 %116
}

; Function Attrs: nounwind uwtable
define i32 @clist_get_bits_rectangle(%struct.gx_device_s* %dev, %struct.gs_int_rect_s* %prect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %unread.addr = alloca %struct.gs_int_rect_s**, align 8
  %cldev = alloca %union.gx_device_clist_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %cdev = alloca %struct.gx_device_clist_common_s*, align 8
  %options = alloca i64, align 8
  %y = alloca i32, align 4
  %end_y = alloca i32, align 4
  %line_count = alloca i32, align 4
  %band_rect = alloca %struct.gs_int_rect_s, align 4
  %lines_rasterized = alloca i32, align 4
  %bdev = alloca %struct.gx_device_s*, align 8
  %num_planes = alloca i32, align 4
  %render_plane = alloca %struct.gx_render_plane_s, align 4
  %plane_index = alloca i32, align 4
  %my = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %band_params105 = alloca %struct.gs_get_bits_params_s, align 8
  %raster = alloca i32, align 4
  %i126 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s** %unread, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %0 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %2, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %4 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %reader, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %7, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %8 = bitcast i64* %options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options1 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %9, i32 0, i32 0
  %10 = load i64, i64* %options1, align 8, !tbaa !91
  store i64 %10, i64* %options, align 8, !tbaa !46
  %11 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %12, i32 0, i32 0
  %y2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 1
  %13 = load i32, i32* %y2, align 4, !tbaa !93
  store i32 %13, i32* %y, align 4, !tbaa !5
  %14 = bitcast i32* %end_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %15, i32 0, i32 1
  %y3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 1
  %16 = load i32, i32* %y3, align 4, !tbaa !94
  store i32 %16, i32* %end_y, align 4, !tbaa !5
  %17 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %end_y, align 4, !tbaa !5
  %19 = load i32, i32* %y, align 4, !tbaa !5
  %sub = sub nsw i32 %18, %19
  store i32 %sub, i32* %line_count, align 4, !tbaa !5
  %20 = bitcast %struct.gs_int_rect_s* %band_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %20) #1
  %21 = bitcast i32* %lines_rasterized to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast %struct.gx_device_s** %bdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i64, i64* %options, align 8, !tbaa !46
  %and = and i64 %24, 65536
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.15

cond.false:                                       ; preds = %entry
  %25 = load i64, i64* %options, align 8, !tbaa !46
  %and4 = and i64 %25, 131072
  %tobool5 = icmp ne i64 %and4, 0
  br i1 %tobool5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.false
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %27 = load i32, i32* %num_components, align 4, !tbaa !95
  br label %cond.end.13

cond.false.7:                                     ; preds = %cond.false
  %28 = load i64, i64* %options, align 8, !tbaa !46
  %and8 = and i64 %28, 262144
  %tobool9 = icmp ne i64 %and8, 0
  br i1 %tobool9, label %cond.true.10, label %cond.false.12

cond.true.10:                                     ; preds = %cond.false.7
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info11, i32 0, i32 3
  %30 = load i16, i16* %depth, align 2, !tbaa !97
  %conv = zext i16 %30 to i32
  br label %cond.end

cond.false.12:                                    ; preds = %cond.false.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false.12, %cond.true.10
  %cond = phi i32 [ %conv, %cond.true.10 ], [ 0, %cond.false.12 ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end, %cond.true.6
  %cond14 = phi i32 [ %27, %cond.true.6 ], [ %cond, %cond.end ]
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.end.13, %cond.true
  %cond16 = phi i32 [ 1, %cond.true ], [ %cond14, %cond.end.13 ]
  store i32 %cond16, i32* %num_planes, align 4, !tbaa !5
  %31 = bitcast %struct.gx_render_plane_s* %render_plane to i8*
  call void @llvm.lifetime.start(i64 12, i8* %31) #1
  %32 = bitcast i32* %plane_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast i32* %my to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p17 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %35, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p17, i32 0, i32 0
  %36 = load i32, i32* %x, align 4, !tbaa !98
  %cmp = icmp slt i32 %36, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.15
  %37 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q19 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %37, i32 0, i32 1
  %x20 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q19, i32 0, i32 0
  %38 = load i32, i32* %x20, align 4, !tbaa !99
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 13
  %40 = load i32, i32* %width, align 4, !tbaa !100
  %cmp21 = icmp sgt i32 %38, %40
  br i1 %cmp21, label %if.then, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false
  %41 = load i32, i32* %y, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %41, 0
  br i1 %cmp24, label %if.then, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.23
  %42 = load i32, i32* %end_y, align 4, !tbaa !5
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %43, i32 0, i32 14
  %44 = load i32, i32* %height, align 4, !tbaa !101
  %cmp27 = icmp sgt i32 %42, %44
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.26, %lor.lhs.false.23, %lor.lhs.false, %cond.end.15
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.182

if.end:                                           ; preds = %lor.lhs.false.26
  %45 = load i32, i32* %line_count, align 4, !tbaa !5
  %cmp29 = icmp sle i32 %45, 0
  br i1 %cmp29, label %if.then.38, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.end
  %46 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p32 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %46, i32 0, i32 0
  %x33 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p32, i32 0, i32 0
  %47 = load i32, i32* %x33, align 4, !tbaa !98
  %48 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q34 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %48, i32 0, i32 1
  %x35 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q34, i32 0, i32 0
  %49 = load i32, i32* %x35, align 4, !tbaa !99
  %cmp36 = icmp sge i32 %47, %49
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false.31, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.182

if.end.39:                                        ; preds = %lor.lhs.false.31
  store i32 -1, i32* %plane_index, align 4, !tbaa !5
  %50 = load i64, i64* %options, align 8, !tbaa !46
  %and40 = and i64 %50, 524288
  %tobool41 = icmp ne i64 %and40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.52

if.then.42:                                       ; preds = %if.end.39
  %51 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.42
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %53 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %52, %53
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %54 to i64
  %55 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %55, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 %idxprom
  %56 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %tobool45 = icmp ne i8* %56, null
  br i1 %tobool45, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %for.body
  %57 = load i32, i32* %plane_index, align 4, !tbaa !5
  %cmp47 = icmp sge i32 %57, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.46
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %59 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %60 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %61 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_get_bits_rectangle(%struct.gx_device_s* %58, %struct.gs_int_rect_s* %59, %struct.gs_get_bits_params_s* %60, %struct.gs_int_rect_s** %61) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %if.then.46
  %62 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %62, i32* %plane_index, align 4, !tbaa !5
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.49
  %64 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.182 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.52

if.end.52:                                        ; preds = %cleanup.cont, %if.end.39
  %65 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %call53 = call i32 @clist_close_writer_and_init_reader(%union.gx_device_clist_s* %65) #4
  store i32 %call53, i32* %code, align 4, !tbaa !5
  %cmp54 = icmp sgt i32 0, %call53
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.52
  %66 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.182

if.end.57:                                        ; preds = %if.end.52
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %68 = load i32, i32* %y, align 4, !tbaa !5
  %69 = load i32, i32* %line_count, align 4, !tbaa !5
  %70 = load i32, i32* %plane_index, align 4, !tbaa !5
  call void @clist_select_render_plane(%struct.gx_device_s* %67, i32 %68, i32 %69, %struct.gx_render_plane_s* %render_plane, i32 %70) #4
  %71 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %buf_procs = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %71, i32 0, i32 44
  %create_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs, i32 0, i32 0
  %72 = load i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)** %create_buf_device, align 8, !tbaa !102
  %73 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %73, i32 0, i32 43
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !104
  %75 = load i32, i32* %y, align 4, !tbaa !5
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %76, i32 0, i32 3
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !105
  %78 = load i32, i32* %y, align 4, !tbaa !5
  %79 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %79, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %80 = load i32, i32* %BandHeight, align 4, !tbaa !106
  %div = sdiv i32 %78, %80
  %idxprom58 = sext i32 %div to i64
  %81 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %color_usage_array = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %81, i32 0, i32 67
  %82 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !36
  %arrayidx59 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %82, i64 %idxprom58
  %call60 = call i32 @gdev_create_buf_device(i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* %72, %struct.gx_device_s** %bdev, %struct.gx_device_s* %74, i32 %75, %struct.gx_render_plane_s* %render_plane, %struct.gs_memory_s* %77, %struct.gx_colors_usage_s* %arrayidx59) #4
  store i32 %call60, i32* %code, align 4, !tbaa !5
  %83 = load i32, i32* %code, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %83, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.57
  %84 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %84, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.182

if.end.64:                                        ; preds = %if.end.57
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %86 = load i32, i32* %y, align 4, !tbaa !5
  %87 = load i32, i32* %line_count, align 4, !tbaa !5
  %88 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %call65 = call i32 @clist_rasterize_lines(%struct.gx_device_s* %85, i32 %86, i32 %87, %struct.gx_device_s* %88, %struct.gx_render_plane_s* %render_plane, i32* %my) #4
  store i32 %call65, i32* %code, align 4, !tbaa !5
  %89 = load i32, i32* %code, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %89, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.64
  %90 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %90, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.182

if.end.69:                                        ; preds = %if.end.64
  %91 = load i32, i32* %code, align 4, !tbaa !5
  %92 = load i32, i32* %line_count, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %91, %92
  br i1 %cmp70, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %if.end.69
  %93 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.74

cond.false.73:                                    ; preds = %if.end.69
  %94 = load i32, i32* %line_count, align 4, !tbaa !5
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.true.72
  %cond75 = phi i32 [ %93, %cond.true.72 ], [ %94, %cond.false.73 ]
  store i32 %cond75, i32* %lines_rasterized, align 4, !tbaa !5
  %95 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %96 = bitcast %struct.gs_int_rect_s* %band_rect to i8*
  %97 = bitcast %struct.gs_int_rect_s* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 16, i32 4, i1 false), !tbaa.struct !107
  %98 = load i32, i32* %my, align 4, !tbaa !5
  %p76 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 0
  %y77 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p76, i32 0, i32 1
  store i32 %98, i32* %y77, align 4, !tbaa !93
  %99 = load i32, i32* %my, align 4, !tbaa !5
  %100 = load i32, i32* %lines_rasterized, align 4, !tbaa !5
  %add = add nsw i32 %99, %100
  %q78 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 1
  %y79 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q78, i32 0, i32 1
  store i32 %add, i32* %y79, align 4, !tbaa !94
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %101, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 38
  %102 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !108
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %104 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %105 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call80 = call i32 %102(%struct.gx_device_s* %103, %struct.gs_int_rect_s* %band_rect, %struct.gs_get_bits_params_s* %104, %struct.gs_int_rect_s** %105) #4
  store i32 %call80, i32* %code, align 4, !tbaa !5
  %106 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %buf_procs81 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %106, i32 0, i32 44
  %destroy_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs81, i32 0, i32 3
  %107 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %destroy_buf_device, align 8, !tbaa !109
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  call void %107(%struct.gx_device_s* %108) #4
  %109 = load i32, i32* %code, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %109, 0
  br i1 %cmp82, label %if.then.87, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %cond.end.74
  %110 = load i32, i32* %lines_rasterized, align 4, !tbaa !5
  %111 = load i32, i32* %line_count, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %110, %111
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %lor.lhs.false.84, %cond.end.74
  %112 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %112, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.182

if.end.88:                                        ; preds = %lor.lhs.false.84
  %113 = load i64, i64* %options, align 8, !tbaa !46
  %and89 = and i64 %113, 1048576
  %tobool90 = icmp ne i64 %and89, 0
  br i1 %tobool90, label %lor.lhs.false.91, label %if.then.94

lor.lhs.false.91:                                 ; preds = %if.end.88
  %114 = load i32, i32* %code, align 4, !tbaa !5
  %cmp92 = icmp sgt i32 %114, 0
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %lor.lhs.false.91, %if.end.88
  %115 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %116 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %117 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %118 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call95 = call i32 @gx_default_get_bits_rectangle(%struct.gx_device_s* %115, %struct.gs_int_rect_s* %116, %struct.gs_get_bits_params_s* %117, %struct.gs_int_rect_s** %118) #4
  store i32 %call95, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.182

if.end.96:                                        ; preds = %lor.lhs.false.91
  %119 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options97 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %119, i32 0, i32 0
  %120 = load i64, i64* %options97, align 8, !tbaa !91
  store i64 %120, i64* %options, align 8, !tbaa !46
  %121 = load i64, i64* %options, align 8, !tbaa !46
  %and98 = and i64 %121, 1048576
  %tobool99 = icmp ne i64 %and98, 0
  br i1 %tobool99, label %if.end.104, label %if.then.100

if.then.100:                                      ; preds = %if.end.96
  %122 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options101 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %122, i32 0, i32 0
  %123 = load i64, i64* %options101, align 8, !tbaa !91
  %and102 = and i64 %123, -3145729
  %or = or i64 %and102, 1048576
  store i64 %or, i64* %options, align 8, !tbaa !46
  %124 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options103 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %124, i32 0, i32 0
  store i64 %or, i64* %options103, align 8, !tbaa !91
  store i32 0, i32* %lines_rasterized, align 4, !tbaa !5
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.100, %if.end.96
  %125 = bitcast %struct.gs_get_bits_params_s* %band_params105 to i8*
  call void @llvm.lifetime.start(i64 536, i8* %125) #1
  %126 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %126) #1
  %127 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %call106 = call i32 @gx_device_raster(%struct.gx_device_s* %127, i32 1) #4
  store i32 %call106, i32* %raster, align 4, !tbaa !5
  %128 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %buf_procs107 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %128, i32 0, i32 44
  %create_buf_device108 = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs107, i32 0, i32 0
  %129 = load i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)** %create_buf_device108, align 8, !tbaa !102
  %130 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %target109 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %130, i32 0, i32 43
  %131 = load %struct.gx_device_s*, %struct.gx_device_s** %target109, align 8, !tbaa !104
  %132 = load i32, i32* %y, align 4, !tbaa !5
  %133 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory110 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %133, i32 0, i32 3
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory110, align 8, !tbaa !105
  %135 = load i32, i32* %y, align 4, !tbaa !5
  %136 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info111 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %136, i32 0, i32 58
  %band_params112 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info111, i32 0, i32 8
  %BandHeight113 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params112, i32 0, i32 1
  %137 = load i32, i32* %BandHeight113, align 4, !tbaa !106
  %div114 = sdiv i32 %135, %137
  %idxprom115 = sext i32 %div114 to i64
  %138 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %color_usage_array116 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %138, i32 0, i32 67
  %139 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array116, align 8, !tbaa !36
  %arrayidx117 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %139, i64 %idxprom115
  %call118 = call i32 @gdev_create_buf_device(i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* %129, %struct.gx_device_s** %bdev, %struct.gx_device_s* %131, i32 %132, %struct.gx_render_plane_s* %render_plane, %struct.gs_memory_s* %134, %struct.gx_colors_usage_s* %arrayidx117) #4
  store i32 %call118, i32* %code, align 4, !tbaa !5
  %140 = load i32, i32* %code, align 4, !tbaa !5
  %cmp119 = icmp slt i32 %140, 0
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.104
  %141 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %141, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.122:                                       ; preds = %if.end.104
  %142 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %143 = bitcast %struct.gs_get_bits_params_s* %band_params105 to i8*
  %144 = bitcast %struct.gs_get_bits_params_s* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %143, i8* %144, i64 536, i32 8, i1 false), !tbaa.struct !110
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.175, %if.end.122
  %145 = load i32, i32* %lines_rasterized, align 4, !tbaa !5
  %146 = load i32, i32* %y, align 4, !tbaa !5
  %add123 = add nsw i32 %146, %145
  store i32 %add123, i32* %y, align 4, !tbaa !5
  %147 = load i32, i32* %end_y, align 4, !tbaa !5
  %cmp124 = icmp slt i32 %add123, %147
  br i1 %cmp124, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %148 = bitcast i32* %i126 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %148) #1
  store i32 0, i32* %i126, align 4, !tbaa !5
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.140, %while.body
  %149 = load i32, i32* %i126, align 4, !tbaa !5
  %150 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp128 = icmp slt i32 %149, %150
  br i1 %cmp128, label %for.body.130, label %for.end.142

for.body.130:                                     ; preds = %for.cond.127
  %151 = load i32, i32* %i126, align 4, !tbaa !5
  %idxprom131 = sext i32 %151 to i64
  %data132 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %band_params105, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data132, i32 0, i64 %idxprom131
  %152 = load i8*, i8** %arrayidx133, align 8, !tbaa !1
  %tobool134 = icmp ne i8* %152, null
  br i1 %tobool134, label %if.then.135, label %if.end.139

if.then.135:                                      ; preds = %for.body.130
  %153 = load i32, i32* %raster, align 4, !tbaa !5
  %154 = load i32, i32* %lines_rasterized, align 4, !tbaa !5
  %mul = mul i32 %153, %154
  %155 = load i32, i32* %i126, align 4, !tbaa !5
  %idxprom136 = sext i32 %155 to i64
  %data137 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %band_params105, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data137, i32 0, i64 %idxprom136
  %156 = load i8*, i8** %arrayidx138, align 8, !tbaa !1
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %156, i64 %idx.ext
  store i8* %add.ptr, i8** %arrayidx138, align 8, !tbaa !1
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.135, %for.body.130
  br label %for.inc.140

for.inc.140:                                      ; preds = %if.end.139
  %157 = load i32, i32* %i126, align 4, !tbaa !5
  %inc141 = add nsw i32 %157, 1
  store i32 %inc141, i32* %i126, align 4, !tbaa !5
  br label %for.cond.127

for.end.142:                                      ; preds = %for.cond.127
  %158 = load i32, i32* %end_y, align 4, !tbaa !5
  %159 = load i32, i32* %y, align 4, !tbaa !5
  %sub143 = sub nsw i32 %158, %159
  store i32 %sub143, i32* %line_count, align 4, !tbaa !5
  %160 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %161 = load i32, i32* %y, align 4, !tbaa !5
  %162 = load i32, i32* %line_count, align 4, !tbaa !5
  %163 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %call144 = call i32 @clist_rasterize_lines(%struct.gx_device_s* %160, i32 %161, i32 %162, %struct.gx_device_s* %163, %struct.gx_render_plane_s* %render_plane, i32* %my) #4
  store i32 %call144, i32* %code, align 4, !tbaa !5
  %164 = load i32, i32* %code, align 4, !tbaa !5
  %cmp145 = icmp slt i32 %164, 0
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %for.end.142
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.173

if.end.148:                                       ; preds = %for.end.142
  %165 = load i32, i32* %code, align 4, !tbaa !5
  %166 = load i32, i32* %line_count, align 4, !tbaa !5
  %cmp149 = icmp slt i32 %165, %166
  br i1 %cmp149, label %cond.true.151, label %cond.false.152

cond.true.151:                                    ; preds = %if.end.148
  %167 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.153

cond.false.152:                                   ; preds = %if.end.148
  %168 = load i32, i32* %line_count, align 4, !tbaa !5
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.152, %cond.true.151
  %cond154 = phi i32 [ %167, %cond.true.151 ], [ %168, %cond.false.152 ]
  store i32 %cond154, i32* %lines_rasterized, align 4, !tbaa !5
  %169 = load i32, i32* %my, align 4, !tbaa !5
  %p155 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 0
  %y156 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p155, i32 0, i32 1
  store i32 %169, i32* %y156, align 4, !tbaa !93
  %170 = load i32, i32* %my, align 4, !tbaa !5
  %171 = load i32, i32* %lines_rasterized, align 4, !tbaa !5
  %add157 = add nsw i32 %170, %171
  %q158 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 1
  %y159 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q158, i32 0, i32 1
  store i32 %add157, i32* %y159, align 4, !tbaa !94
  %172 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %procs160 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %172, i32 0, i32 42
  %get_bits_rectangle161 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs160, i32 0, i32 38
  %173 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle161, align 8, !tbaa !108
  %174 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  %175 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call162 = call i32 %173(%struct.gx_device_s* %174, %struct.gs_int_rect_s* %band_rect, %struct.gs_get_bits_params_s* %band_params105, %struct.gs_int_rect_s** %175) #4
  store i32 %call162, i32* %code, align 4, !tbaa !5
  %176 = load i32, i32* %code, align 4, !tbaa !5
  %cmp163 = icmp slt i32 %176, 0
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %cond.end.153
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.173

if.end.166:                                       ; preds = %cond.end.153
  %options167 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %band_params105, i32 0, i32 0
  %177 = load i64, i64* %options167, align 8, !tbaa !91
  store i64 %177, i64* %options, align 8, !tbaa !46
  %178 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options168 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %178, i32 0, i32 0
  store i64 %177, i64* %options168, align 8, !tbaa !91
  %179 = load i32, i32* %lines_rasterized, align 4, !tbaa !5
  %180 = load i32, i32* %line_count, align 4, !tbaa !5
  %cmp169 = icmp eq i32 %179, %180
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.end.166
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.173

if.end.172:                                       ; preds = %if.end.166
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.173

cleanup.173:                                      ; preds = %if.end.172, %if.then.171, %if.then.165, %if.then.147
  %181 = bitcast i32* %i126 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %cleanup.dest.174 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.174, label %unreachable [
    i32 0, label %cleanup.cont.175
    i32 6, label %while.end
  ]

cleanup.cont.175:                                 ; preds = %cleanup.173
  br label %while.cond

while.end:                                        ; preds = %cleanup.173, %while.cond
  %182 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %buf_procs176 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %182, i32 0, i32 44
  %destroy_buf_device177 = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs176, i32 0, i32 3
  %183 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %destroy_buf_device177, align 8, !tbaa !109
  %184 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !1
  call void %183(%struct.gx_device_s* %184) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.178

cleanup.178:                                      ; preds = %while.end, %if.then.121
  %185 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast %struct.gs_get_bits_params_s* %band_params105 to i8*
  call void @llvm.lifetime.end(i64 536, i8* %186) #1
  %cleanup.dest.180 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.180, label %cleanup.182 [
    i32 0, label %cleanup.cont.181
  ]

cleanup.cont.181:                                 ; preds = %cleanup.178
  %187 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %187, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.182

cleanup.182:                                      ; preds = %cleanup.cont.181, %cleanup.178, %if.then.94, %if.then.87, %if.then.68, %if.then.63, %if.then.56, %cleanup, %if.then.38, %if.then
  %188 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %my to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %plane_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast %struct.gx_render_plane_s* %render_plane to i8*
  call void @llvm.lifetime.end(i64 12, i8* %191) #1
  %192 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast %struct.gx_device_s** %bdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast i32* %lines_rasterized to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast %struct.gs_int_rect_s* %band_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %195) #1
  %196 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %end_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i64* %options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %200 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = load i32, i32* %retval
  ret i32 %203

unreachable:                                      ; preds = %cleanup.173
  unreachable
}

declare i32 @gx_default_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #2

declare i32 @gdev_create_buf_device(i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, %struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*) #2

; Function Attrs: nounwind uwtable
define i32 @clist_rasterize_lines(%struct.gx_device_s* %dev, i32 %y, i32 %line_count, %struct.gx_device_s* %bdev, %struct.gx_render_plane_s* %render_plane, i32* %pmy) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %line_count.addr = alloca i32, align 4
  %bdev.addr = alloca %struct.gx_device_s*, align 8
  %render_plane.addr = alloca %struct.gx_render_plane_s*, align 8
  %pmy.addr = alloca i32*, align 8
  %cldev = alloca %union.gx_device_clist_s*, align 8
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %target = alloca %struct.gx_device_s*, align 8
  %raster = alloca i32, align 4
  %mdata = alloca i8*, align 8
  %mlines = alloca i8*, align 8
  %plane_index = alloca i32, align 4
  %code = alloca i32, align 4
  %band_height = alloca i32, align 4
  %band = alloca i32, align 4
  %band_begin_line = alloca i32, align 4
  %band_end_line = alloca i32, align 4
  %band_num_lines = alloca i32, align 4
  %band_rect = alloca %struct.gs_int_rect_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %line_count, i32* %line_count.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %bdev, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  store %struct.gx_render_plane_s* %render_plane, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  store i32* %pmy, i32** %pmy.addr, align 8, !tbaa !1
  %0 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %2, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %4 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %reader, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %6, i32 0, i32 43
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %target1, align 8, !tbaa !111
  store %struct.gx_device_s* %7, %struct.gx_device_s** %target, align 8, !tbaa !1
  %8 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %10 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %call = call i32 @clist_plane_raster(%struct.gx_device_s* %9, %struct.gx_render_plane_s* %10) #4
  store i32 %call, i32* %raster, align 4, !tbaa !5
  %11 = bitcast i8** %mdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %12, i32 0, i32 46
  %13 = load i8*, i8** %data, align 8, !tbaa !112
  %14 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %14, i32 0, i32 58
  %tile_cache_size = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 5
  %15 = load i32, i32* %tile_cache_size, align 4, !tbaa !113
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %mdata, align 8, !tbaa !1
  %16 = bitcast i8** %mlines to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info2 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %17, i32 0, i32 58
  %line_ptrs_offset = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info2, i32 0, i32 6
  %18 = load i64, i64* %line_ptrs_offset, align 8, !tbaa !114
  %cmp = icmp eq i64 %18, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %19 = load i8*, i8** %mdata, align 8, !tbaa !1
  %20 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info3 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %20, i32 0, i32 58
  %line_ptrs_offset4 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info3, i32 0, i32 6
  %21 = load i64, i64* %line_ptrs_offset4, align 8, !tbaa !114
  %add.ptr5 = getelementptr inbounds i8, i8* %19, i64 %21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %add.ptr5, %cond.false ]
  store i8* %cond, i8** %mlines, align 8, !tbaa !1
  %22 = bitcast i32* %plane_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_render_plane_s* %23, null
  br i1 %tobool, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end
  %24 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %24, i32 0, i32 2
  %25 = load i32, i32* %index, align 4, !tbaa !12
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.6
  %cond9 = phi i32 [ %25, %cond.true.6 ], [ -1, %cond.false.7 ]
  store i32 %cond9, i32* %plane_index, align 4, !tbaa !5
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %27, i32 0, i32 56
  %28 = load i32, i32* %ymin, align 4, !tbaa !30
  %cmp10 = icmp slt i32 %28, 0
  br i1 %cmp10, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.8
  %29 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %yplane = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %29, i32 0, i32 65
  %index11 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %yplane, i32 0, i32 2
  %30 = load i32, i32* %index11, align 4, !tbaa !31
  %31 = load i32, i32* %plane_index, align 4, !tbaa !5
  %cmp12 = icmp ne i32 %30, %31
  br i1 %cmp12, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %32 = load i32, i32* %y.addr, align 4, !tbaa !5
  %33 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymin14 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %33, i32 0, i32 56
  %34 = load i32, i32* %ymin14, align 4, !tbaa !30
  %cmp15 = icmp sge i32 %32, %34
  br i1 %cmp15, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %lor.lhs.false.13
  %35 = load i32, i32* %y.addr, align 4, !tbaa !5
  %36 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %36, i32 0, i32 57
  %37 = load i32, i32* %ymax, align 4, !tbaa !14
  %cmp16 = icmp slt i32 %35, %37
  br i1 %cmp16, label %if.end.52, label %if.then

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false.13, %lor.lhs.false, %cond.end.8
  %38 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info17 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %39, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info17, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %40 = load i32, i32* %BandHeight, align 4, !tbaa !106
  store i32 %40, i32* %band_height, align 4, !tbaa !5
  %41 = bitcast i32* %band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load i32, i32* %y.addr, align 4, !tbaa !5
  %43 = load i32, i32* %band_height, align 4, !tbaa !5
  %div = sdiv i32 %42, %43
  store i32 %div, i32* %band, align 4, !tbaa !5
  %44 = bitcast i32* %band_begin_line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load i32, i32* %band, align 4, !tbaa !5
  %46 = load i32, i32* %band_height, align 4, !tbaa !5
  %mul = mul nsw i32 %45, %46
  store i32 %mul, i32* %band_begin_line, align 4, !tbaa !5
  %47 = bitcast i32* %band_end_line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load i32, i32* %band_begin_line, align 4, !tbaa !5
  %49 = load i32, i32* %band_height, align 4, !tbaa !5
  %add = add nsw i32 %48, %49
  store i32 %add, i32* %band_end_line, align 4, !tbaa !5
  %50 = bitcast i32* %band_num_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = bitcast %struct.gs_int_rect_s* %band_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %51) #1
  %52 = load i32, i32* %band_end_line, align 4, !tbaa !5
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %53, i32 0, i32 14
  %54 = load i32, i32* %height, align 4, !tbaa !101
  %cmp18 = icmp sgt i32 %52, %54
  br i1 %cmp18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 14
  %56 = load i32, i32* %height20, align 4, !tbaa !101
  store i32 %56, i32* %band_end_line, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.then
  %57 = load i32, i32* %line_count.addr, align 4, !tbaa !5
  %58 = load i32, i32* %band_end_line, align 4, !tbaa !5
  %59 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %58, %59
  %cmp21 = icmp sgt i32 %57, %sub
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end
  %60 = load i32, i32* %band_end_line, align 4, !tbaa !5
  %61 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub23 = sub nsw i32 %60, %61
  store i32 %sub23, i32* %line_count.addr, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end
  %62 = load i32, i32* %band_end_line, align 4, !tbaa !5
  %63 = load i32, i32* %band_begin_line, align 4, !tbaa !5
  %sub25 = sub nsw i32 %62, %63
  store i32 %sub25, i32* %band_num_lines, align 4, !tbaa !5
  %64 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %64, 0
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.end.24
  %65 = load i32, i32* %y.addr, align 4, !tbaa !5
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %66, i32 0, i32 14
  %67 = load i32, i32* %height28, align 4, !tbaa !101
  %cmp29 = icmp sgt i32 %65, %67
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.27, %if.end.24
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %lor.lhs.false.27
  %68 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %buf_procs = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %68, i32 0, i32 44
  %setup_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs, i32 0, i32 2
  %69 = load i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)** %setup_buf_device, align 8, !tbaa !115
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %71 = load i8*, i8** %mdata, align 8, !tbaa !1
  %72 = load i32, i32* %raster, align 4, !tbaa !5
  %73 = load i8*, i8** %mlines, align 8, !tbaa !1
  %74 = bitcast i8* %73 to i8**
  %75 = load i32, i32* %band_num_lines, align 4, !tbaa !5
  %76 = load i32, i32* %band_num_lines, align 4, !tbaa !5
  %call32 = call i32 %69(%struct.gx_device_s* %70, i8* %71, i32 %72, i8** %74, i32 0, i32 %75, i32 %76) #4
  store i32 %call32, i32* %code, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !98
  %77 = load i32, i32* %band_begin_line, align 4, !tbaa !5
  %p33 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 0
  %y34 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p33, i32 0, i32 1
  store i32 %77, i32* %y34, align 4, !tbaa !93
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %78, i32 0, i32 13
  %79 = load i32, i32* %width, align 4, !tbaa !100
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 1
  %x35 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %79, i32* %x35, align 4, !tbaa !99
  %80 = load i32, i32* %band_end_line, align 4, !tbaa !5
  %q36 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %band_rect, i32 0, i32 1
  %y37 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q36, i32 0, i32 1
  store i32 %80, i32* %y37, align 4, !tbaa !94
  %81 = load i32, i32* %code, align 4, !tbaa !5
  %cmp38 = icmp sge i32 %81, 0
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.31
  %82 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %84 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %call40 = call i32 @clist_render_rectangle(%union.gx_device_clist_s* %82, %struct.gs_int_rect_s* %band_rect, %struct.gx_device_s* %83, %struct.gx_render_plane_s* %84, i32 1) #4
  store i32 %call40, i32* %code, align 4, !tbaa !5
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.31
  %85 = load i32, i32* %band_begin_line, align 4, !tbaa !5
  %86 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymin42 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %86, i32 0, i32 56
  store i32 %85, i32* %ymin42, align 4, !tbaa !30
  %87 = load i32, i32* %band_end_line, align 4, !tbaa !5
  %88 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymax43 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %88, i32 0, i32 57
  store i32 %87, i32* %ymax43, align 4, !tbaa !14
  %89 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %offset_map = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %89, i32 0, i32 69
  store i8* null, i8** %offset_map, align 8, !tbaa !34
  %90 = load i32, i32* %code, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %90, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.41
  %91 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %91, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %if.end.41
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.46, %if.then.45, %if.then.30
  %92 = bitcast %struct.gs_int_rect_s* %band_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %92) #1
  %93 = bitcast i32* %band_num_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %band_end_line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %band_begin_line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.71 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.52

if.end.52:                                        ; preds = %cleanup.cont, %land.lhs.true
  %98 = load i32, i32* %line_count.addr, align 4, !tbaa !5
  %99 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymax53 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %99, i32 0, i32 57
  %100 = load i32, i32* %ymax53, align 4, !tbaa !14
  %101 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub54 = sub nsw i32 %100, %101
  %cmp55 = icmp sgt i32 %98, %sub54
  br i1 %cmp55, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %if.end.52
  %102 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymax57 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %102, i32 0, i32 57
  %103 = load i32, i32* %ymax57, align 4, !tbaa !14
  %104 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub58 = sub nsw i32 %103, %104
  store i32 %sub58, i32* %line_count.addr, align 4, !tbaa !5
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %if.end.52
  %105 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %buf_procs60 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %105, i32 0, i32 44
  %setup_buf_device61 = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs60, i32 0, i32 2
  %106 = load i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)** %setup_buf_device61, align 8, !tbaa !115
  %107 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %108 = load i8*, i8** %mdata, align 8, !tbaa !1
  %109 = load i32, i32* %raster, align 4, !tbaa !5
  %110 = load i8*, i8** %mlines, align 8, !tbaa !1
  %111 = bitcast i8* %110 to i8**
  %112 = load i32, i32* %y.addr, align 4, !tbaa !5
  %113 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymin62 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %113, i32 0, i32 56
  %114 = load i32, i32* %ymin62, align 4, !tbaa !30
  %sub63 = sub nsw i32 %112, %114
  %115 = load i32, i32* %line_count.addr, align 4, !tbaa !5
  %116 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymax64 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %116, i32 0, i32 57
  %117 = load i32, i32* %ymax64, align 4, !tbaa !14
  %118 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymin65 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %118, i32 0, i32 56
  %119 = load i32, i32* %ymin65, align 4, !tbaa !30
  %sub66 = sub nsw i32 %117, %119
  %call67 = call i32 %106(%struct.gx_device_s* %107, i8* %108, i32 %109, i8** %111, i32 %sub63, i32 %115, i32 %sub66) #4
  store i32 %call67, i32* %code, align 4, !tbaa !5
  %120 = load i32, i32* %code, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %120, 0
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.59
  %121 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %121, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.71

if.end.70:                                        ; preds = %if.end.59
  %122 = load i32*, i32** %pmy.addr, align 8, !tbaa !1
  store i32 0, i32* %122, align 4, !tbaa !5
  %123 = load i32, i32* %line_count.addr, align 4, !tbaa !5
  store i32 %123, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.71

cleanup.71:                                       ; preds = %if.end.70, %if.then.69, %cleanup
  %124 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %plane_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i8** %mlines to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast i8** %mdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast %struct.gx_device_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = load i32, i32* %retval
  ret i32 %132
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @clist_plane_raster(%struct.gx_device_s* %dev, %struct.gx_render_plane_s* %render_plane) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %render_plane.addr = alloca %struct.gx_render_plane_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_render_plane_s* %render_plane, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %call = call i32 @gx_device_raster_plane(%struct.gx_device_s* %0, %struct.gx_render_plane_s* %1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @clist_render_rectangle(%union.gx_device_clist_s* %cldev, %struct.gs_int_rect_s* %prect, %struct.gx_device_s* %bdev, %struct.gx_render_plane_s* %render_plane, i32 %clear) #0 {
entry:
  %cldev.addr = alloca %union.gx_device_clist_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %bdev.addr = alloca %struct.gx_device_s*, align 8
  %render_plane.addr = alloca %struct.gx_render_plane_s*, align 8
  %clear.addr = alloca i32, align 4
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %ppages = alloca %struct.gx_placed_page_s*, align 8
  %num_pages = alloca i32, align 4
  %band_height = alloca i32, align 4
  %band_first = alloca i32, align 4
  %band_last = alloca i32, align 4
  %pinfo = alloca %struct.gx_band_page_info_s*, align 8
  %page_info4 = alloca %struct.gx_band_page_info_s, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %save_pageneutralcolor = alloca i32, align 4
  %pdf14_needed = alloca i32, align 4
  %band = alloca i32, align 4
  %ppage = alloca %struct.gx_placed_page_s*, align 8
  store %union.gx_device_clist_s* %cldev, %union.gx_device_clist_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %bdev, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  store %struct.gx_render_plane_s* %render_plane, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  store i32 %clear, i32* %clear.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev.addr, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %1 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %reader, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %2 = bitcast %struct.gx_placed_page_s** %ppages to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %num_pages to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_pages1 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %4, i32 0, i32 68
  %5 = load i32, i32* %num_pages1, align 4, !tbaa !33
  store i32 %5, i32* %num_pages, align 4, !tbaa !5
  %6 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %7, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %8 = load i32, i32* %BandHeight, align 4, !tbaa !106
  store i32 %8, i32* %band_height, align 4, !tbaa !5
  %9 = bitcast i32* %band_first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %10, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 1
  %11 = load i32, i32* %y, align 4, !tbaa !93
  %12 = load i32, i32* %band_height, align 4, !tbaa !5
  %div = sdiv i32 %11, %12
  store i32 %div, i32* %band_first, align 4, !tbaa !5
  %13 = bitcast i32* %band_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %14, i32 0, i32 1
  %y2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 1
  %15 = load i32, i32* %y2, align 4, !tbaa !94
  %sub = sub nsw i32 %15, 1
  %16 = load i32, i32* %band_height, align 4, !tbaa !5
  %div3 = sdiv i32 %sub, %16
  store i32 %div3, i32* %band_last, align 4, !tbaa !5
  %17 = bitcast %struct.gx_band_page_info_s** %pinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast %struct.gx_band_page_info_s* %page_info4 to i8*
  call void @llvm.lifetime.start(i64 8256, i8* %18) #1
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %save_pageneutralcolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_render_plane_s* %22, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %23 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %yplane = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %23, i32 0, i32 65
  %24 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_render_plane_s* %yplane to i8*
  %26 = bitcast %struct.gx_render_plane_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 12, i32 4, i1 false), !tbaa.struct !116
  br label %if.end

if.else:                                          ; preds = %entry
  %27 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %yplane5 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %27, i32 0, i32 65
  %index = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %yplane5, i32 0, i32 2
  store i32 -1, i32* %index, align 4, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %28 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %28, i32 0, i32 66
  %29 = load %struct.gx_placed_page_s*, %struct.gx_placed_page_s** %pages, align 8, !tbaa !32
  store %struct.gx_placed_page_s* %29, %struct.gx_placed_page_s** %ppages, align 8, !tbaa !1
  %30 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %30, i32 0, i32 39
  %31 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !117
  %pageneutralcolor = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %31, i32 0, i32 7
  %32 = load i32, i32* %pageneutralcolor, align 4, !tbaa !118
  store i32 %32, i32* %save_pageneutralcolor, align 4, !tbaa !5
  %33 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_struct6 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %33, i32 0, i32 39
  %34 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct6, align 8, !tbaa !117
  %pageneutralcolor7 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %34, i32 0, i32 7
  store i32 0, i32* %pageneutralcolor7, align 4, !tbaa !118
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.64, %do.end
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %36 = load i32, i32* %num_pages, align 4, !tbaa !5
  %cmp = icmp slt i32 %35, %36
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp sge i32 %37, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %38 = phi i1 [ false, %for.cond ], [ %cmp8, %land.rhs ]
  br i1 %38, label %for.body, label %for.end.66

for.body:                                         ; preds = %land.end
  %39 = bitcast i32* %pdf14_needed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 0, i32* %pdf14_needed, align 4, !tbaa !5
  %40 = bitcast i32* %band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load %struct.gx_placed_page_s*, %struct.gx_placed_page_s** %ppages, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.gx_placed_page_s* %41, null
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %for.body
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %band_offset_x = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 33
  store i64 0, i64* %band_offset_x, align 8, !tbaa !120
  %43 = load i32, i32* %band_first, align 4, !tbaa !5
  %44 = load i32, i32* %band_height, align 4, !tbaa !5
  %mul = mul nsw i32 %43, %44
  %conv = sext i32 %mul to i64
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %band_offset_y = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 34
  store i64 %conv, i64* %band_offset_y, align 8, !tbaa !121
  %46 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info11 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %46, i32 0, i32 58
  store %struct.gx_band_page_info_s* %page_info11, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  br label %if.end.36

if.else.12:                                       ; preds = %for.body
  %47 = bitcast %struct.gx_placed_page_s** %ppage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %48 to i64
  %49 = load %struct.gx_placed_page_s*, %struct.gx_placed_page_s** %ppages, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %49, i64 %idxprom
  store %struct.gx_placed_page_s* %arrayidx, %struct.gx_placed_page_s** %ppage, align 8, !tbaa !1
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info4, i32 0, i32 3
  store i8* null, i8** %bfile, align 8, !tbaa !75
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info4, i32 0, i32 1
  store i8* null, i8** %cfile, align 8, !tbaa !122
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info4, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %50 = load %struct.gx_placed_page_s*, %struct.gx_placed_page_s** %ppage, align 8, !tbaa !1
  %page = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %50, i32 0, i32 0
  %51 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page, align 8, !tbaa !123
  %cfname13 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %51, i32 0, i32 2
  %arraydecay14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname13, i32 0, i32 0
  %call = call i8* @strncpy(i8* %arraydecay, i8* %arraydecay14, i64 4096) #5
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info4, i32 0, i32 2
  %arraydecay15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  %52 = load %struct.gx_placed_page_s*, %struct.gx_placed_page_s** %ppage, align 8, !tbaa !1
  %page16 = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %52, i32 0, i32 0
  %53 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page16, align 8, !tbaa !123
  %bfname17 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %53, i32 0, i32 3
  %arraydecay18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname17, i32 0, i32 0
  %call19 = call i8* @strncpy(i8* %arraydecay15, i8* %arraydecay18, i64 4096) #5
  %54 = load %struct.gx_placed_page_s*, %struct.gx_placed_page_s** %ppage, align 8, !tbaa !1
  %page20 = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %54, i32 0, i32 0
  %55 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page20, align 8, !tbaa !123
  %io_procs = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %55, i32 0, i32 4
  %56 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !125
  %io_procs21 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info4, i32 0, i32 4
  store %struct.clist_io_procs_s* %56, %struct.clist_io_procs_s** %io_procs21, align 8, !tbaa !77
  %57 = load %struct.gx_placed_page_s*, %struct.gx_placed_page_s** %ppage, align 8, !tbaa !1
  %page22 = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %57, i32 0, i32 0
  %58 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page22, align 8, !tbaa !123
  %tile_cache_size = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %58, i32 0, i32 5
  %59 = load i32, i32* %tile_cache_size, align 4, !tbaa !127
  %tile_cache_size23 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info4, i32 0, i32 5
  store i32 %59, i32* %tile_cache_size23, align 4, !tbaa !128
  %60 = load %struct.gx_placed_page_s*, %struct.gx_placed_page_s** %ppage, align 8, !tbaa !1
  %page24 = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %60, i32 0, i32 0
  %61 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page24, align 8, !tbaa !123
  %bfile_end_pos = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %61, i32 0, i32 6
  %62 = load i64, i64* %bfile_end_pos, align 8, !tbaa !129
  %bfile_end_pos25 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info4, i32 0, i32 7
  store i64 %62, i64* %bfile_end_pos25, align 8, !tbaa !76
  %band_params26 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info4, i32 0, i32 8
  %63 = load %struct.gx_placed_page_s*, %struct.gx_placed_page_s** %ppage, align 8, !tbaa !1
  %page27 = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %63, i32 0, i32 0
  %64 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page27, align 8, !tbaa !123
  %band_params28 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %64, i32 0, i32 7
  %65 = bitcast %struct.gx_band_params_s* %band_params26 to i8*
  %66 = bitcast %struct.gx_band_params_s* %band_params28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 16, i32 8, i1 false), !tbaa.struct !130
  store %struct.gx_band_page_info_s* %page_info4, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %67 = load %struct.gx_placed_page_s*, %struct.gx_placed_page_s** %ppage, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %67, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset, i32 0, i32 0
  %68 = load i32, i32* %x, align 4, !tbaa !131
  %conv29 = sext i32 %68 to i64
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %band_offset_x30 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %69, i32 0, i32 33
  store i64 %conv29, i64* %band_offset_x30, align 8, !tbaa !120
  %70 = load %struct.gx_placed_page_s*, %struct.gx_placed_page_s** %ppage, align 8, !tbaa !1
  %offset31 = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %70, i32 0, i32 1
  %y32 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset31, i32 0, i32 1
  %71 = load i32, i32* %y32, align 4, !tbaa !132
  %72 = load i32, i32* %band_first, align 4, !tbaa !5
  %73 = load i32, i32* %band_height, align 4, !tbaa !5
  %mul33 = mul nsw i32 %72, %73
  %add = add nsw i32 %71, %mul33
  %conv34 = sext i32 %add to i64
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %band_offset_y35 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %74, i32 0, i32 34
  store i64 %conv34, i64* %band_offset_y35, align 8, !tbaa !121
  %75 = bitcast %struct.gx_placed_page_s** %ppage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.12, %if.then.10
  %76 = load i32, i32* %band_first, align 4, !tbaa !5
  store i32 %76, i32* %band, align 4, !tbaa !5
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc, %if.end.36
  %77 = load i32, i32* %band, align 4, !tbaa !5
  %78 = load i32, i32* %band_last, align 4, !tbaa !5
  %cmp38 = icmp sle i32 %77, %78
  br i1 %cmp38, label %for.body.40, label %for.end

for.body.40:                                      ; preds = %for.cond.37
  %79 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom41 = sext i32 %79 to i64
  %80 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %color_usage_array = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %80, i32 0, i32 67
  %81 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !36
  %arrayidx42 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %81, i64 %idxprom41
  %trans_bbox = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %arrayidx42, i32 0, i32 2
  %p43 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox, i32 0, i32 0
  %y44 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p43, i32 0, i32 1
  %82 = load i32, i32* %y44, align 4, !tbaa !133
  %83 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom45 = sext i32 %83 to i64
  %84 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %color_usage_array46 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %84, i32 0, i32 67
  %85 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array46, align 8, !tbaa !36
  %arrayidx47 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %85, i64 %idxprom45
  %trans_bbox48 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %arrayidx47, i32 0, i32 2
  %q49 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox48, i32 0, i32 1
  %y50 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q49, i32 0, i32 1
  %86 = load i32, i32* %y50, align 4, !tbaa !134
  %cmp51 = icmp sle i32 %82, %86
  %cond = select i1 %cmp51, i32 1, i32 0
  %87 = load i32, i32* %pdf14_needed, align 4, !tbaa !5
  %or = or i32 %87, %cond
  store i32 %or, i32* %pdf14_needed, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body.40
  %88 = load i32, i32* %band, align 4, !tbaa !5
  %inc = add nsw i32 %88, 1
  store i32 %inc, i32* %band, align 4, !tbaa !5
  br label %for.cond.37

for.end:                                          ; preds = %for.cond.37
  %89 = load i32, i32* %pdf14_needed, align 4, !tbaa !5
  %tobool53 = icmp ne i32 %89, 0
  %cond54 = select i1 %tobool53, i32 0, i32 1
  %90 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %91 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %93 = load i32, i32* %band_first, align 4, !tbaa !5
  %94 = load i32, i32* %band_last, align 4, !tbaa !5
  %95 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p55 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %95, i32 0, i32 0
  %x56 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p55, i32 0, i32 0
  %96 = load i32, i32* %x56, align 4, !tbaa !98
  %conv57 = sext i32 %96 to i64
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %band_offset_x58 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %97, i32 0, i32 33
  %98 = load i64, i64* %band_offset_x58, align 8, !tbaa !120
  %sub59 = sub nsw i64 %conv57, %98
  %conv60 = trunc i64 %sub59 to i32
  %99 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p61 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %99, i32 0, i32 0
  %y62 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p61, i32 0, i32 1
  %100 = load i32, i32* %y62, align 4, !tbaa !93
  %call63 = call i32 @clist_playback_file_bands(i32 %cond54, %struct.gx_device_clist_reader_s* %90, %struct.gx_band_page_info_s* %91, %struct.gx_device_s* %92, i32 %93, i32 %94, i32 %conv60, i32 %100) #4
  store i32 %call63, i32* %code, align 4, !tbaa !5
  %101 = bitcast i32* %band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %pdf14_needed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.end
  %103 = load i32, i32* %i, align 4, !tbaa !5
  %inc65 = add nsw i32 %103, 1
  store i32 %inc65, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.66:                                       ; preds = %land.end
  %104 = load i32, i32* %save_pageneutralcolor, align 4, !tbaa !5
  %105 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_struct67 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %105, i32 0, i32 39
  %106 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct67, align 8, !tbaa !117
  %pageneutralcolor68 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %106, i32 0, i32 7
  store i32 %104, i32* %pageneutralcolor68, align 4, !tbaa !118
  %107 = load i32, i32* %code, align 4, !tbaa !5
  %108 = bitcast i32* %save_pageneutralcolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast %struct.gx_band_page_info_s* %page_info4 to i8*
  call void @llvm.lifetime.end(i64 8256, i8* %111) #1
  %112 = bitcast %struct.gx_band_page_info_s** %pinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast i32* %band_last to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %band_first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %num_pages to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast %struct.gx_placed_page_s** %ppages to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare void @s_init_state(%struct.stream_state_s*, %struct.stream_template_s*, %struct.gs_memory_s*) #2

declare i32 @s_std_noavailable(%struct.stream_s*, i64*) #2

declare i32 @s_std_noseek(%struct.stream_s*, i64) #2

declare void @s_std_read_reset(%struct.stream_s*) #2

declare i32 @s_std_read_flush(%struct.stream_s*) #2

declare i32 @s_std_close(%struct.stream_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_band_read_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %ignore_pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ignore_pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_band_read_state_s*, align 8
  %q = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %cfile = alloca i8*, align 8
  %bfile = alloca i8*, align 8
  %left = alloca i32, align 4
  %status = alloca i32, align 4
  %count = alloca i32, align 4
  %io_procs = alloca %struct.clist_io_procs_s*, align 8
  %bmin = alloca i32, align 4
  %bmax = alloca i32, align 4
  %pos = alloca i64, align 8
  %nread = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %ignore_pr, %struct.stream_cursor_read_s** %ignore_pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_band_read_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_band_read_state_s*
  store %struct.stream_band_read_state_s* %2, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %ptr, align 8, !tbaa !135
  store i8* %5, i8** %q, align 8, !tbaa !1
  %6 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %7, i32 0, i32 2
  %8 = load i8*, i8** %limit, align 8, !tbaa !137
  store i8* %8, i8** %wlimit, align 8, !tbaa !1
  %9 = bitcast i8** %cfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %10, i32 0, i32 5
  %cfile1 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 1
  %11 = load i8*, i8** %cfile1, align 8, !tbaa !48
  store i8* %11, i8** %cfile, align 8, !tbaa !1
  %12 = bitcast i8** %bfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %page_info2 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %13, i32 0, i32 5
  %bfile3 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info2, i32 0, i32 3
  %14 = load i8*, i8** %bfile3, align 8, !tbaa !53
  store i8* %14, i8** %bfile, align 8, !tbaa !1
  %15 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %left4 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %16, i32 0, i32 8
  %17 = load i32, i32* %left4, align 4, !tbaa !138
  store i32 %17, i32* %left, align 4, !tbaa !5
  %18 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 1, i32* %status, align 4, !tbaa !5
  %19 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast %struct.clist_io_procs_s** %io_procs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %page_info5 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %21, i32 0, i32 5
  %io_procs6 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info5, i32 0, i32 4
  %22 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs6, align 8, !tbaa !139
  store %struct.clist_io_procs_s* %22, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %do.end, %entry
  %23 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %24 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %count, align 4, !tbaa !5
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load i32, i32* %left, align 4, !tbaa !5
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %while.body
  %26 = load i32, i32* %count, align 4, !tbaa !5
  %27 = load i32, i32* %left, align 4, !tbaa !5
  %cmp8 = icmp ugt i32 %26, %27
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %28 = load i32, i32* %left, align 4, !tbaa !5
  store i32 %28, i32* %count, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %29 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !1
  %fread_chars = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %29, i32 0, i32 4
  %30 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %fread_chars, align 8, !tbaa !74
  %31 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i32, i32* %count, align 4, !tbaa !5
  %33 = load i8*, i8** %cfile, align 8, !tbaa !1
  %call = call i32 %30(i8* %add.ptr, i32 %32, i8* %33) #4
  %34 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !1
  %ferror_code = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %34, i32 0, i32 6
  %35 = load i32 (i8*)*, i32 (i8*)** %ferror_code, align 8, !tbaa !140
  %36 = load i8*, i8** %cfile, align 8, !tbaa !1
  %call11 = call i32 %35(i8* %36) #4
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i32 -2, i32* %status, align 4, !tbaa !5
  br label %while.end

if.end.15:                                        ; preds = %if.end
  %37 = load i32, i32* %count, align 4, !tbaa !5
  %38 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext = zext i32 %37 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %38, i64 %idx.ext
  store i8* %add.ptr16, i8** %q, align 8, !tbaa !1
  %39 = load i32, i32* %count, align 4, !tbaa !5
  %40 = load i32, i32* %left, align 4, !tbaa !5
  %sub = sub i32 %40, %39
  store i32 %sub, i32* %left, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.end.15
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

if.end.17:                                        ; preds = %while.body
  br label %rb

rb:                                               ; preds = %cleanup, %if.end.17
  %41 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %b_this = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %41, i32 0, i32 9
  %band_min = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %b_this, i32 0, i32 0
  %42 = load i32, i32* %band_min, align 4, !tbaa !141
  %cmp18 = icmp eq i32 %42, -1
  br i1 %cmp18, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %rb
  %43 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !1
  %ftell = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %43, i32 0, i32 7
  %44 = load i64 (i8*)*, i64 (i8*)** %ftell, align 8, !tbaa !72
  %45 = load i8*, i8** %bfile, align 8, !tbaa !1
  %call20 = call i64 %44(i8* %45) #4
  %46 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %page_info21 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %46, i32 0, i32 5
  %bfile_end_pos = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info21, i32 0, i32 7
  %47 = load i64, i64* %bfile_end_pos, align 8, !tbaa !142
  %cmp22 = icmp eq i64 %call20, %47
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %status, align 4, !tbaa !5
  br label %while.end

if.end.25:                                        ; preds = %land.lhs.true, %rb
  %48 = bitcast i32* %bmin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %b_this26 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %49, i32 0, i32 9
  %band_min27 = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %b_this26, i32 0, i32 0
  %50 = load i32, i32* %band_min27, align 4, !tbaa !141
  store i32 %50, i32* %bmin, align 4, !tbaa !5
  %51 = bitcast i32* %bmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %b_this28 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %52, i32 0, i32 9
  %band_max = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %b_this28, i32 0, i32 1
  %53 = load i32, i32* %band_max, align 4, !tbaa !143
  store i32 %53, i32* %bmax, align 4, !tbaa !5
  %54 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %b_this29 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %55, i32 0, i32 9
  %pos30 = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %b_this29, i32 0, i32 2
  %56 = load i64, i64* %pos30, align 8, !tbaa !144
  store i64 %56, i64* %pos, align 8, !tbaa !46
  %57 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !1
  %fread_chars31 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %58, i32 0, i32 4
  %59 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %fread_chars31, align 8, !tbaa !74
  %60 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %b_this32 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %60, i32 0, i32 9
  %61 = bitcast %struct.cmd_block_s* %b_this32 to i8*
  %62 = load i8*, i8** %bfile, align 8, !tbaa !1
  %call33 = call i32 %59(i8* %61, i32 16, i8* %62) #4
  store i32 %call33, i32* %nread, align 4, !tbaa !5
  %63 = load i32, i32* %nread, align 4, !tbaa !5
  %conv34 = sext i32 %63 to i64
  %cmp35 = icmp ult i64 %conv34, 16
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.25
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.end.25
  %64 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %band_last = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %64, i32 0, i32 7
  %65 = load i32, i32* %band_last, align 4, !tbaa !44
  %66 = load i32, i32* %bmin, align 4, !tbaa !5
  %cmp39 = icmp sge i32 %65, %66
  br i1 %cmp39, label %land.lhs.true.41, label %if.then.44

land.lhs.true.41:                                 ; preds = %if.end.38
  %67 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %band_first = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %67, i32 0, i32 6
  %68 = load i32, i32* %band_first, align 4, !tbaa !41
  %69 = load i32, i32* %bmax, align 4, !tbaa !5
  %cmp42 = icmp sle i32 %68, %69
  br i1 %cmp42, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %land.lhs.true.41, %if.end.38
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %land.lhs.true.41
  %70 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !1
  %fseek = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %70, i32 0, i32 9
  %71 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek, align 8, !tbaa !73
  %72 = load i8*, i8** %cfile, align 8, !tbaa !1
  %73 = load i64, i64* %pos, align 8, !tbaa !46
  %74 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %page_info46 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %74, i32 0, i32 5
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info46, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %call47 = call i32 %71(i8* %72, i64 %73, i32 0, i8* %arraydecay) #4
  %75 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %b_this48 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %75, i32 0, i32 9
  %pos49 = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %b_this48, i32 0, i32 2
  %76 = load i64, i64* %pos49, align 8, !tbaa !144
  %77 = load i64, i64* %pos, align 8, !tbaa !46
  %sub50 = sub nsw i64 %76, %77
  %conv51 = trunc i64 %sub50 to i32
  store i32 %conv51, i32* %left, align 4, !tbaa !5
  br label %do.body.52

do.body.52:                                       ; preds = %if.end.45
  br label %do.cond.53

do.cond.53:                                       ; preds = %do.body.52
  br label %do.end.54

do.end.54:                                        ; preds = %do.cond.53
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.54, %if.then.44, %if.then.37
  %78 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast i32* %bmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %bmin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.60 [
    i32 0, label %cleanup.cont
    i32 6, label %rb
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %if.then.24, %if.then.14, %while.cond
  %82 = load i8*, i8** %q, align 8, !tbaa !1
  %83 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr58 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %83, i32 0, i32 1
  store i8* %82, i8** %ptr58, align 8, !tbaa !135
  %84 = load i32, i32* %left, align 4, !tbaa !5
  %85 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %left59 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %85, i32 0, i32 8
  store i32 %84, i32* %left59, align 4, !tbaa !138
  %86 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

cleanup.60:                                       ; preds = %while.end, %cleanup
  %87 = bitcast %struct.clist_io_procs_s** %io_procs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i8** %bfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast i8** %cfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast %struct.stream_band_read_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal i32 @s_band_read_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_band_read_state_s*, align 8
  %io_procs = alloca %struct.clist_io_procs_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_band_read_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_band_read_state_s*
  store %struct.stream_band_read_state_s* %2, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast %struct.clist_io_procs_s** %io_procs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %4, i32 0, i32 5
  %io_procs1 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 4
  %5 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs1, align 8, !tbaa !139
  store %struct.clist_io_procs_s* %5, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !1
  %6 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %left = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %6, i32 0, i32 8
  store i32 0, i32* %left, align 4, !tbaa !138
  %7 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %b_this = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %7, i32 0, i32 9
  %band_min = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %b_this, i32 0, i32 0
  store i32 0, i32* %band_min, align 4, !tbaa !141
  %8 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %b_this2 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %8, i32 0, i32 9
  %band_max = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %b_this2, i32 0, i32 1
  store i32 0, i32* %band_max, align 4, !tbaa !143
  %9 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %b_this3 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %9, i32 0, i32 9
  %pos = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %b_this3, i32 0, i32 2
  store i64 0, i64* %pos, align 8, !tbaa !144
  %10 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !1
  %rewind = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %10, i32 0, i32 8
  %11 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %rewind, align 8, !tbaa !145
  %12 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %page_info4 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %12, i32 0, i32 5
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info4, i32 0, i32 3
  %13 = load i8*, i8** %bfile, align 8, !tbaa !53
  %14 = load %struct.stream_band_read_state_s*, %struct.stream_band_read_state_s** %ss, align 8, !tbaa !1
  %page_info5 = getelementptr inbounds %struct.stream_band_read_state_s, %struct.stream_band_read_state_s* %14, i32 0, i32 5
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  call void %11(i8* %13, i32 0, i8* %arraydecay) #4
  %15 = bitcast %struct.clist_io_procs_s** %io_procs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.stream_band_read_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret i32 0
}

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #2

declare void @s_std_init(%struct.stream_s*, i8*, i32, %struct.stream_procs*, i32) #2

declare i32 @clist_playback_band(i32, %struct.gx_device_clist_reader_s*, %struct.stream_s*, %struct.gx_device_s*, i32, i32, %struct.gs_memory_s*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #3

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare i32 @gx_device_raster_plane(%struct.gx_device_s*, %struct.gx_render_plane_s*) #2

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 8}
!8 = !{!"gx_colors_usage_s", !9, i64 0, !6, i64 8, !10, i64 12}
!9 = !{!"long", !3, i64 0}
!10 = !{!"gs_int_rect_s", !11, i64 0, !11, i64 8}
!11 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!12 = !{!13, !6, i64 8}
!13 = !{!"gx_render_plane_s", !6, i64 0, !6, i64 4, !6, i64 8}
!14 = !{!15, !6, i64 1884}
!15 = !{!"gx_device_clist_reader_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !16, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !17, i64 96, !20, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !9, i64 968, !9, i64 976, !21, i64 984, !6, i64 1052, !6, i64 1056, !22, i64 1064, !2, i64 1104, !3, i64 1112, !24, i64 1120, !25, i64 1144, !2, i64 1728, !26, i64 1736, !2, i64 1768, !2, i64 1776, !6, i64 1784, !23, i64 1792, !6, i64 1808, !6, i64 1812, !27, i64 1816, !28, i64 1840, !6, i64 1864, !6, i64 1868, !2, i64 1872, !6, i64 1880, !6, i64 1884, !29, i64 1888, !6, i64 10144, !9, i64 10152, !2, i64 10160, !2, i64 10168, !6, i64 10176, !2, i64 10184, !13, i64 10192, !2, i64 10208, !2, i64 10216, !6, i64 10224, !2, i64 10232, !6, i64 10240, !2, i64 10248, !2, i64 10256, !6, i64 10264, !6, i64 10268, !6, i64 10272}
!16 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!17 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !18, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !19, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !9, i64 704, !6, i64 712}
!18 = !{!"short", !3, i64 0}
!19 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!20 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!21 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!22 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !23, i64 16, !6, i64 32, !3, i64 36}
!23 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !9, i64 8}
!24 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!25 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!26 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!27 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20}
!28 = !{!"gx_bits_cache_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!29 = !{!"gx_band_page_info_s", !3, i64 0, !2, i64 4096, !3, i64 4104, !2, i64 8200, !2, i64 8208, !6, i64 8216, !9, i64 8224, !9, i64 8232, !23, i64 8240}
!30 = !{!15, !6, i64 1880}
!31 = !{!15, !6, i64 10200}
!32 = !{!15, !2, i64 10208}
!33 = !{!15, !6, i64 10224}
!34 = !{!15, !2, i64 10232}
!35 = !{!15, !2, i64 10160}
!36 = !{!15, !2, i64 10216}
!37 = !{!15, !2, i64 10168}
!38 = !{!15, !2, i64 10248}
!39 = !{!3, !3, i64 0}
!40 = !{!15, !2, i64 24}
!41 = !{!42, !6, i64 8368}
!42 = !{!"stream_band_read_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !29, i64 112, !6, i64 8368, !6, i64 8372, !6, i64 8376, !43, i64 8384, !2, i64 8400}
!43 = !{!"cmd_block_s", !6, i64 0, !6, i64 4, !9, i64 8}
!44 = !{!42, !6, i64 8372}
!45 = !{i64 0, i64 4096, !39, i64 4096, i64 8, !1, i64 4104, i64 4096, !39, i64 8200, i64 8, !1, i64 8208, i64 8, !1, i64 8216, i64 4, !5, i64 8224, i64 8, !46, i64 8232, i64 8, !46, i64 8240, i64 4, !5, i64 8244, i64 4, !5, i64 8248, i64 8, !46}
!46 = !{!9, !9, i64 0}
!47 = !{!42, !2, i64 8400}
!48 = !{!42, !2, i64 4208}
!49 = !{!15, !2, i64 10096}
!50 = !{!51, !2, i64 0}
!51 = !{!"clist_io_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72}
!52 = !{!15, !2, i64 1768}
!53 = !{!42, !2, i64 8312}
!54 = !{!55, !3, i64 154}
!55 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !18, i64 152, !3, i64 154, !3, i64 155, !56, i64 160, !9, i64 176, !57, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !18, i64 264, !18, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !58, i64 312, !6, i64 328, !9, i64 336, !9, i64 344}
!56 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!57 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!58 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!59 = !{!55, !2, i64 256}
!60 = !{!51, !2, i64 8}
!61 = !{!62, !2, i64 208}
!62 = !{!"gs_memory_s", !2, i64 0, !63, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!63 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!64 = !{!62, !2, i64 40}
!65 = !{!66, !6, i64 16}
!66 = !{!"gs_memory_status_s", !9, i64 0, !9, i64 8, !6, i64 16}
!67 = !{!15, !6, i64 10144}
!68 = !{!62, !2, i64 24}
!69 = !{!62, !2, i64 64}
!70 = !{!43, !9, i64 8}
!71 = !{!15, !2, i64 5984}
!72 = !{!51, !2, i64 56}
!73 = !{!51, !2, i64 72}
!74 = !{!51, !2, i64 32}
!75 = !{!29, !2, i64 8200}
!76 = !{!29, !9, i64 8232}
!77 = !{!29, !2, i64 8208}
!78 = !{!43, !6, i64 4}
!79 = !{!43, !6, i64 0}
!80 = !{!62, !2, i64 0}
!81 = !{!62, !2, i64 72}
!82 = !{!83, !2, i64 8}
!83 = !{!"clist_icctable_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!84 = !{!83, !2, i64 16}
!85 = !{!83, !2, i64 24}
!86 = !{!83, !6, i64 0}
!87 = !{!88, !2, i64 32}
!88 = !{!"clist_icctable_entry_s", !89, i64 0, !2, i64 24, !2, i64 32, !6, i64 40}
!89 = !{!"clist_icc_serial_entry_s", !9, i64 0, !9, i64 8, !6, i64 16}
!90 = !{!88, !2, i64 24}
!91 = !{!92, !9, i64 0}
!92 = !{!"gs_get_bits_params_s", !9, i64 0, !3, i64 8, !6, i64 520, !6, i64 524, !6, i64 528}
!93 = !{!10, !6, i64 4}
!94 = !{!10, !6, i64 12}
!95 = !{!96, !6, i64 100}
!96 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !16, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !17, i64 96, !20, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !9, i64 968, !9, i64 976, !21, i64 984, !6, i64 1052, !6, i64 1056, !22, i64 1064, !2, i64 1104, !3, i64 1112, !24, i64 1120, !25, i64 1144}
!97 = !{!96, !18, i64 108}
!98 = !{!10, !6, i64 0}
!99 = !{!10, !6, i64 8}
!100 = !{!96, !6, i64 832}
!101 = !{!96, !6, i64 836}
!102 = !{!103, !2, i64 1736}
!103 = !{!"gx_device_clist_common_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !16, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !17, i64 96, !20, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !9, i64 968, !9, i64 976, !21, i64 984, !6, i64 1052, !6, i64 1056, !22, i64 1064, !2, i64 1104, !3, i64 1112, !24, i64 1120, !25, i64 1144, !2, i64 1728, !26, i64 1736, !2, i64 1768, !2, i64 1776, !6, i64 1784, !23, i64 1792, !6, i64 1808, !6, i64 1812, !27, i64 1816, !28, i64 1840, !6, i64 1864, !6, i64 1868, !2, i64 1872, !6, i64 1880, !6, i64 1884, !29, i64 1888, !6, i64 10144, !9, i64 10152, !2, i64 10160, !2, i64 10168, !6, i64 10176, !2, i64 10184}
!104 = !{!103, !2, i64 1728}
!105 = !{!96, !2, i64 24}
!106 = !{!15, !6, i64 10132}
!107 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5}
!108 = !{!96, !2, i64 1448}
!109 = !{!103, !2, i64 1760}
!110 = !{i64 0, i64 8, !46, i64 8, i64 512, !39, i64 520, i64 4, !5, i64 524, i64 4, !5, i64 528, i64 4, !5}
!111 = !{!15, !2, i64 1728}
!112 = !{!15, !2, i64 1776}
!113 = !{!15, !6, i64 10104}
!114 = !{!15, !9, i64 10112}
!115 = !{!15, !2, i64 1752}
!116 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5}
!117 = !{!15, !2, i64 1104}
!118 = !{!119, !6, i64 160}
!119 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !2, i64 176, !6, i64 184, !2, i64 192, !16, i64 200}
!120 = !{!96, !9, i64 968}
!121 = !{!96, !9, i64 976}
!122 = !{!29, !2, i64 4096}
!123 = !{!124, !2, i64 0}
!124 = !{!"gx_placed_page_s", !2, i64 0, !11, i64 8}
!125 = !{!126, !2, i64 8944}
!126 = !{!"gx_saved_page_s", !3, i64 0, !17, i64 32, !3, i64 752, !3, i64 4848, !2, i64 8944, !6, i64 8952, !9, i64 8960, !23, i64 8968, !2, i64 8984, !6, i64 8992, !2, i64 9000}
!127 = !{!126, !6, i64 8952}
!128 = !{!29, !6, i64 8216}
!129 = !{!126, !9, i64 8960}
!130 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 8, !46}
!131 = !{!124, !6, i64 8}
!132 = !{!124, !6, i64 12}
!133 = !{!8, !6, i64 16}
!134 = !{!8, !6, i64 24}
!135 = !{!136, !2, i64 8}
!136 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!137 = !{!136, !2, i64 16}
!138 = !{!42, !6, i64 8376}
!139 = !{!42, !2, i64 8320}
!140 = !{!51, !2, i64 48}
!141 = !{!42, !6, i64 8384}
!142 = !{!42, !9, i64 8344}
!143 = !{!42, !6, i64 8388}
!144 = !{!42, !9, i64 8392}
!145 = !{!51, !2, i64 64}
