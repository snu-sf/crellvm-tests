; ModuleID = './gdevpsdp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_param_item_s = type { i8*, i8, i16 }
%struct.psdf_image_param_names_s = type { i8*, i8*, i8*, float, %struct.psdf_image_filter_name_s*, i8*, i8*, [9 x %struct.gs_param_item_s] }
%struct.psdf_image_filter_name_s = type { i8*, %struct.stream_template_s*, i32 }
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, {}*, {}*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, {}*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
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
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
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
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
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
%struct.gx_device_psdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s }
%struct.gx_device_vector_procs_s = type { i32 (%struct.gx_device_vector_s*)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, float*, i32, double)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32, i32)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, i32)* }
%struct.gx_device_vector_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64 }
%struct.gx_hl_saved_color_s = type { i64, i64, i32, %struct.gs_client_color_s, %struct.gx_device_color_saved_s }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_device_bbox_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64 }
%struct.gx_device_bbox_procs_s = type { i32 (i8*)*, void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, i32, i32, i32, i32)*, i32 (i8*, %struct.gs_fixed_rect_s*)* }
%struct.psdf_distiller_params_s = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32, i32, i32, i32, i32, %struct.psdf_image_params_s, i32, i32, %struct.psdf_image_params_s, %struct.psdf_image_params_s, %struct.gs_param_string_array_s, %struct.gs_param_string_array_s, i32, i32, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_array_s }
%struct.psdf_image_params_s = type { %struct.gs_c_param_list_s*, i32, i32, i32, %struct.gs_c_param_list_s*, i32, float, i32, i32, i8*, i32, i8*, %struct.stream_template_s* }
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_c_param_s = type opaque
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.psdf_binary_writer_s = type { %struct.gs_memory_s*, %struct.stream_s*, %struct.stream_s*, %struct.gx_device_psdf_s* }
%struct.stream_CFE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, i32 }
%struct.stream_CF_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }

