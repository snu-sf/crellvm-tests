; ModuleID = './gsshade.bc'
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
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_shading_procs_s = type { i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)* }
%struct.gs_shading_s = type { %struct.gs_shading_head_s, %struct.gs_shading_params_s }
%struct.gs_shading_head_s = type { i32, %struct.gs_shading_procs_s }
%struct.gs_shading_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32 }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_device_halftone_s = type opaque
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_state_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float }
%struct.gx_clip_path_s = type { %struct.gx_path_s, %struct.gx_clip_rect_list_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_rect_list_s*, i32, %struct.gx_cpath_path_list_s*, i64 }
%struct.gx_clip_rect_list_s = type { %struct.rc_header_s, %struct.gx_clip_list_s }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gx_cpath_path_list_s = type { %struct.gx_path_s, %struct.rc_header_s, i32, %struct.gx_cpath_path_list_s* }
%struct.gx_stroke_params_s = type { float, i32 }
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
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
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type { %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i32, [64 x float], %struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gs_shading_mesh_s*, %struct.gs_fixed_rect_s, %struct.gs_function_s*, i32, i32, i32, i32, %struct.wedge_vertex_list_elem_s*, %struct.wedge_vertex_list_elem_s*, i32, i32, %struct.gs_client_color_s, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, %struct.gs_memory_s*, %struct.gs_color_index_cache_s* }
%struct.gs_shading_mesh_s = type { %struct.gs_shading_head_s, %struct.gs_shading_mesh_params_s }
%struct.gs_shading_mesh_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s* }
%struct.gs_data_source_s = type { i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32, %union.d_ }
%union.d_ = type { %struct.gs_const_string_s }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_function_params_s = type { i32, float*, i32, float* }
%struct.wedge_vertex_list_elem_s = type { %struct.gs_fixed_point_s, i32, i32, %struct.wedge_vertex_list_elem_s*, %struct.wedge_vertex_list_elem_s* }
%struct.gs_color_index_cache_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_shading_Fb_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, [4 x float], %struct.gs_matrix_s, %struct.gs_function_s* }
%struct.gs_shading_Fb_s = type { %struct.gs_shading_head_s, %struct.gs_shading_Fb_params_s }
%struct.gs_shading_A_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, [4 x float], [2 x float], %struct.gs_function_s*, [2 x i32] }
%struct.gs_shading_A_s = type { %struct.gs_shading_head_s, %struct.gs_shading_A_params_s }
%struct.gs_shading_R_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, [6 x float], [2 x float], %struct.gs_function_s*, [2 x i32] }
%struct.gs_shading_R_s = type { %struct.gs_shading_head_s, %struct.gs_shading_R_params_s }
%struct.gs_shading_FfGt_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s*, i32 }
%struct.gs_shading_FfGt_s = type { %struct.gs_shading_head_s, %struct.gs_shading_FfGt_params_s }
%struct.gs_shading_LfGt_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s*, i32 }
%struct.gs_shading_LfGt_s = type { %struct.gs_shading_head_s, %struct.gs_shading_LfGt_params_s }
%struct.gs_shading_Cp_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s*, i32 }
%struct.gs_shading_Cp_s = type { %struct.gs_shading_head_s, %struct.gs_shading_Cp_params_s }
%struct.gs_shading_Tpp_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s*, i32 }
%struct.gs_shading_Tpp_s = type { %struct.gs_shading_head_s, %struct.gs_shading_Tpp_params_s }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_param_string_s = type { i8*, i32, i32 }

@st_shading_Fb = internal constant %struct.gs_memory_struct_type_s { i32 136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @shading_Fb_reloc_ptrs to i8*) }, align 8
@.str = private unnamed_addr constant [19 x i8] c"gs_shading_Fb_init\00", align 1
@shading_Fb_procs = internal constant %struct.gs_shading_procs_s { i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)* @gs_shading_Fb_fill_rectangle }, align 8
@st_shading_A = internal constant %struct.gs_memory_struct_type_s { i32 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @shading_A_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"gs_shading_A_init\00", align 1
@shading_A_procs = internal constant %struct.gs_shading_procs_s { i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)* @gs_shading_A_fill_rectangle }, align 8
@st_shading_R = internal constant %struct.gs_memory_struct_type_s { i32 136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @shading_R_reloc_ptrs to i8*) }, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"gs_shading_R_init\00", align 1
@shading_R_procs = internal constant %struct.gs_shading_procs_s { i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)* @gs_shading_R_fill_rectangle }, align 8
@st_shading_FfGt = internal constant %struct.gs_memory_struct_type_s { i32 152, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @shading_mesh_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @shading_mesh_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"gs_shading_FfGt_init\00", align 1
@shading_FfGt_procs = internal constant %struct.gs_shading_procs_s { i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)* @gs_shading_FfGt_fill_rectangle }, align 8
@st_shading_LfGt = internal constant %struct.gs_memory_struct_type_s { i32 152, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @shading_mesh_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @shading_mesh_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"gs_shading_LfGt_init\00", align 1
@shading_LfGt_procs = internal constant %struct.gs_shading_procs_s { i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)* @gs_shading_LfGt_fill_rectangle }, align 8
@st_shading_Cp = internal constant %struct.gs_memory_struct_type_s { i32 152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @shading_mesh_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @shading_mesh_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"gs_shading_Cp_init\00", align 1
@shading_Cp_procs = internal constant %struct.gs_shading_procs_s { i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)* @gs_shading_Cp_fill_rectangle }, align 8
@st_shading_Tpp = internal constant %struct.gs_memory_struct_type_s { i32 152, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @shading_mesh_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @shading_mesh_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"gs_shading_Tpp_init\00", align 1
@shading_Tpp_procs = internal constant %struct.gs_shading_procs_s { i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)* @gs_shading_Tpp_fill_rectangle }, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"gs_shading_Fb_t\00", align 1
@shading_Fb_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_shading, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @shading_Fb_enum_ptrs, i32 0, i32 0) }, align 8
@st_shading = internal constant %struct.gs_memory_struct_type_s { i32 88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @shading_reloc_ptrs to i8*) }, align 8
@shading_Fb_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 128 }], align 2
@.str.8 = private unnamed_addr constant [13 x i8] c"gs_shading_t\00", align 1
@shading_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @shading_enum_ptrs, i32 0, i32 0) }, align 8
@shading_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 16 }, %struct.gc_ptr_element_s { i16 0, i16 24 }, %struct.gc_ptr_element_s { i16 0, i16 32 }], align 2
@.str.9 = private unnamed_addr constant [15 x i8] c"gs_shading_A_t\00", align 1
@shading_A_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_shading, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @shading_A_enum_ptrs, i32 0, i32 0) }, align 8
@shading_A_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 112 }], align 2
@.str.10 = private unnamed_addr constant [15 x i8] c"gs_shading_R_t\00", align 1
@shading_R_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_shading, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @shading_R_enum_ptrs, i32 0, i32 0) }, align 8
@shading_R_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 120 }], align 2
@.str.11 = private unnamed_addr constant [18 x i8] c"gs_shading_FfGt_t\00", align 1
@st_data_source = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"gs_shading_LfGt_t\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"gs_shading_Cp_t\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"gs_shading_Tpp_t\00", align 1

; Function Attrs: nounwind uwtable
define void @gs_shading_Fb_params_init(%struct.gs_shading_Fb_params_s* %params) #0 {
entry:
  %params.addr = alloca %struct.gs_shading_Fb_params_s*, align 8
  store %struct.gs_shading_Fb_params_s* %params, %struct.gs_shading_Fb_params_s** %params.addr, align 8, !tbaa !1
  %0 = load %struct.gs_shading_Fb_params_s*, %struct.gs_shading_Fb_params_s** %params.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_shading_Fb_params_s* %0 to %struct.gs_shading_params_s*
  call void @shading_params_init(%struct.gs_shading_params_s* %1) #3
  %2 = load %struct.gs_shading_Fb_params_s*, %struct.gs_shading_Fb_params_s** %params.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %2, i32 0, i32 6
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %Domain, i32 0, i64 2
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !5
  %3 = load %struct.gs_shading_Fb_params_s*, %struct.gs_shading_Fb_params_s** %params.addr, align 8, !tbaa !1
  %Domain1 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %3, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [4 x float], [4 x float]* %Domain1, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx2, align 4, !tbaa !5
  %4 = load %struct.gs_shading_Fb_params_s*, %struct.gs_shading_Fb_params_s** %params.addr, align 8, !tbaa !1
  %Domain3 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %4, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [4 x float], [4 x float]* %Domain3, i32 0, i64 3
  store float 1.000000e+00, float* %arrayidx4, align 4, !tbaa !5
  %5 = load %struct.gs_shading_Fb_params_s*, %struct.gs_shading_Fb_params_s** %params.addr, align 8, !tbaa !1
  %Domain5 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %5, i32 0, i32 6
  %arrayidx6 = getelementptr inbounds [4 x float], [4 x float]* %Domain5, i32 0, i64 1
  store float 1.000000e+00, float* %arrayidx6, align 4, !tbaa !5
  %6 = load %struct.gs_shading_Fb_params_s*, %struct.gs_shading_Fb_params_s** %params.addr, align 8, !tbaa !1
  %Matrix = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %6, i32 0, i32 7
  call void @gs_make_identity(%struct.gs_matrix_s* %Matrix) #3
  %7 = load %struct.gs_shading_Fb_params_s*, %struct.gs_shading_Fb_params_s** %params.addr, align 8, !tbaa !1
  %Function = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %7, i32 0, i32 8
  store %struct.gs_function_s* null, %struct.gs_function_s** %Function, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @shading_params_init(%struct.gs_shading_params_s* %params) #0 {
entry:
  %params.addr = alloca %struct.gs_shading_params_s*, align 8
  store %struct.gs_shading_params_s* %params, %struct.gs_shading_params_s** %params.addr, align 8, !tbaa !1
  %0 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %params.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %0, i32 0, i32 0
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !14
  %1 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %params.addr, align 8, !tbaa !1
  %cie_joint_caches = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %1, i32 0, i32 1
  store %struct.gx_cie_joint_caches_s* null, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !16
  %2 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %params.addr, align 8, !tbaa !1
  %Background = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %2, i32 0, i32 2
  store %struct.gs_client_color_s* null, %struct.gs_client_color_s** %Background, align 8, !tbaa !17
  %3 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %params.addr, align 8, !tbaa !1
  %have_BBox = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %3, i32 0, i32 3
  store i32 0, i32* %have_BBox, align 4, !tbaa !18
  %4 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %params.addr, align 8, !tbaa !1
  %AntiAlias = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %4, i32 0, i32 5
  store i32 0, i32* %AntiAlias, align 4, !tbaa !19
  ret void
}

declare void @gs_make_identity(%struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_shading_Fb_init(%struct.gs_shading_s** %ppsh, %struct.gs_shading_Fb_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppsh.addr = alloca %struct.gs_shading_s**, align 8
  %params.addr = alloca %struct.gs_shading_Fb_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %psh = alloca %struct.gs_shading_Fb_s*, align 8
  %imat = alloca %struct.gs_matrix_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_shading_s** %ppsh, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_shading_Fb_params_s* %params, %struct.gs_shading_Fb_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_Fb_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_shading_Fb_params_s*, %struct.gs_shading_Fb_params_s** %params.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_shading_Fb_params_s* %3 to %struct.gs_shading_params_s*
  %5 = load %struct.gs_shading_Fb_params_s*, %struct.gs_shading_Fb_params_s** %params.addr, align 8, !tbaa !1
  %Function = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %5, i32 0, i32 8
  %6 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !7
  %7 = load %struct.gs_shading_Fb_params_s*, %struct.gs_shading_Fb_params_s** %params.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %7, i32 0, i32 6
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %Domain, i32 0, i32 0
  %call = call i32 @check_CBFD(%struct.gs_shading_params_s* %4, %struct.gs_function_s* %6, float* %arraydecay, i32 2) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %8 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.gs_shading_Fb_params_s*, %struct.gs_shading_Fb_params_s** %params.addr, align 8, !tbaa !1
  %Matrix = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %9, i32 0, i32 7
  %call1 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %Matrix, %struct.gs_matrix_s* %imat) #3
  store i32 %call1, i32* %code, align 4, !tbaa !20
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %12 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !21
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call3 = call i8* %12(%struct.gs_memory_s* %13, %struct.gs_memory_struct_type_s* @st_shading_Fb, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #3
  %14 = bitcast i8* %call3 to %struct.gs_shading_Fb_s*
  store %struct.gs_shading_Fb_s* %14, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %15 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.gs_shading_Fb_s* %15, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %do.body
  %16 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_shading_Fb_s, %struct.gs_shading_Fb_s* %16, i32 0, i32 0
  %type = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head, i32 0, i32 0
  store i32 1, i32* %type, align 4, !tbaa !24
  %17 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %head7 = getelementptr inbounds %struct.gs_shading_Fb_s, %struct.gs_shading_Fb_s* %17, i32 0, i32 0
  %procs8 = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head7, i32 0, i32 1
  %18 = bitcast %struct.gs_shading_procs_s* %procs8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast (%struct.gs_shading_procs_s* @shading_Fb_procs to i8*), i64 8, i32 8, i1 false), !tbaa.struct !28
  %19 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_shading_Fb_s, %struct.gs_shading_Fb_s* %19, i32 0, i32 1
  %20 = load %struct.gs_shading_Fb_params_s*, %struct.gs_shading_Fb_params_s** %params.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gs_shading_Fb_params_s* %params9 to i8*
  %22 = bitcast %struct.gs_shading_Fb_params_s* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 120, i32 8, i1 false), !tbaa.struct !29
  %23 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %24 = bitcast %struct.gs_shading_Fb_s* %23 to %struct.gs_shading_s*
  %25 = load %struct.gs_shading_s**, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_shading_s* %24, %struct.gs_shading_s** %25, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.5, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast %struct.gs_matrix_s* %imat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %27) #2
  %28 = bitcast %struct.gs_shading_Fb_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @check_CBFD(%struct.gs_shading_params_s* %params, %struct.gs_function_s* %function, float* %domain, i32 %m) #0 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca %struct.gs_shading_params_s*, align 8
  %function.addr = alloca %struct.gs_function_s*, align 8
  %domain.addr = alloca float*, align 8
  %m.addr = alloca i32, align 4
  %ncomp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_shading_params_s* %params, %struct.gs_shading_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_function_s* %function, %struct.gs_function_s** %function.addr, align 8, !tbaa !1
  store float* %domain, float** %domain.addr, align 8, !tbaa !1
  store i32 %m, i32* %m.addr, align 4, !tbaa !20
  %0 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %params.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %1, i32 0, i32 0
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !14
  %call = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %2) #3
  store i32 %call, i32* %ncomp, align 4, !tbaa !20
  %3 = load i32, i32* %ncomp, align 4, !tbaa !20
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %params.addr, align 8, !tbaa !1
  %have_BBox = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %4, i32 0, i32 3
  %5 = load i32, i32* %have_BBox, align 4, !tbaa !18
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %params.addr, align 8, !tbaa !1
  %BBox = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %6, i32 0, i32 4
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %7 = load double, double* %x, align 8, !tbaa !32
  %8 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %params.addr, align 8, !tbaa !1
  %BBox1 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %8, i32 0, i32 4
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox1, i32 0, i32 1
  %x2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %9 = load double, double* %x2, align 8, !tbaa !33
  %cmp3 = fcmp ogt double %7, %9
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %land.lhs.true
  %10 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %params.addr, align 8, !tbaa !1
  %BBox5 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %10, i32 0, i32 4
  %p6 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox5, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p6, i32 0, i32 1
  %11 = load double, double* %y, align 8, !tbaa !34
  %12 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %params.addr, align 8, !tbaa !1
  %BBox7 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %12, i32 0, i32 4
  %q8 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox7, i32 0, i32 1
  %y9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q8, i32 0, i32 1
  %13 = load double, double* %y9, align 8, !tbaa !35
  %cmp10 = fcmp ogt double %11, %13
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %land.lhs.true, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.4, %lor.lhs.false
  %14 = load %struct.gs_function_s*, %struct.gs_function_s** %function.addr, align 8, !tbaa !1
  %cmp11 = icmp ne %struct.gs_function_s* %14, null
  br i1 %cmp11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %if.end
  %15 = load %struct.gs_function_s*, %struct.gs_function_s** %function.addr, align 8, !tbaa !1
  %params13 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %15, i32 0, i32 1
  %m14 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params13, i32 0, i32 0
  %16 = load i32, i32* %m14, align 4, !tbaa !36
  %17 = load i32, i32* %m.addr, align 4, !tbaa !20
  %cmp15 = icmp ne i32 %16, %17
  br i1 %cmp15, label %if.then.19, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.then.12
  %18 = load %struct.gs_function_s*, %struct.gs_function_s** %function.addr, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %18, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params17, i32 0, i32 2
  %19 = load i32, i32* %n, align 4, !tbaa !41
  %20 = load i32, i32* %ncomp, align 4, !tbaa !20
  %cmp18 = icmp ne i32 %19, %20
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false.16, %if.then.12
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %lor.lhs.false.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.19, %if.then
  %21 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @gs_shading_A_params_init(%struct.gs_shading_A_params_s* %params) #0 {