@psdf_param_items = internal constant [17 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8 1, i16 0 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8 1, i16 12 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8 1, i16 20 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8 1, i16 24 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8 3, i16 32 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8 1, i16 44 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8 2, i16 48 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i8 1, i16 132 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8 1, i16 52 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0), i8 1, i16 136 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8 1, i16 56 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), i8 1, i16 232 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0), i8 1, i16 236 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i8 1, i16 436 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8 2, i16 440 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i8 1, i16 444 }, %struct.gs_param_item_s zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"AutoRotatePages\00", align 1
@AutoRotatePages_names = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"Binding\00", align 1
@Binding_names = internal constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* null], align 16
@.str.2 = private unnamed_addr constant [23 x i8] c"DefaultRenderingIntent\00", align 1
@DefaultRenderingIntent_names = internal constant [6 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"TransferFunctionInfo\00", align 1
@TransferFunctionInfo_names = internal constant [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* null], align 16
@.str.4 = private unnamed_addr constant [13 x i8] c"UCRandBGInfo\00", align 1
@UCRandBGInfo_names = internal constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* null], align 16
@Color_names15 = internal constant %struct.psdf_image_param_names_s { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i32 0, i32 0), float 1.500000e+00, %struct.psdf_image_filter_name_s* getelementptr inbounds ([4 x %struct.psdf_image_filter_name_s], [4 x %struct.psdf_image_filter_name_s]* @Poly_filters, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0), [9 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), i8 1, i16 12 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i32 0, i32 0), i8 1, i16 8 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0), i8 2, i16 16 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i32 0, i32 0), i8 1, i16 32 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i32 0, i32 0), i8 4, i16 36 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0), i8 1, i16 44 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i32 0, i32 0), i8 2, i16 56 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0), i8 2, i16 64 }, %struct.gs_param_item_s zeroinitializer] }, align 8
@Color_names = internal constant %struct.psdf_image_param_names_s { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i32 0, i32 0), float 1.500000e+00, %struct.psdf_image_filter_name_s* getelementptr inbounds ([4 x %struct.psdf_image_filter_name_s], [4 x %struct.psdf_image_filter_name_s]* @Poly_filters, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), i8* null, [9 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), i8 1, i16 12 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i32 0, i32 0), i8 1, i16 8 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0), i8 2, i16 16 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i32 0, i32 0), i8 1, i16 32 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i32 0, i32 0), i8 4, i16 36 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0), i8 1, i16 44 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i32 0, i32 0), i8 2, i16 56 }, %struct.gs_param_item_s { i8* null, i8 2, i16 64 }, %struct.gs_param_item_s zeroinitializer] }, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"ColorConversionStrategy\00", align 1
@ColorConversionStrategy_names = internal constant [10 x i8*] [i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), i8* null], align 16
@.str.6 = private unnamed_addr constant [15 x i8] c"CalCMYKProfile\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"CalGrayProfile\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"CalRGBProfile\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"sRGBProfile\00", align 1
@Gray_names15 = internal constant %struct.psdf_image_param_names_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.76, i32 0, i32 0), float 2.000000e+00, %struct.psdf_image_filter_name_s* getelementptr inbounds ([4 x %struct.psdf_image_filter_name_s], [4 x %struct.psdf_image_filter_name_s]* @Poly_filters, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.78, i32 0, i32 0), [9 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.79, i32 0, i32 0), i8 1, i16 12 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.80, i32 0, i32 0), i8 1, i16 8 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0), i8 2, i16 16 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.82, i32 0, i32 0), i8 1, i16 32 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.83, i32 0, i32 0), i8 4, i16 36 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i8 1, i16 44 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.85, i32 0, i32 0), i8 2, i16 56 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.78, i32 0, i32 0), i8 2, i16 64 }, %struct.gs_param_item_s zeroinitializer] }, align 8
@Gray_names = internal constant %struct.psdf_image_param_names_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.76, i32 0, i32 0), float 2.000000e+00, %struct.psdf_image_filter_name_s* getelementptr inbounds ([4 x %struct.psdf_image_filter_name_s], [4 x %struct.psdf_image_filter_name_s]* @Poly_filters, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0), i8* null, [9 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.79, i32 0, i32 0), i8 1, i16 12 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.80, i32 0, i32 0), i8 1, i16 8 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0), i8 2, i16 16 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.82, i32 0, i32 0), i8 1, i16 32 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.83, i32 0, i32 0), i8 4, i16 36 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i8 1, i16 44 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.85, i32 0, i32 0), i8 2, i16 56 }, %struct.gs_param_item_s { i8* null, i8 2, i16 64 }, %struct.gs_param_item_s zeroinitializer] }, align 8
@Mono_names = internal constant %struct.psdf_image_param_names_s { i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.87, i32 0, i32 0), float 2.000000e+00, %struct.psdf_image_filter_name_s* getelementptr inbounds ([5 x %struct.psdf_image_filter_name_s], [5 x %struct.psdf_image_filter_name_s]* @Mono_filters, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.88, i32 0, i32 0), i8* null, [9 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* null, i8 1, i16 12 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.89, i32 0, i32 0), i8 1, i16 8 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.90, i32 0, i32 0), i8 2, i16 16 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i32 0, i32 0), i8 1, i16 32 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.92, i32 0, i32 0), i8 4, i16 36 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.93, i32 0, i32 0), i8 1, i16 44 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.94, i32 0, i32 0), i8 2, i16 56 }, %struct.gs_param_item_s { i8* null, i8 2, i16 64 }, %struct.gs_param_item_s zeroinitializer] }, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c".AlwaysEmbed\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c".NeverEmbed\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"CannotEmbedFontPolicy\00", align 1
@CannotEmbedFontPolicy_names = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i8* null], align 16
@.str.13 = private unnamed_addr constant [20 x i8] c"LockDistillerParams\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"UseFlateCompression\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"~AlwaysEmbed\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"~NeverEmbed\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"PSDocOptions\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"PSPageOptions\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"ASCII85EncodePages\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"CompressPages\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"DetectBlends\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"DoThumbnails\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"ImageMemory\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"LZWEncodePages\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"OPM\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"PreserveHalftoneInfo\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"PreserveOPIComments\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"PreserveOverprintSettings\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"ConvertCMYKImagesToRGB\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"ConvertImagesToIndexed\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"EmbedAllFonts\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"MaxSubsetPct\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"SubsetFonts\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"PageByPage\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"Perceptual\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"RelativeColorimetric\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"AbsoluteColorimetric\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"Preserve\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"Apply\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"Remove\00", align 1
@DownsampleType_names = internal constant [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* null], align 16
@.str.47 = private unnamed_addr constant [8 x i8] c"Average\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"Bicubic\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"Subsample\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"ColorACSImageDict\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"ColorImageDict\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"ColorImageDownsampleType\00", align 1
@Poly_filters = internal constant [4 x %struct.psdf_image_filter_name_s] [%struct.psdf_image_filter_name_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), %struct.stream_template_s* @s_DCTE_template, i32 0 }, %struct.psdf_image_filter_name_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), %struct.stream_template_s* @s_zlibE_template, i32 3010 }, %struct.psdf_image_filter_name_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), %struct.stream_template_s* @s_LZWE_template, i32 0 }, %struct.psdf_image_filter_name_s zeroinitializer], align 16
@.str.53 = private unnamed_addr constant [17 x i8] c"ColorImageFilter\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"ColorAutoFilterStrategy\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"AutoFilterColorImages\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"AntiAliasColorImages\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"ColorImageDepth\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"DownsampleColorImages\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"ColorImageDownsampleThreshold\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"EncodeColorImages\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"ColorImageResolution\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"DCTEncode\00", align 1
@s_DCTE_template = external constant %struct.stream_template_s, align 8
@.str.63 = private unnamed_addr constant [12 x i8] c"FlateEncode\00", align 1
@s_zlibE_template = external constant %struct.stream_template_s, align 8
@.str.64 = private unnamed_addr constant [10 x i8] c"LZWEncode\00", align 1
@s_LZWE_template = external constant %struct.stream_template_s, align 8
@.str.65 = private unnamed_addr constant [20 x i8] c"LeaveColorUnchanged\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"UseDeviceDependentColor\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"UseDeviceIndependentColor\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"UseDeviceIndependentColorForImages\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"sRGB\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"CMYK\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"ByObjectType\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"GrayACSImageDict\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"GrayImageDict\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"GrayImageDownsampleType\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"GrayImageFilter\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"GrayAutoFilterStrategy\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"AutoFilterGrayImages\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"AntiAliasGrayImages\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"GrayImageDepth\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"DownsampleGrayImages\00", align 1
@.str.83 = private unnamed_addr constant [29 x i8] c"GrayImageDownsampleThreshold\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"EncodeGrayImages\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"GrayImageResolution\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"MonoImageDict\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"MonoImageDownsampleType\00", align 1
@Mono_filters = internal constant [5 x %struct.psdf_image_filter_name_s] [%struct.psdf_image_filter_name_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.95, i32 0, i32 0), %struct.stream_template_s* @s_CFE_template, i32 0 }, %struct.psdf_image_filter_name_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), %struct.stream_template_s* @s_zlibE_template, i32 3010 }, %struct.psdf_image_filter_name_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), %struct.stream_template_s* @s_LZWE_template, i32 0 }, %struct.psdf_image_filter_name_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i32 0, i32 0), %struct.stream_template_s* @s_RLE_template, i32 0 }, %struct.psdf_image_filter_name_s zeroinitializer], align 16
@.str.88 = private unnamed_addr constant [16 x i8] c"MonoImageFilter\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"AntiAliasMonoImages\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"MonoImageDepth\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"DownsampleMonoImages\00", align 1
@.str.92 = private unnamed_addr constant [29 x i8] c"MonoImageDownsampleThreshold\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"EncodeMonoImages\00", align 1
@.str.94 = private unnamed_addr constant [20 x i8] c"MonoImageResolution\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"CCITTFaxEncode\00", align 1
@s_CFE_template = external constant %struct.stream_template_s, align 8
@.str.96 = private unnamed_addr constant [16 x i8] c"RunLengthEncode\00", align 1
@s_RLE_template = external constant %struct.stream_template_s, align 8
@.str.97 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"psdf_read_string_param\00", align 1
@.str.101 = private unnamed_addr constant [29 x i8] c"psdf_put_embed_param(resize)\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"delete_embed\00", align 1
@st_param_string_element = internal constant %struct.gs_memory_struct_type_s { i32 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.105, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @param_string_elt_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @param_string_elt_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.103 = private unnamed_addr constant [29 x i8] c"psdf_put_embed_param(update)\00", align 1
@.str.104 = private unnamed_addr constant [27 x i8] c"psdf_put_embed_param(free)\00", align 1
@.str.105 = private unnamed_addr constant [18 x i8] c"gs_param_string[]\00", align 1
@st_gs_param_string = internal constant %struct.gs_memory_struct_type_s { i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.106, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @param_string_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @param_string_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.106 = private unnamed_addr constant [16 x i8] c"gs_param_string\00", align 1
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.107 = private unnamed_addr constant [10 x i8] c"add_embed\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gdev_psdf_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdev = alloca %struct.gx_device_psdf_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_psdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_psdf_s*
  store %struct.gx_device_psdf_s* %2, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_vector_get_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %9, i32 0, i32 73
  %10 = bitcast %struct.psdf_distiller_params_s* %params to i8*
  %call1 = call i32 @gs_param_write_items(%struct.gs_param_list_s* %8, i8* %10, i8* null, %struct.gs_param_item_s* getelementptr inbounds ([17 x %struct.gs_param_item_s], [17 x %struct.gs_param_item_s]* @psdf_param_items, i32 0, i32 0)) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %11, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %14, i32 0, i32 73
  %AutoRotatePages = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params5, i32 0, i32 1
  %15 = load i32, i32* %AutoRotatePages, align 4, !tbaa !7
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @AutoRotatePages_names, i32 0, i64 %idxprom
  %16 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call6 = call i32 @psdf_write_name(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* %16) #5
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %17, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.4
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %20 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %20, i32 0, i32 73
  %Binding = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params10, i32 0, i32 2
  %21 = load i32, i32* %Binding, align 4, !tbaa !43
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds [3 x i8*], [3 x i8*]* @Binding_names, i32 0, i64 %idxprom11
  %22 = load i8*, i8** %arrayidx12, align 8, !tbaa !1
  %call13 = call i32 @psdf_write_name(%struct.gs_param_list_s* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* %22) #5
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %23, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.9
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.9
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %26, i32 0, i32 73
  %DefaultRenderingIntent = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params17, i32 0, i32 4
  %27 = load i32, i32* %DefaultRenderingIntent, align 4, !tbaa !44
  %idxprom18 = sext i32 %27 to i64
  %arrayidx19 = getelementptr inbounds [6 x i8*], [6 x i8*]* @DefaultRenderingIntent_names, i32 0, i64 %idxprom18
  %28 = load i8*, i8** %arrayidx19, align 8, !tbaa !1
  %call20 = call i32 @psdf_write_name(%struct.gs_param_list_s* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* %28) #5
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %29, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.16
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.16
  %31 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %32 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params24 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %32, i32 0, i32 73
  %TransferFunctionInfo = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params24, i32 0, i32 20
  %33 = load i32, i32* %TransferFunctionInfo, align 4, !tbaa !45
  %idxprom25 = sext i32 %33 to i64
  %arrayidx26 = getelementptr inbounds [4 x i8*], [4 x i8*]* @TransferFunctionInfo_names, i32 0, i64 %idxprom25
  %34 = load i8*, i8** %arrayidx26, align 8, !tbaa !1
  %call27 = call i32 @psdf_write_name(%struct.gs_param_list_s* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* %34) #5
  store i32 %call27, i32* %code, align 4, !tbaa !5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %35, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.23
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.23
  %37 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %38 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params31 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %38, i32 0, i32 73
  %UCRandBGInfo = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params31, i32 0, i32 21
  %39 = load i32, i32* %UCRandBGInfo, align 4, !tbaa !46
  %idxprom32 = sext i32 %39 to i64
  %arrayidx33 = getelementptr inbounds [3 x i8*], [3 x i8*]* @UCRandBGInfo_names, i32 0, i64 %idxprom32
  %40 = load i8*, i8** %arrayidx33, align 8, !tbaa !1
  %call34 = call i32 @psdf_write_name(%struct.gs_param_list_s* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* %40) #5
  store i32 %call34, i32* %code, align 4, !tbaa !5
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %41, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.30
  %42 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.end.30
  %43 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %44 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %ParamCompatibilityLevel = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %44, i32 0, i32 72
  %45 = load double, double* %ParamCompatibilityLevel, align 8, !tbaa !47
  %cmp38 = fcmp oge double %45, 1.500000e+00
  %cond = select i1 %cmp38, %struct.psdf_image_param_names_s* @Color_names15, %struct.psdf_image_param_names_s* @Color_names
  %46 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params39 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %46, i32 0, i32 73
  %ColorImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params39, i32 0, i32 22
  %call40 = call i32 @psdf_get_image_params(%struct.gs_param_list_s* %43, %struct.psdf_image_param_names_s* %cond, %struct.psdf_image_params_s* %ColorImage) #5
  store i32 %call40, i32* %code, align 4, !tbaa !5
  %47 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %47, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.37
  %48 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end.37
  %49 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %50 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params44 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %50, i32 0, i32 73
  %ColorConversionStrategy = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params44, i32 0, i32 17
  %51 = load i32, i32* %ColorConversionStrategy, align 4, !tbaa !48
  %idxprom45 = sext i32 %51 to i64
  %arrayidx46 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ColorConversionStrategy_names, i32 0, i64 %idxprom45
  %52 = load i8*, i8** %arrayidx46, align 8, !tbaa !1
  %call47 = call i32 @psdf_write_name(%struct.gs_param_list_s* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* %52) #5
  store i32 %call47, i32* %code, align 4, !tbaa !5
  %53 = load i32, i32* %code, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %53, 0
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.43
  %54 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %if.end.43
  %55 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %56 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params51 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %56, i32 0, i32 73
  %CalCMYKProfile = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params51, i32 0, i32 13
  %call52 = call i32 @psdf_write_string_param(%struct.gs_param_list_s* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), %struct.gs_const_string_s* %CalCMYKProfile) #5
  store i32 %call52, i32* %code, align 4, !tbaa !5
  %57 = load i32, i32* %code, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %57, 0
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.50
  %58 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %if.end.50
  %59 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %60 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params56 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %60, i32 0, i32 73
  %CalGrayProfile = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params56, i32 0, i32 14
  %call57 = call i32 @psdf_write_string_param(%struct.gs_param_list_s* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), %struct.gs_const_string_s* %CalGrayProfile) #5
  store i32 %call57, i32* %code, align 4, !tbaa !5
  %61 = load i32, i32* %code, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %61, 0
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.55
  %62 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %if.end.55
  %63 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %64 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params61 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %64, i32 0, i32 73
  %CalRGBProfile = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params61, i32 0, i32 15
  %call62 = call i32 @psdf_write_string_param(%struct.gs_param_list_s* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), %struct.gs_const_string_s* %CalRGBProfile) #5
  store i32 %call62, i32* %code, align 4, !tbaa !5
  %65 = load i32, i32* %code, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %65, 0
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.60
  %66 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %if.end.60
  %67 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %68 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params66 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %68, i32 0, i32 73
  %sRGBProfile = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params66, i32 0, i32 16
  %call67 = call i32 @psdf_write_string_param(%struct.gs_param_list_s* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), %struct.gs_const_string_s* %sRGBProfile) #5
  store i32 %call67, i32* %code, align 4, !tbaa !5
  %69 = load i32, i32* %code, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %69, 0
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.65
  %70 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %70, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.70:                                        ; preds = %if.end.65
  %71 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %72 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %ParamCompatibilityLevel71 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %72, i32 0, i32 72
  %73 = load double, double* %ParamCompatibilityLevel71, align 8, !tbaa !47
  %cmp72 = fcmp oge double %73, 1.500000e+00
  %cond73 = select i1 %cmp72, %struct.psdf_image_param_names_s* @Gray_names15, %struct.psdf_image_param_names_s* @Gray_names
  %74 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params74 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %74, i32 0, i32 73
  %GrayImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params74, i32 0, i32 25
  %call75 = call i32 @psdf_get_image_params(%struct.gs_param_list_s* %71, %struct.psdf_image_param_names_s* %cond73, %struct.psdf_image_params_s* %GrayImage) #5
  store i32 %call75, i32* %code, align 4, !tbaa !5
  %75 = load i32, i32* %code, align 4, !tbaa !5
  %cmp76 = icmp slt i32 %75, 0
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.70
  %76 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.78:                                        ; preds = %if.end.70
  %77 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %78 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params79 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %78, i32 0, i32 73
  %MonoImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params79, i32 0, i32 26
  %call80 = call i32 @psdf_get_image_params(%struct.gs_param_list_s* %77, %struct.psdf_image_param_names_s* @Mono_names, %struct.psdf_image_params_s* %MonoImage) #5
  store i32 %call80, i32* %code, align 4, !tbaa !5
  %79 = load i32, i32* %code, align 4, !tbaa !5
  %cmp81 = icmp slt i32 %79, 0
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.78
  %80 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %80, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %if.end.78
  %81 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %82 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params84 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %82, i32 0, i32 73
  %AlwaysEmbed = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params84, i32 0, i32 27
  %call85 = call i32 @psdf_get_embed_param(%struct.gs_param_list_s* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), %struct.gs_param_string_array_s* %AlwaysEmbed) #5
  store i32 %call85, i32* %code, align 4, !tbaa !5
  %83 = load i32, i32* %code, align 4, !tbaa !5
  %cmp86 = icmp slt i32 %83, 0
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.83
  %84 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %84, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.88:                                        ; preds = %if.end.83
  %85 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %86 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params89 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %86, i32 0, i32 73
  %NeverEmbed = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params89, i32 0, i32 28
  %call90 = call i32 @psdf_get_embed_param(%struct.gs_param_list_s* %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), %struct.gs_param_string_array_s* %NeverEmbed) #5
  store i32 %call90, i32* %code, align 4, !tbaa !5
  %87 = load i32, i32* %code, align 4, !tbaa !5
  %cmp91 = icmp slt i32 %87, 0
  br i1 %cmp91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.88
  %88 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %88, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.93:                                        ; preds = %if.end.88
  %89 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %90 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params94 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %90, i32 0, i32 73
  %CannotEmbedFontPolicy = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params94, i32 0, i32 29
  %91 = load i32, i32* %CannotEmbedFontPolicy, align 4, !tbaa !49
  %idxprom95 = sext i32 %91 to i64
  %arrayidx96 = getelementptr inbounds [4 x i8*], [4 x i8*]* @CannotEmbedFontPolicy_names, i32 0, i64 %idxprom95
  %92 = load i8*, i8** %arrayidx96, align 8, !tbaa !1
  %call97 = call i32 @psdf_write_name(%struct.gs_param_list_s* %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* %92) #5
  store i32 %call97, i32* %code, align 4, !tbaa !5
  %93 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.93, %if.then.92, %if.then.87, %if.then.82, %if.then.77, %if.then.69, %if.then.64, %if.then.59, %if.then.54, %if.then.49, %if.then.42, %if.then.36, %if.then.29, %if.then.22, %if.then.15, %if.then.8, %if.then.3, %if.then
  %94 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast %struct.gx_device_psdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gdev_vector_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare i32 @gs_param_write_items(%struct.gs_param_list_s*, i8*, i8*, %struct.gs_param_item_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @psdf_write_name(%struct.gs_param_list_s* %plist, i8* %key, i8* %str) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %pstr = alloca %struct.gs_param_string_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s* %pstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pstr, i32 0, i32 0
  store i8* %1, i8** %data, align 8, !tbaa !50
  %data1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pstr, i32 0, i32 0
  %2 = load i8*, i8** %data1, align 8, !tbaa !50
  %call = call i64 @strlen(i8* %2) #6
  %conv = trunc i64 %call to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pstr, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !51
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pstr, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !52
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call2 = call i32 @param_write_name(%struct.gs_param_list_s* %3, i8* %4, %struct.gs_param_string_s* %pstr) #5
  %5 = bitcast %struct.gs_param_string_s* %pstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %5) #1
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal i32 @psdf_get_image_params(%struct.gs_param_list_s* %plist, %struct.psdf_image_param_names_s* %pnames, %struct.psdf_image_params_s* %params) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pnames.addr = alloca %struct.psdf_image_param_names_s*, align 8
  %params.addr = alloca %struct.psdf_image_params_s*, align 8
  %items = alloca %struct.gs_param_item_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.psdf_image_param_names_s* %pnames, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  store %struct.psdf_image_params_s* %params, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_item_s** %items to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %items1 = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %1, i32 0, i32 7
  %arrayidx = getelementptr inbounds [9 x %struct.gs_param_item_s], [9 x %struct.gs_param_item_s]* %items1, i32 0, i64 0
  %key = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %key, align 8, !tbaa !53
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %items2 = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %3, i32 0, i32 7
  %arraydecay = getelementptr inbounds [9 x %struct.gs_param_item_s], [9 x %struct.gs_param_item_s]* %items2, i32 0, i32 0
  %add.ptr = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %arraydecay, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %items3 = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %4, i32 0, i32 7
  %arraydecay4 = getelementptr inbounds [9 x %struct.gs_param_item_s], [9 x %struct.gs_param_item_s]* %items3, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_param_item_s* [ %add.ptr, %cond.true ], [ %arraydecay4, %cond.false ]
  store %struct.gs_param_item_s* %cond, %struct.gs_param_item_s** %items, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %7 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %8 = bitcast %struct.psdf_image_params_s* %7 to i8*
  %9 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %items, align 8, !tbaa !1
  %call = call i32 @gs_param_write_items(%struct.gs_param_list_s* %6, i8* %8, i8* null, %struct.gs_param_item_s* %9) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %10, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %13 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %ACSDict = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %13, i32 0, i32 0
  %14 = load i8*, i8** %ACSDict, align 8, !tbaa !55
  %15 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %ACSDict6 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %15, i32 0, i32 0
  %16 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %ACSDict6, align 8, !tbaa !57
  %call7 = call i32 @psdf_get_image_dict_param(%struct.gs_param_list_s* %12, i8* %14, %struct.gs_c_param_list_s* %16) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %17, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %20 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %Dict = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %20, i32 0, i32 1
  %21 = load i8*, i8** %Dict, align 8, !tbaa !58
  %22 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %Dict11 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %22, i32 0, i32 4
  %23 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %Dict11, align 8, !tbaa !59
  %call12 = call i32 @psdf_get_image_dict_param(%struct.gs_param_list_s* %19, i8* %21, %struct.gs_c_param_list_s* %23) #5
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %24, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.10
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %27 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %DownsampleType = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %27, i32 0, i32 2
  %28 = load i8*, i8** %DownsampleType, align 8, !tbaa !60
  %29 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %DownsampleType16 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %29, i32 0, i32 7
  %30 = load i32, i32* %DownsampleType16, align 4, !tbaa !61
  %idxprom = zext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds [4 x i8*], [4 x i8*]* @DownsampleType_names, i32 0, i64 %idxprom
  %31 = load i8*, i8** %arrayidx17, align 8, !tbaa !1
  %call18 = call i32 @psdf_write_name(%struct.gs_param_list_s* %26, i8* %28, i8* %31) #5
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %32, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.15
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.15
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %35 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %Filter = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %35, i32 0, i32 5
  %36 = load i8*, i8** %Filter, align 8, !tbaa !62
  %37 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %Filter22 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %37, i32 0, i32 9
  %38 = load i8*, i8** %Filter22, align 8, !tbaa !63
  %cmp23 = icmp eq i8* %38, null
  br i1 %cmp23, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %if.end.21
  %39 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %filter_names = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %39, i32 0, i32 4
  %40 = load %struct.psdf_image_filter_name_s*, %struct.psdf_image_filter_name_s** %filter_names, align 8, !tbaa !64
  %arrayidx25 = getelementptr inbounds %struct.psdf_image_filter_name_s, %struct.psdf_image_filter_name_s* %40, i64 0
  %pname = getelementptr inbounds %struct.psdf_image_filter_name_s, %struct.psdf_image_filter_name_s* %arrayidx25, i32 0, i32 0
  %41 = load i8*, i8** %pname, align 8, !tbaa !65
  br label %cond.end.28

cond.false.26:                                    ; preds = %if.end.21
  %42 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %Filter27 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %42, i32 0, i32 9
  %43 = load i8*, i8** %Filter27, align 8, !tbaa !63
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.true.24
  %cond29 = phi i8* [ %41, %cond.true.24 ], [ %43, %cond.false.26 ]
  %call30 = call i32 @psdf_write_name(%struct.gs_param_list_s* %34, i8* %36, i8* %cond29) #5
  store i32 %call30, i32* %code, align 4, !tbaa !5
  %44 = load i32, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %44, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %cond.end.28
  %45 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %cond.end.28
  %46 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.32, %if.then.20, %if.then.14, %if.then.9, %if.then
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.gs_param_item_s** %items to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @psdf_write_string_param(%struct.gs_param_list_s* %plist, i8* %key, %struct.gs_const_string_s* %pstr) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  %ps = alloca %struct.gs_param_string_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s* %ps to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8, !tbaa !67
  %data1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ps, i32 0, i32 0
  store i8* %2, i8** %data1, align 8, !tbaa !50
  %3 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4, !tbaa !68
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ps, i32 0, i32 1
  store i32 %4, i32* %size2, align 4, !tbaa !51
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ps, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !52
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i32 @param_write_string(%struct.gs_param_list_s* %5, i8* %6, %struct.gs_param_string_s* %ps) #5
  %7 = bitcast %struct.gs_param_string_s* %ps to i8*
  call void @llvm.lifetime.end(i64 16, i8* %7) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @psdf_get_embed_param(%struct.gs_param_list_s* %plist, i8* %allpname, %struct.gs_param_string_array_s* %psa) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %allpname.addr = alloca i8*, align 8
  %psa.addr = alloca %struct.gs_param_string_array_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %allpname, i8** %allpname.addr, align 8, !tbaa !1
  store %struct.gs_param_string_array_s* %psa, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %allpname.addr, align 8, !tbaa !1
  %3 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %call = call i32 @param_write_name_array(%struct.gs_param_list_s* %1, i8* %2, %struct.gs_param_string_array_s* %3) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %allpname.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %call1 = call i32 @param_write_name_array(%struct.gs_param_list_s* %5, i8* %add.ptr, %struct.gs_param_string_array_s* %7) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret i32 %8
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_psdf_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdev = alloca %struct.gx_device_psdf_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %params = alloca %struct.psdf_distiller_params_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_psdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_psdf_s*
  store %struct.gx_device_psdf_s* %2, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %4, i32 0, i32 43
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory, align 8, !tbaa !69
  %tobool = icmp ne %struct.gs_memory_s* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %v_memory1 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %6, i32 0, i32 43
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory1, align 8, !tbaa !69
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !70
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_memory_s* [ %7, %cond.true ], [ %9, %cond.false ]
  store %struct.gs_memory_s* %cond, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %10 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast %struct.psdf_distiller_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 480, i8* %12) #1
  %13 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %13, i32 0, i32 73
  %14 = bitcast %struct.psdf_distiller_params_s* %params to i8*
  %15 = bitcast %struct.psdf_distiller_params_s* %params2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 480, i32 8, i1 false), !tbaa.struct !72
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %LockDistillerParams = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 8
  %call = call i32 @param_read_bool(%struct.gs_param_list_s* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32* %LockDistillerParams) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  store i32 %call, i32* %ecode, align 4, !tbaa !5
  %17 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %17, i32 0, i32 73
  %LockDistillerParams4 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params3, i32 0, i32 8
  %18 = load i32, i32* %LockDistillerParams4, align 4, !tbaa !76
  %tobool5 = icmp ne i32 %18, 0
  br i1 %tobool5, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %cond.end
  %LockDistillerParams6 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 8
  %19 = load i32, i32* %LockDistillerParams6, align 4, !tbaa !77
  %tobool7 = icmp ne i32 %19, 0
  br i1 %tobool7, label %if.end.47, label %if.then

if.then:                                          ; preds = %land.lhs.true, %cond.end
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %21 = bitcast %struct.psdf_distiller_params_s* %params to i8*
  %call8 = call i32 @gs_param_read_items(%struct.gs_param_list_s* %20, i8* %21, %struct.gs_param_item_s* getelementptr inbounds ([17 x %struct.gs_param_item_s], [17 x %struct.gs_param_item_s]* @psdf_param_items, i32 0, i32 0)) #5
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %22 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %22, 0
  br i1 %cmp, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %ecode, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %AutoRotatePages = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 1
  %25 = load i32, i32* %AutoRotatePages, align 4, !tbaa !78
  %call10 = call i32 @psdf_put_enum(%struct.gs_param_list_s* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %25, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @AutoRotatePages_names, i32 0, i32 0), i32* %ecode) #5
  %AutoRotatePages11 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 1
  store i32 %call10, i32* %AutoRotatePages11, align 4, !tbaa !78
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %Binding = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 2
  %27 = load i32, i32* %Binding, align 4, !tbaa !79
  %call12 = call i32 @psdf_put_enum(%struct.gs_param_list_s* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 %27, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @Binding_names, i32 0, i32 0), i32* %ecode) #5
  %Binding13 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 2
  store i32 %call12, i32* %Binding13, align 4, !tbaa !79
  %28 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %DefaultRenderingIntent = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 4
  %29 = load i32, i32* %DefaultRenderingIntent, align 4, !tbaa !80
  %call14 = call i32 @psdf_put_enum(%struct.gs_param_list_s* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %29, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @DefaultRenderingIntent_names, i32 0, i32 0), i32* %ecode) #5
  %DefaultRenderingIntent15 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 4
  store i32 %call14, i32* %DefaultRenderingIntent15, align 4, !tbaa !80
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %TransferFunctionInfo = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 20
  %31 = load i32, i32* %TransferFunctionInfo, align 4, !tbaa !81
  %call16 = call i32 @psdf_put_enum(%struct.gs_param_list_s* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 %31, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @TransferFunctionInfo_names, i32 0, i32 0), i32* %ecode) #5
  %TransferFunctionInfo17 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 20
  store i32 %call16, i32* %TransferFunctionInfo17, align 4, !tbaa !81
  %32 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %UCRandBGInfo = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 21
  %33 = load i32, i32* %UCRandBGInfo, align 4, !tbaa !82
  %call18 = call i32 @psdf_put_enum(%struct.gs_param_list_s* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 %33, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @UCRandBGInfo_names, i32 0, i32 0), i32* %ecode) #5
  %UCRandBGInfo19 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 21
  store i32 %call18, i32* %UCRandBGInfo19, align 4, !tbaa !82
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %UseFlateCompression = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 12
  %35 = load i32, i32* %ecode, align 4, !tbaa !5
  %call20 = call i32 @param_put_bool(%struct.gs_param_list_s* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i32* %UseFlateCompression, i32 %35) #5
  store i32 %call20, i32* %ecode, align 4, !tbaa !5
  %36 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %37 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %38 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %ParamCompatibilityLevel = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %38, i32 0, i32 72
  %39 = load double, double* %ParamCompatibilityLevel, align 8, !tbaa !47
  %cmp21 = fcmp oge double %39, 1.500000e+00
  %cond22 = select i1 %cmp21, %struct.psdf_image_param_names_s* @Color_names15, %struct.psdf_image_param_names_s* @Color_names
  %ColorImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 22
  %40 = load i32, i32* %ecode, align 4, !tbaa !5
  %call23 = call i32 @psdf_put_image_params(%struct.gx_device_psdf_s* %36, %struct.gs_param_list_s* %37, %struct.psdf_image_param_names_s* %cond22, %struct.psdf_image_params_s* %ColorImage, i32 %40) #5
  store i32 %call23, i32* %ecode, align 4, !tbaa !5
  %41 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %ColorConversionStrategy = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 17
  %42 = load i32, i32* %ColorConversionStrategy, align 4, !tbaa !83
  %call24 = call i32 @psdf_put_enum(%struct.gs_param_list_s* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i32 %42, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @ColorConversionStrategy_names, i32 0, i32 0), i32* %ecode) #5
  %ColorConversionStrategy25 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 17
  store i32 %call24, i32* %ColorConversionStrategy25, align 4, !tbaa !83
  %43 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %CalCMYKProfile = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 13
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %45 = load i32, i32* %ecode, align 4, !tbaa !5
  %call26 = call i32 @psdf_read_string_param(%struct.gs_param_list_s* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), %struct.gs_const_string_s* %CalCMYKProfile, %struct.gs_memory_s* %44, i32 %45) #5
  store i32 %call26, i32* %ecode, align 4, !tbaa !5
  %46 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %CalGrayProfile = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 14
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %48 = load i32, i32* %ecode, align 4, !tbaa !5
  %call27 = call i32 @psdf_read_string_param(%struct.gs_param_list_s* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), %struct.gs_const_string_s* %CalGrayProfile, %struct.gs_memory_s* %47, i32 %48) #5
  store i32 %call27, i32* %ecode, align 4, !tbaa !5
  %49 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %CalRGBProfile = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 15
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %51 = load i32, i32* %ecode, align 4, !tbaa !5
  %call28 = call i32 @psdf_read_string_param(%struct.gs_param_list_s* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), %struct.gs_const_string_s* %CalRGBProfile, %struct.gs_memory_s* %50, i32 %51) #5
  store i32 %call28, i32* %ecode, align 4, !tbaa !5
  %52 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %sRGBProfile = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 16
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %54 = load i32, i32* %ecode, align 4, !tbaa !5
  %call29 = call i32 @psdf_read_string_param(%struct.gs_param_list_s* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), %struct.gs_const_string_s* %sRGBProfile, %struct.gs_memory_s* %53, i32 %54) #5
  store i32 %call29, i32* %ecode, align 4, !tbaa !5
  %55 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %56 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %57 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %ParamCompatibilityLevel30 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %57, i32 0, i32 72
  %58 = load double, double* %ParamCompatibilityLevel30, align 8, !tbaa !47
  %cmp31 = fcmp oge double %58, 1.500000e+00
  %cond32 = select i1 %cmp31, %struct.psdf_image_param_names_s* @Gray_names15, %struct.psdf_image_param_names_s* @Gray_names
  %GrayImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 25
  %59 = load i32, i32* %ecode, align 4, !tbaa !5
  %call33 = call i32 @psdf_put_image_params(%struct.gx_device_psdf_s* %55, %struct.gs_param_list_s* %56, %struct.psdf_image_param_names_s* %cond32, %struct.psdf_image_params_s* %GrayImage, i32 %59) #5
  store i32 %call33, i32* %ecode, align 4, !tbaa !5
  %60 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %61 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %MonoImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 26
  %62 = load i32, i32* %ecode, align 4, !tbaa !5
  %call34 = call i32 @psdf_put_image_params(%struct.gx_device_psdf_s* %60, %struct.gs_param_list_s* %61, %struct.psdf_image_param_names_s* @Mono_names, %struct.psdf_image_params_s* %MonoImage, i32 %62) #5
  store i32 %call34, i32* %ecode, align 4, !tbaa !5
  %63 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %AlwaysEmbed = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 27
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %65 = load i32, i32* %ecode, align 4, !tbaa !5
  %call35 = call i32 @psdf_put_embed_param(%struct.gs_param_list_s* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), %struct.gs_param_string_array_s* %AlwaysEmbed, %struct.gs_memory_s* %64, i32 %65) #5
  store i32 %call35, i32* %ecode, align 4, !tbaa !5
  %66 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %NeverEmbed = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 28
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %68 = load i32, i32* %ecode, align 4, !tbaa !5
  %call36 = call i32 @psdf_put_embed_param(%struct.gs_param_list_s* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), %struct.gs_param_string_array_s* %NeverEmbed, %struct.gs_memory_s* %67, i32 %68) #5
  store i32 %call36, i32* %ecode, align 4, !tbaa !5
  %69 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %CannotEmbedFontPolicy = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 29
  %70 = load i32, i32* %CannotEmbedFontPolicy, align 4, !tbaa !84
  %call37 = call i32 @psdf_put_enum(%struct.gs_param_list_s* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32 %70, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @CannotEmbedFontPolicy_names, i32 0, i32 0), i32* %ecode) #5
  %CannotEmbedFontPolicy38 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 29
  store i32 %call37, i32* %CannotEmbedFontPolicy38, align 4, !tbaa !84
  %71 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %71, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end
  %72 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end
  %73 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %PSDocOptions = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 33
  %74 = bitcast %struct.gs_param_string_s* %PSDocOptions to %struct.gs_const_string_s*
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %76 = load i32, i32* %ecode, align 4, !tbaa !5
  %call42 = call i32 @psdf_read_string_param(%struct.gs_param_list_s* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), %struct.gs_const_string_s* %74, %struct.gs_memory_s* %75, i32 %76) #5
  store i32 %call42, i32* %ecode, align 4, !tbaa !5
  %77 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %77, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  %78 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.41
  %79 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %PSPageOptions = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 34
  %call46 = call i32 @param_read_embed_array(%struct.gs_param_list_s* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), %struct.gs_param_string_array_s* %PSPageOptions) #5
  store i32 %call46, i32* %ecode, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.45, %land.lhs.true
  %80 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %80, 0
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.47
  %81 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %if.end.47
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %83 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call51 = call i32 @gdev_vector_put_params(%struct.gx_device_s* %82, %struct.gs_param_list_s* %83) #5
  store i32 %call51, i32* %code, align 4, !tbaa !5
  %84 = load i32, i32* %code, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %84, 0
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.50
  %85 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %if.end.50
  %86 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev, align 8, !tbaa !1
  %params55 = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %86, i32 0, i32 73
  %87 = bitcast %struct.psdf_distiller_params_s* %params55 to i8*
  %88 = bitcast %struct.psdf_distiller_params_s* %params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 480, i32 8, i1 false), !tbaa.struct !72
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %if.then.53, %if.then.49, %if.then.44, %if.then.40
  %89 = bitcast %struct.psdf_distiller_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 480, i8* %89) #1
  %90 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast %struct.gx_device_psdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #2