entry:
  %params.addr = alloca %struct.gs_shading_A_params_s*, align 8
  store %struct.gs_shading_A_params_s* %params, %struct.gs_shading_A_params_s** %params.addr, align 8, !tbaa !1
  %0 = load %struct.gs_shading_A_params_s*, %struct.gs_shading_A_params_s** %params.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_shading_A_params_s* %0 to %struct.gs_shading_params_s*
  call void @shading_params_init(%struct.gs_shading_params_s* %1) #3
  %2 = load %struct.gs_shading_A_params_s*, %struct.gs_shading_A_params_s** %params.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %2, i32 0, i32 7
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %Domain, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !5
  %3 = load %struct.gs_shading_A_params_s*, %struct.gs_shading_A_params_s** %params.addr, align 8, !tbaa !1
  %Domain1 = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %3, i32 0, i32 7
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %Domain1, i32 0, i64 1
  store float 1.000000e+00, float* %arrayidx2, align 4, !tbaa !5
  %4 = load %struct.gs_shading_A_params_s*, %struct.gs_shading_A_params_s** %params.addr, align 8, !tbaa !1
  %Function = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %4, i32 0, i32 8
  store %struct.gs_function_s* null, %struct.gs_function_s** %Function, align 8, !tbaa !42
  %5 = load %struct.gs_shading_A_params_s*, %struct.gs_shading_A_params_s** %params.addr, align 8, !tbaa !1
  %Extend = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %5, i32 0, i32 9
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %Extend, i32 0, i64 1
  store i32 0, i32* %arrayidx3, align 4, !tbaa !20
  %6 = load %struct.gs_shading_A_params_s*, %struct.gs_shading_A_params_s** %params.addr, align 8, !tbaa !1
  %Extend4 = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %6, i32 0, i32 9
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %Extend4, i32 0, i64 0
  store i32 0, i32* %arrayidx5, align 4, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_shading_A_init(%struct.gs_shading_s** %ppsh, %struct.gs_shading_A_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppsh.addr = alloca %struct.gs_shading_s**, align 8
  %params.addr = alloca %struct.gs_shading_A_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %psh = alloca %struct.gs_shading_A_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_shading_s** %ppsh, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_shading_A_params_s* %params, %struct.gs_shading_A_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_A_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_shading_A_params_s*, %struct.gs_shading_A_params_s** %params.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_shading_A_params_s* %2 to %struct.gs_shading_params_s*
  %4 = load %struct.gs_shading_A_params_s*, %struct.gs_shading_A_params_s** %params.addr, align 8, !tbaa !1
  %Function = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %4, i32 0, i32 8
  %5 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !42
  %6 = load %struct.gs_shading_A_params_s*, %struct.gs_shading_A_params_s** %params.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %6, i32 0, i32 7
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %Domain, i32 0, i32 0
  %call = call i32 @check_CBFD(%struct.gs_shading_params_s* %3, %struct.gs_function_s* %5, float* %arraydecay, i32 1) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %7 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %10 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !21
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i8* %10(%struct.gs_memory_s* %11, %struct.gs_memory_struct_type_s* @st_shading_A, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #3
  %12 = bitcast i8* %call1 to %struct.gs_shading_A_s*
  store %struct.gs_shading_A_s* %12, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %13 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gs_shading_A_s* %13, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %do.body
  %14 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %14, i32 0, i32 0
  %type = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head, i32 0, i32 0
  store i32 2, i32* %type, align 4, !tbaa !44
  %15 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %head5 = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %15, i32 0, i32 0
  %procs6 = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head5, i32 0, i32 1
  %16 = bitcast %struct.gs_shading_procs_s* %procs6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast (%struct.gs_shading_procs_s* @shading_A_procs to i8*), i64 8, i32 8, i1 false), !tbaa.struct !28
  %17 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %17, i32 0, i32 1
  %18 = load %struct.gs_shading_A_params_s*, %struct.gs_shading_A_params_s** %params.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gs_shading_A_params_s* %params7 to i8*
  %20 = bitcast %struct.gs_shading_A_params_s* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 112, i32 8, i1 false), !tbaa.struct !46
  %21 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %22 = bitcast %struct.gs_shading_A_s* %21 to %struct.gs_shading_s*
  %23 = load %struct.gs_shading_s**, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_shading_s* %22, %struct.gs_shading_s** %23, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %if.end.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.3, %if.then
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast %struct.gs_shading_A_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define void @gs_shading_R_params_init(%struct.gs_shading_R_params_s* %params) #0 {
entry:
  %params.addr = alloca %struct.gs_shading_R_params_s*, align 8
  store %struct.gs_shading_R_params_s* %params, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  %0 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_shading_R_params_s* %0 to %struct.gs_shading_params_s*
  call void @shading_params_init(%struct.gs_shading_params_s* %1) #3
  %2 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %2, i32 0, i32 7
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %Domain, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !5
  %3 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  %Domain1 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %3, i32 0, i32 7
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %Domain1, i32 0, i64 1
  store float 1.000000e+00, float* %arrayidx2, align 4, !tbaa !5
  %4 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  %Function = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %4, i32 0, i32 8
  store %struct.gs_function_s* null, %struct.gs_function_s** %Function, align 8, !tbaa !47
  %5 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  %Extend = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %5, i32 0, i32 9
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %Extend, i32 0, i64 1
  store i32 0, i32* %arrayidx3, align 4, !tbaa !20
  %6 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  %Extend4 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %6, i32 0, i32 9
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %Extend4, i32 0, i64 0
  store i32 0, i32* %arrayidx5, align 4, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_shading_R_init(%struct.gs_shading_s** %ppsh, %struct.gs_shading_R_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppsh.addr = alloca %struct.gs_shading_s**, align 8
  %params.addr = alloca %struct.gs_shading_R_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %psh = alloca %struct.gs_shading_R_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_shading_s** %ppsh, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_shading_R_params_s* %params, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_R_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_shading_R_params_s* %2 to %struct.gs_shading_params_s*
  %4 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  %Function = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %4, i32 0, i32 8
  %5 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !47
  %6 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %6, i32 0, i32 7
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %Domain, i32 0, i32 0
  %call = call i32 @check_CBFD(%struct.gs_shading_params_s* %3, %struct.gs_function_s* %5, float* %arraydecay, i32 1) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %7 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  %Domain1 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %9, i32 0, i32 7
  %arraydecay2 = getelementptr inbounds [2 x float], [2 x float]* %Domain1, i32 0, i32 0
  %cmp3 = icmp ne float* %arraydecay2, null
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  %Domain4 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %10, i32 0, i32 7
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %Domain4, i32 0, i64 0
  %11 = load float, float* %arrayidx, align 4, !tbaa !5
  %12 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  %Domain5 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %12, i32 0, i32 7
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %Domain5, i32 0, i64 1
  %13 = load float, float* %arrayidx6, align 4, !tbaa !5
  %cmp7 = fcmp oeq float %11, %13
  br i1 %cmp7, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %14 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  %Coords = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %14, i32 0, i32 6
  %arrayidx8 = getelementptr inbounds [6 x float], [6 x float]* %Coords, i32 0, i64 2
  %15 = load float, float* %arrayidx8, align 4, !tbaa !5
  %cmp9 = fcmp olt float %15, 0.000000e+00
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %16 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  %Coords11 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %16, i32 0, i32 6
  %arrayidx12 = getelementptr inbounds [6 x float], [6 x float]* %Coords11, i32 0, i64 5
  %17 = load float, float* %arrayidx12, align 4, !tbaa !5
  %cmp13 = fcmp olt float %17, 0.000000e+00
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false, %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %lor.lhs.false.10
  br label %do.body

do.body:                                          ; preds = %if.end.15
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %19 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !21
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call16 = call i8* %19(%struct.gs_memory_s* %20, %struct.gs_memory_struct_type_s* @st_shading_R, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #3
  %21 = bitcast i8* %call16 to %struct.gs_shading_R_s*
  store %struct.gs_shading_R_s* %21, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %22 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %cmp17 = icmp eq %struct.gs_shading_R_s* %22, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %do.body
  %23 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %23, i32 0, i32 0
  %type = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head, i32 0, i32 0
  store i32 3, i32* %type, align 4, !tbaa !49
  %24 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %head20 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %24, i32 0, i32 0
  %procs21 = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head20, i32 0, i32 1
  %25 = bitcast %struct.gs_shading_procs_s* %procs21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast (%struct.gs_shading_procs_s* @shading_R_procs to i8*), i64 8, i32 8, i1 false), !tbaa.struct !28
  %26 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %params22 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %26, i32 0, i32 1
  %27 = load %struct.gs_shading_R_params_s*, %struct.gs_shading_R_params_s** %params.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gs_shading_R_params_s* %params22 to i8*
  %29 = bitcast %struct.gs_shading_R_params_s* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 120, i32 8, i1 false), !tbaa.struct !51
  %30 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %31 = bitcast %struct.gs_shading_R_s* %30 to %struct.gs_shading_s*
  %32 = load %struct.gs_shading_s**, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_shading_s* %31, %struct.gs_shading_s** %32, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %if.end.19
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.18, %if.then.14, %if.then
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast %struct.gs_shading_R_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define void @gs_shading_FfGt_params_init(%struct.gs_shading_FfGt_params_s* %params) #0 {
entry:
  %params.addr = alloca %struct.gs_shading_FfGt_params_s*, align 8
  store %struct.gs_shading_FfGt_params_s* %params, %struct.gs_shading_FfGt_params_s** %params.addr, align 8, !tbaa !1
  %0 = load %struct.gs_shading_FfGt_params_s*, %struct.gs_shading_FfGt_params_s** %params.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_shading_FfGt_params_s* %0 to %struct.gs_shading_mesh_params_s*
  call void @mesh_shading_params_init(%struct.gs_shading_mesh_params_s* %1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mesh_shading_params_init(%struct.gs_shading_mesh_params_s* %params) #0 {
entry:
  %params.addr = alloca %struct.gs_shading_mesh_params_s*, align 8
  store %struct.gs_shading_mesh_params_s* %params, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %0 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_shading_mesh_params_s* %0 to %struct.gs_shading_params_s*
  call void @shading_params_init(%struct.gs_shading_params_s* %1) #3
  %2 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %2, i32 0, i32 6
  %type = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 1
  store i32 2, i32* %type, align 4, !tbaa !52
  %3 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource1 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %3, i32 0, i32 6
  %data = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource1, i32 0, i32 2
  %str = bitcast %union.d_* %data to %struct.gs_const_string_s*
  %data2 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  store i8* null, i8** %data2, align 8, !tbaa !54
  %4 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource3 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %4, i32 0, i32 6
  %data4 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource3, i32 0, i32 2
  %str5 = bitcast %union.d_* %data4 to %struct.gs_const_string_s*
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str5, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !56
  %5 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource6 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %5, i32 0, i32 6
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource6, i32 0, i32 0
  store i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)* @data_source_access_bytes, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !57
  %6 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %6, i32 0, i32 9
  store float* null, float** %Decode, align 8, !tbaa !58
  %7 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %Function = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %7, i32 0, i32 10
  store %struct.gs_function_s* null, %struct.gs_function_s** %Function, align 8, !tbaa !60
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_shading_FfGt_init(%struct.gs_shading_s** %ppsh, %struct.gs_shading_FfGt_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppsh.addr = alloca %struct.gs_shading_s**, align 8
  %params.addr = alloca %struct.gs_shading_FfGt_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %psh = alloca %struct.gs_shading_FfGt_s*, align 8
  %code = alloca i32, align 4
  %bpf = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_shading_s** %ppsh, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_shading_FfGt_params_s* %params, %struct.gs_shading_FfGt_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_FfGt_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_shading_FfGt_params_s*, %struct.gs_shading_FfGt_params_s** %params.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_shading_FfGt_params_s* %2 to %struct.gs_shading_mesh_params_s*
  %call = call i32 @check_mesh(%struct.gs_shading_mesh_params_s* %3) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %4 = bitcast i32* %bpf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_shading_FfGt_params_s*, %struct.gs_shading_FfGt_params_s** %params.addr, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.gs_shading_FfGt_params_s, %struct.gs_shading_FfGt_params_s* %5, i32 0, i32 6
  %6 = load %struct.gs_shading_FfGt_params_s*, %struct.gs_shading_FfGt_params_s** %params.addr, align 8, !tbaa !1
  %BitsPerFlag = getelementptr inbounds %struct.gs_shading_FfGt_params_s, %struct.gs_shading_FfGt_params_s* %6, i32 0, i32 11
  %7 = load i32, i32* %BitsPerFlag, align 4, !tbaa !61
  %call1 = call i32 @check_BPF(%struct.gs_data_source_s* %DataSource, i32 %7) #3
  store i32 %call1, i32* %bpf, align 4, !tbaa !20
  %8 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %bpf, align 4, !tbaa !20
  %cmp2 = icmp slt i32 %10, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %11 = load i32, i32* %bpf, align 4, !tbaa !20
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %13 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !21
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call5 = call i8* %13(%struct.gs_memory_s* %14, %struct.gs_memory_struct_type_s* @st_shading_FfGt, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #3
  %15 = bitcast i8* %call5 to %struct.gs_shading_FfGt_s*
  store %struct.gs_shading_FfGt_s* %15, %struct.gs_shading_FfGt_s** %psh, align 8, !tbaa !1
  %16 = load %struct.gs_shading_FfGt_s*, %struct.gs_shading_FfGt_s** %psh, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.gs_shading_FfGt_s* %16, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %do.body
  %17 = load %struct.gs_shading_FfGt_s*, %struct.gs_shading_FfGt_s** %psh, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_shading_FfGt_s, %struct.gs_shading_FfGt_s* %17, i32 0, i32 0
  %type = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head, i32 0, i32 0
  store i32 4, i32* %type, align 4, !tbaa !63
  %18 = load %struct.gs_shading_FfGt_s*, %struct.gs_shading_FfGt_s** %psh, align 8, !tbaa !1
  %head9 = getelementptr inbounds %struct.gs_shading_FfGt_s, %struct.gs_shading_FfGt_s* %18, i32 0, i32 0
  %procs10 = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head9, i32 0, i32 1
  %19 = bitcast %struct.gs_shading_procs_s* %procs10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast (%struct.gs_shading_procs_s* @shading_FfGt_procs to i8*), i64 8, i32 8, i1 false), !tbaa.struct !28
  %20 = load %struct.gs_shading_FfGt_s*, %struct.gs_shading_FfGt_s** %psh, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.gs_shading_FfGt_s, %struct.gs_shading_FfGt_s* %20, i32 0, i32 1
  %21 = load %struct.gs_shading_FfGt_params_s*, %struct.gs_shading_FfGt_params_s** %params.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gs_shading_FfGt_params_s* %params11 to i8*
  %23 = bitcast %struct.gs_shading_FfGt_params_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 136, i32 8, i1 false), !tbaa.struct !65
  %24 = load %struct.gs_shading_FfGt_s*, %struct.gs_shading_FfGt_s** %psh, align 8, !tbaa !1
  %25 = bitcast %struct.gs_shading_FfGt_s* %24 to %struct.gs_shading_s*
  %26 = load %struct.gs_shading_s**, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_shading_s* %25, %struct.gs_shading_s** %26, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  %27 = load i32, i32* %bpf, align 4, !tbaa !20
  %28 = load %struct.gs_shading_FfGt_s*, %struct.gs_shading_FfGt_s** %psh, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.gs_shading_FfGt_s, %struct.gs_shading_FfGt_s* %28, i32 0, i32 1
  %BitsPerFlag13 = getelementptr inbounds %struct.gs_shading_FfGt_params_s, %struct.gs_shading_FfGt_params_s* %params12, i32 0, i32 11
  store i32 %27, i32* %BitsPerFlag13, align 4, !tbaa !66
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.7, %if.then.3, %if.then
  %29 = bitcast i32* %bpf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast %struct.gs_shading_FfGt_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @check_mesh(%struct.gs_shading_mesh_params_s* %params) #0 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca %struct.gs_shading_mesh_params_s*, align 8
  %domain = alloca float*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_shading_mesh_params_s* %params, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %0 = bitcast float** %domain to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %1, i32 0, i32 6
  %type = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 1
  %2 = load i32, i32* %type, align 4, !tbaa !67
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store float* null, float** %domain, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %3, i32 0, i32 9
  %4 = load float*, float** %Decode, align 8, !tbaa !58
  store float* %4, float** %domain, align 8, !tbaa !1
  %5 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %BitsPerCoordinate = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %5, i32 0, i32 7
  %6 = load i32, i32* %BitsPerCoordinate, align 4, !tbaa !68
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 8, label %sw.bb
    i32 12, label %sw.bb
    i32 16, label %sw.bb
    i32 24, label %sw.bb
    i32 32, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  %7 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %7, i32 0, i32 8
  %8 = load i32, i32* %BitsPerComponent, align 4, !tbaa !69
  switch i32 %8, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.1
    i32 8, label %sw.bb.1
    i32 12, label %sw.bb.1
    i32 16, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.3:                                      ; preds = %sw.bb.1
  br label %if.end

if.end:                                           ; preds = %sw.epilog.3, %if.then
  %9 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_shading_mesh_params_s* %9 to %struct.gs_shading_params_s*
  %11 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %Function = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %11, i32 0, i32 10
  %12 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !60
  %13 = load float*, float** %domain, align 8, !tbaa !1
  %call = call i32 @check_CBFD(%struct.gs_shading_params_s* %10, %struct.gs_function_s* %12, float* %13, i32 1) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.default.2, %sw.default
  %14 = bitcast float** %domain to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @check_BPF(%struct.gs_data_source_s* %pds, i32 %bpf) #0 {
entry:
  %retval = alloca i32, align 4
  %pds.addr = alloca %struct.gs_data_source_s*, align 8
  %bpf.addr = alloca i32, align 4
  store %struct.gs_data_source_s* %pds, %struct.gs_data_source_s** %pds.addr, align 8, !tbaa !1
  store i32 %bpf, i32* %bpf.addr, align 4, !tbaa !20
  %0 = load %struct.gs_data_source_s*, %struct.gs_data_source_s** %pds.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4, !tbaa !52
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %bpf.addr, align 4, !tbaa !20
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 8, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %3 = load i32, i32* %bpf.addr, align 4, !tbaa !20
  store i32 %3, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @gs_shading_LfGt_params_init(%struct.gs_shading_LfGt_params_s* %params) #0 {
entry:
  %params.addr = alloca %struct.gs_shading_LfGt_params_s*, align 8
  store %struct.gs_shading_LfGt_params_s* %params, %struct.gs_shading_LfGt_params_s** %params.addr, align 8, !tbaa !1
  %0 = load %struct.gs_shading_LfGt_params_s*, %struct.gs_shading_LfGt_params_s** %params.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_shading_LfGt_params_s* %0 to %struct.gs_shading_mesh_params_s*
  call void @mesh_shading_params_init(%struct.gs_shading_mesh_params_s* %1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_shading_LfGt_init(%struct.gs_shading_s** %ppsh, %struct.gs_shading_LfGt_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppsh.addr = alloca %struct.gs_shading_s**, align 8
  %params.addr = alloca %struct.gs_shading_LfGt_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %psh = alloca %struct.gs_shading_LfGt_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_shading_s** %ppsh, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_shading_LfGt_params_s* %params, %struct.gs_shading_LfGt_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_LfGt_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_shading_LfGt_params_s*, %struct.gs_shading_LfGt_params_s** %params.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_shading_LfGt_params_s* %2 to %struct.gs_shading_mesh_params_s*
  %call = call i32 @check_mesh(%struct.gs_shading_mesh_params_s* %3) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %4 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_shading_LfGt_params_s*, %struct.gs_shading_LfGt_params_s** %params.addr, align 8, !tbaa !1
  %VerticesPerRow = getelementptr inbounds %struct.gs_shading_LfGt_params_s, %struct.gs_shading_LfGt_params_s* %6, i32 0, i32 11
  %7 = load i32, i32* %VerticesPerRow, align 4, !tbaa !70
  %cmp1 = icmp slt i32 %7, 2
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %9 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !21
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call4 = call i8* %9(%struct.gs_memory_s* %10, %struct.gs_memory_struct_type_s* @st_shading_LfGt, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #3
  %11 = bitcast i8* %call4 to %struct.gs_shading_LfGt_s*
  store %struct.gs_shading_LfGt_s* %11, %struct.gs_shading_LfGt_s** %psh, align 8, !tbaa !1
  %12 = load %struct.gs_shading_LfGt_s*, %struct.gs_shading_LfGt_s** %psh, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.gs_shading_LfGt_s* %12, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %do.body
  %13 = load %struct.gs_shading_LfGt_s*, %struct.gs_shading_LfGt_s** %psh, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_shading_LfGt_s, %struct.gs_shading_LfGt_s* %13, i32 0, i32 0
  %type = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head, i32 0, i32 0
  store i32 5, i32* %type, align 4, !tbaa !72
  %14 = load %struct.gs_shading_LfGt_s*, %struct.gs_shading_LfGt_s** %psh, align 8, !tbaa !1
  %head8 = getelementptr inbounds %struct.gs_shading_LfGt_s, %struct.gs_shading_LfGt_s* %14, i32 0, i32 0
  %procs9 = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head8, i32 0, i32 1
  %15 = bitcast %struct.gs_shading_procs_s* %procs9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast (%struct.gs_shading_procs_s* @shading_LfGt_procs to i8*), i64 8, i32 8, i1 false), !tbaa.struct !28
  %16 = load %struct.gs_shading_LfGt_s*, %struct.gs_shading_LfGt_s** %psh, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_shading_LfGt_s, %struct.gs_shading_LfGt_s* %16, i32 0, i32 1
  %17 = load %struct.gs_shading_LfGt_params_s*, %struct.gs_shading_LfGt_params_s** %params.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gs_shading_LfGt_params_s* %params10 to i8*
  %19 = bitcast %struct.gs_shading_LfGt_params_s* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 136, i32 8, i1 false), !tbaa.struct !65
  %20 = load %struct.gs_shading_LfGt_s*, %struct.gs_shading_LfGt_s** %psh, align 8, !tbaa !1
  %21 = bitcast %struct.gs_shading_LfGt_s* %20 to %struct.gs_shading_s*
  %22 = load %struct.gs_shading_s**, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_shading_s* %21, %struct.gs_shading_s** %22, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %if.end.7
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.6, %if.then.2, %if.then
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast %struct.gs_shading_LfGt_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define void @gs_shading_Cp_params_init(%struct.gs_shading_Cp_params_s* %params) #0 {
entry:
  %params.addr = alloca %struct.gs_shading_Cp_params_s*, align 8
  store %struct.gs_shading_Cp_params_s* %params, %struct.gs_shading_Cp_params_s** %params.addr, align 8, !tbaa !1
  %0 = load %struct.gs_shading_Cp_params_s*, %struct.gs_shading_Cp_params_s** %params.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_shading_Cp_params_s* %0 to %struct.gs_shading_mesh_params_s*
  call void @mesh_shading_params_init(%struct.gs_shading_mesh_params_s* %1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_shading_Cp_init(%struct.gs_shading_s** %ppsh, %struct.gs_shading_Cp_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppsh.addr = alloca %struct.gs_shading_s**, align 8
  %params.addr = alloca %struct.gs_shading_Cp_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %psh = alloca %struct.gs_shading_Cp_s*, align 8
  %code = alloca i32, align 4
  %bpf = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_shading_s** %ppsh, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_shading_Cp_params_s* %params, %struct.gs_shading_Cp_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_Cp_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_shading_Cp_params_s*, %struct.gs_shading_Cp_params_s** %params.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_shading_Cp_params_s* %2 to %struct.gs_shading_mesh_params_s*
  %call = call i32 @check_mesh(%struct.gs_shading_mesh_params_s* %3) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %4 = bitcast i32* %bpf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_shading_Cp_params_s*, %struct.gs_shading_Cp_params_s** %params.addr, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.gs_shading_Cp_params_s, %struct.gs_shading_Cp_params_s* %5, i32 0, i32 6
  %6 = load %struct.gs_shading_Cp_params_s*, %struct.gs_shading_Cp_params_s** %params.addr, align 8, !tbaa !1
  %BitsPerFlag = getelementptr inbounds %struct.gs_shading_Cp_params_s, %struct.gs_shading_Cp_params_s* %6, i32 0, i32 11
  %7 = load i32, i32* %BitsPerFlag, align 4, !tbaa !74
  %call1 = call i32 @check_BPF(%struct.gs_data_source_s* %DataSource, i32 %7) #3
  store i32 %call1, i32* %bpf, align 4, !tbaa !20
  %8 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %bpf, align 4, !tbaa !20
  %cmp2 = icmp slt i32 %10, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %11 = load i32, i32* %bpf, align 4, !tbaa !20
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %13 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !21
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call5 = call i8* %13(%struct.gs_memory_s* %14, %struct.gs_memory_struct_type_s* @st_shading_Cp, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0)) #3
  %15 = bitcast i8* %call5 to %struct.gs_shading_Cp_s*
  store %struct.gs_shading_Cp_s* %15, %struct.gs_shading_Cp_s** %psh, align 8, !tbaa !1
  %16 = load %struct.gs_shading_Cp_s*, %struct.gs_shading_Cp_s** %psh, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.gs_shading_Cp_s* %16, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %do.body
  %17 = load %struct.gs_shading_Cp_s*, %struct.gs_shading_Cp_s** %psh, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_shading_Cp_s, %struct.gs_shading_Cp_s* %17, i32 0, i32 0
  %type = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head, i32 0, i32 0
  store i32 6, i32* %type, align 4, !tbaa !76
  %18 = load %struct.gs_shading_Cp_s*, %struct.gs_shading_Cp_s** %psh, align 8, !tbaa !1
  %head9 = getelementptr inbounds %struct.gs_shading_Cp_s, %struct.gs_shading_Cp_s* %18, i32 0, i32 0
  %procs10 = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head9, i32 0, i32 1
  %19 = bitcast %struct.gs_shading_procs_s* %procs10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast (%struct.gs_shading_procs_s* @shading_Cp_procs to i8*), i64 8, i32 8, i1 false), !tbaa.struct !28
  %20 = load %struct.gs_shading_Cp_s*, %struct.gs_shading_Cp_s** %psh, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.gs_shading_Cp_s, %struct.gs_shading_Cp_s* %20, i32 0, i32 1
  %21 = load %struct.gs_shading_Cp_params_s*, %struct.gs_shading_Cp_params_s** %params.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gs_shading_Cp_params_s* %params11 to i8*
  %23 = bitcast %struct.gs_shading_Cp_params_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 136, i32 8, i1 false), !tbaa.struct !65
  %24 = load %struct.gs_shading_Cp_s*, %struct.gs_shading_Cp_s** %psh, align 8, !tbaa !1
  %25 = bitcast %struct.gs_shading_Cp_s* %24 to %struct.gs_shading_s*
  %26 = load %struct.gs_shading_s**, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_shading_s* %25, %struct.gs_shading_s** %26, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  %27 = load i32, i32* %bpf, align 4, !tbaa !20
  %28 = load %struct.gs_shading_Cp_s*, %struct.gs_shading_Cp_s** %psh, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.gs_shading_Cp_s, %struct.gs_shading_Cp_s* %28, i32 0, i32 1
  %BitsPerFlag13 = getelementptr inbounds %struct.gs_shading_Cp_params_s, %struct.gs_shading_Cp_params_s* %params12, i32 0, i32 11
  store i32 %27, i32* %BitsPerFlag13, align 4, !tbaa !78
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.7, %if.then.3, %if.then
  %29 = bitcast i32* %bpf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast %struct.gs_shading_Cp_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define void @gs_shading_Tpp_params_init(%struct.gs_shading_Tpp_params_s* %params) #0 {