declare i32 @gs_param_read_items(%struct.gs_param_list_s*, i8*, %struct.gs_param_item_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @psdf_put_enum(%struct.gs_param_list_s* %plist, i8* %key, i32 %value, i8** %pnames, i32* %pecode) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  %pnames.addr = alloca i8**, align 8
  %pecode.addr = alloca i32*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !5
  store i8** %pnames, i8*** %pnames.addr, align 8, !tbaa !1
  store i32* %pecode, i32** %pecode.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %2 = load i8**, i8*** %pnames.addr, align 8, !tbaa !1
  %3 = load i32*, i32** %pecode.addr, align 8, !tbaa !1
  %4 = load i32, i32* %3, align 4, !tbaa !5
  %call = call i32 @param_put_enum(%struct.gs_param_list_s* %0, i8* %1, i32* %value.addr, i8** %2, i32 %4) #5
  %5 = load i32*, i32** %pecode.addr, align 8, !tbaa !1
  store i32 %call, i32* %5, align 4, !tbaa !5
  %6 = load i32, i32* %value.addr, align 4, !tbaa !5
  ret i32 %6
}

declare i32 @param_put_bool(%struct.gs_param_list_s*, i8*, i32*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @psdf_put_image_params(%struct.gx_device_psdf_s* %pdev, %struct.gs_param_list_s* %plist, %struct.psdf_image_param_names_s* %pnames, %struct.psdf_image_params_s* %params, i32 %ecode) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_psdf_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pnames.addr = alloca %struct.psdf_image_param_names_s*, align 8
  %params.addr = alloca %struct.psdf_image_params_s*, align 8
  %ecode.addr = alloca i32, align 4
  %fs = alloca %struct.gs_param_string_s, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %pname = alloca i8*, align 8
  %items = alloca %struct.gs_param_item_s*, align 8
  %code = alloca i32, align 4
  %templat = alloca %struct.stream_template_s*, align 8
  %put_params = alloca i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)*, align 8
  %pn = alloca %struct.psdf_image_filter_name_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_psdf_s* %pdev, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.psdf_image_param_names_s* %pnames, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  store %struct.psdf_image_params_s* %params, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  store i32 %ecode, i32* %ecode.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_param_string_s* %fs to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !85
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.gs_param_item_s** %items to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %items1 = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %6, i32 0, i32 7
  %arrayidx = getelementptr inbounds [9 x %struct.gs_param_item_s], [9 x %struct.gs_param_item_s]* %items1, i32 0, i64 0
  %key = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %arrayidx, i32 0, i32 0
  %7 = load i8*, i8** %key, align 8, !tbaa !53
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %items2 = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %8, i32 0, i32 7
  %arraydecay = getelementptr inbounds [9 x %struct.gs_param_item_s], [9 x %struct.gs_param_item_s]* %items2, i32 0, i32 0
  %add.ptr = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %arraydecay, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %items3 = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %9, i32 0, i32 7
  %arraydecay4 = getelementptr inbounds [9 x %struct.gs_param_item_s], [9 x %struct.gs_param_item_s]* %items3, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_param_item_s* [ %add.ptr, %cond.true ], [ %arraydecay4, %cond.false ]
  store %struct.gs_param_item_s* %cond, %struct.gs_param_item_s** %items, align 8, !tbaa !1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %12 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %13 = bitcast %struct.psdf_image_params_s* %12 to i8*
  %14 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %items, align 8, !tbaa !1
  %call = call i32 @gs_param_read_items(%struct.gs_param_list_s* %11, i8* %13, %struct.gs_param_item_s* %14) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %15 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %ACSDict = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %15, i32 0, i32 0
  %16 = load i8*, i8** %ACSDict, align 8, !tbaa !55
  store i8* %16, i8** %pname, align 8, !tbaa !1
  %cmp5 = icmp ne i8* %16, null
  br i1 %cmp5, label %if.then, label %if.end.10

if.then:                                          ; preds = %cond.end
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %pname, align 8, !tbaa !1
  %19 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %ACSDict6 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %19, i32 0, i32 0
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call7 = call i32 @psdf_put_image_dict_param(%struct.gs_param_list_s* %17, i8* %18, %struct.gs_c_param_list_s** %ACSDict6, %struct.stream_template_s* @s_DCTE_template, i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)* @psdf_DCT_put_params, %struct.gs_memory_s* %20) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %21, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %ecode.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %cond.end
  %23 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %Dict = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %23, i32 0, i32 1
  %24 = load i8*, i8** %Dict, align 8, !tbaa !58
  store i8* %24, i8** %pname, align 8, !tbaa !1
  %cmp11 = icmp ne i8* %24, null
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %if.end.10
  %25 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = bitcast i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)** %put_params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %Dict13 = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %27, i32 0, i32 1
  %28 = load i8*, i8** %Dict13, align 8, !tbaa !58
  %arrayidx14 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx14, align 1, !tbaa !73
  %conv = sext i8 %29 to i32
  %cmp15 = icmp eq i32 %conv, 77
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.12
  store %struct.stream_template_s* @s_CFE_template, %struct.stream_template_s** %templat, align 8, !tbaa !1
  store i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)* @psdf_CF_put_params, i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)** %put_params, align 8, !tbaa !1
  br label %if.end.18

if.else:                                          ; preds = %if.then.12
  store %struct.stream_template_s* @s_DCTE_template, %struct.stream_template_s** %templat, align 8, !tbaa !1
  store i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)* @psdf_DCT_put_params, i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)** %put_params, align 8, !tbaa !1
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %31 = load i8*, i8** %pname, align 8, !tbaa !1
  %32 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %Dict19 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %32, i32 0, i32 4
  %33 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %34 = load i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)*, i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)** %put_params, align 8, !tbaa !1
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call20 = call i32 @psdf_put_image_dict_param(%struct.gs_param_list_s* %30, i8* %31, %struct.gs_c_param_list_s** %Dict19, %struct.stream_template_s* %33, i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)* %34, %struct.gs_memory_s* %35) #5
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %36, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  %37 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %37, i32* %ecode.addr, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.18
  %38 = bitcast i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)** %put_params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.10
  %40 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %41 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %DownsampleType = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %41, i32 0, i32 2
  %42 = load i8*, i8** %DownsampleType, align 8, !tbaa !60
  %43 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %DownsampleType26 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %43, i32 0, i32 7
  %44 = load i32, i32* %DownsampleType26, align 4, !tbaa !61
  %call27 = call i32 @psdf_put_enum(%struct.gs_param_list_s* %40, i8* %42, i32 %44, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @DownsampleType_names, i32 0, i32 0), i32* %ecode.addr) #5
  %45 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %DownsampleType28 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %45, i32 0, i32 7
  store i32 %call27, i32* %DownsampleType28, align 4, !tbaa !61
  %46 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %47 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %Filter = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %47, i32 0, i32 5
  %48 = load i8*, i8** %Filter, align 8, !tbaa !62
  %call29 = call i32 @param_read_string(%struct.gs_param_list_s* %46, i8* %48, %struct.gs_param_string_s* %fs) #5
  store i32 %call29, i32* %code, align 4, !tbaa !5
  switch i32 %call29, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end.25
  %49 = bitcast %struct.psdf_image_filter_name_s** %pn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  %50 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %filter_names = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %50, i32 0, i32 4
  %51 = load %struct.psdf_image_filter_name_s*, %struct.psdf_image_filter_name_s** %filter_names, align 8, !tbaa !64
  store %struct.psdf_image_filter_name_s* %51, %struct.psdf_image_filter_name_s** %pn, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb
  %52 = load %struct.psdf_image_filter_name_s*, %struct.psdf_image_filter_name_s** %pn, align 8, !tbaa !1
  %pname30 = getelementptr inbounds %struct.psdf_image_filter_name_s, %struct.psdf_image_filter_name_s* %52, i32 0, i32 0
  %53 = load i8*, i8** %pname30, align 8, !tbaa !65
  %cmp31 = icmp ne i8* %53, null
  br i1 %cmp31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %54 = load %struct.psdf_image_filter_name_s*, %struct.psdf_image_filter_name_s** %pn, align 8, !tbaa !1
  %pname33 = getelementptr inbounds %struct.psdf_image_filter_name_s, %struct.psdf_image_filter_name_s* %54, i32 0, i32 0
  %55 = load i8*, i8** %pname33, align 8, !tbaa !65
  %call34 = call i32 @gs_param_string_eq(%struct.gs_param_string_s* %fs, i8* %55) #5
  %tobool = icmp ne i32 %call34, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %56 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %56, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %57 = load %struct.psdf_image_filter_name_s*, %struct.psdf_image_filter_name_s** %pn, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.psdf_image_filter_name_s, %struct.psdf_image_filter_name_s* %57, i32 1
  store %struct.psdf_image_filter_name_s* %incdec.ptr, %struct.psdf_image_filter_name_s** %pn, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %58 = load %struct.psdf_image_filter_name_s*, %struct.psdf_image_filter_name_s** %pn, align 8, !tbaa !1
  %pname35 = getelementptr inbounds %struct.psdf_image_filter_name_s, %struct.psdf_image_filter_name_s* %58, i32 0, i32 0
  %59 = load i8*, i8** %pname35, align 8, !tbaa !65
  %cmp36 = icmp eq i8* %59, null
  br i1 %cmp36, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %60 = load %struct.psdf_image_filter_name_s*, %struct.psdf_image_filter_name_s** %pn, align 8, !tbaa !1
  %min_version = getelementptr inbounds %struct.psdf_image_filter_name_s, %struct.psdf_image_filter_name_s* %60, i32 0, i32 2
  %61 = load i32, i32* %min_version, align 4, !tbaa !86
  %62 = load %struct.gx_device_psdf_s*, %struct.gx_device_psdf_s** %pdev.addr, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.gx_device_psdf_s, %struct.gx_device_psdf_s* %62, i32 0, i32 67
  %63 = load i32, i32* %version, align 4, !tbaa !87
  %cmp38 = icmp ugt i32 %61, %63
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false, %while.end
  store i32 -15, i32* %ecode.addr, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %lor.lhs.false
  %64 = load %struct.psdf_image_filter_name_s*, %struct.psdf_image_filter_name_s** %pn, align 8, !tbaa !1
  %pname42 = getelementptr inbounds %struct.psdf_image_filter_name_s, %struct.psdf_image_filter_name_s* %64, i32 0, i32 0
  %65 = load i8*, i8** %pname42, align 8, !tbaa !65
  %66 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %Filter43 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %66, i32 0, i32 9
  store i8* %65, i8** %Filter43, align 8, !tbaa !63
  %67 = load %struct.psdf_image_filter_name_s*, %struct.psdf_image_filter_name_s** %pn, align 8, !tbaa !1
  %templat44 = getelementptr inbounds %struct.psdf_image_filter_name_s, %struct.psdf_image_filter_name_s* %67, i32 0, i32 1
  %68 = load %struct.stream_template_s*, %struct.stream_template_s** %templat44, align 8, !tbaa !88
  %69 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %filter_template = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %69, i32 0, i32 12
  store %struct.stream_template_s* %68, %struct.stream_template_s** %filter_template, align 8, !tbaa !89
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.40, %if.end.41
  %70 = bitcast %struct.psdf_image_filter_name_s** %pn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.69 [
    i32 2, label %sw.epilog
    i32 5, label %ipe
  ]

sw.default:                                       ; preds = %if.end.25
  %71 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %71, i32* %ecode.addr, align 4, !tbaa !5
  br label %ipe

ipe:                                              ; preds = %sw.default, %cleanup
  %72 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %72, i32 0, i32 0
  %73 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !90
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %73, i32 0, i32 7
  %74 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !92
  %75 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %76 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %Filter45 = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %76, i32 0, i32 5
  %77 = load i8*, i8** %Filter45, align 8, !tbaa !62
  %78 = load i32, i32* %ecode.addr, align 4, !tbaa !5
  %call46 = call i32 %74(%struct.gs_param_list_s* %75, i8* %77, i32 %78) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %ipe, %if.end.25, %cleanup
  %79 = load i32, i32* %ecode.addr, align 4, !tbaa !5
  %cmp47 = icmp sge i32 %79, 0
  br i1 %cmp47, label %if.then.49, label %if.end.68

if.then.49:                                       ; preds = %sw.epilog
  %80 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %Resolution = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %80, i32 0, i32 10
  %81 = load i32, i32* %Resolution, align 4, !tbaa !94
  %cmp50 = icmp slt i32 %81, 1
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.then.49
  %82 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %Resolution53 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %82, i32 0, i32 10
  store i32 1, i32* %Resolution53, align 4, !tbaa !94
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.then.49
  %83 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %DownsampleThreshold = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %83, i32 0, i32 6
  %84 = load float, float* %DownsampleThreshold, align 4, !tbaa !95
  %cmp55 = fcmp olt float %84, 1.000000e+00
  br i1 %cmp55, label %if.then.61, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.end.54
  %85 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %DownsampleThreshold58 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %85, i32 0, i32 6
  %86 = load float, float* %DownsampleThreshold58, align 4, !tbaa !95
  %cmp59 = fcmp ogt float %86, 1.000000e+01
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %lor.lhs.false.57, %if.end.54
  %87 = load %struct.psdf_image_param_names_s*, %struct.psdf_image_param_names_s** %pnames.addr, align 8, !tbaa !1
  %DownsampleThreshold_default = getelementptr inbounds %struct.psdf_image_param_names_s, %struct.psdf_image_param_names_s* %87, i32 0, i32 3
  %88 = load float, float* %DownsampleThreshold_default, align 4, !tbaa !96
  %89 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %DownsampleThreshold62 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %89, i32 0, i32 6
  store float %88, float* %DownsampleThreshold62, align 4, !tbaa !95
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %lor.lhs.false.57
  %90 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %Depth = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %90, i32 0, i32 3
  %91 = load i32, i32* %Depth, align 4, !tbaa !97
  switch i32 %91, label %sw.default.64 [
    i32 1, label %sw.bb.66
    i32 2, label %sw.bb.66
    i32 4, label %sw.bb.66
    i32 8, label %sw.bb.66
    i32 -1, label %sw.bb.66
  ]

sw.default.64:                                    ; preds = %if.end.63
  %92 = load %struct.psdf_image_params_s*, %struct.psdf_image_params_s** %params.addr, align 8, !tbaa !1
  %Depth65 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %92, i32 0, i32 3
  store i32 -1, i32* %Depth65, align 4, !tbaa !97
  br label %sw.bb.66

sw.bb.66:                                         ; preds = %if.end.63, %if.end.63, %if.end.63, %if.end.63, %if.end.63, %sw.default.64
  br label %sw.epilog.67

sw.epilog.67:                                     ; preds = %sw.bb.66
  br label %if.end.68

if.end.68:                                        ; preds = %sw.epilog.67, %sw.epilog
  %93 = load i32, i32* %ecode.addr, align 4, !tbaa !5
  store i32 %93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

cleanup.69:                                       ; preds = %if.end.68, %cleanup
  %94 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast %struct.gs_param_item_s** %items to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast %struct.gs_param_string_s* %fs to i8*
  call void @llvm.lifetime.end(i64 16, i8* %98) #1
  %99 = load i32, i32* %retval
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define internal i32 @psdf_read_string_param(%struct.gs_param_list_s* %plist, i8* %key, %struct.gs_const_string_s* %pstr, %struct.gs_memory_s* %mem, i32 %ecode) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ecode.addr = alloca i32, align 4
  %ps = alloca %struct.gs_param_string_s, align 8
  %code = alloca i32, align 4
  %size = alloca i32, align 4
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %ecode, i32* %ecode.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_param_string_s* %ps to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i32 @param_read_string(%struct.gs_param_list_s* %2, i8* %3, %struct.gs_param_string_s* %ps) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %4 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %size1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ps, i32 0, i32 1
  %5 = load i32, i32* %size1, align 4, !tbaa !51
  store i32 %5, i32* %size, align 4, !tbaa !5
  %6 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %8 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !98
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load i32, i32* %size, align 4, !tbaa !5
  %call2 = call i8* %8(%struct.gs_memory_s* %9, i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.100, i32 0, i32 0)) #5
  store i8* %call2, i8** %data, align 8, !tbaa !1
  %11 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp = icmp eq i8* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %12 = load i8*, i8** %data, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %ps, i32 0, i32 0
  %13 = load i8*, i8** %data3, align 8, !tbaa !50
  %14 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %14 to i64
  %call4 = call i8* @memcpy(i8* %12, i8* %13, i64 %conv) #7
  %15 = load i8*, i8** %data, align 8, !tbaa !1
  %16 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %16, i32 0, i32 0
  store i8* %15, i8** %data5, align 8, !tbaa !67
  %17 = load i32, i32* %size, align 4, !tbaa !5
  %18 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !1
  %size6 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %18, i32 0, i32 1
  store i32 %17, i32* %size6, align 4, !tbaa !68
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.8 [
    i32 2, label %sw.epilog
  ]

sw.default:                                       ; preds = %entry
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %ecode.addr, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry, %cleanup
  %22 = load i32, i32* %ecode.addr, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.8

cleanup.8:                                        ; preds = %sw.epilog, %cleanup
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct.gs_param_string_s* %ps to i8*
  call void @llvm.lifetime.end(i64 16, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @psdf_put_embed_param(%struct.gs_param_list_s* %plist, i8* %notpname, i8* %pname, %struct.gs_param_string_array_s* %psa, %struct.gs_memory_s* %mem, i32 %ecode) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %notpname.addr = alloca i8*, align 8
  %pname.addr = alloca i8*, align 8
  %psa.addr = alloca %struct.gs_param_string_array_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ecode.addr = alloca i32, align 4
  %allpname = alloca i8*, align 8
  %sa = alloca %struct.gs_param_string_array_s, align 8
  %nsa = alloca %struct.gs_param_string_array_s, align 8
  %asa = alloca %struct.gs_param_string_array_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %notpname, i8** %notpname.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store %struct.gs_param_string_array_s* %psa, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %ecode, i32* %ecode.addr, align 4, !tbaa !5
  %0 = bitcast i8** %allpname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 1
  store i8* %add.ptr, i8** %allpname, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_string_array_s* %sa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast %struct.gs_param_string_array_s* %nsa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.gs_param_string_array_s* %asa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %7 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !101
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_s* %7(%struct.gs_memory_s* %8) #5
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call1 = call i32 @param_read_embed_array(%struct.gs_param_list_s* %9, i8* %10, %struct.gs_param_string_array_s* %sa) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %13, 0
  br i1 %cmp2, label %if.then.3, label %if.end.25

if.then.3:                                        ; preds = %if.end
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %size = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa, i32 0, i32 1
  %15 = load i32, i32* %size, align 4, !tbaa !102
  %16 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %size4 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %16, i32 0, i32 1
  %17 = load i32, i32* %size4, align 4, !tbaa !102
  %cmp5 = icmp eq i32 %15, %17
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.3
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %size7 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa, i32 0, i32 1
  %19 = load i32, i32* %size7, align 4, !tbaa !102
  %cmp8 = icmp ult i32 %18, %19
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %20 to i64
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa, i32 0, i32 0
  %21 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data, align 8, !tbaa !103
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %21, i64 %idxprom
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %22 to i64
  %23 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %data10 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %23, i32 0, i32 0
  %24 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data10, align 8, !tbaa !103
  %arrayidx11 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %24, i64 %idxprom9
  %call12 = call i32 @param_string_eq(%struct.gs_param_string_s* %arrayidx, %struct.gs_param_string_s* %arrayidx11) #5
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %for.body
  br label %for.end

if.end.14:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.13, %for.cond
  br label %if.end.15

if.else:                                          ; preds = %if.then.3
  store i32 -1, i32* %i, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %for.end
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %size16 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa, i32 0, i32 1
  %27 = load i32, i32* %size16, align 4, !tbaa !102
  %cmp17 = icmp eq i32 %26, %27
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.end.15
  br label %if.end.24

if.else.19:                                       ; preds = %if.end.15
  %28 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %29 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @delete_embed(%struct.gs_param_string_array_s* %28, %struct.gs_param_string_array_s* %29, %struct.gs_memory_s* %30) #5
  %31 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call20 = call i32 @merge_embed(%struct.gs_param_string_array_s* %31, %struct.gs_param_string_array_s* %sa, %struct.gs_memory_s* %32) #5
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %33, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.else.19
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.else.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.18
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.22
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.55 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.25

if.end.25:                                        ; preds = %cleanup.cont, %if.end
  %36 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %notpname.addr, align 8, !tbaa !1
  %call26 = call i32 @param_read_embed_array(%struct.gs_param_list_s* %36, i8* %37, %struct.gs_param_string_array_s* %nsa) #5
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %38, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  %39 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

if.end.29:                                        ; preds = %if.end.25
  %data30 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %nsa, i32 0, i32 0
  %40 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data30, align 8, !tbaa !103
  %cmp31 = icmp ne %struct.gs_param_string_s* %40, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  %41 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @delete_embed(%struct.gs_param_string_array_s* %41, %struct.gs_param_string_array_s* %nsa, %struct.gs_memory_s* %42) #5
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.29
  %43 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %44 = load i8*, i8** %allpname, align 8, !tbaa !1
  %call34 = call i32 @param_read_embed_array(%struct.gs_param_list_s* %43, i8* %44, %struct.gs_param_string_array_s* %asa) #5
  store i32 %call34, i32* %code, align 4, !tbaa !5
  %45 = load i32, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %45, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  %46 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

if.end.37:                                        ; preds = %if.end.33
  %data38 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %asa, i32 0, i32 0
  %47 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data38, align 8, !tbaa !103
  %cmp39 = icmp ne %struct.gs_param_string_s* %47, null
  br i1 %cmp39, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %if.end.37
  %48 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call41 = call i32 @merge_embed(%struct.gs_param_string_array_s* %48, %struct.gs_param_string_array_s* %asa, %struct.gs_memory_s* %49) #5
  store i32 %call41, i32* %code, align 4, !tbaa !5
  %50 = load i32, i32* %code, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %50, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.40
  %51 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

if.end.44:                                        ; preds = %if.then.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.37
  %52 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %data46 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %52, i32 0, i32 0
  %53 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data46, align 8, !tbaa !103
  %tobool47 = icmp ne %struct.gs_param_string_s* %53, null
  br i1 %tobool47, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %if.end.45
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs49 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 1
  %resize_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs49, i32 0, i32 1
  %55 = load i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)** %resize_object, align 8, !tbaa !104
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %57 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %data50 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %57, i32 0, i32 0
  %58 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data50, align 8, !tbaa !103
  %59 = bitcast %struct.gs_param_string_s* %58 to i8*
  %60 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %size51 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %60, i32 0, i32 1
  %61 = load i32, i32* %size51, align 4, !tbaa !102
  %call52 = call i8* %55(%struct.gs_memory_s* %56, i8* %59, i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.101, i32 0, i32 0)) #5
  %62 = bitcast i8* %call52 to %struct.gs_param_string_s*
  %63 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %data53 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %63, i32 0, i32 0
  store %struct.gs_param_string_s* %62, %struct.gs_param_string_s** %data53, align 8, !tbaa !103
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.48, %if.end.45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