entry:
  %params.addr = alloca %struct.gs_shading_Tpp_params_s*, align 8
  store %struct.gs_shading_Tpp_params_s* %params, %struct.gs_shading_Tpp_params_s** %params.addr, align 8, !tbaa !1
  %0 = load %struct.gs_shading_Tpp_params_s*, %struct.gs_shading_Tpp_params_s** %params.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_shading_Tpp_params_s* %0 to %struct.gs_shading_mesh_params_s*
  call void @mesh_shading_params_init(%struct.gs_shading_mesh_params_s* %1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_shading_Tpp_init(%struct.gs_shading_s** %ppsh, %struct.gs_shading_Tpp_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppsh.addr = alloca %struct.gs_shading_s**, align 8
  %params.addr = alloca %struct.gs_shading_Tpp_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %psh = alloca %struct.gs_shading_Tpp_s*, align 8
  %code = alloca i32, align 4
  %bpf = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_shading_s** %ppsh, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_shading_Tpp_params_s* %params, %struct.gs_shading_Tpp_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_Tpp_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_shading_Tpp_params_s*, %struct.gs_shading_Tpp_params_s** %params.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_shading_Tpp_params_s* %2 to %struct.gs_shading_mesh_params_s*
  %call = call i32 @check_mesh(%struct.gs_shading_mesh_params_s* %3) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %4 = bitcast i32* %bpf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_shading_Tpp_params_s*, %struct.gs_shading_Tpp_params_s** %params.addr, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.gs_shading_Tpp_params_s, %struct.gs_shading_Tpp_params_s* %5, i32 0, i32 6
  %6 = load %struct.gs_shading_Tpp_params_s*, %struct.gs_shading_Tpp_params_s** %params.addr, align 8, !tbaa !1
  %BitsPerFlag = getelementptr inbounds %struct.gs_shading_Tpp_params_s, %struct.gs_shading_Tpp_params_s* %6, i32 0, i32 11
  %7 = load i32, i32* %BitsPerFlag, align 4, !tbaa !79
  %call1 = call i32 @check_BPF(%struct.gs_data_source_s* %DataSource, i32 %7) #3
  store i32 %call1, i32* %bpf, align 4, !tbaa !20
  %8 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %bpf, align 4, !tbaa !20
  %cmp2 = icmp slt i32 %10, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %11 = load i32, i32* %bpf, align 4, !tbaa !20
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %13 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !21
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call5 = call i8* %13(%struct.gs_memory_s* %14, %struct.gs_memory_struct_type_s* @st_shading_Tpp, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #3
  %15 = bitcast i8* %call5 to %struct.gs_shading_Tpp_s*
  store %struct.gs_shading_Tpp_s* %15, %struct.gs_shading_Tpp_s** %psh, align 8, !tbaa !1
  %16 = load %struct.gs_shading_Tpp_s*, %struct.gs_shading_Tpp_s** %psh, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.gs_shading_Tpp_s* %16, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %do.body
  %17 = load %struct.gs_shading_Tpp_s*, %struct.gs_shading_Tpp_s** %psh, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_shading_Tpp_s, %struct.gs_shading_Tpp_s* %17, i32 0, i32 0
  %type = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head, i32 0, i32 0
  store i32 7, i32* %type, align 4, !tbaa !81
  %18 = load %struct.gs_shading_Tpp_s*, %struct.gs_shading_Tpp_s** %psh, align 8, !tbaa !1
  %head9 = getelementptr inbounds %struct.gs_shading_Tpp_s, %struct.gs_shading_Tpp_s* %18, i32 0, i32 0
  %procs10 = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head9, i32 0, i32 1
  %19 = bitcast %struct.gs_shading_procs_s* %procs10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast (%struct.gs_shading_procs_s* @shading_Tpp_procs to i8*), i64 8, i32 8, i1 false), !tbaa.struct !28
  %20 = load %struct.gs_shading_Tpp_s*, %struct.gs_shading_Tpp_s** %psh, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.gs_shading_Tpp_s, %struct.gs_shading_Tpp_s* %20, i32 0, i32 1
  %21 = load %struct.gs_shading_Tpp_params_s*, %struct.gs_shading_Tpp_params_s** %params.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gs_shading_Tpp_params_s* %params11 to i8*
  %23 = bitcast %struct.gs_shading_Tpp_params_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 136, i32 8, i1 false), !tbaa.struct !65
  %24 = load %struct.gs_shading_Tpp_s*, %struct.gs_shading_Tpp_s** %psh, align 8, !tbaa !1
  %25 = bitcast %struct.gs_shading_Tpp_s* %24 to %struct.gs_shading_s*
  %26 = load %struct.gs_shading_s**, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_shading_s* %25, %struct.gs_shading_s** %26, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  br label %do.end

do.end:                                           ; preds = %do.cond
  %27 = load i32, i32* %bpf, align 4, !tbaa !20
  %28 = load %struct.gs_shading_Tpp_s*, %struct.gs_shading_Tpp_s** %psh, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.gs_shading_Tpp_s, %struct.gs_shading_Tpp_s* %28, i32 0, i32 1
  %BitsPerFlag13 = getelementptr inbounds %struct.gs_shading_Tpp_params_s, %struct.gs_shading_Tpp_params_s* %params12, i32 0, i32 11
  store i32 %27, i32* %BitsPerFlag13, align 4, !tbaa !83
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.7, %if.then.3, %if.then
  %29 = bitcast i32* %bpf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast %struct.gs_shading_Tpp_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @gs_shading_path_add_box(%struct.gx_path_s* %ppath, %struct.gs_rect_s* %pbox, %struct.gs_matrix_fixed_s* %pmat) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pbox.addr = alloca %struct.gs_rect_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_fixed_s*, align 8
  %pt = alloca %struct.gs_fixed_point_s, align 4
  %pts = alloca [3 x %struct.gs_fixed_point_s], align 16
  %code = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbox, %struct.gs_rect_s** %pbox.addr, align 8, !tbaa !1
  store %struct.gs_matrix_fixed_s* %pmat, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast [3 x %struct.gs_fixed_point_s]* %pts to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %4 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %4, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %5 = load double, double* %x, align 8, !tbaa !84
  %6 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %6, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %7 = load double, double* %y, align 8, !tbaa !85
  %call = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %3, double %5, double %7, %struct.gs_fixed_point_s* %pt) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %9 = load i32, i32* %x2, align 4, !tbaa !86
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %10 = load i32, i32* %y3, align 4, !tbaa !88
  %call4 = call i32 @gx_path_add_point(%struct.gx_path_s* %8, i32 %9, i32 %10) #3
  store i32 %call4, i32* %code, align 4, !tbaa !20
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %11 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %12 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %12, i32 0, i32 1
  %x7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %13 = load double, double* %x7, align 8, !tbaa !89
  %14 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox.addr, align 8, !tbaa !1
  %p8 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %14, i32 0, i32 0
  %y9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p8, i32 0, i32 1
  %15 = load double, double* %y9, align 8, !tbaa !85
  %arrayidx = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %call10 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %11, double %13, double %15, %struct.gs_fixed_point_s* %arrayidx) #3
  store i32 %call10, i32* %code, align 4, !tbaa !20
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.6
  %16 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %17 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox.addr, align 8, !tbaa !1
  %q13 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %17, i32 0, i32 1
  %x14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q13, i32 0, i32 0
  %18 = load double, double* %x14, align 8, !tbaa !89
  %19 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox.addr, align 8, !tbaa !1
  %q15 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %19, i32 0, i32 1
  %y16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q15, i32 0, i32 1
  %20 = load double, double* %y16, align 8, !tbaa !90
  %arrayidx17 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 1
  %call18 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %16, double %18, double %20, %struct.gs_fixed_point_s* %arrayidx17) #3
  store i32 %call18, i32* %code, align 4, !tbaa !20
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.12
  %21 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %22 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox.addr, align 8, !tbaa !1
  %p21 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %22, i32 0, i32 0
  %x22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p21, i32 0, i32 0
  %23 = load double, double* %x22, align 8, !tbaa !84
  %24 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbox.addr, align 8, !tbaa !1
  %q23 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %24, i32 0, i32 1
  %y24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q23, i32 0, i32 1
  %25 = load double, double* %y24, align 8, !tbaa !90
  %arrayidx25 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 2
  %call26 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %21, double %23, double %25, %struct.gs_fixed_point_s* %arrayidx25) #3
  store i32 %call26, i32* %code, align 4, !tbaa !20
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.20
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i32 0
  %call29 = call i32 @gx_path_add_lines_notes(%struct.gx_path_s* %26, %struct.gs_fixed_point_s* %arraydecay, i32 3, i32 0) #3
  store i32 %call29, i32* %code, align 4, !tbaa !20
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.28, %lor.lhs.false.20, %lor.lhs.false.12, %lor.lhs.false.6, %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false.28
  %27 = load i32, i32* %code, align 4, !tbaa !20
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast [3 x %struct.gs_fixed_point_s]* %pts to i8*
  call void @llvm.lifetime.end(i64 24, i8* %29) #2
  %30 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  ret i32 %27
}