cleanup.55:                                       ; preds = %if.end.54, %if.then.43, %if.then.36, %if.then.28, %cleanup, %if.then
  %64 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast %struct.gs_param_string_array_s* %asa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %65) #1
  %66 = bitcast %struct.gs_param_string_array_s* %nsa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %66) #1
  %67 = bitcast %struct.gs_param_string_array_s* %sa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %67) #1
  %68 = bitcast i8** %allpname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal i32 @param_read_embed_array(%struct.gs_param_list_s* %plist, i8* %pname, %struct.gs_param_string_array_s* %psa) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %psa.addr = alloca %struct.gs_param_string_array_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store %struct.gs_param_string_array_s* %psa, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %1, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data, align 8, !tbaa !103
  %2 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %2, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !102
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %call = call i32 @param_read_name_array(%struct.gs_param_list_s* %3, i8* %4, %struct.gs_param_string_array_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %6, i32 0, i32 0
  %7 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !90
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %7, i32 0, i32 7
  %8 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !92
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %call1 = call i32 %8(%struct.gs_param_list_s* %9, i8* %10, i32 %11) #5
  br label %sw.bb

sw.bb:                                            ; preds = %entry, %entry, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret i32 %12
}

declare i32 @gdev_vector_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @param_write_name(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @psdf_get_image_dict_param(%struct.gs_param_list_s* %plist, i8* %pname, %struct.gs_c_param_list_s* %plvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %plvalue.addr = alloca %struct.gs_c_param_list_s*, align 8
  %dict = alloca %struct.gs_param_collection_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store %struct.gs_c_param_list_s* %plvalue, %struct.gs_c_param_list_s** %plvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_collection_s* %dict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %dict, i32 0, i32 1
  store i32 12, i32* %size, align 4, !tbaa !105
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %3, i32 0, i32 0
  %4 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !90
  %begin_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %4, i32 0, i32 1
  %5 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)** %begin_xmit_collection, align 8, !tbaa !107
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 %5(%struct.gs_param_list_s* %6, i8* %7, %struct.gs_param_collection_s* %dict, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %8 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %9 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plvalue.addr, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.gs_c_param_list_s* %9, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %10 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plvalue.addr, align 8, !tbaa !1
  call void @gs_c_param_list_read(%struct.gs_c_param_list_s* %10) #5
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %dict, i32 0, i32 0
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list, align 8, !tbaa !108
  %12 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plvalue.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gs_c_param_list_s* %12 to %struct.gs_param_list_s*
  %call6 = call i32 @param_list_copy(%struct.gs_param_list_s* %11, %struct.gs_param_list_s* %13) #5
  store i32 %call6, i32* %code, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %14, i32 0, i32 0
  %15 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs8, align 8, !tbaa !90
  %end_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %15, i32 0, i32 2
  %16 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)** %end_xmit_collection, align 8, !tbaa !109
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call9 = call i32 %16(%struct.gs_param_list_s* %17, i8* %18, %struct.gs_param_collection_s* %dict) #5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.2, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.gs_param_collection_s* %dict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @gs_c_param_list_read(%struct.gs_c_param_list_s*) #2

declare i32 @param_list_copy(%struct.gs_param_list_s*, %struct.gs_param_list_s*) #2

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #2

declare i32 @param_write_name_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_array_s*) #2

declare i32 @param_put_enum(%struct.gs_param_list_s*, i8*, i32*, i8**, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @psdf_put_image_dict_param(%struct.gs_param_list_s* %plist, i8* %pname, %struct.gs_c_param_list_s** %pplvalue, %struct.stream_template_s* %templat, i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)* %put_params, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %pplvalue.addr = alloca %struct.gs_c_param_list_s**, align 8
  %templat.addr = alloca %struct.stream_template_s*, align 8
  %put_params.addr = alloca i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %dict = alloca %struct.gs_param_collection_s, align 8
  %plvalue = alloca %struct.gs_c_param_list_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ss = alloca %struct.stream_state_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store %struct.gs_c_param_list_s** %pplvalue, %struct.gs_c_param_list_s*** %pplvalue.addr, align 8, !tbaa !1
  store %struct.stream_template_s* %templat, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  store i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)* %put_params, i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)** %put_params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_collection_s* %dict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.gs_c_param_list_s** %plvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_c_param_list_s**, %struct.gs_c_param_list_s*** %pplvalue.addr, align 8, !tbaa !1
  %3 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %2, align 8, !tbaa !1
  store %struct.gs_c_param_list_s* %3, %struct.gs_c_param_list_s** %plvalue, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %6 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !101
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_s* %6(%struct.gs_memory_s* %7) #5
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %8, i32 0, i32 0
  %9 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs1, align 8, !tbaa !90
  %begin_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %9, i32 0, i32 1
  %10 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)** %begin_xmit_collection, align 8, !tbaa !107
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call2 = call i32 %10(%struct.gs_param_list_s* %11, i8* %12, %struct.gs_param_collection_s* %dict, i32 0) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  switch i32 %call2, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.5
  ]

sw.default:                                       ; preds = %entry
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %13, i32 0, i32 0
  %14 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs3, align 8, !tbaa !90
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %14, i32 0, i32 7
  %15 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !92
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %call4 = call i32 %15(%struct.gs_param_list_s* %16, i8* %17, i32 %18) #5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

sw.bb.5:                                          ; preds = %entry
  %20 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %22 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %stype = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %22, i32 0, i32 0
  %23 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !110
  %24 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call6 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %21, %struct.gs_memory_struct_type_s* %23, i8* %24) #5
  store %struct.stream_state_s* %call6, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %25 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_state_s* %25, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb.5
  %26 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %27 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %templat7 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %27, i32 0, i32 0
  store %struct.stream_template_s* %26, %struct.stream_template_s** %templat7, align 8, !tbaa !112
  %28 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %set_defaults = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %28, i32 0, i32 6
  %29 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults, align 8, !tbaa !114
  %tobool = icmp ne void (%struct.stream_state_s*)* %29, null
  br i1 %tobool, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %30 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %set_defaults9 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %30, i32 0, i32 6
  %31 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults9, align 8, !tbaa !114
  %32 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  call void %31(%struct.stream_state_s* %32) #5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %33 = load i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)*, i32 (%struct.gs_param_list_s*, %struct.stream_state_s*)** %put_params.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %dict, i32 0, i32 0
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list, align 8, !tbaa !108
  %35 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %call11 = call i32 %33(%struct.gs_param_list_s* %34, %struct.stream_state_s* %35) #5
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %36 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %release = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %36, i32 0, i32 5
  %37 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %release, align 8, !tbaa !115
  %tobool12 = icmp ne void (%struct.stream_state_s*)* %37, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.10
  %38 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %release14 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %38, i32 0, i32 5
  %39 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %release14, align 8, !tbaa !115
  %40 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  call void %39(%struct.stream_state_s* %40) #5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.10
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 2
  %42 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !116
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %44 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %45 = bitcast %struct.stream_state_s* %44 to i8*
  %46 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  call void %42(%struct.gs_memory_s* %43, i8* %45, i8* %46) #5
  %47 = load i32, i32* %code, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %47, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.15
  %48 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs19 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %48, i32 0, i32 0
  %49 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs19, align 8, !tbaa !90
  %signal_error20 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %49, i32 0, i32 7
  %50 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error20, align 8, !tbaa !92
  %51 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %52 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %53 = load i32, i32* %code, align 4, !tbaa !5
  %call21 = call i32 %50(%struct.gs_param_list_s* %51, i8* %52, i32 %53) #5
  br label %if.end.33

if.else:                                          ; preds = %if.end.15
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %55 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call22 = call %struct.gs_c_param_list_s* @gs_c_param_list_alloc(%struct.gs_memory_s* %54, i8* %55) #5
  store %struct.gs_c_param_list_s* %call22, %struct.gs_c_param_list_s** %plvalue, align 8, !tbaa !1
  %56 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plvalue, align 8, !tbaa !1
  %cmp23 = icmp eq %struct.gs_c_param_list_s* %56, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.else
  %57 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plvalue, align 8, !tbaa !1
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_c_param_list_write(%struct.gs_c_param_list_s* %57, %struct.gs_memory_s* %58) #5
  %59 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plvalue, align 8, !tbaa !1
  %60 = bitcast %struct.gs_c_param_list_s* %59 to %struct.gs_param_list_s*
  %list26 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %dict, i32 0, i32 0
  %61 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list26, align 8, !tbaa !108
  %call27 = call i32 @param_list_copy(%struct.gs_param_list_s* %60, %struct.gs_param_list_s* %61) #5
  store i32 %call27, i32* %code, align 4, !tbaa !5
  %62 = load i32, i32* %code, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %62, 0
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.25
  %63 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plvalue, align 8, !tbaa !1
  call void @gs_c_param_list_release(%struct.gs_c_param_list_s* %63) #5
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 1
  %free_object31 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs30, i32 0, i32 2
  %65 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object31, align 8, !tbaa !116
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %67 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plvalue, align 8, !tbaa !1
  %68 = bitcast %struct.gs_c_param_list_s* %67 to i8*
  %69 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  call void %65(%struct.gs_memory_s* %66, i8* %68, i8* %69) #5
  %70 = load %struct.gs_c_param_list_s**, %struct.gs_c_param_list_s*** %pplvalue.addr, align 8, !tbaa !1
  %71 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %70, align 8, !tbaa !1
  store %struct.gs_c_param_list_s* %71, %struct.gs_c_param_list_s** %plvalue, align 8, !tbaa !1
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.25
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.18
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.24, %if.then
  %72 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.42 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %73 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs34 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %73, i32 0, i32 0
  %74 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs34, align 8, !tbaa !90
  %end_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %74, i32 0, i32 2
  %75 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)** %end_xmit_collection, align 8, !tbaa !109
  %76 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %77 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call35 = call i32 %75(%struct.gs_param_list_s* %76, i8* %77, %struct.gs_param_collection_s* %dict) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup.cont
  %78 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plvalue, align 8, !tbaa !1
  %79 = load %struct.gs_c_param_list_s**, %struct.gs_c_param_list_s*** %pplvalue.addr, align 8, !tbaa !1
  %80 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %79, align 8, !tbaa !1
  %cmp36 = icmp ne %struct.gs_c_param_list_s* %78, %80
  br i1 %cmp36, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %sw.epilog
  %81 = load %struct.gs_c_param_list_s**, %struct.gs_c_param_list_s*** %pplvalue.addr, align 8, !tbaa !1
  %82 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %81, align 8, !tbaa !1
  %tobool38 = icmp ne %struct.gs_c_param_list_s* %82, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.37
  %83 = load %struct.gs_c_param_list_s**, %struct.gs_c_param_list_s*** %pplvalue.addr, align 8, !tbaa !1
  %84 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %83, align 8, !tbaa !1
  call void @gs_c_param_list_release(%struct.gs_c_param_list_s* %84) #5
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.37
  %85 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plvalue, align 8, !tbaa !1
  %86 = load %struct.gs_c_param_list_s**, %struct.gs_c_param_list_s*** %pplvalue.addr, align 8, !tbaa !1
  store %struct.gs_c_param_list_s* %85, %struct.gs_c_param_list_s** %86, align 8, !tbaa !1
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %sw.epilog
  %87 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

cleanup.42:                                       ; preds = %if.end.41, %cleanup, %sw.bb, %sw.default
  %88 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast %struct.gs_c_param_list_s** %plvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast %struct.gs_param_collection_s* %dict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %90) #1
  %91 = load i32, i32* %retval
  ret i32 %91
}

; Function Attrs: nounwind uwtable
define internal i32 @psdf_DCT_put_params(%struct.gs_param_list_s* %plist, %struct.stream_state_s* %st) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %st.addr = alloca %struct.stream_state_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %call = call i32 @psdf_DCT_filter(%struct.gs_param_list_s* %0, %struct.stream_state_s* %1, i32 8, i32 8, i32 3, %struct.psdf_binary_writer_s* null) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @psdf_CF_put_params(%struct.gs_param_list_s* %plist, %struct.stream_state_s* %st) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_CFE_state_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_CFE_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_CFE_state_s*
  store %struct.stream_CFE_state_s* %2, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %3 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_CFE_template, i32 0, i32 6), align 8, !tbaa !114
  %4 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  call void %3(%struct.stream_state_s* %4) #5
  %5 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %K = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %5, i32 0, i32 9
  store i32 -1, i32* %K, align 4, !tbaa !117
  %6 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %BlackIs1 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %6, i32 0, i32 15
  store i32 1, i32* %BlackIs1, align 4, !tbaa !119
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %9 = bitcast %struct.stream_CFE_state_s* %8 to %struct.stream_CF_state_s*
  %call = call i32 @s_CF_put_params(%struct.gs_param_list_s* %7, %struct.stream_CF_state_s* %9) #5
  %10 = bitcast %struct.stream_CFE_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i32 %call
}

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #2

declare i32 @gs_param_string_eq(%struct.gs_param_string_s*, i8*) #2

declare %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*) #2

declare %struct.gs_c_param_list_s* @gs_c_param_list_alloc(%struct.gs_memory_s*, i8*) #2

declare void @gs_c_param_list_write(%struct.gs_c_param_list_s*, %struct.gs_memory_s*) #2