declare i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s*, double, double, %struct.gs_fixed_point_s*) #1

declare i32 @gx_path_add_point(%struct.gx_path_s*, i32, i32) #1

declare i32 @gx_path_add_lines_notes(%struct.gx_path_s*, %struct.gs_fixed_point_s*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gs_shading_do_fill_rectangle(%struct.gs_shading_s* %psh, %struct.gs_fixed_rect_s* %prect, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i32 %fill_background) #0 {
entry:
  %psh.addr = alloca %struct.gs_shading_s*, align 8
  %prect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %fill_background.addr = alloca i32, align 4
  %pmat = alloca %struct.gs_matrix_fixed_s*, align 8
  %path_box = alloca %struct.gs_fixed_rect_s, align 4
  %path_rect = alloca %struct.gs_rect_s, align 8
  %rect = alloca %struct.gs_rect_s, align 8
  %code = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %cc = alloca %struct.gs_client_color_s, align 8
  %dev_color = alloca %struct.gx_device_color_s, align 8
  store %struct.gs_shading_s* %psh, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %prect, %struct.gs_fixed_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i32 %fill_background, i32* %fill_background.addr, align 4, !tbaa !20
  %0 = bitcast %struct.gs_matrix_fixed_s** %pmat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %1, i32 0, i32 5
  store %struct.gs_matrix_fixed_s* %ctm, %struct.gs_matrix_fixed_s** %pmat, align 8, !tbaa !1
  %2 = bitcast %struct.gs_fixed_rect_s* %path_box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = bitcast %struct.gs_rect_s* %path_rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  %4 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %code, align 4, !tbaa !20
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %get_clipping_box = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 36
  %7 = load void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box, align 8, !tbaa !91
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void %7(%struct.gx_device_s* %8, %struct.gs_fixed_rect_s* %path_box) #3
  %9 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %prect.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_fixed_rect_s* %9, null
  br i1 %tobool, label %if.then, label %if.end.39

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %10 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %10, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %11 = load i32, i32* %x, align 4, !tbaa !104
  %p1 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_box, i32 0, i32 0
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %12 = load i32, i32* %x2, align 4, !tbaa !104
  %cmp = icmp sgt i32 %11, %12
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %do.body
  %13 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %prect.addr, align 8, !tbaa !1
  %p4 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %13, i32 0, i32 0
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p4, i32 0, i32 0
  %14 = load i32, i32* %x5, align 4, !tbaa !104
  %p6 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_box, i32 0, i32 0
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 0
  store i32 %14, i32* %x7, align 4, !tbaa !104
  br label %if.end

if.end:                                           ; preds = %if.then.3, %do.body
  %15 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %15, i32 0, i32 1
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %16 = load i32, i32* %x8, align 4, !tbaa !106
  %q9 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_box, i32 0, i32 1
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q9, i32 0, i32 0
  %17 = load i32, i32* %x10, align 4, !tbaa !106
  %cmp11 = icmp slt i32 %16, %17
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end
  %18 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %prect.addr, align 8, !tbaa !1
  %q13 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %18, i32 0, i32 1
  %x14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q13, i32 0, i32 0
  %19 = load i32, i32* %x14, align 4, !tbaa !106
  %q15 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_box, i32 0, i32 1
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q15, i32 0, i32 0
  store i32 %19, i32* %x16, align 4, !tbaa !106
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %if.end
  %20 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %prect.addr, align 8, !tbaa !1
  %p18 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %20, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p18, i32 0, i32 1
  %21 = load i32, i32* %y, align 4, !tbaa !107
  %p19 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_box, i32 0, i32 0
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p19, i32 0, i32 1
  %22 = load i32, i32* %y20, align 4, !tbaa !107
  %cmp21 = icmp sgt i32 %21, %22
  br i1 %cmp21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %if.end.17
  %23 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %prect.addr, align 8, !tbaa !1
  %p23 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %23, i32 0, i32 0
  %y24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p23, i32 0, i32 1
  %24 = load i32, i32* %y24, align 4, !tbaa !107
  %p25 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_box, i32 0, i32 0
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p25, i32 0, i32 1
  store i32 %24, i32* %y26, align 4, !tbaa !107
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %if.end.17
  %25 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %prect.addr, align 8, !tbaa !1
  %q28 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %25, i32 0, i32 1
  %y29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q28, i32 0, i32 1
  %26 = load i32, i32* %y29, align 4, !tbaa !108
  %q30 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_box, i32 0, i32 1
  %y31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q30, i32 0, i32 1
  %27 = load i32, i32* %y31, align 4, !tbaa !108
  %cmp32 = icmp slt i32 %26, %27
  br i1 %cmp32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.end.27
  %28 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %prect.addr, align 8, !tbaa !1
  %q34 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %28, i32 0, i32 1
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q34, i32 0, i32 1
  %29 = load i32, i32* %y35, align 4, !tbaa !108
  %q36 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_box, i32 0, i32 1
  %y37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q36, i32 0, i32 1
  store i32 %29, i32* %y37, align 4, !tbaa !108
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %if.end.27
  br label %do.cond

do.cond:                                          ; preds = %if.end.38
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.39

if.end.39:                                        ; preds = %do.end, %entry
  %30 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %30, i32 0, i32 1
  %Background = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 2
  %31 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %Background, align 8, !tbaa !109
  %tobool40 = icmp ne %struct.gs_client_color_s* %31, null
  br i1 %tobool40, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.end.39
  %32 = load i32, i32* %fill_background.addr, align 4, !tbaa !20
  %tobool41 = icmp ne i32 %32, 0
  br i1 %tobool41, label %if.then.42, label %if.end.51

if.then.42:                                       ; preds = %land.lhs.true
  %33 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #2
  %34 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params43 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %34, i32 0, i32 1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params43, i32 0, i32 0
  %35 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !111
  store %struct.gs_color_space_s* %35, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %36 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %36) #2
  %37 = bitcast %struct.gx_device_color_s* %dev_color to i8*
  call void @llvm.lifetime.start(i64 656, i8* %37) #2
  %38 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %params44 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %38, i32 0, i32 1
  %Background45 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params44, i32 0, i32 2
  %39 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %Background45, align 8, !tbaa !109
  %40 = bitcast %struct.gs_client_color_s* %cc to i8*
  %41 = bitcast %struct.gs_client_color_s* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 264, i32 8, i1 false), !tbaa.struct !112
  %42 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %42, i32 0, i32 0
  %43 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !113
  %restrict_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %43, i32 0, i32 6
  %44 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)** %restrict_color, align 8, !tbaa !115
  %45 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void %44(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %45) #3
  %46 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type46 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %46, i32 0, i32 0
  %47 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type46, align 8, !tbaa !113
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %47, i32 0, i32 10
  %48 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !117
  %49 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %50 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %48(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %49, %struct.gx_device_color_s* %dev_color, %struct.gs_imager_state_s* %50, %struct.gx_device_s* %51, i32 0) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %52 = load i32, i32* %code, align 4, !tbaa !20
  %cmp47 = icmp sge i32 %52, 0
  br i1 %cmp47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.then.42
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %54 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %54, i32 0, i32 10
  %55 = load i32, i32* %log_op, align 4, !tbaa !118
  %call49 = call i32 @gx_shade_background(%struct.gx_device_s* %53, %struct.gs_fixed_rect_s* %path_box, %struct.gx_device_color_s* %dev_color, i32 %55) #3
  store i32 %call49, i32* %code, align 4, !tbaa !20
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.then.42
  %56 = bitcast %struct.gx_device_color_s* %dev_color to i8*
  call void @llvm.lifetime.end(i64 656, i8* %56) #2
  %57 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %57) #2
  %58 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %land.lhs.true, %if.end.39
  %59 = load i32, i32* %code, align 4, !tbaa !20
  %cmp52 = icmp sge i32 %59, 0
  br i1 %cmp52, label %if.then.53, label %if.end.79

if.then.53:                                       ; preds = %if.end.51
  %p54 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_box, i32 0, i32 0
  %x55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p54, i32 0, i32 0
  %60 = load i32, i32* %x55, align 4, !tbaa !104
  %conv = sitofp i32 %60 to double
  %mul = fmul double %conv, 3.906250e-03
  %p56 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %path_rect, i32 0, i32 0
  %x57 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p56, i32 0, i32 0
  store double %mul, double* %x57, align 8, !tbaa !84
  %p58 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_box, i32 0, i32 0
  %y59 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p58, i32 0, i32 1
  %61 = load i32, i32* %y59, align 4, !tbaa !107
  %conv60 = sitofp i32 %61 to double
  %mul61 = fmul double %conv60, 3.906250e-03
  %p62 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %path_rect, i32 0, i32 0
  %y63 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p62, i32 0, i32 1
  store double %mul61, double* %y63, align 8, !tbaa !85
  %q64 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_box, i32 0, i32 1
  %x65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q64, i32 0, i32 0
  %62 = load i32, i32* %x65, align 4, !tbaa !106
  %conv66 = sitofp i32 %62 to double
  %mul67 = fmul double %conv66, 3.906250e-03
  %q68 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %path_rect, i32 0, i32 1
  %x69 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q68, i32 0, i32 0
  store double %mul67, double* %x69, align 8, !tbaa !89
  %q70 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %path_box, i32 0, i32 1
  %y71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q70, i32 0, i32 1
  %63 = load i32, i32* %y71, align 4, !tbaa !108
  %conv72 = sitofp i32 %63 to double
  %mul73 = fmul double %conv72, 3.906250e-03
  %q74 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %path_rect, i32 0, i32 1
  %y75 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q74, i32 0, i32 1
  store double %mul73, double* %y75, align 8, !tbaa !90
  %64 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat, align 8, !tbaa !1
  %65 = bitcast %struct.gs_matrix_fixed_s* %64 to %struct.gs_matrix_s*
  %call76 = call i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* %path_rect, %struct.gs_matrix_s* %65, %struct.gs_rect_s* %rect) #3
  %66 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %66, i32 0, i32 0
  %procs77 = getelementptr inbounds %struct.gs_shading_head_s, %struct.gs_shading_head_s* %head, i32 0, i32 1
  %fill_rectangle = getelementptr inbounds %struct.gs_shading_procs_s, %struct.gs_shading_procs_s* %procs77, i32 0, i32 0
  %67 = load i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)** %fill_rectangle, align 8, !tbaa !127
  %68 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh.addr, align 8, !tbaa !1
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %70 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call78 = call i32 %67(%struct.gs_shading_s* %68, %struct.gs_rect_s* %rect, %struct.gs_fixed_rect_s* %path_box, %struct.gx_device_s* %69, %struct.gs_imager_state_s* %70) #3
  store i32 %call78, i32* %code, align 4, !tbaa !20
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.53, %if.end.51
  %71 = load i32, i32* %code, align 4, !tbaa !20
  %72 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %73) #2
  %74 = bitcast %struct.gs_rect_s* %path_rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %74) #2
  %75 = bitcast %struct.gs_fixed_rect_s* %path_box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %75) #2
  %76 = bitcast %struct.gs_matrix_fixed_s** %pmat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  ret i32 %71
}

declare i32 @gx_shade_background(%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_color_s*, i32) #1

declare i32 @gs_bbox_transform_inverse(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #1

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare i32 @gs_shading_Fb_fill_rectangle(%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*) #1

declare i32 @gs_shading_A_fill_rectangle(%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*) #1

declare i32 @gs_shading_R_fill_rectangle(%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*) #1

declare i32 @data_source_access_bytes(%struct.gs_data_source_s*, i64, i32, i8*, i8**) #1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @shading_mesh_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %psm = alloca %struct.gs_shading_mesh_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !20
  store i32 %index, i32* %index.addr, align 4, !tbaa !20
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_mesh_s** %psm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_shading_mesh_s*
  store %struct.gs_shading_mesh_s* %2, %struct.gs_shading_mesh_s** %psm, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !20
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !20
  %sub = sub nsw i32 %4, 2
  store i32 %sub, i32* %index.addr, align 4, !tbaa !20
  %5 = load i32, i32* %index.addr, align 4, !tbaa !20
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %6 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_data_source, i32 0, i32 4), align 8, !tbaa !128
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %psm, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_mesh_s, %struct.gs_shading_mesh_s* %8, i32 0, i32 1
  %DataSource = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %params, i32 0, i32 6
  %9 = bitcast %struct.gs_data_source_s* %DataSource to i8*
  %10 = load i32, i32* %index.addr, align 4, !tbaa !20
  %11 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %6(%struct.gs_memory_s* %7, i8* %9, i32 32, i32 %10, %struct.enum_ptr_s* %11, %struct.gs_memory_struct_type_s* @st_data_source, %struct.gc_state_s* %12) #3
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  %13 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_shading, i32 0, i32 4), align 8, !tbaa !128
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %16 = load i32, i32* %size.addr, align 4, !tbaa !20
  %17 = load i32, i32* %index.addr, align 4, !tbaa !20
  %sub1 = sub nsw i32 %17, 1
  %18 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call2 = call %struct.gs_ptr_procs_s* %13(%struct.gs_memory_s* %14, i8* %15, i32 %16, i32 %sub1, %struct.enum_ptr_s* %18, %struct.gs_memory_struct_type_s* @st_shading, %struct.gc_state_s* %19) #3
  store %struct.gs_ptr_procs_s* %call2, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %20 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to %struct.gs_shading_mesh_s*
  %params3 = getelementptr inbounds %struct.gs_shading_mesh_s, %struct.gs_shading_mesh_s* %21, i32 0, i32 1
  %Function = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %params3, i32 0, i32 10
  %22 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !130
  %23 = bitcast %struct.gs_function_s* %22 to i8*
  %24 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %24, i32 0, i32 0
  store i8* %23, i8** %ptr, align 8, !tbaa !132
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.4:                                          ; preds = %entry
  %25 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to %struct.gs_shading_mesh_s*
  %params5 = getelementptr inbounds %struct.gs_shading_mesh_s, %struct.gs_shading_mesh_s* %26, i32 0, i32 1
  %Decode = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %params5, i32 0, i32 9
  %27 = load float*, float** %Decode, align 8, !tbaa !134
  %28 = bitcast float* %27 to i8*
  %29 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %29, i32 0, i32 0
  store i8* %28, i8** %ptr6, align 8, !tbaa !132
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.4, %sw.bb, %if.end, %if.then
  %30 = bitcast %struct.gs_shading_mesh_s** %psm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %31
}

; Function Attrs: nounwind uwtable
define internal void @shading_mesh_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %psm = alloca %struct.gs_shading_mesh_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !20
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_mesh_s** %psm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_shading_mesh_s*
  store %struct.gs_shading_mesh_s* %2, %struct.gs_shading_mesh_s** %psm, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_shading, i32 0, i32 5), align 8, !tbaa !135
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !20
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_shading, %struct.gc_state_s* %6) #3
  %7 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_data_source, i32 0, i32 5), align 8, !tbaa !135
  %8 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %psm, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_mesh_s, %struct.gs_shading_mesh_s* %8, i32 0, i32 1
  %DataSource = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %params, i32 0, i32 6
  %9 = bitcast %struct.gs_data_source_s* %DataSource to i8*
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %7(i8* %9, i32 32, %struct.gs_memory_struct_type_s* @st_data_source, %struct.gc_state_s* %10) #3
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gc_state_s* %11 to %struct.gc_procs_common_s**
  %13 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %12, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %13, i32 0, i32 0
  %14 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !136
  %15 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %16 = bitcast i8* %15 to %struct.gs_shading_mesh_s*
  %params1 = getelementptr inbounds %struct.gs_shading_mesh_s, %struct.gs_shading_mesh_s* %16, i32 0, i32 1
  %Function = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %params1, i32 0, i32 10
  %17 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !130
  %18 = bitcast %struct.gs_function_s* %17 to i8*
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %14(i8* %18, %struct.gc_state_s* %19) #3
  %20 = bitcast i8* %call to %struct.gs_function_s*
  %21 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %22 = bitcast i8* %21 to %struct.gs_shading_mesh_s*
  %params2 = getelementptr inbounds %struct.gs_shading_mesh_s, %struct.gs_shading_mesh_s* %22, i32 0, i32 1
  %Function3 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %params2, i32 0, i32 10
  store %struct.gs_function_s* %20, %struct.gs_function_s** %Function3, align 8, !tbaa !130
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gc_state_s* %23 to %struct.gc_procs_common_s**
  %25 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %24, align 8, !tbaa !1
  %reloc_struct_ptr4 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %25, i32 0, i32 0
  %26 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr4, align 8, !tbaa !136
  %27 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %28 = bitcast i8* %27 to %struct.gs_shading_mesh_s*
  %params5 = getelementptr inbounds %struct.gs_shading_mesh_s, %struct.gs_shading_mesh_s* %28, i32 0, i32 1
  %Decode = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %params5, i32 0, i32 9
  %29 = load float*, float** %Decode, align 8, !tbaa !134
  %30 = bitcast float* %29 to i8*
  %31 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %26(i8* %30, %struct.gc_state_s* %31) #3
  %32 = bitcast i8* %call6 to float*
  %33 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %34 = bitcast i8* %33 to %struct.gs_shading_mesh_s*
  %params7 = getelementptr inbounds %struct.gs_shading_mesh_s, %struct.gs_shading_mesh_s* %34, i32 0, i32 1
  %Decode8 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %params7, i32 0, i32 9
  store float* %32, float** %Decode8, align 8, !tbaa !134
  %35 = bitcast %struct.gs_shading_mesh_s** %psm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  ret void
}

declare i32 @gs_shading_FfGt_fill_rectangle(%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*) #1

declare i32 @gs_shading_LfGt_fill_rectangle(%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*) #1

declare i32 @gs_shading_Cp_fill_rectangle(%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*) #1