declare void @gs_c_param_list_release(%struct.gs_c_param_list_s*) #2

declare i32 @psdf_DCT_filter(%struct.gs_param_list_s*, %struct.stream_state_s*, i32, i32, i32, %struct.psdf_binary_writer_s*) #2

declare i32 @s_CF_put_params(%struct.gs_param_list_s*, %struct.stream_CF_state_s*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @param_string_eq(%struct.gs_param_string_s* %ps1, %struct.gs_param_string_s* %ps2) #0 {
entry:
  %ps1.addr = alloca %struct.gs_param_string_s*, align 8
  %ps2.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_param_string_s* %ps1, %struct.gs_param_string_s** %ps1.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %ps2, %struct.gs_param_string_s** %ps2.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %ps1.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8, !tbaa !50
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %ps1.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4, !tbaa !51
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %ps2.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %data1, align 8, !tbaa !50
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %ps2.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %6, i32 0, i32 1
  %7 = load i32, i32* %size2, align 4, !tbaa !51
  %call = call i32 @bytes_compare(i8* %1, i32 %3, i8* %5, i32 %7) #5
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal void @delete_embed(%struct.gs_param_string_array_s* %prsa, %struct.gs_param_string_array_s* %pnsa, %struct.gs_memory_s* %mem) #0 {
entry:
  %prsa.addr = alloca %struct.gs_param_string_array_s*, align 8
  %pnsa.addr = alloca %struct.gs_param_string_array_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %i = alloca i32, align 4
  %rdata = alloca %struct.gs_param_string_s*, align 8
  %count = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.gs_param_string_array_s* %prsa, %struct.gs_param_string_array_s** %prsa.addr, align 8, !tbaa !1
  store %struct.gs_param_string_array_s* %pnsa, %struct.gs_param_string_array_s** %pnsa.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_param_string_s** %rdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %prsa.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %2, i32 0, i32 0
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data, align 8, !tbaa !103
  store %struct.gs_param_string_s* %3, %struct.gs_param_string_s** %rdata, align 8, !tbaa !1
  %4 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %prsa.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4, !tbaa !102
  store i32 %6, i32* %count, align 4, !tbaa !5
  %7 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %pnsa.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %7, i32 0, i32 1
  %8 = load i32, i32* %size1, align 4, !tbaa !102
  store i32 %8, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.22, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add i32 %9, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %cmp = icmp ugt i32 %9, 0
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  %10 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %count, align 4, !tbaa !5
  store i32 %11, i32* %j, align 4, !tbaa !5
  br label %for.cond.2

for.cond.2:                                       ; preds = %if.end, %for.body
  %12 = load i32, i32* %j, align 4, !tbaa !5
  %dec3 = add i32 %12, -1
  store i32 %dec3, i32* %j, align 4, !tbaa !5
  %cmp4 = icmp ugt i32 %12, 0
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %13 to i64
  %14 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %pnsa.addr, align 8, !tbaa !1
  %data6 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %14, i32 0, i32 0
  %15 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data6, align 8, !tbaa !103
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %15, i64 %idxprom
  %16 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom7 = zext i32 %16 to i64
  %17 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %rdata, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %17, i64 %idxprom7
  %call = call i32 @param_string_eq(%struct.gs_param_string_s* %arrayidx, %struct.gs_param_string_s* %arrayidx8) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  br label %for.end

if.end:                                           ; preds = %for.body.5
  br label %for.cond.2

for.end:                                          ; preds = %if.then, %for.cond.2
  %18 = load i32, i32* %j, align 4, !tbaa !5
  %add = add i32 %18, 1
  %cmp9 = icmp ne i32 %add, 0
  br i1 %cmp9, label %if.then.10, label %if.end.22

if.then.10:                                       ; preds = %for.end
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom11 = zext i32 %20 to i64
  %21 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %rdata, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %21, i64 %idxprom11
  %data13 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx12, i32 0, i32 0
  %22 = load i8*, i8** %data13, align 8, !tbaa !50
  %23 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom14 = zext i32 %23 to i64
  %24 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %rdata, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %24, i64 %idxprom14
  %size16 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx15, i32 0, i32 1
  %25 = load i32, i32* %size16, align 4, !tbaa !51
  call void @gs_free_const_string(%struct.gs_memory_s* %19, i8* %22, i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0)) #5
  %26 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom17 = zext i32 %26 to i64
  %27 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %rdata, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %27, i64 %idxprom17
  %28 = load i32, i32* %count, align 4, !tbaa !5
  %dec19 = add i32 %28, -1
  store i32 %dec19, i32* %count, align 4, !tbaa !5
  %idxprom20 = zext i32 %dec19 to i64
  %29 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %rdata, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %29, i64 %idxprom20
  %30 = bitcast %struct.gs_param_string_s* %arrayidx18 to i8*
  %31 = bitcast %struct.gs_param_string_s* %arrayidx21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false), !tbaa.struct !120
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.10, %for.end
  %32 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  %33 = load i32, i32* %count, align 4, !tbaa !5
  %34 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %prsa.addr, align 8, !tbaa !1
  %size24 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %34, i32 0, i32 1
  store i32 %33, i32* %size24, align 4, !tbaa !102
  %35 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct.gs_param_string_s** %rdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @merge_embed(%struct.gs_param_string_array_s* %psa, %struct.gs_param_string_array_s* %asa, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %psa.addr = alloca %struct.gs_param_string_array_s*, align 8
  %asa.addr = alloca %struct.gs_param_string_array_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %rsa = alloca %struct.gs_param_string_array_s, align 8
  %rdata = alloca %struct.gs_param_string_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_string_array_s* %psa, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  store %struct.gs_param_string_array_s* %asa, %struct.gs_param_string_array_s** %asa.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_array_s* %rsa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.gs_param_string_s** %rdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %4 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !121
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4, !tbaa !102
  %8 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %asa.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %8, i32 0, i32 1
  %9 = load i32, i32* %size1, align 4, !tbaa !102
  %add = add i32 %7, %9
  %call = call i8* %4(%struct.gs_memory_s* %5, i32 %add, %struct.gs_memory_struct_type_s* @st_param_string_element, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.103, i32 0, i32 0)) #5
  %10 = bitcast i8* %call to %struct.gs_param_string_s*
  store %struct.gs_param_string_s* %10, %struct.gs_param_string_s** %rdata, align 8, !tbaa !1
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %rdata, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_param_string_s* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %rdata, align 8, !tbaa !1
  %13 = bitcast %struct.gs_param_string_s* %12 to i8*
  %14 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %14, i32 0, i32 0
  %15 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data, align 8, !tbaa !103
  %16 = bitcast %struct.gs_param_string_s* %15 to i8*
  %17 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %17, i32 0, i32 1
  %18 = load i32, i32* %size2, align 4, !tbaa !102
  %conv = zext i32 %18 to i64
  %mul = mul i64 %conv, 16
  %call3 = call i8* @memcpy(i8* %13, i8* %16, i64 %mul) #7
  %19 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %rdata, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %rsa, i32 0, i32 0
  store %struct.gs_param_string_s* %19, %struct.gs_param_string_s** %data4, align 8, !tbaa !103
  %20 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %size5 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %20, i32 0, i32 1
  %21 = load i32, i32* %size5, align 4, !tbaa !102
  %size6 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %rsa, i32 0, i32 1
  store i32 %21, i32* %size6, align 4, !tbaa !102
  %persistent = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %rsa, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !122
  %22 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %asa.addr, align 8, !tbaa !1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call7 = call i32 @add_embed(%struct.gs_param_string_array_s* %rsa, %struct.gs_param_string_array_s* %22, %struct.gs_memory_s* %23) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %24, 0
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %26 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !116
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %28 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %rdata, align 8, !tbaa !1
  %29 = bitcast %struct.gs_param_string_s* %28 to i8*
  call void %26(%struct.gs_memory_s* %27, i8* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.103, i32 0, i32 0)) #5
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %32 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %data13 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %32, i32 0, i32 0
  %33 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data13, align 8, !tbaa !103
  %34 = bitcast %struct.gs_param_string_s* %33 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %31, i8* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.104, i32 0, i32 0)) #5
  %35 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %36 = bitcast %struct.gs_param_string_array_s* %35 to i8*
  %37 = bitcast %struct.gs_param_string_array_s* %rsa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false), !tbaa.struct !120
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.10, %if.then
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.gs_param_string_s** %rdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.gs_param_string_array_s* %rsa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare i32 @bytes_compare(i8*, i32, i8*, i32) #2

declare void @gs_free_const_string(%struct.gs_memory_s*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @add_embed(%struct.gs_param_string_array_s* %prsa, %struct.gs_param_string_array_s* %psa, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %prsa.addr = alloca %struct.gs_param_string_array_s*, align 8
  %psa.addr = alloca %struct.gs_param_string_array_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %i = alloca i32, align 4
  %rdata = alloca %struct.gs_param_string_s*, align 8
  %count = alloca i32, align 4
  %j = alloca i32, align 4
  %size10 = alloca i32, align 4
  %data15 = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_string_array_s* %prsa, %struct.gs_param_string_array_s** %prsa.addr, align 8, !tbaa !1
  store %struct.gs_param_string_array_s* %psa, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_param_string_s** %rdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %prsa.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %2, i32 0, i32 0
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data, align 8, !tbaa !103
  store %struct.gs_param_string_s* %3, %struct.gs_param_string_s** %rdata, align 8, !tbaa !1
  %4 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %prsa.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4, !tbaa !102
  store i32 %6, i32* %count, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %8, i32 0, i32 1
  %9 = load i32, i32* %size1, align 4, !tbaa !102
  %cmp = icmp ult i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  %10 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %j, align 4, !tbaa !5
  %12 = load i32, i32* %count, align 4, !tbaa !5
  %cmp3 = icmp ult i32 %11, %12
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %13 to i64
  %14 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %14, i32 0, i32 0
  %15 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data5, align 8, !tbaa !103
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %15, i64 %idxprom
  %16 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom6 = zext i32 %16 to i64
  %17 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %rdata, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %17, i64 %idxprom6
  %call = call i32 @param_string_eq(%struct.gs_param_string_s* %arrayidx, %struct.gs_param_string_s* %arrayidx7) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  br label %for.end

if.end:                                           ; preds = %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %18, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.2

for.end:                                          ; preds = %if.then, %for.cond.2
  %19 = load i32, i32* %j, align 4, !tbaa !5
  %20 = load i32, i32* %count, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %19, %20
  br i1 %cmp8, label %if.then.9, label %if.end.35

if.then.9:                                        ; preds = %for.end
  %21 = bitcast i32* %size10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = zext i32 %22 to i64
  %23 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %data12 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %23, i32 0, i32 0
  %24 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data12, align 8, !tbaa !103
  %arrayidx13 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %24, i64 %idxprom11
  %size14 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx13, i32 0, i32 1
  %25 = load i32, i32* %size14, align 4, !tbaa !51
  store i32 %25, i32* %size10, align 4, !tbaa !5
  %26 = bitcast i8** %data15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %28 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !98
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %30 = load i32, i32* %size10, align 4, !tbaa !5
  %call16 = call i8* %28(%struct.gs_memory_s* %29, i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0)) #5
  store i8* %call16, i8** %data15, align 8, !tbaa !1
  %31 = load i8*, i8** %data15, align 8, !tbaa !1
  %cmp17 = icmp eq i8* %31, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.9
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.9
  %32 = load i8*, i8** %data15, align 8, !tbaa !1
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = zext i32 %33 to i64
  %34 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %psa.addr, align 8, !tbaa !1
  %data21 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %34, i32 0, i32 0
  %35 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data21, align 8, !tbaa !103
  %arrayidx22 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %35, i64 %idxprom20
  %data23 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx22, i32 0, i32 0
  %36 = load i8*, i8** %data23, align 8, !tbaa !50
  %37 = load i32, i32* %size10, align 4, !tbaa !5
  %conv = zext i32 %37 to i64
  %call24 = call i8* @memcpy(i8* %32, i8* %36, i64 %conv) #7
  %38 = load i8*, i8** %data15, align 8, !tbaa !1
  %39 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom25 = zext i32 %39 to i64
  %40 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %rdata, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %40, i64 %idxprom25
  %data27 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx26, i32 0, i32 0
  store i8* %38, i8** %data27, align 8, !tbaa !50
  %41 = load i32, i32* %size10, align 4, !tbaa !5
  %42 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom28 = zext i32 %42 to i64
  %43 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %rdata, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %43, i64 %idxprom28
  %size30 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx29, i32 0, i32 1
  store i32 %41, i32* %size30, align 4, !tbaa !51
  %44 = load i32, i32* %count, align 4, !tbaa !5
  %idxprom31 = zext i32 %44 to i64
  %45 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %rdata, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %45, i64 %idxprom31
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx32, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !52
  %46 = load i32, i32* %count, align 4, !tbaa !5
  %inc33 = add i32 %46, 1
  store i32 %inc33, i32* %count, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18
  %47 = bitcast i8** %data15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %size10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.36 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.35

if.end.35:                                        ; preds = %cleanup.cont, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.36

cleanup.36:                                       ; preds = %if.end.35, %cleanup
  %49 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %cleanup.dest.37 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.37, label %cleanup.43 [
    i32 0, label %cleanup.cont.38
  ]

cleanup.cont.38:                                  ; preds = %cleanup.36
  br label %for.inc.39

for.inc.39:                                       ; preds = %cleanup.cont.38
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %inc40 = add i32 %50, 1
  store i32 %inc40, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  %51 = load i32, i32* %count, align 4, !tbaa !5
  %52 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %prsa.addr, align 8, !tbaa !1
  %size42 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %52, i32 0, i32 1
  store i32 %51, i32* %size42, align 4, !tbaa !102
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

cleanup.43:                                       ; preds = %for.end.41, %cleanup.36
  %53 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast %struct.gs_param_string_s** %rdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare void @gs_free_const_object(%struct.gs_memory_s*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @param_string_elt_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 16
  store i32 %div, i32* %count, align 4, !tbaa !5
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_param_string, i32 0, i32 4), align 8, !tbaa !123
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = load i32, i32* %index.addr, align 4, !tbaa !5
  %7 = load i32, i32* %count, align 4, !tbaa !5
  %rem = urem i32 %6, %7
  %conv = zext i32 %rem to i64
  %mul = mul i64 %conv, 16
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %mul
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %div1 = udiv i32 %8, %9
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %add.ptr, i32 16, i32 %div1, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* @st_gs_param_string, %struct.gc_state_s* %11) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @param_string_elt_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 16
  store i32 %div, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_param_string, i32 0, i32 5), align 8, !tbaa !125
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 16, %struct.gs_memory_struct_type_s* @st_gs_param_string, %struct.gc_state_s* %5) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add i32 %6, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 16
  store i8* %add.ptr, i8** %vptr.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @param_string_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pstr = alloca %struct.gs_param_string_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s** %pstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_param_string_s*
  store %struct.gs_param_string_s* %2, %struct.gs_param_string_s** %pstr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !50
  %6 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %6, i32 0, i32 0
  store i8* %5, i8** %ptr, align 8, !tbaa !126
  %7 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %7, i32 0, i32 1
  %8 = load i32, i32* %size1, align 4, !tbaa !51
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %9, i32 0, i32 1
  store i32 %8, i32* %size2, align 4, !tbaa !128
  store %struct.gs_ptr_procs_s* @ptr_const_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.default
  %10 = bitcast %struct.gs_param_string_s** %pstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %11
}