declare i32 @gs_shading_Tpp_fill_rectangle(%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !3, i64 0}
!7 = !{!8, !2, i64 112}
!8 = !{!"gs_shading_Fb_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !10, i64 32, !9, i64 64, !3, i64 68, !13, i64 84, !2, i64 112}
!9 = !{!"int", !3, i64 0}
!10 = !{!"gs_rect_s", !11, i64 0, !11, i64 16}
!11 = !{!"gs_point_s", !12, i64 0, !12, i64 8}
!12 = !{!"double", !3, i64 0}
!13 = !{!"gs_matrix_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!14 = !{!15, !2, i64 0}
!15 = !{!"gs_shading_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !10, i64 32, !9, i64 64}
!16 = !{!15, !2, i64 8}
!17 = !{!15, !2, i64 16}
!18 = !{!15, !9, i64 24}
!19 = !{!15, !9, i64 64}
!20 = !{!9, !9, i64 0}
!21 = !{!22, !2, i64 72}
!22 = !{!"gs_memory_s", !2, i64 0, !23, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!23 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!24 = !{!25, !3, i64 0}
!25 = !{!"gs_shading_Fb_s", !26, i64 0, !8, i64 16}
!26 = !{!"gs_shading_head_s", !3, i64 0, !27, i64 8}
!27 = !{!"gs_shading_procs_s", !2, i64 0}
!28 = !{i64 0, i64 8, !1}
!29 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !20, i64 32, i64 8, !30, i64 40, i64 8, !30, i64 48, i64 8, !30, i64 56, i64 8, !30, i64 64, i64 4, !20, i64 68, i64 16, !31, i64 84, i64 4, !5, i64 88, i64 4, !5, i64 92, i64 4, !5, i64 96, i64 4, !5, i64 100, i64 4, !5, i64 104, i64 4, !5, i64 112, i64 8, !1}
!30 = !{!12, !12, i64 0}
!31 = !{!3, !3, i64 0}
!32 = !{!15, !12, i64 32}
!33 = !{!15, !12, i64 48}
!34 = !{!15, !12, i64 40}
!35 = !{!15, !12, i64 56}
!36 = !{!37, !9, i64 72}
!37 = !{!"gs_function_s", !38, i64 0, !40, i64 72}
!38 = !{!"gs_function_head_s", !9, i64 0, !39, i64 8}
!39 = !{!"gs_function_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!40 = !{!"gs_function_params_s", !9, i64 0, !2, i64 8, !9, i64 16, !2, i64 24}
!41 = !{!37, !9, i64 88}
!42 = !{!43, !2, i64 96}
!43 = !{!"gs_shading_A_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !10, i64 32, !9, i64 64, !3, i64 68, !3, i64 84, !2, i64 96, !3, i64 104}
!44 = !{!45, !3, i64 0}
!45 = !{!"gs_shading_A_s", !26, i64 0, !43, i64 16}
!46 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !20, i64 32, i64 8, !30, i64 40, i64 8, !30, i64 48, i64 8, !30, i64 56, i64 8, !30, i64 64, i64 4, !20, i64 68, i64 16, !31, i64 84, i64 8, !31, i64 96, i64 8, !1, i64 104, i64 8, !31}
!47 = !{!48, !2, i64 104}
!48 = !{!"gs_shading_R_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !10, i64 32, !9, i64 64, !3, i64 68, !3, i64 92, !2, i64 104, !3, i64 112}
!49 = !{!50, !3, i64 0}
!50 = !{!"gs_shading_R_s", !26, i64 0, !48, i64 16}
!51 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !20, i64 32, i64 8, !30, i64 40, i64 8, !30, i64 48, i64 8, !30, i64 56, i64 8, !30, i64 64, i64 4, !20, i64 68, i64 24, !31, i64 92, i64 8, !31, i64 104, i64 8, !1, i64 112, i64 8, !31}
!52 = !{!53, !3, i64 8}
!53 = !{!"gs_data_source_s", !2, i64 0, !3, i64 8, !3, i64 16}
!54 = !{!55, !2, i64 0}
!55 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!56 = !{!55, !9, i64 8}
!57 = !{!53, !2, i64 0}
!58 = !{!59, !2, i64 112}
!59 = !{!"gs_shading_mesh_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !10, i64 32, !9, i64 64, !53, i64 72, !9, i64 104, !9, i64 108, !2, i64 112, !2, i64 120}
!60 = !{!59, !2, i64 120}
!61 = !{!62, !9, i64 128}
!62 = !{!"gs_shading_FfGt_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !10, i64 32, !9, i64 64, !53, i64 72, !9, i64 104, !9, i64 108, !2, i64 112, !2, i64 120, !9, i64 128}
!63 = !{!64, !3, i64 0}
!64 = !{!"gs_shading_FfGt_s", !26, i64 0, !62, i64 16}
!65 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !20, i64 32, i64 8, !30, i64 40, i64 8, !30, i64 48, i64 8, !30, i64 56, i64 8, !30, i64 64, i64 4, !20, i64 72, i64 8, !1, i64 80, i64 4, !31, i64 88, i64 8, !1, i64 96, i64 4, !20, i64 88, i64 8, !1, i64 104, i64 4, !20, i64 108, i64 4, !20, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 4, !20}
!66 = !{!64, !9, i64 144}
!67 = !{!59, !3, i64 80}
!68 = !{!59, !9, i64 104}
!69 = !{!59, !9, i64 108}
!70 = !{!71, !9, i64 128}
!71 = !{!"gs_shading_LfGt_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !10, i64 32, !9, i64 64, !53, i64 72, !9, i64 104, !9, i64 108, !2, i64 112, !2, i64 120, !9, i64 128}
!72 = !{!73, !3, i64 0}
!73 = !{!"gs_shading_LfGt_s", !26, i64 0, !71, i64 16}
!74 = !{!75, !9, i64 128}
!75 = !{!"gs_shading_Cp_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !10, i64 32, !9, i64 64, !53, i64 72, !9, i64 104, !9, i64 108, !2, i64 112, !2, i64 120, !9, i64 128}
!76 = !{!77, !3, i64 0}
!77 = !{!"gs_shading_Cp_s", !26, i64 0, !75, i64 16}
!78 = !{!77, !9, i64 144}
!79 = !{!80, !9, i64 128}
!80 = !{!"gs_shading_Tpp_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !10, i64 32, !9, i64 64, !53, i64 72, !9, i64 104, !9, i64 108, !2, i64 112, !2, i64 120, !9, i64 128}
!81 = !{!82, !3, i64 0}
!82 = !{!"gs_shading_Tpp_s", !26, i64 0, !80, i64 16}
!83 = !{!82, !9, i64 144}
!84 = !{!10, !12, i64 0}
!85 = !{!10, !12, i64 8}
!86 = !{!87, !9, i64 0}
!87 = !{!"gs_fixed_point_s", !9, i64 0, !9, i64 4}
!88 = !{!87, !9, i64 4}
!89 = !{!10, !12, i64 16}
!90 = !{!10, !12, i64 24}
!91 = !{!92, !2, i64 1432}
!92 = !{!"gx_device_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !93, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !95, i64 96, !98, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !94, i64 928, !94, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !94, i64 968, !94, i64 976, !99, i64 984, !9, i64 1052, !9, i64 1056, !100, i64 1064, !2, i64 1104, !3, i64 1112, !102, i64 1120, !103, i64 1144}
!93 = !{!"rc_header_s", !94, i64 0, !2, i64 8, !2, i64 16}
!94 = !{!"long", !3, i64 0}
!95 = !{!"gx_device_color_info_s", !9, i64 0, !9, i64 4, !3, i64 8, !96, i64 12, !3, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !97, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !94, i64 704, !9, i64 712}
!96 = !{!"short", !3, i64 0}
!97 = !{!"gx_device_anti_alias_info_s", !9, i64 0, !9, i64 4}
!98 = !{!"gx_device_cached_colors_s", !94, i64 0, !94, i64 8}
!99 = !{!"gx_stroked_gradient_recognizer_s", !9, i64 0, !3, i64 4, !3, i64 36}
!100 = !{!"gdev_space_params_s", !94, i64 0, !94, i64 8, !101, i64 16, !9, i64 32, !3, i64 36}
!101 = !{!"gx_band_params_s", !9, i64 0, !9, i64 4, !94, i64 8}
!102 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!103 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!104 = !{!105, !9, i64 0}
!105 = !{!"gs_fixed_rect_s", !87, i64 0, !87, i64 8}
!106 = !{!105, !9, i64 8}
!107 = !{!105, !9, i64 4}
!108 = !{!105, !9, i64 12}
!109 = !{!110, !2, i64 32}
!110 = !{!"gs_shading_s", !26, i64 0, !15, i64 16}
!111 = !{!110, !2, i64 16}
!112 = !{i64 0, i64 8, !1, i64 8, i64 256, !31}
!113 = !{!114, !2, i64 0}
!114 = !{!"gs_color_space_s", !2, i64 0, !93, i64 8, !94, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!115 = !{!116, !2, i64 40}
!116 = !{!"gs_color_space_type_s", !3, i64 0, !9, i64 4, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!117 = !{!116, !2, i64 72}
!118 = !{!119, !9, i64 212}
!119 = !{!"gs_imager_state_s", !9, i64 0, !2, i64 8, !2, i64 16, !120, i64 24, !9, i64 128, !122, i64 132, !9, i64 168, !11, i64 176, !11, i64 192, !9, i64 208, !9, i64 212, !96, i64 216, !3, i64 220, !123, i64 224, !123, i64 228, !124, i64 232, !94, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !2, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !6, i64 296, !87, i64 300, !9, i64 308, !9, i64 312, !9, i64 316, !6, i64 320, !9, i64 324, !9, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !9, i64 408, !2, i64 416, !2, i64 424, !125, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !126, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !126, i64 1336}
!120 = !{!"gx_line_params_s", !6, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !9, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !9, i64 36, !13, i64 40, !121, i64 64}
!121 = !{!"gx_dash_params_s", !2, i64 0, !9, i64 8, !6, i64 12, !9, i64 16, !6, i64 20, !9, i64 24, !9, i64 28, !6, i64 32}
!122 = !{!"gs_matrix_fixed_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!123 = !{!"gs_transparency_source_s", !6, i64 0}
!124 = !{!"gs_xstate_trans_flags", !9, i64 0, !9, i64 4}
!125 = !{!"gx_transfer_s", !9, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !9, i64 32, !2, i64 40, !9, i64 48, !2, i64 56}
!126 = !{!"gs_devicen_color_map_s", !9, i64 0, !3, i64 4, !9, i64 8, !9, i64 12, !94, i64 16, !3, i64 24}
!127 = !{!110, !2, i64 8}
!128 = !{!129, !2, i64 32}
!129 = !{!"gs_memory_struct_type_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!130 = !{!131, !2, i64 136}
!131 = !{!"gs_shading_mesh_s", !26, i64 0, !59, i64 16}
!132 = !{!133, !2, i64 0}
!133 = !{!"enum_ptr_s", !2, i64 0, !9, i64 8}
!134 = !{!131, !2, i64 128}
!135 = !{!129, !2, i64 40}
!136 = !{!137, !2, i64 0}
!137 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