; Function Attrs: nounwind uwtable
define internal void @param_string_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pstr = alloca %struct.gs_param_string_s*, align 8
  %str = alloca %struct.gs_const_string_s, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_string_s** %pstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_param_string_s*
  store %struct.gs_param_string_s* %2, %struct.gs_param_string_s** %pstr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !50
  %data1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  store i8* %5, i8** %data1, align 8, !tbaa !67
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %6, i32 0, i32 1
  %7 = load i32, i32* %size2, align 4, !tbaa !51
  %size3 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 1
  store i32 %7, i32* %size3, align 4, !tbaa !68
  %8 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gc_state_s* %8 to %struct.gc_procs_common_s**
  %10 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %9, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %10, i32 0, i32 2
  %11 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !129
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %11(%struct.gs_const_string_s* %str, %struct.gc_state_s* %12) #5
  %data4 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %13 = load i8*, i8** %data4, align 8, !tbaa !67
  %14 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %14, i32 0, i32 0
  store i8* %13, i8** %data5, align 8, !tbaa !50
  %15 = bitcast %struct.gs_const_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %15) #1
  %16 = bitcast %struct.gs_param_string_s** %pstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret void
}

declare i32 @param_read_name_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_array_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !3, i64 8884}
!8 = !{!"gx_device_psdf_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !6, i64 5864, !6, i64 5868, !20, i64 5872, !2, i64 7488, !6, i64 7496, !6, i64 7500, !6, i64 7504, !33, i64 7512, !33, i64 8144, !10, i64 8776, !10, i64 8784, !3, i64 8792, !3, i64 8796, !26, i64 8800, !6, i64 8816, !2, i64 8824, !10, i64 8832, !10, i64 8840, !3, i64 8848, !6, i64 8852, !6, i64 8856, !6, i64 8860, !6, i64 8864, !27, i64 8872, !38, i64 8880}
!9 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !12, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !13, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !10, i64 704, !6, i64 712}
!12 = !{!"short", !3, i64 0}
!13 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!14 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!16 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !17, i64 16, !6, i64 32, !3, i64 36}
!17 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !10, i64 8}
!18 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!20 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !21, i64 24, !6, i64 128, !25, i64 132, !6, i64 168, !26, i64 176, !26, i64 192, !6, i64 208, !6, i64 212, !12, i64 216, !3, i64 220, !28, i64 224, !28, i64 228, !29, i64 232, !10, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !22, i64 296, !30, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !22, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !31, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !32, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !32, i64 1336}
!21 = !{!"gx_line_params_s", !22, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !6, i64 36, !23, i64 40, !24, i64 64}
!22 = !{!"float", !3, i64 0}
!23 = !{!"gs_matrix_s", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20}
!24 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !22, i64 12, !6, i64 16, !22, i64 20, !6, i64 24, !6, i64 28, !22, i64 32}
!25 = !{!"gs_matrix_fixed_s", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!26 = !{!"gs_point_s", !27, i64 0, !27, i64 8}
!27 = !{!"double", !3, i64 0}
!28 = !{!"gs_transparency_source_s", !22, i64 0}
!29 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!30 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!31 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!32 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !10, i64 16, !3, i64 24}
!33 = !{!"gx_hl_saved_color_s", !10, i64 0, !10, i64 8, !6, i64 16, !34, i64 24, !36, i64 288}
!34 = !{!"gs_client_color_s", !2, i64 0, !35, i64 8}
!35 = !{!"gs_paint_color_s", !3, i64 0}
!36 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !37, i64 336}
!37 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!38 = !{!"psdf_distiller_params_s", !6, i64 0, !3, i64 4, !3, i64 8, !6, i64 12, !3, i64 16, !6, i64 20, !6, i64 24, !10, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !39, i64 64, !39, i64 80, !39, i64 96, !39, i64 112, !3, i64 128, !6, i64 132, !6, i64 136, !3, i64 140, !3, i64 144, !40, i64 152, !6, i64 232, !6, i64 236, !40, i64 240, !40, i64 320, !41, i64 400, !41, i64 416, !3, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !42, i64 448, !41, i64 464}
!39 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!40 = !{!"psdf_image_params_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !22, i64 36, !3, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !2, i64 64, !2, i64 72}
!41 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!42 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!43 = !{!8, !3, i64 8888}
!44 = !{!8, !3, i64 8896}
!45 = !{!8, !3, i64 9020}
!46 = !{!8, !3, i64 9024}
!47 = !{!8, !27, i64 8872}
!48 = !{!8, !3, i64 9008}
!49 = !{!8, !3, i64 9312}
!50 = !{!42, !2, i64 0}
!51 = !{!42, !6, i64 8}
!52 = !{!42, !6, i64 12}
!53 = !{!54, !2, i64 0}
!54 = !{!"gs_param_item_s", !2, i64 0, !3, i64 8, !12, i64 10}
!55 = !{!56, !2, i64 0}
!56 = !{!"psdf_image_param_names_s", !2, i64 0, !2, i64 8, !2, i64 16, !22, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56}
!57 = !{!40, !2, i64 0}
!58 = !{!56, !2, i64 8}
!59 = !{!40, !2, i64 24}
!60 = !{!56, !2, i64 16}
!61 = !{!40, !3, i64 40}
!62 = !{!56, !2, i64 40}
!63 = !{!40, !2, i64 48}
!64 = !{!56, !2, i64 32}
!65 = !{!66, !2, i64 0}
!66 = !{!"psdf_image_filter_name_s", !2, i64 0, !2, i64 8, !3, i64 16}
!67 = !{!39, !2, i64 0}
!68 = !{!39, !6, i64 8}
!69 = !{!8, !2, i64 1728}
!70 = !{!71, !2, i64 24}
!71 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!72 = !{i64 0, i64 4, !5, i64 4, i64 4, !73, i64 8, i64 4, !73, i64 12, i64 4, !5, i64 16, i64 4, !73, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 32, i64 8, !74, i64 40, i64 4, !5, i64 44, i64 4, !5, i64 48, i64 4, !5, i64 52, i64 4, !5, i64 56, i64 4, !5, i64 64, i64 8, !1, i64 72, i64 4, !5, i64 80, i64 8, !1, i64 88, i64 4, !5, i64 96, i64 8, !1, i64 104, i64 4, !5, i64 112, i64 8, !1, i64 120, i64 4, !5, i64 128, i64 4, !73, i64 132, i64 4, !5, i64 136, i64 4, !5, i64 140, i64 4, !73, i64 144, i64 4, !73, i64 152, i64 8, !1, i64 160, i64 4, !5, i64 164, i64 4, !5, i64 168, i64 4, !5, i64 176, i64 8, !1, i64 184, i64 4, !5, i64 188, i64 4, !75, i64 192, i64 4, !73, i64 196, i64 4, !5, i64 200, i64 8, !1, i64 208, i64 4, !5, i64 216, i64 8, !1, i64 224, i64 8, !1, i64 232, i64 4, !5, i64 236, i64 4, !5, i64 240, i64 8, !1, i64 248, i64 4, !5, i64 252, i64 4, !5, i64 256, i64 4, !5, i64 264, i64 8, !1, i64 272, i64 4, !5, i64 276, i64 4, !75, i64 280, i64 4, !73, i64 284, i64 4, !5, i64 288, i64 8, !1, i64 296, i64 4, !5, i64 304, i64 8, !1, i64 312, i64 8, !1, i64 320, i64 8, !1, i64 328, i64 4, !5, i64 332, i64 4, !5, i64 336, i64 4, !5, i64 344, i64 8, !1, i64 352, i64 4, !5, i64 356, i64 4, !75, i64 360, i64 4, !73, i64 364, i64 4, !5, i64 368, i64 8, !1, i64 376, i64 4, !5, i64 384, i64 8, !1, i64 392, i64 8, !1, i64 400, i64 8, !1, i64 408, i64 4, !5, i64 412, i64 4, !5, i64 416, i64 8, !1, i64 424, i64 4, !5, i64 428, i64 4, !5, i64 432, i64 4, !73, i64 436, i64 4, !5, i64 440, i64 4, !5, i64 444, i64 4, !5, i64 448, i64 8, !1, i64 456, i64 4, !5, i64 460, i64 4, !5, i64 464, i64 8, !1, i64 472, i64 4, !5, i64 476, i64 4, !5}
!73 = !{!3, !3, i64 0}
!74 = !{!10, !10, i64 0}
!75 = !{!22, !22, i64 0}
!76 = !{!8, !6, i64 8920}
!77 = !{!38, !6, i64 40}
!78 = !{!38, !3, i64 4}
!79 = !{!38, !3, i64 8}
!80 = !{!38, !3, i64 16}
!81 = !{!38, !3, i64 140}
!82 = !{!38, !3, i64 144}
!83 = !{!38, !3, i64 128}
!84 = !{!38, !3, i64 432}
!85 = !{!8, !2, i64 24}
!86 = !{!66, !3, i64 16}
!87 = !{!8, !3, i64 8848}
!88 = !{!66, !2, i64 8}
!89 = !{!40, !2, i64 72}
!90 = !{!91, !2, i64 0}
!91 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!92 = !{!93, !2, i64 56}
!93 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!94 = !{!40, !6, i64 56}
!95 = !{!40, !22, i64 36}
!96 = !{!56, !22, i64 24}
!97 = !{!40, !6, i64 16}
!98 = !{!99, !2, i64 136}
!99 = !{!"gs_memory_s", !2, i64 0, !100, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!100 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!101 = !{!99, !2, i64 32}
!102 = !{!41, !6, i64 8}
!103 = !{!41, !2, i64 0}
!104 = !{!99, !2, i64 16}
!105 = !{!106, !6, i64 8}
!106 = !{!"gs_param_collection_s", !2, i64 0, !6, i64 8}
!107 = !{!93, !2, i64 8}
!108 = !{!106, !2, i64 0}
!109 = !{!93, !2, i64 16}
!110 = !{!111, !2, i64 0}
!111 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!112 = !{!113, !2, i64 0}
!113 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28}
!114 = !{!111, !2, i64 40}
!115 = !{!111, !2, i64 32}
!116 = !{!99, !2, i64 24}
!117 = !{!118, !6, i64 124}
!118 = !{!"stream_CFE_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !2, i64 168, !2, i64 176, !6, i64 184, !6, i64 188, !2, i64 192, !6, i64 200, !6, i64 204, !6, i64 208}
!119 = !{!118, !6, i64 148}
!120 = !{i64 0, i64 8, !1, i64 8, i64 4, !5, i64 12, i64 4, !5}
!121 = !{!99, !2, i64 104}
!122 = !{!41, !6, i64 12}
!123 = !{!124, !2, i64 32}
!124 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!125 = !{!124, !2, i64 40}
!126 = !{!127, !2, i64 0}
!127 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!128 = !{!127, !6, i64 8}
!129 = !{!130, !2, i64 16}
!130 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
