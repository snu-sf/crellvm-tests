; ModuleID = './gxshade1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_shading_s = type { %struct.gs_shading_head_s, %struct.gs_shading_params_s }
%struct.gs_shading_head_s = type { i32, %struct.gs_shading_procs_s }
%struct.gs_shading_procs_s = type { {}* }
%struct.gs_shading_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32 }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
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
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
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
%struct.gs_shading_Fb_s = type { %struct.gs_shading_head_s, %struct.gs_shading_Fb_params_s }
%struct.gs_shading_Fb_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, [4 x float], %struct.gs_matrix_s, %struct.gs_function_s* }
%struct.Fb_fill_state_s = type { %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i32, [64 x float], %struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gs_shading_Fb_s*, %struct.gs_matrix_fixed_s, %struct.Fb_frame_s }
%struct.Fb_frame_s = type { %struct.gs_rect_s, [4 x %struct.gs_client_color_s], i32 }
%struct.shading_fill_state_s = type { %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i32, [64 x float], %struct.gx_device_s*, %struct.gsicc_link_s* }
%struct.patch_curve_s = type { %struct.mesh_vertex_s, [2 x %struct.gs_fixed_point_s], i32 }
%struct.mesh_vertex_s = type { %struct.gs_fixed_point_s, [64 x float] }
%struct.gs_shading_A_s = type { %struct.gs_shading_head_s, %struct.gs_shading_A_params_s }
%struct.gs_shading_A_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, [4 x float], [2 x float], %struct.gs_function_s*, [2 x i32] }
%struct.A_fill_state_s = type { %struct.gs_shading_A_s*, %struct.gs_point_s, double, double, double, double, double, double, double }
%struct.gs_shading_R_s = type { %struct.gs_shading_head_s, %struct.gs_shading_R_params_s }
%struct.gs_shading_R_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, [6 x float], [2 x float], %struct.gs_function_s*, [2 x i32] }
%struct.radial_shading_attrs_s = type { double, double, double, double, [2 x [2 x double]], double, i32, [2 x i32], [2 x i32], [6 x %struct.gs_point_s] }
%struct.quadrangle_patch = type { [2 x [2 x %struct.shading_vertex_s*]], %struct.wedge_vertex_list_t*, %struct.wedge_vertex_list_t*, %struct.wedge_vertex_list_t*, %struct.wedge_vertex_list_t* }
%struct.shading_vertex_s = type { %struct.gs_fixed_point_s, %struct.patch_color_s* }
%struct.patch_color_s = type { [2 x float], %struct.gs_client_color_s }
%struct.wedge_vertex_list_t = type { i32, %struct.wedge_vertex_list_elem_s*, %struct.wedge_vertex_list_elem_s* }

; Function Attrs: nounwind uwtable
define i32 @gs_shading_Fb_fill_rectangle(%struct.gs_shading_s* %psh0, %struct.gs_rect_s* %rect, %struct.gs_fixed_rect_s* %rect_clip, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %psh0.addr = alloca %struct.gs_shading_s*, align 8
  %rect.addr = alloca %struct.gs_rect_s*, align 8
  %rect_clip.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %psh = alloca %struct.gs_shading_Fb_s*, align 8
  %save_ctm = alloca %struct.gs_matrix_s, align 4
  %xi = alloca i32, align 4
  %yi = alloca i32, align 4
  %code = alloca i32, align 4
  %x = alloca [2 x float], align 4
  %y = alloca [2 x float], align 4
  %state = alloca %struct.Fb_fill_state_s, align 8
  %cleanup.dest.slot = alloca i32
  %pbox = alloca %struct.gs_rect_s, align 8
  %v = alloca [2 x float], align 4
  store %struct.gs_shading_s* %psh0, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %rect, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect_clip, %struct.gs_fixed_rect_s** %rect_clip.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_Fb_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_shading_s* %1 to %struct.gs_shading_Fb_s*
  store %struct.gs_shading_Fb_s* %2, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %3 = bitcast %struct.gs_matrix_s* %save_ctm to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %yi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast [2 x float]* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast [2 x float]* %y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.Fb_fill_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 1448, i8* %9) #1
  %10 = bitcast %struct.Fb_fill_state_s* %state to %struct.shading_fill_state_s*
  %11 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @shade_init_fill_state(%struct.shading_fill_state_s* %10, %struct.gs_shading_s* %11, %struct.gx_device_s* %12, %struct.gs_imager_state_s* %13) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %psh1 = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %state, i32 0, i32 7
  store %struct.gs_shading_Fb_s* %16, %struct.gs_shading_Fb_s** %psh1, align 8, !tbaa !7
  %17 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gs_imager_state_s* %17 to %struct.gs_state_s*
  %call2 = call i32 @gs_currentmatrix(%struct.gs_state_s* %18, %struct.gs_matrix_s* %save_ctm) #6
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gs_imager_state_s* %19 to %struct.gs_state_s*
  %21 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_Fb_s, %struct.gs_shading_Fb_s* %21, i32 0, i32 1
  %Matrix = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 7
  %call3 = call i32 @gs_concat(%struct.gs_state_s* %20, %struct.gs_matrix_s* %Matrix) #6
  %ptm = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %state, i32 0, i32 8
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %22, i32 0, i32 5
  %23 = bitcast %struct.gs_matrix_fixed_s* %ptm to i8*
  %24 = bitcast %struct.gs_matrix_fixed_s* %ctm to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 36, i32 4, i1 false), !tbaa.struct !15
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gs_imager_state_s* %25 to %struct.gs_state_s*
  %call4 = call i32 @gs_setmatrix(%struct.gs_state_s* %26, %struct.gs_matrix_s* %save_ctm) #6
  %27 = bitcast %struct.gs_rect_s* %pbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %27) #1
  %28 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %29 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gs_shading_Fb_s, %struct.gs_shading_Fb_s* %29, i32 0, i32 1
  %Matrix6 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params5, i32 0, i32 7
  %call7 = call i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* %28, %struct.gs_matrix_s* %Matrix6, %struct.gs_rect_s* %pbox) #6
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %pbox, i32 0, i32 0
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %30 = load double, double* %x8, align 8, !tbaa !17
  %31 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_shading_Fb_s, %struct.gs_shading_Fb_s* %31, i32 0, i32 1
  %Domain = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params9, i32 0, i32 6
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %Domain, i32 0, i64 0
  %32 = load float, float* %arrayidx, align 4, !tbaa !16
  %conv = fpext float %32 to double
  %cmp10 = fcmp ogt double %30, %conv
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %p12 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %pbox, i32 0, i32 0
  %x13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p12, i32 0, i32 0
  %33 = load double, double* %x13, align 8, !tbaa !17
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %34 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %params14 = getelementptr inbounds %struct.gs_shading_Fb_s, %struct.gs_shading_Fb_s* %34, i32 0, i32 1
  %Domain15 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params14, i32 0, i32 6
  %arrayidx16 = getelementptr inbounds [4 x float], [4 x float]* %Domain15, i32 0, i64 0
  %35 = load float, float* %arrayidx16, align 4, !tbaa !16
  %conv17 = fpext float %35 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %33, %cond.true ], [ %conv17, %cond.false ]
  %conv18 = fptrunc double %cond to float
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %x, i32 0, i64 0
  store float %conv18, float* %arrayidx19, align 4, !tbaa !16
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %pbox, i32 0, i32 1
  %x20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %36 = load double, double* %x20, align 8, !tbaa !18
  %37 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %params21 = getelementptr inbounds %struct.gs_shading_Fb_s, %struct.gs_shading_Fb_s* %37, i32 0, i32 1
  %Domain22 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params21, i32 0, i32 6
  %arrayidx23 = getelementptr inbounds [4 x float], [4 x float]* %Domain22, i32 0, i64 1
  %38 = load float, float* %arrayidx23, align 4, !tbaa !16
  %conv24 = fpext float %38 to double
  %cmp25 = fcmp olt double %36, %conv24
  br i1 %cmp25, label %cond.true.27, label %cond.false.30

cond.true.27:                                     ; preds = %cond.end
  %q28 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %pbox, i32 0, i32 1
  %x29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q28, i32 0, i32 0
  %39 = load double, double* %x29, align 8, !tbaa !18
  br label %cond.end.35

cond.false.30:                                    ; preds = %cond.end
  %40 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %params31 = getelementptr inbounds %struct.gs_shading_Fb_s, %struct.gs_shading_Fb_s* %40, i32 0, i32 1
  %Domain32 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params31, i32 0, i32 6
  %arrayidx33 = getelementptr inbounds [4 x float], [4 x float]* %Domain32, i32 0, i64 1
  %41 = load float, float* %arrayidx33, align 4, !tbaa !16
  %conv34 = fpext float %41 to double
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.30, %cond.true.27
  %cond36 = phi double [ %39, %cond.true.27 ], [ %conv34, %cond.false.30 ]
  %conv37 = fptrunc double %cond36 to float
  %arrayidx38 = getelementptr inbounds [2 x float], [2 x float]* %x, i32 0, i64 1
  store float %conv37, float* %arrayidx38, align 4, !tbaa !16
  %p39 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %pbox, i32 0, i32 0
  %y40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p39, i32 0, i32 1
  %42 = load double, double* %y40, align 8, !tbaa !19
  %43 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %params41 = getelementptr inbounds %struct.gs_shading_Fb_s, %struct.gs_shading_Fb_s* %43, i32 0, i32 1
  %Domain42 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params41, i32 0, i32 6
  %arrayidx43 = getelementptr inbounds [4 x float], [4 x float]* %Domain42, i32 0, i64 2
  %44 = load float, float* %arrayidx43, align 4, !tbaa !16
  %conv44 = fpext float %44 to double
  %cmp45 = fcmp ogt double %42, %conv44
  br i1 %cmp45, label %cond.true.47, label %cond.false.50

cond.true.47:                                     ; preds = %cond.end.35
  %p48 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %pbox, i32 0, i32 0
  %y49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p48, i32 0, i32 1
  %45 = load double, double* %y49, align 8, !tbaa !19
  br label %cond.end.55

cond.false.50:                                    ; preds = %cond.end.35
  %46 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %params51 = getelementptr inbounds %struct.gs_shading_Fb_s, %struct.gs_shading_Fb_s* %46, i32 0, i32 1
  %Domain52 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params51, i32 0, i32 6
  %arrayidx53 = getelementptr inbounds [4 x float], [4 x float]* %Domain52, i32 0, i64 2
  %47 = load float, float* %arrayidx53, align 4, !tbaa !16
  %conv54 = fpext float %47 to double
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.50, %cond.true.47
  %cond56 = phi double [ %45, %cond.true.47 ], [ %conv54, %cond.false.50 ]
  %conv57 = fptrunc double %cond56 to float
  %arrayidx58 = getelementptr inbounds [2 x float], [2 x float]* %y, i32 0, i64 0
  store float %conv57, float* %arrayidx58, align 4, !tbaa !16
  %q59 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %pbox, i32 0, i32 1
  %y60 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q59, i32 0, i32 1
  %48 = load double, double* %y60, align 8, !tbaa !20
  %49 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %params61 = getelementptr inbounds %struct.gs_shading_Fb_s, %struct.gs_shading_Fb_s* %49, i32 0, i32 1
  %Domain62 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params61, i32 0, i32 6
  %arrayidx63 = getelementptr inbounds [4 x float], [4 x float]* %Domain62, i32 0, i64 3
  %50 = load float, float* %arrayidx63, align 4, !tbaa !16
  %conv64 = fpext float %50 to double
  %cmp65 = fcmp olt double %48, %conv64
  br i1 %cmp65, label %cond.true.67, label %cond.false.70

cond.true.67:                                     ; preds = %cond.end.55
  %q68 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %pbox, i32 0, i32 1
  %y69 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q68, i32 0, i32 1
  %51 = load double, double* %y69, align 8, !tbaa !20
  br label %cond.end.75

cond.false.70:                                    ; preds = %cond.end.55
  %52 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %params71 = getelementptr inbounds %struct.gs_shading_Fb_s, %struct.gs_shading_Fb_s* %52, i32 0, i32 1
  %Domain72 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params71, i32 0, i32 6
  %arrayidx73 = getelementptr inbounds [4 x float], [4 x float]* %Domain72, i32 0, i64 3
  %53 = load float, float* %arrayidx73, align 4, !tbaa !16
  %conv74 = fpext float %53 to double
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.70, %cond.true.67
  %cond76 = phi double [ %51, %cond.true.67 ], [ %conv74, %cond.false.70 ]
  %conv77 = fptrunc double %cond76 to float
  %arrayidx78 = getelementptr inbounds [2 x float], [2 x float]* %y, i32 0, i64 1
  store float %conv77, float* %arrayidx78, align 4, !tbaa !16
  %54 = bitcast %struct.gs_rect_s* %pbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %54) #1
  %arrayidx79 = getelementptr inbounds [2 x float], [2 x float]* %x, i32 0, i64 0
  %55 = load float, float* %arrayidx79, align 4, !tbaa !16
  %arrayidx80 = getelementptr inbounds [2 x float], [2 x float]* %x, i32 0, i64 1
  %56 = load float, float* %arrayidx80, align 4, !tbaa !16
  %cmp81 = fcmp ogt float %55, %56
  br i1 %cmp81, label %if.then.87, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.75
  %arrayidx83 = getelementptr inbounds [2 x float], [2 x float]* %y, i32 0, i64 0
  %57 = load float, float* %arrayidx83, align 4, !tbaa !16
  %arrayidx84 = getelementptr inbounds [2 x float], [2 x float]* %y, i32 0, i64 1
  %58 = load float, float* %arrayidx84, align 4, !tbaa !16
  %cmp85 = fcmp ogt float %57, %58
  br i1 %cmp85, label %if.then.87, label %if.end.93

if.then.87:                                       ; preds = %lor.lhs.false, %cond.end.75
  %icclink = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %state, i32 0, i32 6
  %59 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink, align 8, !tbaa !21
  %cmp88 = icmp ne %struct.gsicc_link_s* %59, null
  br i1 %cmp88, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %if.then.87
  %icclink91 = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %state, i32 0, i32 6
  %60 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink91, align 8, !tbaa !21
  call void @gsicc_release_link(%struct.gsicc_link_s* %60) #6
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %if.then.87
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.93:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %xi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.112, %if.end.93
  %61 = load i32, i32* %xi, align 4, !tbaa !5
  %cmp94 = icmp slt i32 %61, 2
  br i1 %cmp94, label %for.body, label %for.end.114

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %yi, align 4, !tbaa !5
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc, %for.body
  %62 = load i32, i32* %yi, align 4, !tbaa !5
  %cmp97 = icmp slt i32 %62, 2
  br i1 %cmp97, label %for.body.99, label %for.end

for.body.99:                                      ; preds = %for.cond.96
  %63 = bitcast [2 x float]* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %64 = load i32, i32* %xi, align 4, !tbaa !5
  %idxprom = sext i32 %64 to i64
  %arrayidx100 = getelementptr inbounds [2 x float], [2 x float]* %x, i32 0, i64 %idxprom
  %65 = load float, float* %arrayidx100, align 4, !tbaa !16
  %arrayidx101 = getelementptr inbounds [2 x float], [2 x float]* %v, i32 0, i64 0
  store float %65, float* %arrayidx101, align 4, !tbaa !16
  %66 = load i32, i32* %yi, align 4, !tbaa !5
  %idxprom102 = sext i32 %66 to i64
  %arrayidx103 = getelementptr inbounds [2 x float], [2 x float]* %y, i32 0, i64 %idxprom102
  %67 = load float, float* %arrayidx103, align 4, !tbaa !16
  %arrayidx104 = getelementptr inbounds [2 x float], [2 x float]* %v, i32 0, i64 1
  store float %67, float* %arrayidx104, align 4, !tbaa !16
  %68 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %params105 = getelementptr inbounds %struct.gs_shading_Fb_s, %struct.gs_shading_Fb_s* %68, i32 0, i32 1
  %Function = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params105, i32 0, i32 8
  %69 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !22
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %69, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %evaluate = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 0
  %70 = load i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*)** %evaluate, align 8, !tbaa !28
  %71 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !1
  %params106 = getelementptr inbounds %struct.gs_shading_Fb_s, %struct.gs_shading_Fb_s* %71, i32 0, i32 1
  %Function107 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params106, i32 0, i32 8
  %72 = load %struct.gs_function_s*, %struct.gs_function_s** %Function107, align 8, !tbaa !22
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %v, i32 0, i32 0
  %73 = load i32, i32* %yi, align 4, !tbaa !5
  %mul = mul nsw i32 %73, 2
  %74 = load i32, i32* %xi, align 4, !tbaa !5
  %add = add nsw i32 %mul, %74
  %idxprom108 = sext i32 %add to i64
  %frame = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %state, i32 0, i32 9
  %cc = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %frame, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [4 x %struct.gs_client_color_s], [4 x %struct.gs_client_color_s]* %cc, i32 0, i64 %idxprom108
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %arrayidx109, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arraydecay110 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i32 0
  %call111 = call i32 %70(%struct.gs_function_s* %72, float* %arraydecay, float* %arraydecay110) #6
  %75 = bitcast [2 x float]* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body.99
  %76 = load i32, i32* %yi, align 4, !tbaa !5
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %yi, align 4, !tbaa !5
  br label %for.cond.96

for.end:                                          ; preds = %for.cond.96
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.end
  %77 = load i32, i32* %xi, align 4, !tbaa !5
  %inc113 = add nsw i32 %77, 1
  store i32 %inc113, i32* %xi, align 4, !tbaa !5
  br label %for.cond

for.end.114:                                      ; preds = %for.cond
  %arrayidx115 = getelementptr inbounds [2 x float], [2 x float]* %x, i32 0, i64 0
  %78 = load float, float* %arrayidx115, align 4, !tbaa !16
  %conv116 = fpext float %78 to double
  %frame117 = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %state, i32 0, i32 9
  %region = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %frame117, i32 0, i32 0
  %p118 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region, i32 0, i32 0
  %x119 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p118, i32 0, i32 0
  store double %conv116, double* %x119, align 8, !tbaa !33
  %arrayidx120 = getelementptr inbounds [2 x float], [2 x float]* %y, i32 0, i64 0
  %79 = load float, float* %arrayidx120, align 4, !tbaa !16
  %conv121 = fpext float %79 to double
  %frame122 = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %state, i32 0, i32 9
  %region123 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %frame122, i32 0, i32 0
  %p124 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region123, i32 0, i32 0
  %y125 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p124, i32 0, i32 1
  store double %conv121, double* %y125, align 8, !tbaa !34
  %arrayidx126 = getelementptr inbounds [2 x float], [2 x float]* %x, i32 0, i64 1
  %80 = load float, float* %arrayidx126, align 4, !tbaa !16
  %conv127 = fpext float %80 to double
  %frame128 = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %state, i32 0, i32 9
  %region129 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %frame128, i32 0, i32 0
  %q130 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region129, i32 0, i32 1
  %x131 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q130, i32 0, i32 0
  store double %conv127, double* %x131, align 8, !tbaa !35
  %arrayidx132 = getelementptr inbounds [2 x float], [2 x float]* %y, i32 0, i64 1
  %81 = load float, float* %arrayidx132, align 4, !tbaa !16
  %conv133 = fpext float %81 to double
  %frame134 = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %state, i32 0, i32 9
  %region135 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %frame134, i32 0, i32 0
  %q136 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region135, i32 0, i32 1
  %y137 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q136, i32 0, i32 1
  store double %conv133, double* %y137, align 8, !tbaa !36
  %82 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect_clip.addr, align 8, !tbaa !1
  %call138 = call i32 @Fb_fill_region(%struct.Fb_fill_state_s* %state, %struct.gs_fixed_rect_s* %82) #6
  store i32 %call138, i32* %code, align 4, !tbaa !5
  %icclink139 = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %state, i32 0, i32 6
  %83 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink139, align 8, !tbaa !21
  %cmp140 = icmp ne %struct.gsicc_link_s* %83, null
  br i1 %cmp140, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %for.end.114
  %icclink143 = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %state, i32 0, i32 6
  %84 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink143, align 8, !tbaa !21
  call void @gsicc_release_link(%struct.gsicc_link_s* %84) #6
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.142, %for.end.114
  %85 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.144, %if.end.92, %if.then
  %86 = bitcast %struct.Fb_fill_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 1448, i8* %86) #1
  %87 = bitcast [2 x float]* %y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast [2 x float]* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %yi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast %struct.gs_matrix_s* %save_ctm to i8*
  call void @llvm.lifetime.end(i64 24, i8* %92) #1
  %93 = bitcast %struct.gs_shading_Fb_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @shade_init_fill_state(%struct.shading_fill_state_s*, %struct.gs_shading_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*) #2

declare i32 @gs_currentmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_concat(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gs_setmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_bbox_transform_inverse(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @gsicc_release_link(%struct.gsicc_link_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @Fb_fill_region(%struct.Fb_fill_state_s* %pfs, %struct.gs_fixed_rect_s* %rect) #0 {
entry:
  %retval = alloca i32, align 4
  %pfs.addr = alloca %struct.Fb_fill_state_s*, align 8
  %rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pfs1 = alloca %struct.patch_fill_state_s, align 8
  %curve = alloca [4 x %struct.patch_curve_s], align 16
  %fp = alloca %struct.Fb_frame_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.Fb_fill_state_s* %pfs, %struct.Fb_fill_state_s** %pfs.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %0 = bitcast %struct.patch_fill_state_s* %pfs1 to i8*
  call void @llvm.lifetime.start(i64 728, i8* %0) #1
  %1 = bitcast [4 x %struct.patch_curve_s]* %curve to i8*
  call void @llvm.lifetime.start(i64 1136, i8* %1) #1
  %2 = bitcast %struct.Fb_frame_s** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.Fb_fill_state_s*, %struct.Fb_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %frame = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %3, i32 0, i32 9
  store %struct.Fb_frame_s* %frame, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.patch_fill_state_s* %pfs1 to i8*
  %6 = load %struct.Fb_fill_state_s*, %struct.Fb_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %7 = bitcast %struct.Fb_fill_state_s* %6 to %struct.shading_fill_state_s*
  %8 = bitcast %struct.shading_fill_state_s* %7 to i8*
  %call = call i8* @memcpy(i8* %5, i8* %8, i64 304) #7
  %9 = load %struct.Fb_fill_state_s*, %struct.Fb_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %psh = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %9, i32 0, i32 7
  %10 = load %struct.gs_shading_Fb_s*, %struct.gs_shading_Fb_s** %psh, align 8, !tbaa !7
  %params = getelementptr inbounds %struct.gs_shading_Fb_s, %struct.gs_shading_Fb_s* %10, i32 0, i32 1
  %Function = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 8
  %11 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !22
  %Function1 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 9
  store %struct.gs_function_s* %11, %struct.gs_function_s** %Function1, align 8, !tbaa !37
  %call2 = call i32 @init_patch_fill_state(%struct.patch_fill_state_s* %pfs1) #6
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %maybe_self_intersecting = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 22
  store i32 0, i32* %maybe_self_intersecting, align 4, !tbaa !43
  %n_color_args = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 12
  store i32 2, i32* %n_color_args, align 4, !tbaa !44
  %rect3 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 8
  %14 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gs_fixed_rect_s* %rect3 to i8*
  %16 = bitcast %struct.gs_fixed_rect_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 4, i1 false), !tbaa.struct !45
  %17 = load %struct.Fb_fill_state_s*, %struct.Fb_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %ptm = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %17, i32 0, i32 8
  %18 = load %struct.Fb_frame_s*, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %region = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %18, i32 0, i32 0
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %19 = load double, double* %x, align 8, !tbaa !46
  %20 = load %struct.Fb_frame_s*, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %region4 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %20, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region4, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p5, i32 0, i32 1
  %21 = load double, double* %y, align 8, !tbaa !47
  %arrayidx = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 0
  %vertex = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex, i32 0, i32 0
  %call7 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ptm, double %19, double %21, %struct.gs_fixed_point_s* %p6) #6
  %22 = load %struct.Fb_fill_state_s*, %struct.Fb_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %ptm8 = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %22, i32 0, i32 8
  %23 = load %struct.Fb_frame_s*, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %region9 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %23, i32 0, i32 0
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region9, i32 0, i32 1
  %x10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %24 = load double, double* %x10, align 8, !tbaa !48
  %25 = load %struct.Fb_frame_s*, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %region11 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %25, i32 0, i32 0
  %p12 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region11, i32 0, i32 0
  %y13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p12, i32 0, i32 1
  %26 = load double, double* %y13, align 8, !tbaa !47
  %arrayidx14 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 1
  %vertex15 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx14, i32 0, i32 0
  %p16 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex15, i32 0, i32 0
  %call17 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ptm8, double %24, double %26, %struct.gs_fixed_point_s* %p16) #6
  %27 = load %struct.Fb_fill_state_s*, %struct.Fb_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %ptm18 = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %27, i32 0, i32 8
  %28 = load %struct.Fb_frame_s*, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %region19 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %28, i32 0, i32 0
  %q20 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region19, i32 0, i32 1
  %x21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q20, i32 0, i32 0
  %29 = load double, double* %x21, align 8, !tbaa !48
  %30 = load %struct.Fb_frame_s*, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %region22 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %30, i32 0, i32 0
  %q23 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region22, i32 0, i32 1
  %y24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q23, i32 0, i32 1
  %31 = load double, double* %y24, align 8, !tbaa !49
  %arrayidx25 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 2
  %vertex26 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex26, i32 0, i32 0
  %call28 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ptm18, double %29, double %31, %struct.gs_fixed_point_s* %p27) #6
  %32 = load %struct.Fb_fill_state_s*, %struct.Fb_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %ptm29 = getelementptr inbounds %struct.Fb_fill_state_s, %struct.Fb_fill_state_s* %32, i32 0, i32 8
  %33 = load %struct.Fb_frame_s*, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %region30 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %33, i32 0, i32 0
  %p31 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region30, i32 0, i32 0
  %x32 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p31, i32 0, i32 0
  %34 = load double, double* %x32, align 8, !tbaa !46
  %35 = load %struct.Fb_frame_s*, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %region33 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %35, i32 0, i32 0
  %q34 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region33, i32 0, i32 1
  %y35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q34, i32 0, i32 1
  %36 = load double, double* %y35, align 8, !tbaa !49
  %arrayidx36 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 3
  %vertex37 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx36, i32 0, i32 0
  %p38 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex37, i32 0, i32 0
  %call39 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ptm29, double %34, double %36, %struct.gs_fixed_point_s* %p38) #6
  %arraydecay = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i32 0
  call void @make_other_poles(%struct.patch_curve_s* %arraydecay) #6
  %37 = load %struct.Fb_frame_s*, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %region40 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %37, i32 0, i32 0
  %p41 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region40, i32 0, i32 0
  %x42 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p41, i32 0, i32 0
  %38 = load double, double* %x42, align 8, !tbaa !46
  %conv = fptrunc double %38 to float
  %arrayidx43 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 0
  %vertex44 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx43, i32 0, i32 0
  %cc = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex44, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [64 x float], [64 x float]* %cc, i32 0, i64 0
  store float %conv, float* %arrayidx45, align 4, !tbaa !16
  %39 = load %struct.Fb_frame_s*, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %region46 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %39, i32 0, i32 0
  %p47 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region46, i32 0, i32 0
  %y48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p47, i32 0, i32 1
  %40 = load double, double* %y48, align 8, !tbaa !47
  %conv49 = fptrunc double %40 to float
  %arrayidx50 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 0
  %vertex51 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx50, i32 0, i32 0
  %cc52 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex51, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [64 x float], [64 x float]* %cc52, i32 0, i64 1
  store float %conv49, float* %arrayidx53, align 4, !tbaa !16
  %41 = load %struct.Fb_frame_s*, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %region54 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %41, i32 0, i32 0
  %q55 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region54, i32 0, i32 1
  %x56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q55, i32 0, i32 0
  %42 = load double, double* %x56, align 8, !tbaa !48
  %conv57 = fptrunc double %42 to float
  %arrayidx58 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 1
  %vertex59 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx58, i32 0, i32 0
  %cc60 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex59, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [64 x float], [64 x float]* %cc60, i32 0, i64 0
  store float %conv57, float* %arrayidx61, align 4, !tbaa !16
  %43 = load %struct.Fb_frame_s*, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %region62 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %43, i32 0, i32 0
  %p63 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region62, i32 0, i32 0
  %y64 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p63, i32 0, i32 1
  %44 = load double, double* %y64, align 8, !tbaa !47
  %conv65 = fptrunc double %44 to float
  %arrayidx66 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 1
  %vertex67 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx66, i32 0, i32 0
  %cc68 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex67, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [64 x float], [64 x float]* %cc68, i32 0, i64 1
  store float %conv65, float* %arrayidx69, align 4, !tbaa !16
  %45 = load %struct.Fb_frame_s*, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %region70 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %45, i32 0, i32 0
  %q71 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region70, i32 0, i32 1
  %x72 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q71, i32 0, i32 0
  %46 = load double, double* %x72, align 8, !tbaa !48
  %conv73 = fptrunc double %46 to float
  %arrayidx74 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 2
  %vertex75 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx74, i32 0, i32 0
  %cc76 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex75, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [64 x float], [64 x float]* %cc76, i32 0, i64 0
  store float %conv73, float* %arrayidx77, align 4, !tbaa !16
  %47 = load %struct.Fb_frame_s*, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %region78 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %47, i32 0, i32 0
  %q79 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region78, i32 0, i32 1
  %y80 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q79, i32 0, i32 1
  %48 = load double, double* %y80, align 8, !tbaa !49
  %conv81 = fptrunc double %48 to float
  %arrayidx82 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 2
  %vertex83 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx82, i32 0, i32 0
  %cc84 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex83, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [64 x float], [64 x float]* %cc84, i32 0, i64 1
  store float %conv81, float* %arrayidx85, align 4, !tbaa !16
  %49 = load %struct.Fb_frame_s*, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %region86 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %49, i32 0, i32 0
  %p87 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region86, i32 0, i32 0
  %x88 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p87, i32 0, i32 0
  %50 = load double, double* %x88, align 8, !tbaa !46
  %conv89 = fptrunc double %50 to float
  %arrayidx90 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 3
  %vertex91 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx90, i32 0, i32 0
  %cc92 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex91, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [64 x float], [64 x float]* %cc92, i32 0, i64 0
  store float %conv89, float* %arrayidx93, align 4, !tbaa !16
  %51 = load %struct.Fb_frame_s*, %struct.Fb_frame_s** %fp, align 8, !tbaa !1
  %region94 = getelementptr inbounds %struct.Fb_frame_s, %struct.Fb_frame_s* %51, i32 0, i32 0
  %q95 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %region94, i32 0, i32 1
  %y96 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q95, i32 0, i32 1
  %52 = load double, double* %y96, align 8, !tbaa !49
  %conv97 = fptrunc double %52 to float
  %arrayidx98 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 3
  %vertex99 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx98, i32 0, i32 0
  %cc100 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex99, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [64 x float], [64 x float]* %cc100, i32 0, i64 1
  store float %conv97, float* %arrayidx101, align 4, !tbaa !16
  %arraydecay102 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i32 0
  %call103 = call i32 @patch_fill(%struct.patch_fill_state_s* %pfs1, %struct.patch_curve_s* %arraydecay102, %struct.gs_fixed_point_s* null, void (%struct.gs_fixed_point_s*, %struct.patch_curve_s*, %struct.gs_fixed_point_s*, double, double)* null) #6
  store i32 %call103, i32* %code, align 4, !tbaa !5
  %call104 = call i32 @term_patch_fill_state(%struct.patch_fill_state_s* %pfs1) #6
  %tobool = icmp ne i32 %call104, 0
  br i1 %tobool, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.106:                                       ; preds = %if.end
  %53 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.106, %if.then.105, %if.then
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast %struct.Fb_frame_s** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast [4 x %struct.patch_curve_s]* %curve to i8*
  call void @llvm.lifetime.end(i64 1136, i8* %56) #1
  %57 = bitcast %struct.patch_fill_state_s* %pfs1 to i8*
  call void @llvm.lifetime.end(i64 728, i8* %57) #1
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define i32 @gs_shading_A_fill_rectangle(%struct.gs_shading_s* %psh0, %struct.gs_rect_s* %rect, %struct.gs_fixed_rect_s* %rect_clip, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %psh0.addr = alloca %struct.gs_shading_s*, align 8
  %rect.addr = alloca %struct.gs_rect_s*, align 8
  %rect_clip.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_shading_s* %psh0, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %rect, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect_clip, %struct.gs_fixed_rect_s** %rect_clip.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  %2 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %3 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect_clip.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @gs_shading_A_fill_rectangle_aux(%struct.gs_shading_s* %1, %struct.gs_rect_s* %2, %struct.gs_fixed_rect_s* %3, %struct.gx_device_s* %4, %struct.gs_imager_state_s* %5) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @gs_shading_A_fill_rectangle_aux(%struct.gs_shading_s* %psh0, %struct.gs_rect_s* %rect, %struct.gs_fixed_rect_s* %clip_rect, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis) #3 {
entry:
  %retval = alloca i32, align 4
  %psh0.addr = alloca %struct.gs_shading_s*, align 8
  %rect.addr = alloca %struct.gs_rect_s*, align 8
  %clip_rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %psh = alloca %struct.gs_shading_A_s*, align 8
  %pfn = alloca %struct.gs_function_s*, align 8
  %cmat = alloca %struct.gs_matrix_s, align 4
  %t_rect = alloca %struct.gs_rect_s, align 8
  %state = alloca %struct.A_fill_state_s, align 8
  %pfs1 = alloca %struct.patch_fill_state_s, align 8
  %d0 = alloca float, align 4
  %d1 = alloca float, align 4
  %dd = alloca float, align 4
  %t0 = alloca double, align 8
  %t1 = alloca double, align 8
  %dist = alloca %struct.gs_point_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_shading_s* %psh0, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %rect, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %clip_rect, %struct.gs_fixed_rect_s** %clip_rect.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_A_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_shading_s* %1 to %struct.gs_shading_A_s*
  store %struct.gs_shading_A_s* %2, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %3 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %4, i32 0, i32 1
  %Function = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params, i32 0, i32 8
  %5 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !50
  store %struct.gs_function_s* %5, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %6 = bitcast %struct.gs_matrix_s* %cmat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = bitcast %struct.gs_rect_s* %t_rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast %struct.A_fill_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 80, i8* %8) #1
  %9 = bitcast %struct.patch_fill_state_s* %pfs1 to i8*
  call void @llvm.lifetime.start(i64 728, i8* %9) #1
  %10 = bitcast float* %d0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %11, i32 0, i32 1
  %Domain = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params1, i32 0, i32 7
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %Domain, i32 0, i64 0
  %12 = load float, float* %arrayidx, align 4, !tbaa !16
  store float %12, float* %d0, align 4, !tbaa !16
  %13 = bitcast float* %d1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %14, i32 0, i32 1
  %Domain3 = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params2, i32 0, i32 7
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %Domain3, i32 0, i64 1
  %15 = load float, float* %arrayidx4, align 4, !tbaa !16
  store float %15, float* %d1, align 4, !tbaa !16
  %16 = bitcast float* %dd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load float, float* %d1, align 4, !tbaa !16
  %18 = load float, float* %d0, align 4, !tbaa !16
  %sub = fsub float %17, %18
  store float %sub, float* %dd, align 4, !tbaa !16
  %19 = bitcast double* %t0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast double* %t1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast %struct.gs_point_s* %dist to i8*
  call void @llvm.lifetime.start(i64 16, i8* %21) #1
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %psh5 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 0
  store %struct.gs_shading_A_s* %23, %struct.gs_shading_A_s** %psh5, align 8, !tbaa !53
  %24 = bitcast %struct.patch_fill_state_s* %pfs1 to %struct.shading_fill_state_s*
  %25 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %27 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @shade_init_fill_state(%struct.shading_fill_state_s* %24, %struct.gs_shading_s* %25, %struct.gx_device_s* %26, %struct.gs_imager_state_s* %27) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %28, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %29 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %30 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %Function6 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 9
  store %struct.gs_function_s* %30, %struct.gs_function_s** %Function6, align 8, !tbaa !37
  %rect7 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 8
  %31 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip_rect.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gs_fixed_rect_s* %rect7 to i8*
  %33 = bitcast %struct.gs_fixed_rect_s* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 4, i1 false), !tbaa.struct !45
  %call8 = call i32 @init_patch_fill_state(%struct.patch_fill_state_s* %pfs1) #6
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %34, 0
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end
  %icclink = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 6
  %35 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink, align 8, !tbaa !55
  %cmp11 = icmp ne %struct.gsicc_link_s* %35, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.then.10
  %icclink13 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 6
  %36 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink13, align 8, !tbaa !55
  call void @gsicc_release_link(%struct.gsicc_link_s* %36) #6
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.then.10
  %37 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end
  %maybe_self_intersecting = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 22
  store i32 0, i32* %maybe_self_intersecting, align 4, !tbaa !43
  %function_arg_shift = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 10
  store i32 1, i32* %function_arg_shift, align 4, !tbaa !56
  %38 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %params16 = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %38, i32 0, i32 1
  %Coords = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params16, i32 0, i32 6
  %arrayidx17 = getelementptr inbounds [4 x float], [4 x float]* %Coords, i32 0, i64 0
  %39 = load float, float* %arrayidx17, align 4, !tbaa !16
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 4
  store float %39, float* %tx, align 4, !tbaa !57
  %40 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %40, i32 0, i32 1
  %Coords19 = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params18, i32 0, i32 6
  %arrayidx20 = getelementptr inbounds [4 x float], [4 x float]* %Coords19, i32 0, i64 1
  %41 = load float, float* %arrayidx20, align 4, !tbaa !16
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 5
  store float %41, float* %ty, align 4, !tbaa !58
  %42 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %params21 = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %42, i32 0, i32 1
  %Coords22 = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params21, i32 0, i32 6
  %arrayidx23 = getelementptr inbounds [4 x float], [4 x float]* %Coords22, i32 0, i64 2
  %43 = load float, float* %arrayidx23, align 4, !tbaa !16
  %44 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %params24 = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %44, i32 0, i32 1
  %Coords25 = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params24, i32 0, i32 6
  %arrayidx26 = getelementptr inbounds [4 x float], [4 x float]* %Coords25, i32 0, i64 0
  %45 = load float, float* %arrayidx26, align 4, !tbaa !16
  %sub27 = fsub float %43, %45
  %conv = fpext float %sub27 to double
  %delta = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta, i32 0, i32 0
  store double %conv, double* %x, align 8, !tbaa !59
  %46 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %params28 = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %46, i32 0, i32 1
  %Coords29 = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params28, i32 0, i32 6
  %arrayidx30 = getelementptr inbounds [4 x float], [4 x float]* %Coords29, i32 0, i64 3
  %47 = load float, float* %arrayidx30, align 4, !tbaa !16
  %48 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %params31 = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %48, i32 0, i32 1
  %Coords32 = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params31, i32 0, i32 6
  %arrayidx33 = getelementptr inbounds [4 x float], [4 x float]* %Coords32, i32 0, i64 1
  %49 = load float, float* %arrayidx33, align 4, !tbaa !16
  %sub34 = fsub float %47, %49
  %conv35 = fpext float %sub34 to double
  %delta36 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta36, i32 0, i32 1
  store double %conv35, double* %y, align 8, !tbaa !60
  %delta37 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 1
  %x38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta37, i32 0, i32 0
  %50 = load double, double* %x38, align 8, !tbaa !59
  %conv39 = fptrunc double %50 to float
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 2
  store float %conv39, float* %yx, align 4, !tbaa !61
  %delta40 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 1
  %y41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta40, i32 0, i32 1
  %51 = load double, double* %y41, align 8, !tbaa !60
  %conv42 = fptrunc double %51 to float
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 3
  store float %conv42, float* %yy, align 4, !tbaa !62
  %yy43 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 3
  %52 = load float, float* %yy43, align 4, !tbaa !62
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 0
  store float %52, float* %xx, align 4, !tbaa !63
  %yx44 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 2
  %53 = load float, float* %yx44, align 4, !tbaa !61
  %sub45 = fsub float -0.000000e+00, %53
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %cmat, i32 0, i32 1
  store float %sub45, float* %xy, align 4, !tbaa !64
  %54 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %call46 = call i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* %54, %struct.gs_matrix_s* %cmat, %struct.gs_rect_s* %t_rect) #6
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %t_rect, i32 0, i32 0
  %y47 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 1
  %55 = load double, double* %y47, align 8, !tbaa !19
  %cmp48 = fcmp ogt double %55, 0.000000e+00
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %p50 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %t_rect, i32 0, i32 0
  %y51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p50, i32 0, i32 1
  %56 = load double, double* %y51, align 8, !tbaa !19
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %56, %cond.true ], [ 0.000000e+00, %cond.false ]
  %cmp52 = fcmp olt double %cond, 1.000000e+00
  br i1 %cmp52, label %cond.true.54, label %cond.false.65

cond.true.54:                                     ; preds = %cond.end
  %p55 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %t_rect, i32 0, i32 0
  %y56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p55, i32 0, i32 1
  %57 = load double, double* %y56, align 8, !tbaa !19
  %cmp57 = fcmp ogt double %57, 0.000000e+00
  br i1 %cmp57, label %cond.true.59, label %cond.false.62

cond.true.59:                                     ; preds = %cond.true.54
  %p60 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %t_rect, i32 0, i32 0
  %y61 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p60, i32 0, i32 1
  %58 = load double, double* %y61, align 8, !tbaa !19
  br label %cond.end.63

cond.false.62:                                    ; preds = %cond.true.54
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.59
  %cond64 = phi double [ %58, %cond.true.59 ], [ 0.000000e+00, %cond.false.62 ]
  br label %cond.end.66

cond.false.65:                                    ; preds = %cond.end
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.65, %cond.end.63
  %cond67 = phi double [ %cond64, %cond.end.63 ], [ 1.000000e+00, %cond.false.65 ]
  store double %cond67, double* %t0, align 8, !tbaa !65
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %t_rect, i32 0, i32 1
  %y68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 1
  %59 = load double, double* %y68, align 8, !tbaa !20
  %cmp69 = fcmp olt double %59, 1.000000e+00
  br i1 %cmp69, label %cond.true.71, label %cond.false.74

cond.true.71:                                     ; preds = %cond.end.66
  %q72 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %t_rect, i32 0, i32 1
  %y73 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q72, i32 0, i32 1
  %60 = load double, double* %y73, align 8, !tbaa !20
  br label %cond.end.75

cond.false.74:                                    ; preds = %cond.end.66
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.71
  %cond76 = phi double [ %60, %cond.true.71 ], [ 1.000000e+00, %cond.false.74 ]
  %cmp77 = fcmp ogt double %cond76, 0.000000e+00
  br i1 %cmp77, label %cond.true.79, label %cond.false.90

cond.true.79:                                     ; preds = %cond.end.75
  %q80 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %t_rect, i32 0, i32 1
  %y81 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q80, i32 0, i32 1
  %61 = load double, double* %y81, align 8, !tbaa !20
  %cmp82 = fcmp olt double %61, 1.000000e+00
  br i1 %cmp82, label %cond.true.84, label %cond.false.87

cond.true.84:                                     ; preds = %cond.true.79
  %q85 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %t_rect, i32 0, i32 1
  %y86 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q85, i32 0, i32 1
  %62 = load double, double* %y86, align 8, !tbaa !20
  br label %cond.end.88

cond.false.87:                                    ; preds = %cond.true.79
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.87, %cond.true.84
  %cond89 = phi double [ %62, %cond.true.84 ], [ 1.000000e+00, %cond.false.87 ]
  br label %cond.end.91

cond.false.90:                                    ; preds = %cond.end.75
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.end.88
  %cond92 = phi double [ %cond89, %cond.end.88 ], [ 0.000000e+00, %cond.false.90 ]
  store double %cond92, double* %t1, align 8, !tbaa !65
  %63 = load double, double* %t0, align 8, !tbaa !65
  %v0 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 5
  store double %63, double* %v0, align 8, !tbaa !66
  %64 = load double, double* %t1, align 8, !tbaa !65
  %v1 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 6
  store double %64, double* %v1, align 8, !tbaa !67
  %p93 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %t_rect, i32 0, i32 0
  %x94 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p93, i32 0, i32 0
  %65 = load double, double* %x94, align 8, !tbaa !17
  %u0 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 7
  store double %65, double* %u0, align 8, !tbaa !68
  %q95 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %t_rect, i32 0, i32 1
  %x96 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q95, i32 0, i32 0
  %66 = load double, double* %x96, align 8, !tbaa !18
  %u1 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 8
  store double %66, double* %u1, align 8, !tbaa !69
  %67 = load double, double* %t0, align 8, !tbaa !65
  %68 = load float, float* %dd, align 4, !tbaa !16
  %conv97 = fpext float %68 to double
  %mul = fmul double %67, %conv97
  %69 = load float, float* %d0, align 4, !tbaa !16
  %conv98 = fpext float %69 to double
  %add = fadd double %mul, %conv98
  %t099 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 3
  store double %add, double* %t099, align 8, !tbaa !70
  %70 = load double, double* %t1, align 8, !tbaa !65
  %71 = load float, float* %dd, align 4, !tbaa !16
  %conv100 = fpext float %71 to double
  %mul101 = fmul double %70, %conv100
  %72 = load float, float* %d0, align 4, !tbaa !16
  %conv102 = fpext float %72 to double
  %add103 = fadd double %mul101, %conv102
  %t1104 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 4
  store double %add103, double* %t1104, align 8, !tbaa !71
  %delta105 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 1
  %x106 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta105, i32 0, i32 0
  %73 = load double, double* %x106, align 8, !tbaa !59
  %delta107 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 1
  %y108 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta107, i32 0, i32 1
  %74 = load double, double* %y108, align 8, !tbaa !60
  %75 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %75, i32 0, i32 5
  %76 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call109 = call i32 @gs_distance_transform(double %73, double %74, %struct.gs_matrix_s* %76, %struct.gs_point_s* %dist) #6
  %x110 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dist, i32 0, i32 0
  %77 = load double, double* %x110, align 8, !tbaa !72
  %x111 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dist, i32 0, i32 0
  %78 = load double, double* %x111, align 8, !tbaa !72
  %mul112 = fmul double %77, %78
  %y113 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dist, i32 0, i32 1
  %79 = load double, double* %y113, align 8, !tbaa !73
  %y114 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %dist, i32 0, i32 1
  %80 = load double, double* %y114, align 8, !tbaa !73
  %mul115 = fmul double %79, %80
  %add116 = fadd double %mul112, %mul115
  %call117 = call double @sqrt(double %add116) #7
  %length = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 2
  store double %call117, double* %length, align 8, !tbaa !74
  %call118 = call i32 @A_fill_region(%struct.A_fill_state_s* %state, %struct.patch_fill_state_s* %pfs1) #6
  store i32 %call118, i32* %code, align 4, !tbaa !5
  %81 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %params119 = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %81, i32 0, i32 1
  %Extend = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params119, i32 0, i32 9
  %arrayidx120 = getelementptr inbounds [2 x i32], [2 x i32]* %Extend, i32 0, i64 0
  %82 = load i32, i32* %arrayidx120, align 4, !tbaa !5
  %tobool = icmp ne i32 %82, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.147

land.lhs.true:                                    ; preds = %cond.end.91
  %83 = load double, double* %t0, align 8, !tbaa !65
  %p121 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %t_rect, i32 0, i32 0
  %y122 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p121, i32 0, i32 1
  %84 = load double, double* %y122, align 8, !tbaa !19
  %cmp123 = fcmp ogt double %83, %84
  br i1 %cmp123, label %if.then.125, label %if.end.147

if.then.125:                                      ; preds = %land.lhs.true
  %85 = load i32, i32* %code, align 4, !tbaa !5
  %cmp126 = icmp slt i32 %85, 0
  br i1 %cmp126, label %if.then.128, label %if.end.135

if.then.128:                                      ; preds = %if.then.125
  %icclink129 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 6
  %86 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink129, align 8, !tbaa !55
  %cmp130 = icmp ne %struct.gsicc_link_s* %86, null
  br i1 %cmp130, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %if.then.128
  %icclink133 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 6
  %87 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink133, align 8, !tbaa !55
  call void @gsicc_release_link(%struct.gsicc_link_s* %87) #6
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.132, %if.then.128
  %88 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %88, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.135:                                       ; preds = %if.then.125
  %p136 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %t_rect, i32 0, i32 0
  %y137 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p136, i32 0, i32 1
  %89 = load double, double* %y137, align 8, !tbaa !19
  %v0138 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 5
  store double %89, double* %v0138, align 8, !tbaa !66
  %90 = load double, double* %t0, align 8, !tbaa !65
  %v1139 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 6
  store double %90, double* %v1139, align 8, !tbaa !67
  %91 = load double, double* %t0, align 8, !tbaa !65
  %92 = load float, float* %dd, align 4, !tbaa !16
  %conv140 = fpext float %92 to double
  %mul141 = fmul double %91, %conv140
  %93 = load float, float* %d0, align 4, !tbaa !16
  %conv142 = fpext float %93 to double
  %add143 = fadd double %mul141, %conv142
  %t1144 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 4
  store double %add143, double* %t1144, align 8, !tbaa !71
  %t0145 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 3
  store double %add143, double* %t0145, align 8, !tbaa !70
  %call146 = call i32 @A_fill_region(%struct.A_fill_state_s* %state, %struct.patch_fill_state_s* %pfs1) #6
  store i32 %call146, i32* %code, align 4, !tbaa !5
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.135, %land.lhs.true, %cond.end.91
  %94 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %params148 = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %94, i32 0, i32 1
  %Extend149 = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params148, i32 0, i32 9
  %arrayidx150 = getelementptr inbounds [2 x i32], [2 x i32]* %Extend149, i32 0, i64 1
  %95 = load i32, i32* %arrayidx150, align 4, !tbaa !5
  %tobool151 = icmp ne i32 %95, 0
  br i1 %tobool151, label %land.lhs.true.152, label %if.end.179

land.lhs.true.152:                                ; preds = %if.end.147
  %96 = load double, double* %t1, align 8, !tbaa !65
  %q153 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %t_rect, i32 0, i32 1
  %y154 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q153, i32 0, i32 1
  %97 = load double, double* %y154, align 8, !tbaa !20
  %cmp155 = fcmp olt double %96, %97
  br i1 %cmp155, label %if.then.157, label %if.end.179

if.then.157:                                      ; preds = %land.lhs.true.152
  %98 = load i32, i32* %code, align 4, !tbaa !5
  %cmp158 = icmp slt i32 %98, 0
  br i1 %cmp158, label %if.then.160, label %if.end.167

if.then.160:                                      ; preds = %if.then.157
  %icclink161 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 6
  %99 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink161, align 8, !tbaa !55
  %cmp162 = icmp ne %struct.gsicc_link_s* %99, null
  br i1 %cmp162, label %if.then.164, label %if.end.166

if.then.164:                                      ; preds = %if.then.160
  %icclink165 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 6
  %100 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink165, align 8, !tbaa !55
  call void @gsicc_release_link(%struct.gsicc_link_s* %100) #6
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.164, %if.then.160
  %101 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.167:                                       ; preds = %if.then.157
  %102 = load double, double* %t1, align 8, !tbaa !65
  %v0168 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 5
  store double %102, double* %v0168, align 8, !tbaa !66
  %q169 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %t_rect, i32 0, i32 1
  %y170 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q169, i32 0, i32 1
  %103 = load double, double* %y170, align 8, !tbaa !20
  %v1171 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 6
  store double %103, double* %v1171, align 8, !tbaa !67
  %104 = load double, double* %t1, align 8, !tbaa !65
  %105 = load float, float* %dd, align 4, !tbaa !16
  %conv172 = fpext float %105 to double
  %mul173 = fmul double %104, %conv172
  %106 = load float, float* %d0, align 4, !tbaa !16
  %conv174 = fpext float %106 to double
  %add175 = fadd double %mul173, %conv174
  %t1176 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 4
  store double %add175, double* %t1176, align 8, !tbaa !71
  %t0177 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %state, i32 0, i32 3
  store double %add175, double* %t0177, align 8, !tbaa !70
  %call178 = call i32 @A_fill_region(%struct.A_fill_state_s* %state, %struct.patch_fill_state_s* %pfs1) #6
  store i32 %call178, i32* %code, align 4, !tbaa !5
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.167, %land.lhs.true.152, %if.end.147
  %icclink180 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 6
  %107 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink180, align 8, !tbaa !55
  %cmp181 = icmp ne %struct.gsicc_link_s* %107, null
  br i1 %cmp181, label %if.then.183, label %if.end.185

if.then.183:                                      ; preds = %if.end.179
  %icclink184 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 6
  %108 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink184, align 8, !tbaa !55
  call void @gsicc_release_link(%struct.gsicc_link_s* %108) #6
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.183, %if.end.179
  %call186 = call i32 @term_patch_fill_state(%struct.patch_fill_state_s* %pfs1) #6
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %if.end.185
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.189:                                       ; preds = %if.end.185
  %109 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %109, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.189, %if.then.188, %if.end.166, %if.end.134, %if.end.14, %if.then
  %110 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast %struct.gs_point_s* %dist to i8*
  call void @llvm.lifetime.end(i64 16, i8* %111) #1
  %112 = bitcast double* %t1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast double* %t0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast float* %dd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast float* %d1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast float* %d0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast %struct.patch_fill_state_s* %pfs1 to i8*
  call void @llvm.lifetime.end(i64 728, i8* %117) #1
  %118 = bitcast %struct.A_fill_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 80, i8* %118) #1
  %119 = bitcast %struct.gs_rect_s* %t_rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %119) #1
  %120 = bitcast %struct.gs_matrix_s* %cmat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %120) #1
  %121 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast %struct.gs_shading_A_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = load i32, i32* %retval
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define i32 @gs_shading_R_fill_rectangle(%struct.gs_shading_s* %psh0, %struct.gs_rect_s* %rect, %struct.gs_fixed_rect_s* %rect_clip, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %psh0.addr = alloca %struct.gs_shading_s*, align 8
  %rect.addr = alloca %struct.gs_rect_s*, align 8
  %rect_clip.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_shading_s* %psh0, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %rect, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect_clip, %struct.gs_fixed_rect_s** %rect_clip.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  %2 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %3 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect_clip.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @gs_shading_R_fill_rectangle_aux(%struct.gs_shading_s* %1, %struct.gs_rect_s* %2, %struct.gs_fixed_rect_s* %3, %struct.gx_device_s* %4, %struct.gs_imager_state_s* %5) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_shading_R_fill_rectangle_aux(%struct.gs_shading_s* %psh0, %struct.gs_rect_s* %rect, %struct.gs_fixed_rect_s* %clip_rect, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %psh0.addr = alloca %struct.gs_shading_s*, align 8
  %rect.addr = alloca %struct.gs_rect_s*, align 8
  %clip_rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %psh = alloca %struct.gs_shading_R_s*, align 8
  %d0 = alloca float, align 4
  %d1 = alloca float, align 4
  %x0 = alloca float, align 4
  %y0 = alloca float, align 4
  %r0 = alloca double, align 8
  %x1 = alloca float, align 4
  %y1 = alloca float, align 4
  %r1 = alloca double, align 8
  %rsa = alloca %struct.radial_shading_attrs_s, align 8
  %span_type = alloca i32, align 4
  %code = alloca i32, align 4
  %pfs1 = alloca %struct.patch_fill_state_s, align 8
  %cleanup.dest.slot = alloca i32
  %second_interval = alloca i32, align 4
  %X0 = alloca float, align 4
  %Y0 = alloca float, align 4
  %D0 = alloca float, align 4
  %X1 = alloca float, align 4
  %Y1 = alloca float, align 4
  %D1 = alloca float, align 4
  %R0 = alloca double, align 8
  %R1 = alloca double, align 8
  %united = alloca [2 x double], align 16
  %X0147 = alloca float, align 4
  %Y0148 = alloca float, align 4
  %D0149 = alloca float, align 4
  %X1150 = alloca float, align 4
  %Y1151 = alloca float, align 4
  %D1152 = alloca float, align 4
  %R0153 = alloca double, align 8
  %R1154 = alloca double, align 8
  store %struct.gs_shading_s* %psh0, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %rect, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %clip_rect, %struct.gs_fixed_rect_s** %clip_rect.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_R_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_shading_s* %1 to %struct.gs_shading_R_s*
  store %struct.gs_shading_R_s* %2, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %3 = bitcast float* %d0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %4, i32 0, i32 1
  %Domain = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params, i32 0, i32 7
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %Domain, i32 0, i64 0
  %5 = load float, float* %arrayidx, align 4, !tbaa !16
  store float %5, float* %d0, align 4, !tbaa !16
  %6 = bitcast float* %d1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %7, i32 0, i32 1
  %Domain2 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params1, i32 0, i32 7
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %Domain2, i32 0, i64 1
  %8 = load float, float* %arrayidx3, align 4, !tbaa !16
  store float %8, float* %d1, align 4, !tbaa !16
  %9 = bitcast float* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %10, i32 0, i32 1
  %Coords = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params4, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [6 x float], [6 x float]* %Coords, i32 0, i64 0
  %11 = load float, float* %arrayidx5, align 4, !tbaa !16
  store float %11, float* %x0, align 4, !tbaa !16
  %12 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %13, i32 0, i32 1
  %Coords7 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params6, i32 0, i32 6
  %arrayidx8 = getelementptr inbounds [6 x float], [6 x float]* %Coords7, i32 0, i64 1
  %14 = load float, float* %arrayidx8, align 4, !tbaa !16
  store float %14, float* %y0, align 4, !tbaa !16
  %15 = bitcast double* %r0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %16, i32 0, i32 1
  %Coords10 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params9, i32 0, i32 6
  %arrayidx11 = getelementptr inbounds [6 x float], [6 x float]* %Coords10, i32 0, i64 2
  %17 = load float, float* %arrayidx11, align 4, !tbaa !16
  %conv = fpext float %17 to double
  store double %conv, double* %r0, align 8, !tbaa !65
  %18 = bitcast float* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %19, i32 0, i32 1
  %Coords13 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params12, i32 0, i32 6
  %arrayidx14 = getelementptr inbounds [6 x float], [6 x float]* %Coords13, i32 0, i64 3
  %20 = load float, float* %arrayidx14, align 4, !tbaa !16
  store float %20, float* %x1, align 4, !tbaa !16
  %21 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %params15 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %22, i32 0, i32 1
  %Coords16 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params15, i32 0, i32 6
  %arrayidx17 = getelementptr inbounds [6 x float], [6 x float]* %Coords16, i32 0, i64 4
  %23 = load float, float* %arrayidx17, align 4, !tbaa !16
  store float %23, float* %y1, align 4, !tbaa !16
  %24 = bitcast double* %r1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %25, i32 0, i32 1
  %Coords19 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params18, i32 0, i32 6
  %arrayidx20 = getelementptr inbounds [6 x float], [6 x float]* %Coords19, i32 0, i64 5
  %26 = load float, float* %arrayidx20, align 4, !tbaa !16
  %conv21 = fpext float %26 to double
  store double %conv21, double* %r1, align 8, !tbaa !65
  %27 = bitcast %struct.radial_shading_attrs_s* %rsa to i8*
  call void @llvm.lifetime.start(i64 192, i8* %27) #1
  %28 = bitcast i32* %span_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast %struct.patch_fill_state_s* %pfs1 to i8*
  call void @llvm.lifetime.start(i64 728, i8* %30) #1
  %31 = load double, double* %r0, align 8, !tbaa !65
  %cmp = fcmp oeq double %31, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %32 = load double, double* %r1, align 8, !tbaa !65
  %cmp23 = fcmp oeq double %32, 0.000000e+00
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %33 = bitcast %struct.patch_fill_state_s* %pfs1 to %struct.shading_fill_state_s*
  %34 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %36 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @shade_init_fill_state(%struct.shading_fill_state_s* %33, %struct.gs_shading_s* %34, %struct.gx_device_s* %35, %struct.gs_imager_state_s* %36) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %37, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end
  %38 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end
  %39 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %params29 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %39, i32 0, i32 1
  %Function = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params29, i32 0, i32 8
  %40 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !75
  %Function30 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 9
  store %struct.gs_function_s* %40, %struct.gs_function_s** %Function30, align 8, !tbaa !37
  %call31 = call i32 @init_patch_fill_state(%struct.patch_fill_state_s* %pfs1) #6
  store i32 %call31, i32* %code, align 4, !tbaa !5
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %41, 0
  br i1 %cmp32, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %if.end.28
  %icclink = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 6
  %42 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink, align 8, !tbaa !55
  %cmp35 = icmp ne %struct.gsicc_link_s* %42, null
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.then.34
  %icclink38 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 6
  %43 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink38, align 8, !tbaa !55
  call void @gsicc_release_link(%struct.gsicc_link_s* %43) #6
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.then.34
  %44 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end.28
  %function_arg_shift = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 10
  store i32 1, i32* %function_arg_shift, align 4, !tbaa !56
  %rect41 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 8
  %45 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip_rect.addr, align 8, !tbaa !1
  %46 = bitcast %struct.gs_fixed_rect_s* %rect41 to i8*
  %47 = bitcast %struct.gs_fixed_rect_s* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 16, i32 4, i1 false), !tbaa.struct !45
  %maybe_self_intersecting = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 22
  store i32 0, i32* %maybe_self_intersecting, align 4, !tbaa !43
  %48 = load float, float* %x0, align 4, !tbaa !16
  %conv42 = fpext float %48 to double
  %49 = load float, float* %y0, align 4, !tbaa !16
  %conv43 = fpext float %49 to double
  %50 = load double, double* %r0, align 8, !tbaa !65
  %51 = load float, float* %x1, align 4, !tbaa !16
  %conv44 = fpext float %51 to double
  %52 = load float, float* %y1, align 4, !tbaa !16
  %conv45 = fpext float %52 to double
  %53 = load double, double* %r1, align 8, !tbaa !65
  %54 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %call46 = call i32 @is_radial_shading_large(double %conv42, double %conv43, double %50, double %conv44, double %conv45, double %53, %struct.gs_rect_s* %54) #6
  %tobool = icmp ne i32 %call46, 0
  br i1 %tobool, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %if.end.40
  %55 = load float, float* %x0, align 4, !tbaa !16
  %56 = load float, float* %y0, align 4, !tbaa !16
  %57 = load double, double* %r0, align 8, !tbaa !65
  %58 = load float, float* %x1, align 4, !tbaa !16
  %59 = load float, float* %y1, align 4, !tbaa !16
  %60 = load double, double* %r1, align 8, !tbaa !65
  %61 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %call48 = call i32 @compute_radial_shading_span(%struct.radial_shading_attrs_s* %rsa, float %55, float %56, double %57, float %58, float %59, double %60, %struct.gs_rect_s* %61) #6
  store i32 %call48, i32* %span_type, align 4, !tbaa !5
  br label %if.end.49

if.else:                                          ; preds = %if.end.40
  store i32 -1, i32* %span_type, align 4, !tbaa !5
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.then.47
  %62 = load i32, i32* %span_type, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %62, 0
  br i1 %cmp50, label %if.then.52, label %if.else.79

if.then.52:                                       ; preds = %if.end.49
  %63 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %64 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %65 = load float, float* %d0, align 4, !tbaa !16
  %conv53 = fpext float %65 to double
  %66 = load float, float* %d1, align 4, !tbaa !16
  %conv54 = fpext float %66 to double
  %67 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %params55 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %67, i32 0, i32 1
  %Extend = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params55, i32 0, i32 9
  %arrayidx56 = getelementptr inbounds [2 x i32], [2 x i32]* %Extend, i32 0, i64 0
  %68 = load i32, i32* %arrayidx56, align 4, !tbaa !5
  %call57 = call i32 @R_extensions(%struct.patch_fill_state_s* %pfs1, %struct.gs_shading_R_s* %63, %struct.gs_rect_s* %64, double %conv53, double %conv54, i32 %68, i32 0) #6
  store i32 %call57, i32* %code, align 4, !tbaa !5
  %69 = load i32, i32* %code, align 4, !tbaa !5
  %cmp58 = icmp sge i32 %69, 0
  br i1 %cmp58, label %if.then.60, label %if.end.68

if.then.60:                                       ; preds = %if.then.52
  %70 = load float, float* %x0, align 4, !tbaa !16
  %conv61 = fpext float %70 to double
  %71 = load float, float* %y0, align 4, !tbaa !16
  %conv62 = fpext float %71 to double
  %72 = load double, double* %r0, align 8, !tbaa !65
  %73 = load float, float* %d0, align 4, !tbaa !16
  %conv63 = fpext float %73 to double
  %74 = load float, float* %x1, align 4, !tbaa !16
  %conv64 = fpext float %74 to double
  %75 = load float, float* %y1, align 4, !tbaa !16
  %conv65 = fpext float %75 to double
  %76 = load double, double* %r1, align 8, !tbaa !65
  %77 = load float, float* %d1, align 4, !tbaa !16
  %conv66 = fpext float %77 to double
  %call67 = call i32 @R_tensor_annulus(%struct.patch_fill_state_s* %pfs1, double %conv61, double %conv62, double %72, double %conv63, double %conv64, double %conv65, double %76, double %conv66) #6
  store i32 %call67, i32* %code, align 4, !tbaa !5
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.60, %if.then.52
  %78 = load i32, i32* %code, align 4, !tbaa !5
  %cmp69 = icmp sge i32 %78, 0
  br i1 %cmp69, label %if.then.71, label %if.end.78

if.then.71:                                       ; preds = %if.end.68
  %79 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %80 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %81 = load float, float* %d0, align 4, !tbaa !16
  %conv72 = fpext float %81 to double
  %82 = load float, float* %d1, align 4, !tbaa !16
  %conv73 = fpext float %82 to double
  %83 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %params74 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %83, i32 0, i32 1
  %Extend75 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params74, i32 0, i32 9
  %arrayidx76 = getelementptr inbounds [2 x i32], [2 x i32]* %Extend75, i32 0, i64 1
  %84 = load i32, i32* %arrayidx76, align 4, !tbaa !5
  %call77 = call i32 @R_extensions(%struct.patch_fill_state_s* %pfs1, %struct.gs_shading_R_s* %79, %struct.gs_rect_s* %80, double %conv72, double %conv73, i32 0, i32 %84) #6
  store i32 %call77, i32* %code, align 4, !tbaa !5
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.71, %if.end.68
  br label %if.end.183

if.else.79:                                       ; preds = %if.end.49
  %85 = load i32, i32* %span_type, align 4, !tbaa !5
  %cmp80 = icmp eq i32 %85, 1
  br i1 %cmp80, label %if.then.82, label %if.else.84

if.then.82:                                       ; preds = %if.else.79
  %86 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip_rect.addr, align 8, !tbaa !1
  %87 = load float, float* %d0, align 4, !tbaa !16
  %call83 = call i32 @R_fill_rect_with_const_color(%struct.patch_fill_state_s* %pfs1, %struct.gs_fixed_rect_s* %86, float %87) #6
  store i32 %call83, i32* %code, align 4, !tbaa !5
  br label %if.end.182

if.else.84:                                       ; preds = %if.else.79
  %88 = load i32, i32* %span_type, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %88, 8
  br i1 %cmp85, label %if.then.87, label %if.else.89

if.then.87:                                       ; preds = %if.else.84
  %89 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip_rect.addr, align 8, !tbaa !1
  %90 = load float, float* %d1, align 4, !tbaa !16
  %call88 = call i32 @R_fill_rect_with_const_color(%struct.patch_fill_state_s* %pfs1, %struct.gs_fixed_rect_s* %89, float %90) #6
  store i32 %call88, i32* %code, align 4, !tbaa !5
  br label %if.end.181

if.else.89:                                       ; preds = %if.else.84
  %91 = bitcast i32* %second_interval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  store i32 1, i32* %second_interval, align 4, !tbaa !5
  store i32 0, i32* %code, align 4, !tbaa !5
  %92 = load i32, i32* %span_type, align 4, !tbaa !5
  %and = and i32 %92, 1
  %tobool90 = icmp ne i32 %and, 0
  br i1 %tobool90, label %if.then.91, label %if.end.98

if.then.91:                                       ; preds = %if.else.89
  %93 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %94 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %95 = load float, float* %d0, align 4, !tbaa !16
  %conv92 = fpext float %95 to double
  %96 = load float, float* %d1, align 4, !tbaa !16
  %conv93 = fpext float %96 to double
  %97 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %params94 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %97, i32 0, i32 1
  %Extend95 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params94, i32 0, i32 9
  %arrayidx96 = getelementptr inbounds [2 x i32], [2 x i32]* %Extend95, i32 0, i64 0
  %98 = load i32, i32* %arrayidx96, align 4, !tbaa !5
  %call97 = call i32 @R_extensions(%struct.patch_fill_state_s* %pfs1, %struct.gs_shading_R_s* %93, %struct.gs_rect_s* %94, double %conv92, double %conv93, i32 %98, i32 0) #6
  store i32 %call97, i32* %code, align 4, !tbaa !5
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.91, %if.else.89
  %99 = load i32, i32* %code, align 4, !tbaa !5
  %cmp99 = icmp sge i32 %99, 0
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.138

land.lhs.true.101:                                ; preds = %if.end.98
  %100 = load i32, i32* %span_type, align 4, !tbaa !5
  %and102 = and i32 %100, 2
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.then.104, label %if.end.138

if.then.104:                                      ; preds = %land.lhs.true.101
  %101 = bitcast float* %X0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  %102 = load float, float* %x0, align 4, !tbaa !16
  store float %102, float* %X0, align 4, !tbaa !16
  %103 = bitcast float* %Y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  %104 = load float, float* %y0, align 4, !tbaa !16
  store float %104, float* %Y0, align 4, !tbaa !16
  %105 = bitcast float* %D0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #1
  %106 = load float, float* %d0, align 4, !tbaa !16
  store float %106, float* %D0, align 4, !tbaa !16
  %107 = bitcast float* %X1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #1
  %108 = load float, float* %x1, align 4, !tbaa !16
  store float %108, float* %X1, align 4, !tbaa !16
  %109 = bitcast float* %Y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #1
  %110 = load float, float* %y1, align 4, !tbaa !16
  store float %110, float* %Y1, align 4, !tbaa !16
  %111 = bitcast float* %D1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #1
  %112 = load float, float* %d1, align 4, !tbaa !16
  store float %112, float* %D1, align 4, !tbaa !16
  %113 = bitcast double* %R0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %113) #1
  %114 = load double, double* %r0, align 8, !tbaa !65
  store double %114, double* %R0, align 8, !tbaa !65
  %115 = bitcast double* %R1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #1
  %116 = load double, double* %r1, align 8, !tbaa !65
  store double %116, double* %R1, align 8, !tbaa !65
  %117 = load i32, i32* %span_type, align 4, !tbaa !5
  %and105 = and i32 %117, 4
  %tobool106 = icmp ne i32 %and105, 0
  br i1 %tobool106, label %land.lhs.true.107, label %if.else.125

land.lhs.true.107:                                ; preds = %if.then.104
  %span = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %rsa, i32 0, i32 4
  %arrayidx108 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span, i32 0, i64 0
  %arrayidx109 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx108, i32 0, i64 1
  %118 = load double, double* %arrayidx109, align 8, !tbaa !65
  %span110 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %rsa, i32 0, i32 4
  %arrayidx111 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span110, i32 0, i64 1
  %arrayidx112 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx111, i32 0, i64 0
  %119 = load double, double* %arrayidx112, align 8, !tbaa !65
  %cmp113 = fcmp oge double %118, %119
  br i1 %cmp113, label %if.then.115, label %if.else.125

if.then.115:                                      ; preds = %land.lhs.true.107
  %120 = bitcast [2 x double]* %united to i8*
  call void @llvm.lifetime.start(i64 16, i8* %120) #1
  %span116 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %rsa, i32 0, i32 4
  %arrayidx117 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span116, i32 0, i64 0
  %arrayidx118 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx117, i32 0, i64 0
  %121 = load double, double* %arrayidx118, align 8, !tbaa !65
  %arrayidx119 = getelementptr inbounds [2 x double], [2 x double]* %united, i32 0, i64 0
  store double %121, double* %arrayidx119, align 8, !tbaa !65
  %span120 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %rsa, i32 0, i32 4
  %arrayidx121 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span120, i32 0, i64 1
  %arrayidx122 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx121, i32 0, i64 1
  %122 = load double, double* %arrayidx122, align 8, !tbaa !65
  %arrayidx123 = getelementptr inbounds [2 x double], [2 x double]* %united, i32 0, i64 1
  store double %122, double* %arrayidx123, align 8, !tbaa !65
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %united, i32 0, i32 0
  %call124 = call i32 @shorten_radial_shading(float* %X0, float* %Y0, double* %R0, float* %D0, float* %X1, float* %Y1, double* %R1, float* %D1, double* %arraydecay) #6
  store i32 0, i32* %second_interval, align 4, !tbaa !5
  %123 = bitcast [2 x double]* %united to i8*
  call void @llvm.lifetime.end(i64 16, i8* %123) #1
  br label %if.end.130

if.else.125:                                      ; preds = %land.lhs.true.107, %if.then.104
  %span126 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %rsa, i32 0, i32 4
  %arrayidx127 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span126, i32 0, i64 0
  %arraydecay128 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx127, i32 0, i32 0
  %call129 = call i32 @shorten_radial_shading(float* %X0, float* %Y0, double* %R0, float* %D0, float* %X1, float* %Y1, double* %R1, float* %D1, double* %arraydecay128) #6
  store i32 %call129, i32* %second_interval, align 4, !tbaa !5
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.125, %if.then.115
  %124 = load float, float* %X0, align 4, !tbaa !16
  %conv131 = fpext float %124 to double
  %125 = load float, float* %Y0, align 4, !tbaa !16
  %conv132 = fpext float %125 to double
  %126 = load double, double* %R0, align 8, !tbaa !65
  %127 = load float, float* %D0, align 4, !tbaa !16
  %conv133 = fpext float %127 to double
  %128 = load float, float* %X1, align 4, !tbaa !16
  %conv134 = fpext float %128 to double
  %129 = load float, float* %Y1, align 4, !tbaa !16
  %conv135 = fpext float %129 to double
  %130 = load double, double* %R1, align 8, !tbaa !65
  %131 = load float, float* %D1, align 4, !tbaa !16
  %conv136 = fpext float %131 to double
  %call137 = call i32 @R_tensor_annulus(%struct.patch_fill_state_s* %pfs1, double %conv131, double %conv132, double %126, double %conv133, double %conv134, double %conv135, double %130, double %conv136) #6
  store i32 %call137, i32* %code, align 4, !tbaa !5
  %132 = bitcast double* %R1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast double* %R0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast float* %D1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast float* %Y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast float* %X1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast float* %D0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast float* %Y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast float* %X0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.130, %land.lhs.true.101, %if.end.98
  %140 = load i32, i32* %code, align 4, !tbaa !5
  %cmp139 = icmp sge i32 %140, 0
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.167

land.lhs.true.141:                                ; preds = %if.end.138
  %141 = load i32, i32* %second_interval, align 4, !tbaa !5
  %tobool142 = icmp ne i32 %141, 0
  br i1 %tobool142, label %if.then.143, label %if.end.167

if.then.143:                                      ; preds = %land.lhs.true.141
  %142 = load i32, i32* %span_type, align 4, !tbaa !5
  %and144 = and i32 %142, 4
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %if.then.146, label %if.end.166

if.then.146:                                      ; preds = %if.then.143
  %143 = bitcast float* %X0147 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #1
  %144 = load float, float* %x0, align 4, !tbaa !16
  store float %144, float* %X0147, align 4, !tbaa !16
  %145 = bitcast float* %Y0148 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #1
  %146 = load float, float* %y0, align 4, !tbaa !16
  store float %146, float* %Y0148, align 4, !tbaa !16
  %147 = bitcast float* %D0149 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %147) #1
  %148 = load float, float* %d0, align 4, !tbaa !16
  store float %148, float* %D0149, align 4, !tbaa !16
  %149 = bitcast float* %X1150 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %149) #1
  %150 = load float, float* %x1, align 4, !tbaa !16
  store float %150, float* %X1150, align 4, !tbaa !16
  %151 = bitcast float* %Y1151 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %151) #1
  %152 = load float, float* %y1, align 4, !tbaa !16
  store float %152, float* %Y1151, align 4, !tbaa !16
  %153 = bitcast float* %D1152 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %153) #1
  %154 = load float, float* %d1, align 4, !tbaa !16
  store float %154, float* %D1152, align 4, !tbaa !16
  %155 = bitcast double* %R0153 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %155) #1
  %156 = load double, double* %r0, align 8, !tbaa !65
  store double %156, double* %R0153, align 8, !tbaa !65
  %157 = bitcast double* %R1154 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #1
  %158 = load double, double* %r1, align 8, !tbaa !65
  store double %158, double* %R1154, align 8, !tbaa !65
  %span155 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %rsa, i32 0, i32 4
  %arrayidx156 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span155, i32 0, i64 1
  %arraydecay157 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx156, i32 0, i32 0
  %call158 = call i32 @shorten_radial_shading(float* %X0147, float* %Y0148, double* %R0153, float* %D0149, float* %X1150, float* %Y1151, double* %R1154, float* %D1152, double* %arraydecay157) #6
  %159 = load float, float* %X0147, align 4, !tbaa !16
  %conv159 = fpext float %159 to double
  %160 = load float, float* %Y0148, align 4, !tbaa !16
  %conv160 = fpext float %160 to double
  %161 = load double, double* %R0153, align 8, !tbaa !65
  %162 = load float, float* %D0149, align 4, !tbaa !16
  %conv161 = fpext float %162 to double
  %163 = load float, float* %X1150, align 4, !tbaa !16
  %conv162 = fpext float %163 to double
  %164 = load float, float* %Y1151, align 4, !tbaa !16
  %conv163 = fpext float %164 to double
  %165 = load double, double* %R1154, align 8, !tbaa !65
  %166 = load float, float* %D1152, align 4, !tbaa !16
  %conv164 = fpext float %166 to double
  %call165 = call i32 @R_tensor_annulus(%struct.patch_fill_state_s* %pfs1, double %conv159, double %conv160, double %161, double %conv161, double %conv162, double %conv163, double %165, double %conv164) #6
  store i32 %call165, i32* %code, align 4, !tbaa !5
  %167 = bitcast double* %R1154 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast double* %R0153 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast float* %D1152 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast float* %Y1151 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast float* %X1150 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast float* %D0149 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast float* %Y0148 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast float* %X0147 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.146, %if.then.143
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %land.lhs.true.141, %if.end.138
  %175 = load i32, i32* %code, align 4, !tbaa !5
  %cmp168 = icmp sge i32 %175, 0
  br i1 %cmp168, label %land.lhs.true.170, label %if.end.180

land.lhs.true.170:                                ; preds = %if.end.167
  %176 = load i32, i32* %span_type, align 4, !tbaa !5
  %and171 = and i32 %176, 8
  %tobool172 = icmp ne i32 %and171, 0
  br i1 %tobool172, label %if.then.173, label %if.end.180

if.then.173:                                      ; preds = %land.lhs.true.170
  %177 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %178 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %179 = load float, float* %d0, align 4, !tbaa !16
  %conv174 = fpext float %179 to double
  %180 = load float, float* %d1, align 4, !tbaa !16
  %conv175 = fpext float %180 to double
  %181 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh, align 8, !tbaa !1
  %params176 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %181, i32 0, i32 1
  %Extend177 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params176, i32 0, i32 9
  %arrayidx178 = getelementptr inbounds [2 x i32], [2 x i32]* %Extend177, i32 0, i64 1
  %182 = load i32, i32* %arrayidx178, align 4, !tbaa !5
  %call179 = call i32 @R_extensions(%struct.patch_fill_state_s* %pfs1, %struct.gs_shading_R_s* %177, %struct.gs_rect_s* %178, double %conv174, double %conv175, i32 0, i32 %182) #6
  store i32 %call179, i32* %code, align 4, !tbaa !5
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.173, %land.lhs.true.170, %if.end.167
  %183 = bitcast i32* %second_interval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.then.87
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.82
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.end.78
  %icclink184 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 6
  %184 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink184, align 8, !tbaa !55
  %cmp185 = icmp ne %struct.gsicc_link_s* %184, null
  br i1 %cmp185, label %if.then.187, label %if.end.189

if.then.187:                                      ; preds = %if.end.183
  %icclink188 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs1, i32 0, i32 6
  %185 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink188, align 8, !tbaa !55
  call void @gsicc_release_link(%struct.gsicc_link_s* %185) #6
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.187, %if.end.183
  %call190 = call i32 @term_patch_fill_state(%struct.patch_fill_state_s* %pfs1) #6
  %tobool191 = icmp ne i32 %call190, 0
  br i1 %tobool191, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %if.end.189
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.193:                                       ; preds = %if.end.189
  %186 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %186, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.193, %if.then.192, %if.end.39, %if.then.27, %if.then
  %187 = bitcast %struct.patch_fill_state_s* %pfs1 to i8*
  call void @llvm.lifetime.end(i64 728, i8* %187) #1
  %188 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %span_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast %struct.radial_shading_attrs_s* %rsa to i8*
  call void @llvm.lifetime.end(i64 192, i8* %190) #1
  %191 = bitcast double* %r1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast float* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast double* %r0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast float* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast float* %d1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast float* %d0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast %struct.gs_shading_R_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %200 = load i32, i32* %retval
  ret i32 %200
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare i32 @init_patch_fill_state(%struct.patch_fill_state_s*) #2

declare i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s*, double, double, %struct.gs_fixed_point_s*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @make_other_poles(%struct.patch_curve_s* %curve) #3 {
entry:
  %curve.addr = alloca %struct.patch_curve_s*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.patch_curve_s* %curve, %struct.patch_curve_s** %curve.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %3, 1
  %rem = srem i32 %add, 4
  store i32 %rem, i32* %j, align 4, !tbaa !5
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.patch_curve_s*, %struct.patch_curve_s** %curve.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %5, i64 %idxprom
  %vertex = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx, i32 0, i32 0
  %p = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %6 = load i32, i32* %x, align 4, !tbaa !78
  %mul = mul nsw i32 %6, 2
  %7 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.patch_curve_s*, %struct.patch_curve_s** %curve.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %8, i64 %idxprom1
  %vertex3 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx2, i32 0, i32 0
  %p4 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex3, i32 0, i32 0
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p4, i32 0, i32 0
  %9 = load i32, i32* %x5, align 4, !tbaa !78
  %add6 = add nsw i32 %mul, %9
  %div = sdiv i32 %add6, 3
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct.patch_curve_s*, %struct.patch_curve_s** %curve.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %11, i64 %idxprom7
  %control = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx8, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %control, i32 0, i64 0
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx9, i32 0, i32 0
  store i32 %div, i32* %x10, align 4, !tbaa !81
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %12 to i64
  %13 = load %struct.patch_curve_s*, %struct.patch_curve_s** %curve.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %13, i64 %idxprom11
  %vertex13 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx12, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex13, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p14, i32 0, i32 1
  %14 = load i32, i32* %y, align 4, !tbaa !82
  %mul15 = mul nsw i32 %14, 2
  %15 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom16 = sext i32 %15 to i64
  %16 = load %struct.patch_curve_s*, %struct.patch_curve_s** %curve.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %16, i64 %idxprom16
  %vertex18 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx17, i32 0, i32 0
  %p19 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex18, i32 0, i32 0
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p19, i32 0, i32 1
  %17 = load i32, i32* %y20, align 4, !tbaa !82
  %add21 = add nsw i32 %mul15, %17
  %div22 = sdiv i32 %add21, 3
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %18 to i64
  %19 = load %struct.patch_curve_s*, %struct.patch_curve_s** %curve.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %19, i64 %idxprom23
  %control25 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx24, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %control25, i32 0, i64 0
  %y27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx26, i32 0, i32 1
  store i32 %div22, i32* %y27, align 4, !tbaa !83
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %20 to i64
  %21 = load %struct.patch_curve_s*, %struct.patch_curve_s** %curve.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %21, i64 %idxprom28
  %vertex30 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx29, i32 0, i32 0
  %p31 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex30, i32 0, i32 0
  %x32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p31, i32 0, i32 0
  %22 = load i32, i32* %x32, align 4, !tbaa !78
  %23 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom33 = sext i32 %23 to i64
  %24 = load %struct.patch_curve_s*, %struct.patch_curve_s** %curve.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %24, i64 %idxprom33
  %vertex35 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx34, i32 0, i32 0
  %p36 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex35, i32 0, i32 0
  %x37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p36, i32 0, i32 0
  %25 = load i32, i32* %x37, align 4, !tbaa !78
  %mul38 = mul nsw i32 %25, 2
  %add39 = add nsw i32 %22, %mul38
  %div40 = sdiv i32 %add39, 3
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %26 to i64
  %27 = load %struct.patch_curve_s*, %struct.patch_curve_s** %curve.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %27, i64 %idxprom41
  %control43 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx42, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %control43, i32 0, i64 1
  %x45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx44, i32 0, i32 0
  store i32 %div40, i32* %x45, align 4, !tbaa !81
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom46 = sext i32 %28 to i64
  %29 = load %struct.patch_curve_s*, %struct.patch_curve_s** %curve.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %29, i64 %idxprom46
  %vertex48 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx47, i32 0, i32 0
  %p49 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex48, i32 0, i32 0
  %y50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p49, i32 0, i32 1
  %30 = load i32, i32* %y50, align 4, !tbaa !82
  %31 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom51 = sext i32 %31 to i64
  %32 = load %struct.patch_curve_s*, %struct.patch_curve_s** %curve.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %32, i64 %idxprom51
  %vertex53 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx52, i32 0, i32 0
  %p54 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex53, i32 0, i32 0
  %y55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p54, i32 0, i32 1
  %33 = load i32, i32* %y55, align 4, !tbaa !82
  %mul56 = mul nsw i32 %33, 2
  %add57 = add nsw i32 %30, %mul56
  %div58 = sdiv i32 %add57, 3
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %34 to i64
  %35 = load %struct.patch_curve_s*, %struct.patch_curve_s** %curve.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %35, i64 %idxprom59
  %control61 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx60, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %control61, i32 0, i64 1
  %y63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx62, i32 0, i32 1
  store i32 %div58, i32* %y63, align 4, !tbaa !83
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %36 to i64
  %37 = load %struct.patch_curve_s*, %struct.patch_curve_s** %curve.addr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %37, i64 %idxprom64
  %straight = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx65, i32 0, i32 2
  store i32 1, i32* %straight, align 4, !tbaa !84
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  ret void
}

declare i32 @patch_fill(%struct.patch_fill_state_s*, %struct.patch_curve_s*, %struct.gs_fixed_point_s*, void (%struct.gs_fixed_point_s*, %struct.patch_curve_s*, %struct.gs_fixed_point_s*, double, double)*) #2

declare i32 @term_patch_fill_state(%struct.patch_fill_state_s*) #2

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define internal i32 @A_fill_region(%struct.A_fill_state_s* %pfs, %struct.patch_fill_state_s* %pfs1) #0 {
entry:
  %pfs.addr = alloca %struct.A_fill_state_s*, align 8
  %pfs1.addr = alloca %struct.patch_fill_state_s*, align 8
  %psh = alloca %struct.gs_shading_A_s*, align 8
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %h0 = alloca double, align 8
  %h1 = alloca double, align 8
  %curve = alloca [4 x %struct.patch_curve_s], align 16
  store %struct.A_fill_state_s* %pfs, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  store %struct.patch_fill_state_s* %pfs1, %struct.patch_fill_state_s** %pfs1.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_A_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %psh1 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh1, align 8, !tbaa !53
  store %struct.gs_shading_A_s* %2, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %3 = bitcast double* %x0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %4, i32 0, i32 1
  %Coords = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params, i32 0, i32 6
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %Coords, i32 0, i64 0
  %5 = load float, float* %arrayidx, align 4, !tbaa !16
  %conv = fpext float %5 to double
  %6 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %delta = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %6, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta, i32 0, i32 0
  %7 = load double, double* %x, align 8, !tbaa !59
  %8 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %v0 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %8, i32 0, i32 5
  %9 = load double, double* %v0, align 8, !tbaa !66
  %mul = fmul double %7, %9
  %add = fadd double %conv, %mul
  store double %add, double* %x0, align 8, !tbaa !65
  %10 = bitcast double* %y0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %11, i32 0, i32 1
  %Coords3 = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params2, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [4 x float], [4 x float]* %Coords3, i32 0, i64 1
  %12 = load float, float* %arrayidx4, align 4, !tbaa !16
  %conv5 = fpext float %12 to double
  %13 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %delta6 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %13, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta6, i32 0, i32 1
  %14 = load double, double* %y, align 8, !tbaa !60
  %15 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %v07 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %15, i32 0, i32 5
  %16 = load double, double* %v07, align 8, !tbaa !66
  %mul8 = fmul double %14, %16
  %add9 = fadd double %conv5, %mul8
  store double %add9, double* %y0, align 8, !tbaa !65
  %17 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %18, i32 0, i32 1
  %Coords11 = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params10, i32 0, i32 6
  %arrayidx12 = getelementptr inbounds [4 x float], [4 x float]* %Coords11, i32 0, i64 0
  %19 = load float, float* %arrayidx12, align 4, !tbaa !16
  %conv13 = fpext float %19 to double
  %20 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %delta14 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %20, i32 0, i32 1
  %x15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta14, i32 0, i32 0
  %21 = load double, double* %x15, align 8, !tbaa !59
  %22 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %v1 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %22, i32 0, i32 6
  %23 = load double, double* %v1, align 8, !tbaa !67
  %mul16 = fmul double %21, %23
  %add17 = fadd double %conv13, %mul16
  store double %add17, double* %x1, align 8, !tbaa !65
  %24 = bitcast double* %y1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load %struct.gs_shading_A_s*, %struct.gs_shading_A_s** %psh, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gs_shading_A_s, %struct.gs_shading_A_s* %25, i32 0, i32 1
  %Coords19 = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params18, i32 0, i32 6
  %arrayidx20 = getelementptr inbounds [4 x float], [4 x float]* %Coords19, i32 0, i64 1
  %26 = load float, float* %arrayidx20, align 4, !tbaa !16
  %conv21 = fpext float %26 to double
  %27 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %delta22 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %27, i32 0, i32 1
  %y23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta22, i32 0, i32 1
  %28 = load double, double* %y23, align 8, !tbaa !60
  %29 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %v124 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %29, i32 0, i32 6
  %30 = load double, double* %v124, align 8, !tbaa !67
  %mul25 = fmul double %28, %30
  %add26 = fadd double %conv21, %mul25
  store double %add26, double* %y1, align 8, !tbaa !65
  %31 = bitcast double* %h0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %u0 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %32, i32 0, i32 7
  %33 = load double, double* %u0, align 8, !tbaa !68
  store double %33, double* %h0, align 8, !tbaa !65
  %34 = bitcast double* %h1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %u1 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %35, i32 0, i32 8
  %36 = load double, double* %u1, align 8, !tbaa !69
  store double %36, double* %h1, align 8, !tbaa !65
  %37 = bitcast [4 x %struct.patch_curve_s]* %curve to i8*
  call void @llvm.lifetime.start(i64 1136, i8* %37) #1
  %38 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs1.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %38, i32 0, i32 1
  %39 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !85
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %39, i32 0, i32 5
  %40 = load double, double* %x0, align 8, !tbaa !65
  %41 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %delta27 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %41, i32 0, i32 1
  %y28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta27, i32 0, i32 1
  %42 = load double, double* %y28, align 8, !tbaa !60
  %43 = load double, double* %h0, align 8, !tbaa !65
  %mul29 = fmul double %42, %43
  %add30 = fadd double %40, %mul29
  %44 = load double, double* %y0, align 8, !tbaa !65
  %45 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %delta31 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %45, i32 0, i32 1
  %x32 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta31, i32 0, i32 0
  %46 = load double, double* %x32, align 8, !tbaa !59
  %47 = load double, double* %h0, align 8, !tbaa !65
  %mul33 = fmul double %46, %47
  %sub = fsub double %44, %mul33
  %arrayidx34 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 0
  %vertex = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx34, i32 0, i32 0
  %p = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex, i32 0, i32 0
  %call = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %add30, double %sub, %struct.gs_fixed_point_s* %p) #6
  %48 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs1.addr, align 8, !tbaa !1
  %pis35 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %48, i32 0, i32 1
  %49 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis35, align 8, !tbaa !85
  %ctm36 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %49, i32 0, i32 5
  %50 = load double, double* %x1, align 8, !tbaa !65
  %51 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %delta37 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %51, i32 0, i32 1
  %y38 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta37, i32 0, i32 1
  %52 = load double, double* %y38, align 8, !tbaa !60
  %53 = load double, double* %h0, align 8, !tbaa !65
  %mul39 = fmul double %52, %53
  %add40 = fadd double %50, %mul39
  %54 = load double, double* %y1, align 8, !tbaa !65
  %55 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %delta41 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %55, i32 0, i32 1
  %x42 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta41, i32 0, i32 0
  %56 = load double, double* %x42, align 8, !tbaa !59
  %57 = load double, double* %h0, align 8, !tbaa !65
  %mul43 = fmul double %56, %57
  %sub44 = fsub double %54, %mul43
  %arrayidx45 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 1
  %vertex46 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx45, i32 0, i32 0
  %p47 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex46, i32 0, i32 0
  %call48 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm36, double %add40, double %sub44, %struct.gs_fixed_point_s* %p47) #6
  %58 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs1.addr, align 8, !tbaa !1
  %pis49 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %58, i32 0, i32 1
  %59 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis49, align 8, !tbaa !85
  %ctm50 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %59, i32 0, i32 5
  %60 = load double, double* %x1, align 8, !tbaa !65
  %61 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %delta51 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %61, i32 0, i32 1
  %y52 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta51, i32 0, i32 1
  %62 = load double, double* %y52, align 8, !tbaa !60
  %63 = load double, double* %h1, align 8, !tbaa !65
  %mul53 = fmul double %62, %63
  %add54 = fadd double %60, %mul53
  %64 = load double, double* %y1, align 8, !tbaa !65
  %65 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %delta55 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %65, i32 0, i32 1
  %x56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta55, i32 0, i32 0
  %66 = load double, double* %x56, align 8, !tbaa !59
  %67 = load double, double* %h1, align 8, !tbaa !65
  %mul57 = fmul double %66, %67
  %sub58 = fsub double %64, %mul57
  %arrayidx59 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 2
  %vertex60 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx59, i32 0, i32 0
  %p61 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex60, i32 0, i32 0
  %call62 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm50, double %add54, double %sub58, %struct.gs_fixed_point_s* %p61) #6
  %68 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs1.addr, align 8, !tbaa !1
  %pis63 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %68, i32 0, i32 1
  %69 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis63, align 8, !tbaa !85
  %ctm64 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %69, i32 0, i32 5
  %70 = load double, double* %x0, align 8, !tbaa !65
  %71 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %delta65 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %71, i32 0, i32 1
  %y66 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta65, i32 0, i32 1
  %72 = load double, double* %y66, align 8, !tbaa !60
  %73 = load double, double* %h1, align 8, !tbaa !65
  %mul67 = fmul double %72, %73
  %add68 = fadd double %70, %mul67
  %74 = load double, double* %y0, align 8, !tbaa !65
  %75 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %delta69 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %75, i32 0, i32 1
  %x70 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %delta69, i32 0, i32 0
  %76 = load double, double* %x70, align 8, !tbaa !59
  %77 = load double, double* %h1, align 8, !tbaa !65
  %mul71 = fmul double %76, %77
  %sub72 = fsub double %74, %mul71
  %arrayidx73 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 3
  %vertex74 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx73, i32 0, i32 0
  %p75 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex74, i32 0, i32 0
  %call76 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm64, double %add68, double %sub72, %struct.gs_fixed_point_s* %p75) #6
  %78 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %t0 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %78, i32 0, i32 3
  %79 = load double, double* %t0, align 8, !tbaa !70
  %conv77 = fptrunc double %79 to float
  %arrayidx78 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 0
  %vertex79 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx78, i32 0, i32 0
  %cc = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex79, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [64 x float], [64 x float]* %cc, i32 0, i64 0
  store float %conv77, float* %arrayidx80, align 4, !tbaa !16
  %80 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %t1 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %80, i32 0, i32 4
  %81 = load double, double* %t1, align 8, !tbaa !71
  %conv81 = fptrunc double %81 to float
  %arrayidx82 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 1
  %vertex83 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx82, i32 0, i32 0
  %cc84 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex83, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [64 x float], [64 x float]* %cc84, i32 0, i64 0
  store float %conv81, float* %arrayidx85, align 4, !tbaa !16
  %82 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %t186 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %82, i32 0, i32 4
  %83 = load double, double* %t186, align 8, !tbaa !71
  %conv87 = fptrunc double %83 to float
  %arrayidx88 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 2
  %vertex89 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx88, i32 0, i32 0
  %cc90 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex89, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [64 x float], [64 x float]* %cc90, i32 0, i64 0
  store float %conv87, float* %arrayidx91, align 4, !tbaa !16
  %84 = load %struct.A_fill_state_s*, %struct.A_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %t092 = getelementptr inbounds %struct.A_fill_state_s, %struct.A_fill_state_s* %84, i32 0, i32 3
  %85 = load double, double* %t092, align 8, !tbaa !70
  %conv93 = fptrunc double %85 to float
  %arrayidx94 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 3
  %vertex95 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx94, i32 0, i32 0
  %cc96 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex95, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [64 x float], [64 x float]* %cc96, i32 0, i64 0
  store float %conv93, float* %arrayidx97, align 4, !tbaa !16
  %arrayidx98 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 0
  %vertex99 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx98, i32 0, i32 0
  %cc100 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex99, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [64 x float], [64 x float]* %cc100, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx101, align 4, !tbaa !16
  %arrayidx102 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 1
  %vertex103 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx102, i32 0, i32 0
  %cc104 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex103, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [64 x float], [64 x float]* %cc104, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx105, align 4, !tbaa !16
  %arrayidx106 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 2
  %vertex107 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx106, i32 0, i32 0
  %cc108 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex107, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [64 x float], [64 x float]* %cc108, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx109, align 4, !tbaa !16
  %arrayidx110 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 3
  %vertex111 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx110, i32 0, i32 0
  %cc112 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex111, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [64 x float], [64 x float]* %cc112, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx113, align 4, !tbaa !16
  %arraydecay = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i32 0
  call void @make_other_poles(%struct.patch_curve_s* %arraydecay) #6
  %86 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs1.addr, align 8, !tbaa !1
  %arraydecay114 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i32 0
  %call115 = call i32 @patch_fill(%struct.patch_fill_state_s* %86, %struct.patch_curve_s* %arraydecay114, %struct.gs_fixed_point_s* null, void (%struct.gs_fixed_point_s*, %struct.patch_curve_s*, %struct.gs_fixed_point_s*, double, double)* null) #6
  %87 = bitcast [4 x %struct.patch_curve_s]* %curve to i8*
  call void @llvm.lifetime.end(i64 1136, i8* %87) #1
  %88 = bitcast double* %h1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast double* %h0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast double* %y1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast double* %y0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast double* %x0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast %struct.gs_shading_A_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  ret i32 %call115
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_radial_shading_large(double %x0, double %y0, double %r0, double %x1, double %y1, double %r1, %struct.gs_rect_s* %rect) #3 {
entry:
  %retval = alloca i32, align 4
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %r0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %r1.addr = alloca double, align 8
  %rect.addr = alloca %struct.gs_rect_s*, align 8
  %d = alloca double, align 8
  %area0 = alloca double, align 8
  %area1 = alloca double, align 8
  %area2 = alloca double, align 8
  %arbitrary = alloca double, align 8
  %areaX = alloca double, align 8
  %areaY = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double %x0, double* %x0.addr, align 8, !tbaa !65
  store double %y0, double* %y0.addr, align 8, !tbaa !65
  store double %r0, double* %r0.addr, align 8, !tbaa !65
  store double %x1, double* %x1.addr, align 8, !tbaa !65
  store double %y1, double* %y1.addr, align 8, !tbaa !65
  store double %r1, double* %r1.addr, align 8, !tbaa !65
  store %struct.gs_rect_s* %rect, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %0 = bitcast double* %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double, double* %x1.addr, align 8, !tbaa !65
  %2 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub = fsub double %1, %2
  %3 = load double, double* %x1.addr, align 8, !tbaa !65
  %4 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub1 = fsub double %3, %4
  %mul = fmul double %sub, %sub1
  %5 = load double, double* %y1.addr, align 8, !tbaa !65
  %6 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub2 = fsub double %5, %6
  %7 = load double, double* %y1.addr, align 8, !tbaa !65
  %8 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub3 = fsub double %7, %8
  %mul4 = fmul double %sub2, %sub3
  %add = fadd double %mul, %mul4
  %call = call double @sqrt(double %add) #7
  store double %call, double* %d, align 8, !tbaa !65
  %9 = bitcast double* %area0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load double, double* %r0.addr, align 8, !tbaa !65
  %mul5 = fmul double 0x400921FB54442D18, %10
  %11 = load double, double* %r0.addr, align 8, !tbaa !65
  %mul6 = fmul double %mul5, %11
  %div = fdiv double %mul6, 2.000000e+00
  store double %div, double* %area0, align 8, !tbaa !65
  %12 = bitcast double* %area1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load double, double* %r1.addr, align 8, !tbaa !65
  %mul7 = fmul double 0x400921FB54442D18, %13
  %14 = load double, double* %r1.addr, align 8, !tbaa !65
  %mul8 = fmul double %mul7, %14
  %div9 = fdiv double %mul8, 2.000000e+00
  store double %div9, double* %area1, align 8, !tbaa !65
  %15 = bitcast double* %area2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load double, double* %r0.addr, align 8, !tbaa !65
  %17 = load double, double* %r1.addr, align 8, !tbaa !65
  %add10 = fadd double %16, %17
  %div11 = fdiv double %add10, 2.000000e+00
  %18 = load double, double* %d, align 8, !tbaa !65
  %mul12 = fmul double %div11, %18
  store double %mul12, double* %area2, align 8, !tbaa !65
  %19 = bitcast double* %arbitrary to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store double 8.000000e+00, double* %arbitrary, align 8, !tbaa !65
  %20 = bitcast double* %areaX to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast double* %areaY to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %22, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %23 = load double, double* %x, align 8, !tbaa !18
  %24 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %24, i32 0, i32 0
  %x13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %25 = load double, double* %x13, align 8, !tbaa !17
  %sub14 = fsub double %23, %25
  %26 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q15 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %26, i32 0, i32 1
  %x16 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q15, i32 0, i32 0
  %27 = load double, double* %x16, align 8, !tbaa !18
  %28 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p17 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %28, i32 0, i32 0
  %x18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p17, i32 0, i32 0
  %29 = load double, double* %x18, align 8, !tbaa !17
  %sub19 = fsub double %27, %29
  %mul20 = fmul double %sub14, %sub19
  store double %mul20, double* %areaX, align 8, !tbaa !65
  %30 = load double, double* %areaX, align 8, !tbaa !65
  %mul21 = fmul double %30, 8.000000e+00
  %31 = load double, double* %area0, align 8, !tbaa !65
  %32 = load double, double* %area1, align 8, !tbaa !65
  %add22 = fadd double %31, %32
  %33 = load double, double* %area2, align 8, !tbaa !65
  %add23 = fadd double %add22, %33
  %cmp = fcmp olt double %mul21, %add23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %34 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q24 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %34, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q24, i32 0, i32 1
  %35 = load double, double* %y, align 8, !tbaa !20
  %36 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p25 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %36, i32 0, i32 0
  %y26 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p25, i32 0, i32 1
  %37 = load double, double* %y26, align 8, !tbaa !19
  %sub27 = fsub double %35, %37
  %38 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q28 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %38, i32 0, i32 1
  %y29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q28, i32 0, i32 1
  %39 = load double, double* %y29, align 8, !tbaa !20
  %40 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p30 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %40, i32 0, i32 0
  %y31 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p30, i32 0, i32 1
  %41 = load double, double* %y31, align 8, !tbaa !19
  %sub32 = fsub double %39, %41
  %mul33 = fmul double %sub27, %sub32
  store double %mul33, double* %areaY, align 8, !tbaa !65
  %42 = load double, double* %areaY, align 8, !tbaa !65
  %mul34 = fmul double %42, 8.000000e+00
  %43 = load double, double* %area0, align 8, !tbaa !65
  %44 = load double, double* %area1, align 8, !tbaa !65
  %add35 = fadd double %43, %44
  %45 = load double, double* %area2, align 8, !tbaa !65
  %add36 = fadd double %add35, %45
  %cmp37 = fcmp olt double %mul34, %add36
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.38, %if.then
  %46 = bitcast double* %areaY to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast double* %areaX to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast double* %arbitrary to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast double* %area2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast double* %area1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast double* %area0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast double* %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @compute_radial_shading_span(%struct.radial_shading_attrs_s* %rsa, float %x0, float %y0, double %r0, float %x1, float %y1, double %r1, %struct.gs_rect_s* %rect) #0 {
entry:
  %retval = alloca i32, align 4
  %rsa.addr = alloca %struct.radial_shading_attrs_s*, align 8
  %x0.addr = alloca float, align 4
  %y0.addr = alloca float, align 4
  %r0.addr = alloca double, align 8
  %x1.addr = alloca float, align 4
  %y1.addr = alloca float, align 4
  %r1.addr = alloca double, align 8
  %rect.addr = alloca %struct.gs_rect_s*, align 8
  %extent = alloca double, align 8
  %span_type0 = alloca i32, align 4
  %span_type1 = alloca i32, align 4
  %span_type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.radial_shading_attrs_s* %rsa, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  store float %x0, float* %x0.addr, align 4, !tbaa !16
  store float %y0, float* %y0.addr, align 4, !tbaa !16
  store double %r0, double* %r0.addr, align 8, !tbaa !65
  store float %x1, float* %x1.addr, align 4, !tbaa !16
  store float %y1, float* %y1.addr, align 4, !tbaa !16
  store double %r1, double* %r1.addr, align 8, !tbaa !65
  store %struct.gs_rect_s* %rect, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %0 = bitcast double* %extent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store double 1.020000e+00, double* %extent, align 8, !tbaa !65
  %1 = bitcast i32* %span_type0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %span_type1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %span_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %5 = bitcast %struct.radial_shading_attrs_s* %4 to i8*
  %call = call i8* @memset(i8* %5, i32 0, i64 192) #7
  %6 = load float, float* %x0.addr, align 4, !tbaa !16
  %conv = fpext float %6 to double
  %7 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %x01 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %7, i32 0, i32 0
  store double %conv, double* %x01, align 8, !tbaa !86
  %8 = load float, float* %y0.addr, align 4, !tbaa !16
  %conv2 = fpext float %8 to double
  %9 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %y03 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %9, i32 0, i32 1
  store double %conv2, double* %y03, align 8, !tbaa !88
  %10 = load float, float* %x1.addr, align 4, !tbaa !16
  %conv4 = fpext float %10 to double
  %11 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %x15 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %11, i32 0, i32 2
  store double %conv4, double* %x15, align 8, !tbaa !89
  %12 = load float, float* %y1.addr, align 4, !tbaa !16
  %conv6 = fpext float %12 to double
  %13 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %y17 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %13, i32 0, i32 3
  store double %conv6, double* %y17, align 8, !tbaa !90
  %14 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %14, i32 0, i32 9
  %arrayidx = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p, i32 0, i64 0
  %15 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p8 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %15, i32 0, i32 9
  %arrayidx9 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p8, i32 0, i64 4
  %16 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p10 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %16, i32 0, i32 0
  %17 = bitcast %struct.gs_point_s* %arrayidx9 to i8*
  %18 = bitcast %struct.gs_point_s* %p10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false), !tbaa.struct !91
  %19 = bitcast %struct.gs_point_s* %arrayidx to i8*
  %20 = bitcast %struct.gs_point_s* %arrayidx9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false), !tbaa.struct !91
  %21 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p11 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %21, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p11, i32 0, i32 0
  %22 = load double, double* %x, align 8, !tbaa !17
  %23 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p12 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %23, i32 0, i32 9
  %arrayidx13 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p12, i32 0, i64 5
  %x14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx13, i32 0, i32 0
  store double %22, double* %x14, align 8, !tbaa !72
  %24 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p15 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %24, i32 0, i32 9
  %arrayidx16 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p15, i32 0, i64 1
  %x17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx16, i32 0, i32 0
  store double %22, double* %x17, align 8, !tbaa !72
  %25 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %25, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 1
  %26 = load double, double* %y, align 8, !tbaa !20
  %27 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p18 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %27, i32 0, i32 9
  %arrayidx19 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p18, i32 0, i64 5
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx19, i32 0, i32 1
  store double %26, double* %y20, align 8, !tbaa !73
  %28 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p21 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %28, i32 0, i32 9
  %arrayidx22 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p21, i32 0, i64 1
  %y23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx22, i32 0, i32 1
  store double %26, double* %y23, align 8, !tbaa !73
  %29 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p24 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %29, i32 0, i32 9
  %arrayidx25 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p24, i32 0, i64 2
  %30 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q26 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %30, i32 0, i32 1
  %31 = bitcast %struct.gs_point_s* %arrayidx25 to i8*
  %32 = bitcast %struct.gs_point_s* %q26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false), !tbaa.struct !91
  %33 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q27 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %33, i32 0, i32 1
  %x28 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q27, i32 0, i32 0
  %34 = load double, double* %x28, align 8, !tbaa !18
  %35 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p29 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %35, i32 0, i32 9
  %arrayidx30 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p29, i32 0, i64 3
  %x31 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx30, i32 0, i32 0
  store double %34, double* %x31, align 8, !tbaa !72
  %36 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p32 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %36, i32 0, i32 0
  %y33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p32, i32 0, i32 1
  %37 = load double, double* %y33, align 8, !tbaa !19
  %38 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p34 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %38, i32 0, i32 9
  %arrayidx35 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p34, i32 0, i64 3
  %y36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx35, i32 0, i32 1
  store double %37, double* %y36, align 8, !tbaa !73
  %39 = load double, double* %r1.addr, align 8, !tbaa !65
  %40 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub = fsub double %39, %40
  %cmp = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %41 = load double, double* %r1.addr, align 8, !tbaa !65
  %42 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub38 = fsub double %41, %42
  %sub39 = fsub double -0.000000e+00, %sub38
  br label %cond.end

cond.false:                                       ; preds = %entry
  %43 = load double, double* %r1.addr, align 8, !tbaa !65
  %44 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub40 = fsub double %43, %44
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub39, %cond.true ], [ %sub40, %cond.false ]
  %45 = load double, double* %r1.addr, align 8, !tbaa !65
  %46 = load double, double* %r0.addr, align 8, !tbaa !65
  %add = fadd double %45, %46
  %cmp41 = fcmp olt double %add, 0.000000e+00
  br i1 %cmp41, label %cond.true.43, label %cond.false.46

cond.true.43:                                     ; preds = %cond.end
  %47 = load double, double* %r1.addr, align 8, !tbaa !65
  %48 = load double, double* %r0.addr, align 8, !tbaa !65
  %add44 = fadd double %47, %48
  %sub45 = fsub double -0.000000e+00, %add44
  br label %cond.end.48

cond.false.46:                                    ; preds = %cond.end
  %49 = load double, double* %r1.addr, align 8, !tbaa !65
  %50 = load double, double* %r0.addr, align 8, !tbaa !65
  %add47 = fadd double %49, %50
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.46, %cond.true.43
  %cond49 = phi double [ %sub45, %cond.true.43 ], [ %add47, %cond.false.46 ]
  %mul = fmul double 1.000000e-07, %cond49
  %cmp50 = fcmp ogt double %cond, %mul
  %conv51 = zext i1 %cmp50 to i32
  %51 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %have_apex = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %51, i32 0, i32 6
  store i32 %conv51, i32* %have_apex, align 4, !tbaa !92
  %52 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %have_apex52 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %52, i32 0, i32 6
  %53 = load i32, i32* %have_apex52, align 4, !tbaa !92
  %tobool = icmp ne i32 %53, 0
  br i1 %tobool, label %cond.true.53, label %cond.false.56

cond.true.53:                                     ; preds = %cond.end.48
  %54 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub54 = fsub double -0.000000e+00, %54
  %55 = load double, double* %r1.addr, align 8, !tbaa !65
  %56 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub55 = fsub double %55, %56
  %div = fdiv double %sub54, %sub55
  br label %cond.end.57

cond.false.56:                                    ; preds = %cond.end.48
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.53
  %cond58 = phi double [ %div, %cond.true.53 ], [ 0.000000e+00, %cond.false.56 ]
  %57 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %apex = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %57, i32 0, i32 5
  store double %cond58, double* %apex, align 8, !tbaa !93
  %58 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %59 = load double, double* %r0.addr, align 8, !tbaa !65
  %div59 = fdiv double %59, 1.020000e+00
  %60 = load double, double* %r1.addr, align 8, !tbaa !65
  %mul60 = fmul double %60, 1.020000e+00
  %call61 = call i32 @compute_radial_shading_span_extended(%struct.radial_shading_attrs_s* %58, double %div59, double %mul60) #6
  store i32 %call61, i32* %span_type0, align 4, !tbaa !5
  %61 = load i32, i32* %span_type0, align 4, !tbaa !5
  %cmp62 = icmp eq i32 %61, -1
  br i1 %cmp62, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.57
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.57
  %62 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %63 = load double, double* %r0.addr, align 8, !tbaa !65
  %div64 = fdiv double %63, 1.020000e+00
  %64 = load double, double* %r1.addr, align 8, !tbaa !65
  %div65 = fdiv double %64, 1.020000e+00
  %call66 = call i32 @compute_radial_shading_span_extended(%struct.radial_shading_attrs_s* %62, double %div64, double %div65) #6
  store i32 %call66, i32* %span_type1, align 4, !tbaa !5
  %65 = load i32, i32* %span_type0, align 4, !tbaa !5
  %66 = load i32, i32* %span_type1, align 4, !tbaa !5
  %cmp67 = icmp ne i32 %65, %66
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.70:                                        ; preds = %if.end
  %67 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %68 = load double, double* %r0.addr, align 8, !tbaa !65
  %mul71 = fmul double %68, 1.020000e+00
  %69 = load double, double* %r1.addr, align 8, !tbaa !65
  %mul72 = fmul double %69, 1.020000e+00
  %call73 = call i32 @compute_radial_shading_span_extended(%struct.radial_shading_attrs_s* %67, double %mul71, double %mul72) #6
  store i32 %call73, i32* %span_type1, align 4, !tbaa !5
  %70 = load i32, i32* %span_type0, align 4, !tbaa !5
  %71 = load i32, i32* %span_type1, align 4, !tbaa !5
  %cmp74 = icmp ne i32 %70, %71
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.70
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.77:                                        ; preds = %if.end.70
  %72 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %73 = load double, double* %r0.addr, align 8, !tbaa !65
  %mul78 = fmul double %73, 1.020000e+00
  %74 = load double, double* %r1.addr, align 8, !tbaa !65
  %div79 = fdiv double %74, 1.020000e+00
  %call80 = call i32 @compute_radial_shading_span_extended(%struct.radial_shading_attrs_s* %72, double %mul78, double %div79) #6
  store i32 %call80, i32* %span_type1, align 4, !tbaa !5
  %75 = load i32, i32* %span_type1, align 4, !tbaa !5
  %cmp81 = icmp eq i32 %75, -1
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.77
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.84:                                        ; preds = %if.end.77
  %76 = load double, double* %r0.addr, align 8, !tbaa !65
  %77 = load double, double* %r1.addr, align 8, !tbaa !65
  %cmp85 = fcmp olt double %76, %77
  br i1 %cmp85, label %if.then.87, label %if.else

if.then.87:                                       ; preds = %if.end.84
  %78 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %have_root = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %78, i32 0, i32 7
  %arrayidx88 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root, i32 0, i64 0
  %79 = load i32, i32* %arrayidx88, align 4, !tbaa !5
  %tobool89 = icmp ne i32 %79, 0
  br i1 %tobool89, label %land.lhs.true, label %if.end.96

land.lhs.true:                                    ; preds = %if.then.87
  %80 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %outer_contact = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %80, i32 0, i32 8
  %arrayidx90 = getelementptr inbounds [2 x i32], [2 x i32]* %outer_contact, i32 0, i64 0
  %81 = load i32, i32* %arrayidx90, align 4, !tbaa !5
  %tobool91 = icmp ne i32 %81, 0
  br i1 %tobool91, label %if.end.96, label %if.then.92

if.then.92:                                       ; preds = %land.lhs.true
  %82 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %apex93 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %82, i32 0, i32 5
  %83 = load double, double* %apex93, align 8, !tbaa !93
  %84 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %84, i32 0, i32 4
  %arrayidx94 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span, i32 0, i64 0
  %arrayidx95 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx94, i32 0, i64 0
  store double %83, double* %arrayidx95, align 8, !tbaa !65
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.92, %land.lhs.true, %if.then.87
  %85 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %have_root97 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %85, i32 0, i32 7
  %arrayidx98 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root97, i32 0, i64 1
  %86 = load i32, i32* %arrayidx98, align 4, !tbaa !5
  %tobool99 = icmp ne i32 %86, 0
  br i1 %tobool99, label %land.lhs.true.100, label %if.end.109

land.lhs.true.100:                                ; preds = %if.end.96
  %87 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %outer_contact101 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %87, i32 0, i32 8
  %arrayidx102 = getelementptr inbounds [2 x i32], [2 x i32]* %outer_contact101, i32 0, i64 1
  %88 = load i32, i32* %arrayidx102, align 4, !tbaa !5
  %tobool103 = icmp ne i32 %88, 0
  br i1 %tobool103, label %if.end.109, label %if.then.104

if.then.104:                                      ; preds = %land.lhs.true.100
  %89 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %apex105 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %89, i32 0, i32 5
  %90 = load double, double* %apex105, align 8, !tbaa !93
  %91 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span106 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %91, i32 0, i32 4
  %arrayidx107 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span106, i32 0, i64 1
  %arrayidx108 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx107, i32 0, i64 0
  store double %90, double* %arrayidx108, align 8, !tbaa !65
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.104, %land.lhs.true.100, %if.end.96
  br label %if.end.140

if.else:                                          ; preds = %if.end.84
  %92 = load double, double* %r0.addr, align 8, !tbaa !65
  %93 = load double, double* %r1.addr, align 8, !tbaa !65
  %cmp110 = fcmp ogt double %92, %93
  br i1 %cmp110, label %if.then.112, label %if.end.139

if.then.112:                                      ; preds = %if.else
  %94 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %have_root113 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %94, i32 0, i32 7
  %arrayidx114 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root113, i32 0, i64 0
  %95 = load i32, i32* %arrayidx114, align 4, !tbaa !5
  %tobool115 = icmp ne i32 %95, 0
  br i1 %tobool115, label %land.lhs.true.116, label %if.end.125

land.lhs.true.116:                                ; preds = %if.then.112
  %96 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %outer_contact117 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %96, i32 0, i32 8
  %arrayidx118 = getelementptr inbounds [2 x i32], [2 x i32]* %outer_contact117, i32 0, i64 0
  %97 = load i32, i32* %arrayidx118, align 4, !tbaa !5
  %tobool119 = icmp ne i32 %97, 0
  br i1 %tobool119, label %if.end.125, label %if.then.120

if.then.120:                                      ; preds = %land.lhs.true.116
  %98 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %apex121 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %98, i32 0, i32 5
  %99 = load double, double* %apex121, align 8, !tbaa !93
  %100 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span122 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %100, i32 0, i32 4
  %arrayidx123 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span122, i32 0, i64 0
  %arrayidx124 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx123, i32 0, i64 1
  store double %99, double* %arrayidx124, align 8, !tbaa !65
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.120, %land.lhs.true.116, %if.then.112
  %101 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %have_root126 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %101, i32 0, i32 7
  %arrayidx127 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root126, i32 0, i64 1
  %102 = load i32, i32* %arrayidx127, align 4, !tbaa !5
  %tobool128 = icmp ne i32 %102, 0
  br i1 %tobool128, label %land.lhs.true.129, label %if.end.138

land.lhs.true.129:                                ; preds = %if.end.125
  %103 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %outer_contact130 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %103, i32 0, i32 8
  %arrayidx131 = getelementptr inbounds [2 x i32], [2 x i32]* %outer_contact130, i32 0, i64 1
  %104 = load i32, i32* %arrayidx131, align 4, !tbaa !5
  %tobool132 = icmp ne i32 %104, 0
  br i1 %tobool132, label %if.end.138, label %if.then.133

if.then.133:                                      ; preds = %land.lhs.true.129
  %105 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %apex134 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %105, i32 0, i32 5
  %106 = load double, double* %apex134, align 8, !tbaa !93
  %107 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span135 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %107, i32 0, i32 4
  %arrayidx136 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span135, i32 0, i64 1
  %arrayidx137 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx136, i32 0, i64 1
  store double %106, double* %arrayidx137, align 8, !tbaa !65
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.133, %land.lhs.true.129, %if.end.125
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.else
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.end.109
  store i32 0, i32* %span_type, align 4, !tbaa !5
  %108 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %have_root141 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %108, i32 0, i32 7
  %arrayidx142 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root141, i32 0, i64 0
  %109 = load i32, i32* %arrayidx142, align 4, !tbaa !5
  %tobool143 = icmp ne i32 %109, 0
  br i1 %tobool143, label %land.lhs.true.144, label %if.end.151

land.lhs.true.144:                                ; preds = %if.end.140
  %110 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span145 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %110, i32 0, i32 4
  %arrayidx146 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span145, i32 0, i64 0
  %arrayidx147 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx146, i32 0, i64 0
  %111 = load double, double* %arrayidx147, align 8, !tbaa !65
  %cmp148 = fcmp olt double %111, 0.000000e+00
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %land.lhs.true.144
  %112 = load i32, i32* %span_type, align 4, !tbaa !5
  %or = or i32 %112, 1
  store i32 %or, i32* %span_type, align 4, !tbaa !5
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %land.lhs.true.144, %if.end.140
  %113 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %have_root152 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %113, i32 0, i32 7
  %arrayidx153 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root152, i32 0, i64 1
  %114 = load i32, i32* %arrayidx153, align 4, !tbaa !5
  %tobool154 = icmp ne i32 %114, 0
  br i1 %tobool154, label %land.lhs.true.155, label %if.end.163

land.lhs.true.155:                                ; preds = %if.end.151
  %115 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span156 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %115, i32 0, i32 4
  %arrayidx157 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span156, i32 0, i64 1
  %arrayidx158 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx157, i32 0, i64 0
  %116 = load double, double* %arrayidx158, align 8, !tbaa !65
  %cmp159 = fcmp olt double %116, 0.000000e+00
  br i1 %cmp159, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %land.lhs.true.155
  %117 = load i32, i32* %span_type, align 4, !tbaa !5
  %or162 = or i32 %117, 1
  store i32 %or162, i32* %span_type, align 4, !tbaa !5
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %land.lhs.true.155, %if.end.151
  %118 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %have_root164 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %118, i32 0, i32 7
  %arrayidx165 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root164, i32 0, i64 0
  %119 = load i32, i32* %arrayidx165, align 4, !tbaa !5
  %tobool166 = icmp ne i32 %119, 0
  br i1 %tobool166, label %land.lhs.true.167, label %if.end.181

land.lhs.true.167:                                ; preds = %if.end.163
  %120 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span168 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %120, i32 0, i32 4
  %arrayidx169 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span168, i32 0, i64 0
  %arrayidx170 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx169, i32 0, i64 1
  %121 = load double, double* %arrayidx170, align 8, !tbaa !65
  %cmp171 = fcmp ogt double %121, 0.000000e+00
  br i1 %cmp171, label %land.lhs.true.173, label %if.end.181

land.lhs.true.173:                                ; preds = %land.lhs.true.167
  %122 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span174 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %122, i32 0, i32 4
  %arrayidx175 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span174, i32 0, i64 0
  %arrayidx176 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx175, i32 0, i64 0
  %123 = load double, double* %arrayidx176, align 8, !tbaa !65
  %cmp177 = fcmp olt double %123, 1.000000e+00
  br i1 %cmp177, label %if.then.179, label %if.end.181

if.then.179:                                      ; preds = %land.lhs.true.173
  %124 = load i32, i32* %span_type, align 4, !tbaa !5
  %or180 = or i32 %124, 2
  store i32 %or180, i32* %span_type, align 4, !tbaa !5
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.179, %land.lhs.true.173, %land.lhs.true.167, %if.end.163
  %125 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %have_root182 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %125, i32 0, i32 7
  %arrayidx183 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root182, i32 0, i64 1
  %126 = load i32, i32* %arrayidx183, align 4, !tbaa !5
  %tobool184 = icmp ne i32 %126, 0
  br i1 %tobool184, label %land.lhs.true.185, label %if.end.199

land.lhs.true.185:                                ; preds = %if.end.181
  %127 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span186 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %127, i32 0, i32 4
  %arrayidx187 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span186, i32 0, i64 1
  %arrayidx188 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx187, i32 0, i64 1
  %128 = load double, double* %arrayidx188, align 8, !tbaa !65
  %cmp189 = fcmp ogt double %128, 0.000000e+00
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.199

land.lhs.true.191:                                ; preds = %land.lhs.true.185
  %129 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span192 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %129, i32 0, i32 4
  %arrayidx193 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span192, i32 0, i64 1
  %arrayidx194 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx193, i32 0, i64 0
  %130 = load double, double* %arrayidx194, align 8, !tbaa !65
  %cmp195 = fcmp olt double %130, 1.000000e+00
  br i1 %cmp195, label %if.then.197, label %if.end.199

if.then.197:                                      ; preds = %land.lhs.true.191
  %131 = load i32, i32* %span_type, align 4, !tbaa !5
  %or198 = or i32 %131, 4
  store i32 %or198, i32* %span_type, align 4, !tbaa !5
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.197, %land.lhs.true.191, %land.lhs.true.185, %if.end.181
  %132 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %have_root200 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %132, i32 0, i32 7
  %arrayidx201 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root200, i32 0, i64 0
  %133 = load i32, i32* %arrayidx201, align 4, !tbaa !5
  %tobool202 = icmp ne i32 %133, 0
  br i1 %tobool202, label %land.lhs.true.203, label %if.end.211

land.lhs.true.203:                                ; preds = %if.end.199
  %134 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span204 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %134, i32 0, i32 4
  %arrayidx205 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span204, i32 0, i64 0
  %arrayidx206 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx205, i32 0, i64 1
  %135 = load double, double* %arrayidx206, align 8, !tbaa !65
  %cmp207 = fcmp ogt double %135, 1.000000e+00
  br i1 %cmp207, label %if.then.209, label %if.end.211

if.then.209:                                      ; preds = %land.lhs.true.203
  %136 = load i32, i32* %span_type, align 4, !tbaa !5
  %or210 = or i32 %136, 8
  store i32 %or210, i32* %span_type, align 4, !tbaa !5
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.209, %land.lhs.true.203, %if.end.199
  %137 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %have_root212 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %137, i32 0, i32 7
  %arrayidx213 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root212, i32 0, i64 1
  %138 = load i32, i32* %arrayidx213, align 4, !tbaa !5
  %tobool214 = icmp ne i32 %138, 0
  br i1 %tobool214, label %land.lhs.true.215, label %if.end.223

land.lhs.true.215:                                ; preds = %if.end.211
  %139 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span216 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %139, i32 0, i32 4
  %arrayidx217 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span216, i32 0, i64 1
  %arrayidx218 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx217, i32 0, i64 1
  %140 = load double, double* %arrayidx218, align 8, !tbaa !65
  %cmp219 = fcmp ogt double %140, 1.000000e+00
  br i1 %cmp219, label %if.then.221, label %if.end.223

if.then.221:                                      ; preds = %land.lhs.true.215
  %141 = load i32, i32* %span_type, align 4, !tbaa !5
  %or222 = or i32 %141, 8
  store i32 %or222, i32* %span_type, align 4, !tbaa !5
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.221, %land.lhs.true.215, %if.end.211
  %142 = load i32, i32* %span_type, align 4, !tbaa !5
  store i32 %142, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.223, %if.then.83, %if.then.76, %if.then.69, %if.then
  %143 = bitcast i32* %span_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %span_type1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %span_type0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast double* %extent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = load i32, i32* %retval
  ret i32 %147
}

; Function Attrs: nounwind uwtable
define internal i32 @R_extensions(%struct.patch_fill_state_s* %pfs, %struct.gs_shading_R_s* %psh, %struct.gs_rect_s* %rect, double %t0, double %t1, i32 %Extend0, i32 %Extend1) #0 {
entry:
  %retval = alloca i32, align 4
  %pfs.addr = alloca %struct.patch_fill_state_s*, align 8
  %psh.addr = alloca %struct.gs_shading_R_s*, align 8
  %rect.addr = alloca %struct.gs_rect_s*, align 8
  %t0.addr = alloca double, align 8
  %t1.addr = alloca double, align 8
  %Extend0.addr = alloca i32, align 4
  %Extend1.addr = alloca i32, align 4
  %x0 = alloca float, align 4
  %y0 = alloca float, align 4
  %r0 = alloca double, align 8
  %x1 = alloca float, align 4
  %y1 = alloca float, align 4
  %r1 = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %dr = alloca double, align 8
  %d = alloca double, align 8
  %r = alloca double, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %r2 = alloca double, align 8
  %x3 = alloca double, align 8
  %y3 = alloca double, align 8
  %r3 = alloca double, align 8
  store %struct.patch_fill_state_s* %pfs, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  store %struct.gs_shading_R_s* %psh, %struct.gs_shading_R_s** %psh.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %rect, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  store double %t0, double* %t0.addr, align 8, !tbaa !65
  store double %t1, double* %t1.addr, align 8, !tbaa !65
  store i32 %Extend0, i32* %Extend0.addr, align 4, !tbaa !5
  store i32 %Extend1, i32* %Extend1.addr, align 4, !tbaa !5
  %0 = bitcast float* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %1, i32 0, i32 1
  %Coords = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params, i32 0, i32 6
  %arrayidx = getelementptr inbounds [6 x float], [6 x float]* %Coords, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !16
  store float %2, float* %x0, align 4, !tbaa !16
  %3 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %4, i32 0, i32 1
  %Coords2 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params1, i32 0, i32 6
  %arrayidx3 = getelementptr inbounds [6 x float], [6 x float]* %Coords2, i32 0, i64 1
  %5 = load float, float* %arrayidx3, align 4, !tbaa !16
  store float %5, float* %y0, align 4, !tbaa !16
  %6 = bitcast double* %r0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh.addr, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %7, i32 0, i32 1
  %Coords5 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params4, i32 0, i32 6
  %arrayidx6 = getelementptr inbounds [6 x float], [6 x float]* %Coords5, i32 0, i64 2
  %8 = load float, float* %arrayidx6, align 4, !tbaa !16
  %conv = fpext float %8 to double
  store double %conv, double* %r0, align 8, !tbaa !65
  %9 = bitcast float* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh.addr, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %10, i32 0, i32 1
  %Coords8 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params7, i32 0, i32 6
  %arrayidx9 = getelementptr inbounds [6 x float], [6 x float]* %Coords8, i32 0, i64 3
  %11 = load float, float* %arrayidx9, align 4, !tbaa !16
  store float %11, float* %x1, align 4, !tbaa !16
  %12 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh.addr, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %13, i32 0, i32 1
  %Coords11 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params10, i32 0, i32 6
  %arrayidx12 = getelementptr inbounds [6 x float], [6 x float]* %Coords11, i32 0, i64 4
  %14 = load float, float* %arrayidx12, align 4, !tbaa !16
  store float %14, float* %y1, align 4, !tbaa !16
  %15 = bitcast double* %r1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gs_shading_R_s*, %struct.gs_shading_R_s** %psh.addr, align 8, !tbaa !1
  %params13 = getelementptr inbounds %struct.gs_shading_R_s, %struct.gs_shading_R_s* %16, i32 0, i32 1
  %Coords14 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params13, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [6 x float], [6 x float]* %Coords14, i32 0, i64 5
  %17 = load float, float* %arrayidx15, align 4, !tbaa !16
  %conv16 = fpext float %17 to double
  store double %conv16, double* %r1, align 8, !tbaa !65
  %18 = bitcast double* %dx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load float, float* %x1, align 4, !tbaa !16
  %20 = load float, float* %x0, align 4, !tbaa !16
  %sub = fsub float %19, %20
  %conv17 = fpext float %sub to double
  store double %conv17, double* %dx, align 8, !tbaa !65
  %21 = bitcast double* %dy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load float, float* %y1, align 4, !tbaa !16
  %23 = load float, float* %y0, align 4, !tbaa !16
  %sub18 = fsub float %22, %23
  %conv19 = fpext float %sub18 to double
  store double %conv19, double* %dy, align 8, !tbaa !65
  %24 = bitcast double* %dr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load double, double* %r1, align 8, !tbaa !65
  %26 = load double, double* %r0, align 8, !tbaa !65
  %sub20 = fsub double %25, %26
  %cmp = fcmp olt double %sub20, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %27 = load double, double* %r1, align 8, !tbaa !65
  %28 = load double, double* %r0, align 8, !tbaa !65
  %sub22 = fsub double %27, %28
  %sub23 = fsub double -0.000000e+00, %sub22
  br label %cond.end

cond.false:                                       ; preds = %entry
  %29 = load double, double* %r1, align 8, !tbaa !65
  %30 = load double, double* %r0, align 8, !tbaa !65
  %sub24 = fsub double %29, %30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub23, %cond.true ], [ %sub24, %cond.false ]
  store double %cond, double* %dr, align 8, !tbaa !65
  %31 = bitcast double* %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load double, double* %dx, align 8, !tbaa !65
  %33 = load double, double* %dx, align 8, !tbaa !65
  %mul = fmul double %32, %33
  %34 = load double, double* %dy, align 8, !tbaa !65
  %35 = load double, double* %dy, align 8, !tbaa !65
  %mul25 = fmul double %34, %35
  %add = fadd double %mul, %mul25
  %call = call double @sqrt(double %add) #7
  store double %call, double* %d, align 8, !tbaa !65
  %36 = bitcast double* %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load double, double* %dr, align 8, !tbaa !65
  %39 = load double, double* %d, align 8, !tbaa !65
  %40 = load double, double* %d, align 8, !tbaa !65
  %41 = load double, double* %dr, align 8, !tbaa !65
  %add26 = fadd double %40, %41
  %mul27 = fmul double 1.000000e-07, %add26
  %sub28 = fsub double %39, %mul27
  %cmp29 = fcmp oge double %38, %sub28
  br i1 %cmp29, label %if.then, label %if.else.92

if.then:                                          ; preds = %cond.end
  %42 = load double, double* %r0, align 8, !tbaa !65
  %43 = load double, double* %r1, align 8, !tbaa !65
  %cmp31 = fcmp ogt double %42, %43
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.then
  %44 = load i32, i32* %Extend0.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.then.34, label %if.end.50

if.then.34:                                       ; preds = %if.then.33
  %45 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %46 = load float, float* %x0, align 4, !tbaa !16
  %conv35 = fpext float %46 to double
  %47 = load float, float* %y0, align 4, !tbaa !16
  %conv36 = fpext float %47 to double
  %call37 = call double @R_rect_radius(%struct.gs_rect_s* %45, double %conv35, double %conv36) #6
  store double %call37, double* %r, align 8, !tbaa !65
  %48 = load double, double* %r, align 8, !tbaa !65
  %49 = load double, double* %r0, align 8, !tbaa !65
  %cmp38 = fcmp ogt double %48, %49
  br i1 %cmp38, label %if.then.40, label %if.end.49

if.then.40:                                       ; preds = %if.then.34
  %50 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %51 = load float, float* %x0, align 4, !tbaa !16
  %conv41 = fpext float %51 to double
  %52 = load float, float* %y0, align 4, !tbaa !16
  %conv42 = fpext float %52 to double
  %53 = load double, double* %r, align 8, !tbaa !65
  %54 = load double, double* %t0.addr, align 8, !tbaa !65
  %55 = load float, float* %x0, align 4, !tbaa !16
  %conv43 = fpext float %55 to double
  %56 = load float, float* %y0, align 4, !tbaa !16
  %conv44 = fpext float %56 to double
  %57 = load double, double* %r0, align 8, !tbaa !65
  %58 = load double, double* %t0.addr, align 8, !tbaa !65
  %call45 = call i32 @R_tensor_annulus(%struct.patch_fill_state_s* %50, double %conv41, double %conv42, double %53, double %54, double %conv43, double %conv44, double %57, double %58) #6
  store i32 %call45, i32* %code, align 4, !tbaa !5
  %59 = load i32, i32* %code, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %59, 0
  br i1 %cmp46, label %if.then.48, label %if.end

if.then.48:                                       ; preds = %if.then.40
  %60 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

if.end:                                           ; preds = %if.then.40
  br label %if.end.49

if.end.49:                                        ; preds = %if.end, %if.then.34
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.33
  %61 = load i32, i32* %Extend1.addr, align 4, !tbaa !5
  %tobool51 = icmp ne i32 %61, 0
  br i1 %tobool51, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %if.end.50
  %62 = load double, double* %r1, align 8, !tbaa !65
  %cmp52 = fcmp ogt double %62, 0.000000e+00
  br i1 %cmp52, label %if.then.54, label %if.end.60

if.then.54:                                       ; preds = %land.lhs.true
  %63 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %64 = load float, float* %x1, align 4, !tbaa !16
  %conv55 = fpext float %64 to double
  %65 = load float, float* %y1, align 4, !tbaa !16
  %conv56 = fpext float %65 to double
  %66 = load double, double* %r1, align 8, !tbaa !65
  %67 = load double, double* %t1.addr, align 8, !tbaa !65
  %68 = load float, float* %x1, align 4, !tbaa !16
  %conv57 = fpext float %68 to double
  %69 = load float, float* %y1, align 4, !tbaa !16
  %conv58 = fpext float %69 to double
  %70 = load double, double* %t1.addr, align 8, !tbaa !65
  %call59 = call i32 @R_tensor_annulus(%struct.patch_fill_state_s* %63, double %conv55, double %conv56, double %66, double %67, double %conv57, double %conv58, double 0.000000e+00, double %70) #6
  store i32 %call59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

if.end.60:                                        ; preds = %land.lhs.true, %if.end.50
  br label %if.end.91

if.else:                                          ; preds = %if.then
  %71 = load i32, i32* %Extend1.addr, align 4, !tbaa !5
  %tobool61 = icmp ne i32 %71, 0
  br i1 %tobool61, label %if.then.62, label %if.end.79

if.then.62:                                       ; preds = %if.else
  %72 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %73 = load float, float* %x1, align 4, !tbaa !16
  %conv63 = fpext float %73 to double
  %74 = load float, float* %y1, align 4, !tbaa !16
  %conv64 = fpext float %74 to double
  %call65 = call double @R_rect_radius(%struct.gs_rect_s* %72, double %conv63, double %conv64) #6
  store double %call65, double* %r, align 8, !tbaa !65
  %75 = load double, double* %r, align 8, !tbaa !65
  %76 = load double, double* %r1, align 8, !tbaa !65
  %cmp66 = fcmp ogt double %75, %76
  br i1 %cmp66, label %if.then.68, label %if.end.78

if.then.68:                                       ; preds = %if.then.62
  %77 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %78 = load float, float* %x1, align 4, !tbaa !16
  %conv69 = fpext float %78 to double
  %79 = load float, float* %y1, align 4, !tbaa !16
  %conv70 = fpext float %79 to double
  %80 = load double, double* %r, align 8, !tbaa !65
  %81 = load double, double* %t1.addr, align 8, !tbaa !65
  %82 = load float, float* %x1, align 4, !tbaa !16
  %conv71 = fpext float %82 to double
  %83 = load float, float* %y1, align 4, !tbaa !16
  %conv72 = fpext float %83 to double
  %84 = load double, double* %r1, align 8, !tbaa !65
  %85 = load double, double* %t1.addr, align 8, !tbaa !65
  %call73 = call i32 @R_tensor_annulus(%struct.patch_fill_state_s* %77, double %conv69, double %conv70, double %80, double %81, double %conv71, double %conv72, double %84, double %85) #6
  store i32 %call73, i32* %code, align 4, !tbaa !5
  %86 = load i32, i32* %code, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %86, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.68
  %87 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

if.end.77:                                        ; preds = %if.then.68
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.62
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.else
  %88 = load i32, i32* %Extend0.addr, align 4, !tbaa !5
  %tobool80 = icmp ne i32 %88, 0
  br i1 %tobool80, label %land.lhs.true.81, label %if.end.90

land.lhs.true.81:                                 ; preds = %if.end.79
  %89 = load double, double* %r0, align 8, !tbaa !65
  %cmp82 = fcmp ogt double %89, 0.000000e+00
  br i1 %cmp82, label %if.then.84, label %if.end.90

if.then.84:                                       ; preds = %land.lhs.true.81
  %90 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %91 = load float, float* %x0, align 4, !tbaa !16
  %conv85 = fpext float %91 to double
  %92 = load float, float* %y0, align 4, !tbaa !16
  %conv86 = fpext float %92 to double
  %93 = load double, double* %r0, align 8, !tbaa !65
  %94 = load double, double* %t0.addr, align 8, !tbaa !65
  %95 = load float, float* %x0, align 4, !tbaa !16
  %conv87 = fpext float %95 to double
  %96 = load float, float* %y0, align 4, !tbaa !16
  %conv88 = fpext float %96 to double
  %97 = load double, double* %t0.addr, align 8, !tbaa !65
  %call89 = call i32 @R_tensor_annulus(%struct.patch_fill_state_s* %90, double %conv85, double %conv86, double %93, double %94, double %conv87, double %conv88, double 0.000000e+00, double %97) #6
  store i32 %call89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

if.end.90:                                        ; preds = %land.lhs.true.81, %if.end.79
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.60
  br label %if.end.215

if.else.92:                                       ; preds = %cond.end
  %98 = load double, double* %dr, align 8, !tbaa !65
  %99 = load double, double* %d, align 8, !tbaa !65
  %div = fdiv double %99, 3.000000e+00
  %cmp93 = fcmp ogt double %98, %div
  br i1 %cmp93, label %if.then.95, label %if.else.153

if.then.95:                                       ; preds = %if.else.92
  %100 = load double, double* %r0, align 8, !tbaa !65
  %101 = load double, double* %r1, align 8, !tbaa !65
  %cmp96 = fcmp ogt double %100, %101
  br i1 %cmp96, label %if.then.98, label %if.else.125

if.then.98:                                       ; preds = %if.then.95
  %102 = load i32, i32* %Extend0.addr, align 4, !tbaa !5
  %tobool99 = icmp ne i32 %102, 0
  br i1 %tobool99, label %if.then.100, label %if.end.113

if.then.100:                                      ; preds = %if.then.98
  %103 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %104 = load float, float* %x0, align 4, !tbaa !16
  %conv101 = fpext float %104 to double
  %105 = load float, float* %y0, align 4, !tbaa !16
  %conv102 = fpext float %105 to double
  %call103 = call double @R_rect_radius(%struct.gs_rect_s* %103, double %conv101, double %conv102) #6
  store double %call103, double* %r, align 8, !tbaa !65
  %106 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %107 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %108 = load float, float* %x0, align 4, !tbaa !16
  %conv104 = fpext float %108 to double
  %109 = load float, float* %y0, align 4, !tbaa !16
  %conv105 = fpext float %109 to double
  %110 = load double, double* %r0, align 8, !tbaa !65
  %111 = load float, float* %x1, align 4, !tbaa !16
  %conv106 = fpext float %111 to double
  %112 = load float, float* %y1, align 4, !tbaa !16
  %conv107 = fpext float %112 to double
  %113 = load double, double* %r1, align 8, !tbaa !65
  %114 = load double, double* %t0.addr, align 8, !tbaa !65
  %115 = load double, double* %r, align 8, !tbaa !65
  %call108 = call i32 @R_obtuse_cone(%struct.patch_fill_state_s* %106, %struct.gs_rect_s* %107, double %conv104, double %conv105, double %110, double %conv106, double %conv107, double %113, double %114, double %115, i32 1) #6
  store i32 %call108, i32* %code, align 4, !tbaa !5
  %116 = load i32, i32* %code, align 4, !tbaa !5
  %cmp109 = icmp slt i32 %116, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.then.100
  %117 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %117, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

if.end.112:                                       ; preds = %if.then.100
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.98
  %118 = load i32, i32* %Extend1.addr, align 4, !tbaa !5
  %tobool114 = icmp ne i32 %118, 0
  br i1 %tobool114, label %land.lhs.true.115, label %if.end.124

land.lhs.true.115:                                ; preds = %if.end.113
  %119 = load double, double* %r1, align 8, !tbaa !65
  %cmp116 = fcmp une double %119, 0.000000e+00
  br i1 %cmp116, label %if.then.118, label %if.end.124

if.then.118:                                      ; preds = %land.lhs.true.115
  %120 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %121 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %122 = load float, float* %x0, align 4, !tbaa !16
  %conv119 = fpext float %122 to double
  %123 = load float, float* %y0, align 4, !tbaa !16
  %conv120 = fpext float %123 to double
  %124 = load double, double* %r0, align 8, !tbaa !65
  %125 = load float, float* %x1, align 4, !tbaa !16
  %conv121 = fpext float %125 to double
  %126 = load float, float* %y1, align 4, !tbaa !16
  %conv122 = fpext float %126 to double
  %127 = load double, double* %r1, align 8, !tbaa !65
  %128 = load double, double* %t1.addr, align 8, !tbaa !65
  %call123 = call i32 @R_tensor_cone_apex(%struct.patch_fill_state_s* %120, %struct.gs_rect_s* %121, double %conv119, double %conv120, double %124, double %conv121, double %conv122, double %127, double %128) #6
  store i32 %call123, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

if.end.124:                                       ; preds = %land.lhs.true.115, %if.end.113
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

if.else.125:                                      ; preds = %if.then.95
  %129 = load i32, i32* %Extend1.addr, align 4, !tbaa !5
  %tobool126 = icmp ne i32 %129, 0
  br i1 %tobool126, label %if.then.127, label %if.end.140

if.then.127:                                      ; preds = %if.else.125
  %130 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %131 = load float, float* %x1, align 4, !tbaa !16
  %conv128 = fpext float %131 to double
  %132 = load float, float* %y1, align 4, !tbaa !16
  %conv129 = fpext float %132 to double
  %call130 = call double @R_rect_radius(%struct.gs_rect_s* %130, double %conv128, double %conv129) #6
  store double %call130, double* %r, align 8, !tbaa !65
  %133 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %134 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %135 = load float, float* %x1, align 4, !tbaa !16
  %conv131 = fpext float %135 to double
  %136 = load float, float* %y1, align 4, !tbaa !16
  %conv132 = fpext float %136 to double
  %137 = load double, double* %r1, align 8, !tbaa !65
  %138 = load float, float* %x0, align 4, !tbaa !16
  %conv133 = fpext float %138 to double
  %139 = load float, float* %y0, align 4, !tbaa !16
  %conv134 = fpext float %139 to double
  %140 = load double, double* %r0, align 8, !tbaa !65
  %141 = load double, double* %t1.addr, align 8, !tbaa !65
  %142 = load double, double* %r, align 8, !tbaa !65
  %call135 = call i32 @R_obtuse_cone(%struct.patch_fill_state_s* %133, %struct.gs_rect_s* %134, double %conv131, double %conv132, double %137, double %conv133, double %conv134, double %140, double %141, double %142, i32 0) #6
  store i32 %call135, i32* %code, align 4, !tbaa !5
  %143 = load i32, i32* %code, align 4, !tbaa !5
  %cmp136 = icmp slt i32 %143, 0
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.then.127
  %144 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %144, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

if.end.139:                                       ; preds = %if.then.127
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.else.125
  %145 = load i32, i32* %Extend0.addr, align 4, !tbaa !5
  %tobool141 = icmp ne i32 %145, 0
  br i1 %tobool141, label %land.lhs.true.142, label %if.end.151

land.lhs.true.142:                                ; preds = %if.end.140
  %146 = load double, double* %r0, align 8, !tbaa !65
  %cmp143 = fcmp une double %146, 0.000000e+00
  br i1 %cmp143, label %if.then.145, label %if.end.151

if.then.145:                                      ; preds = %land.lhs.true.142
  %147 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %148 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %149 = load float, float* %x1, align 4, !tbaa !16
  %conv146 = fpext float %149 to double
  %150 = load float, float* %y1, align 4, !tbaa !16
  %conv147 = fpext float %150 to double
  %151 = load double, double* %r1, align 8, !tbaa !65
  %152 = load float, float* %x0, align 4, !tbaa !16
  %conv148 = fpext float %152 to double
  %153 = load float, float* %y0, align 4, !tbaa !16
  %conv149 = fpext float %153 to double
  %154 = load double, double* %r0, align 8, !tbaa !65
  %155 = load double, double* %t0.addr, align 8, !tbaa !65
  %call150 = call i32 @R_tensor_cone_apex(%struct.patch_fill_state_s* %147, %struct.gs_rect_s* %148, double %conv146, double %conv147, double %151, double %conv148, double %conv149, double %154, double %155) #6
  store i32 %call150, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

if.end.151:                                       ; preds = %land.lhs.true.142, %if.end.140
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151
  br label %if.end.214

if.else.153:                                      ; preds = %if.else.92
  %156 = bitcast double* %x2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %156) #1
  %157 = bitcast double* %y2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #1
  %158 = bitcast double* %r2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %158) #1
  %159 = bitcast double* %x3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %159) #1
  %160 = bitcast double* %y3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %160) #1
  %161 = bitcast double* %r3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %161) #1
  %162 = load i32, i32* %Extend0.addr, align 4, !tbaa !5
  %tobool154 = icmp ne i32 %162, 0
  br i1 %tobool154, label %if.then.155, label %if.end.180

if.then.155:                                      ; preds = %if.else.153
  %163 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %164 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %165 = load float, float* %x1, align 4, !tbaa !16
  %conv156 = fpext float %165 to double
  %166 = load float, float* %y1, align 4, !tbaa !16
  %conv157 = fpext float %166 to double
  %167 = load double, double* %r1, align 8, !tbaa !65
  %168 = load float, float* %x0, align 4, !tbaa !16
  %conv158 = fpext float %168 to double
  %169 = load float, float* %y0, align 4, !tbaa !16
  %conv159 = fpext float %169 to double
  %170 = load double, double* %r0, align 8, !tbaa !65
  %call160 = call i32 @R_outer_circle(%struct.patch_fill_state_s* %163, %struct.gs_rect_s* %164, double %conv156, double %conv157, double %167, double %conv158, double %conv159, double %170, double* %x3, double* %y3, double* %r3) #6
  store i32 %call160, i32* %code, align 4, !tbaa !5
  %171 = load i32, i32* %code, align 4, !tbaa !5
  %cmp161 = icmp slt i32 %171, 0
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.then.155
  %172 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %172, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.164:                                       ; preds = %if.then.155
  %173 = load double, double* %x3, align 8, !tbaa !65
  %174 = load float, float* %x1, align 4, !tbaa !16
  %conv165 = fpext float %174 to double
  %cmp166 = fcmp une double %173, %conv165
  br i1 %cmp166, label %if.then.171, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.164
  %175 = load double, double* %y3, align 8, !tbaa !65
  %176 = load float, float* %y1, align 4, !tbaa !16
  %conv168 = fpext float %176 to double
  %cmp169 = fcmp une double %175, %conv168
  br i1 %cmp169, label %if.then.171, label %if.end.179

if.then.171:                                      ; preds = %lor.lhs.false, %if.end.164
  %177 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %178 = load float, float* %x0, align 4, !tbaa !16
  %conv172 = fpext float %178 to double
  %179 = load float, float* %y0, align 4, !tbaa !16
  %conv173 = fpext float %179 to double
  %180 = load double, double* %r0, align 8, !tbaa !65
  %181 = load double, double* %t0.addr, align 8, !tbaa !65
  %182 = load double, double* %x3, align 8, !tbaa !65
  %183 = load double, double* %y3, align 8, !tbaa !65
  %184 = load double, double* %r3, align 8, !tbaa !65
  %185 = load double, double* %t0.addr, align 8, !tbaa !65
  %call174 = call i32 @R_tensor_annulus(%struct.patch_fill_state_s* %177, double %conv172, double %conv173, double %180, double %181, double %182, double %183, double %184, double %185) #6
  store i32 %call174, i32* %code, align 4, !tbaa !5
  %186 = load i32, i32* %code, align 4, !tbaa !5
  %cmp175 = icmp slt i32 %186, 0
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.then.171
  %187 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %187, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.178:                                       ; preds = %if.then.171
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %lor.lhs.false
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.else.153
  %188 = load i32, i32* %Extend1.addr, align 4, !tbaa !5
  %tobool181 = icmp ne i32 %188, 0
  br i1 %tobool181, label %if.then.182, label %if.end.208

if.then.182:                                      ; preds = %if.end.180
  %189 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %190 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %191 = load float, float* %x0, align 4, !tbaa !16
  %conv183 = fpext float %191 to double
  %192 = load float, float* %y0, align 4, !tbaa !16
  %conv184 = fpext float %192 to double
  %193 = load double, double* %r0, align 8, !tbaa !65
  %194 = load float, float* %x1, align 4, !tbaa !16
  %conv185 = fpext float %194 to double
  %195 = load float, float* %y1, align 4, !tbaa !16
  %conv186 = fpext float %195 to double
  %196 = load double, double* %r1, align 8, !tbaa !65
  %call187 = call i32 @R_outer_circle(%struct.patch_fill_state_s* %189, %struct.gs_rect_s* %190, double %conv183, double %conv184, double %193, double %conv185, double %conv186, double %196, double* %x2, double* %y2, double* %r2) #6
  store i32 %call187, i32* %code, align 4, !tbaa !5
  %197 = load i32, i32* %code, align 4, !tbaa !5
  %cmp188 = icmp slt i32 %197, 0
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.then.182
  %198 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %198, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.191:                                       ; preds = %if.then.182
  %199 = load double, double* %x2, align 8, !tbaa !65
  %200 = load float, float* %x0, align 4, !tbaa !16
  %conv192 = fpext float %200 to double
  %cmp193 = fcmp une double %199, %conv192
  br i1 %cmp193, label %if.then.199, label %lor.lhs.false.195

lor.lhs.false.195:                                ; preds = %if.end.191
  %201 = load double, double* %y2, align 8, !tbaa !65
  %202 = load float, float* %y0, align 4, !tbaa !16
  %conv196 = fpext float %202 to double
  %cmp197 = fcmp une double %201, %conv196
  br i1 %cmp197, label %if.then.199, label %if.end.207

if.then.199:                                      ; preds = %lor.lhs.false.195, %if.end.191
  %203 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %204 = load float, float* %x1, align 4, !tbaa !16
  %conv200 = fpext float %204 to double
  %205 = load float, float* %y1, align 4, !tbaa !16
  %conv201 = fpext float %205 to double
  %206 = load double, double* %r1, align 8, !tbaa !65
  %207 = load double, double* %t1.addr, align 8, !tbaa !65
  %208 = load double, double* %x2, align 8, !tbaa !65
  %209 = load double, double* %y2, align 8, !tbaa !65
  %210 = load double, double* %r2, align 8, !tbaa !65
  %211 = load double, double* %t1.addr, align 8, !tbaa !65
  %call202 = call i32 @R_tensor_annulus(%struct.patch_fill_state_s* %203, double %conv200, double %conv201, double %206, double %207, double %208, double %209, double %210, double %211) #6
  store i32 %call202, i32* %code, align 4, !tbaa !5
  %212 = load i32, i32* %code, align 4, !tbaa !5
  %cmp203 = icmp slt i32 %212, 0
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %if.then.199
  %213 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %213, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.206:                                       ; preds = %if.then.199
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %lor.lhs.false.195
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.end.180
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.208, %if.then.205, %if.then.190, %if.then.177, %if.then.163
  %214 = bitcast double* %r3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast double* %y3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = bitcast double* %x3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #1
  %217 = bitcast double* %r2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast double* %y2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast double* %x2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.216 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.214

if.end.214:                                       ; preds = %cleanup.cont, %if.end.152
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.end.91
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

cleanup.216:                                      ; preds = %if.end.215, %cleanup, %if.then.145, %if.then.138, %if.end.124, %if.then.118, %if.then.111, %if.then.84, %if.then.76, %if.then.54, %if.then.48
  %220 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast double* %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  %222 = bitcast double* %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  %223 = bitcast double* %dr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast double* %dy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = bitcast double* %dx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast double* %r1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  %227 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  %228 = bitcast float* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #1
  %229 = bitcast double* %r0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #1
  %230 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #1
  %231 = bitcast float* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #1
  %232 = load i32, i32* %retval
  ret i32 %232
}

; Function Attrs: nounwind uwtable
define internal i32 @R_tensor_annulus(%struct.patch_fill_state_s* %pfs, double %x0, double %y0, double %r0, double %t0, double %x1, double %y1, double %r1, double %t1) #0 {
entry:
  %retval = alloca i32, align 4
  %pfs.addr = alloca %struct.patch_fill_state_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %r0.addr = alloca double, align 8
  %t0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %r1.addr = alloca double, align 8
  %t1.addr = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %d = alloca double, align 8
  %p0 = alloca %struct.gs_point_s, align 8
  %p1 = alloca %struct.gs_point_s, align 8
  %pc0 = alloca %struct.gs_point_s, align 8
  %pc1 = alloca %struct.gs_point_s, align 8
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %dirn = alloca i32, align 4
  %inside = alloca i32, align 4
  %p = alloca [12 x %struct.gs_point_s], align 16
  %curve = alloca [4 x %struct.patch_curve_s], align 16
  %jj = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.patch_fill_state_s* %pfs, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !65
  store double %y0, double* %y0.addr, align 8, !tbaa !65
  store double %r0, double* %r0.addr, align 8, !tbaa !65
  store double %t0, double* %t0.addr, align 8, !tbaa !65
  store double %x1, double* %x1.addr, align 8, !tbaa !65
  store double %y1, double* %y1.addr, align 8, !tbaa !65
  store double %r1, double* %r1.addr, align 8, !tbaa !65
  store double %t1, double* %t1.addr, align 8, !tbaa !65
  %0 = bitcast double* %dx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double, double* %x1.addr, align 8, !tbaa !65
  %2 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub = fsub double %1, %2
  store double %sub, double* %dx, align 8, !tbaa !65
  %3 = bitcast double* %dy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load double, double* %y1.addr, align 8, !tbaa !65
  %5 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub1 = fsub double %4, %5
  store double %sub1, double* %dy, align 8, !tbaa !65
  %6 = bitcast double* %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load double, double* %dx, align 8, !tbaa !65
  %8 = load double, double* %dx, align 8, !tbaa !65
  %mul = fmul double %7, %8
  %9 = load double, double* %dy, align 8, !tbaa !65
  %10 = load double, double* %dy, align 8, !tbaa !65
  %mul2 = fmul double %9, %10
  %add = fadd double %mul, %mul2
  %call = call double @sqrt(double %add) #7
  store double %call, double* %d, align 8, !tbaa !65
  %11 = bitcast %struct.gs_point_s* %p0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast %struct.gs_point_s* %p1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = bitcast %struct.gs_point_s* %pc0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #1
  %14 = bitcast %struct.gs_point_s* %pc1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #1
  %15 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %dirn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %inside to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %inside, align 4, !tbaa !5
  %20 = load double, double* %x0.addr, align 8, !tbaa !65
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pc0, i32 0, i32 0
  store double %20, double* %x, align 8, !tbaa !72
  %21 = load double, double* %y0.addr, align 8, !tbaa !65
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pc0, i32 0, i32 1
  store double %21, double* %y, align 8, !tbaa !73
  %22 = load double, double* %x1.addr, align 8, !tbaa !65
  %x3 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pc1, i32 0, i32 0
  store double %22, double* %x3, align 8, !tbaa !72
  %23 = load double, double* %y1.addr, align 8, !tbaa !65
  %y4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pc1, i32 0, i32 1
  store double %23, double* %y4, align 8, !tbaa !73
  %24 = load double, double* %r0.addr, align 8, !tbaa !65
  %25 = load double, double* %d, align 8, !tbaa !65
  %add5 = fadd double %24, %25
  %26 = load double, double* %r1.addr, align 8, !tbaa !65
  %cmp = fcmp ole double %add5, %26
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %27 = load double, double* %r1.addr, align 8, !tbaa !65
  %28 = load double, double* %d, align 8, !tbaa !65
  %add6 = fadd double %27, %28
  %29 = load double, double* %r0.addr, align 8, !tbaa !65
  %cmp7 = fcmp ole double %add6, %29
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  store double 0.000000e+00, double* %x8, align 8, !tbaa !72
  %y9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  store double -1.000000e+00, double* %y9, align 8, !tbaa !73
  store i32 0, i32* %dirn, align 4, !tbaa !5
  store i32 1, i32* %inside, align 4, !tbaa !5
  br label %if.end.40

if.else:                                          ; preds = %lor.lhs.false
  %30 = load double, double* %dx, align 8, !tbaa !65
  %cmp10 = fcmp oge double %30, 0.000000e+00
  br i1 %cmp10, label %if.then.11, label %if.else.23

if.then.11:                                       ; preds = %if.else
  %31 = load double, double* %dy, align 8, !tbaa !65
  %cmp12 = fcmp oge double %31, 0.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.else.17

if.then.13:                                       ; preds = %if.then.11
  %x14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  store double 1.000000e+00, double* %x14, align 8, !tbaa !72
  %y15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  store double 0.000000e+00, double* %y15, align 8, !tbaa !73
  %32 = load double, double* %dx, align 8, !tbaa !65
  %33 = load double, double* %dy, align 8, !tbaa !65
  %cmp16 = fcmp oge double %32, %33
  %cond = select i1 %cmp16, i32 1, i32 0
  store i32 %cond, i32* %dirn, align 4, !tbaa !5
  br label %if.end

if.else.17:                                       ; preds = %if.then.11
  %x18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  store double 0.000000e+00, double* %x18, align 8, !tbaa !72
  %y19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  store double -1.000000e+00, double* %y19, align 8, !tbaa !73
  %34 = load double, double* %dx, align 8, !tbaa !65
  %35 = load double, double* %dy, align 8, !tbaa !65
  %sub20 = fsub double -0.000000e+00, %35
  %cmp21 = fcmp oge double %34, %sub20
  %cond22 = select i1 %cmp21, i32 0, i32 1
  store i32 %cond22, i32* %dirn, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else.17, %if.then.13
  br label %if.end.39

if.else.23:                                       ; preds = %if.else
  %36 = load double, double* %dy, align 8, !tbaa !65
  %cmp24 = fcmp oge double %36, 0.000000e+00
  br i1 %cmp24, label %if.then.25, label %if.else.31

if.then.25:                                       ; preds = %if.else.23
  %x26 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  store double 0.000000e+00, double* %x26, align 8, !tbaa !72
  %y27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  store double 1.000000e+00, double* %y27, align 8, !tbaa !73
  %37 = load double, double* %dx, align 8, !tbaa !65
  %sub28 = fsub double -0.000000e+00, %37
  %38 = load double, double* %dy, align 8, !tbaa !65
  %cmp29 = fcmp oge double %sub28, %38
  %cond30 = select i1 %cmp29, i32 1, i32 0
  store i32 %cond30, i32* %dirn, align 4, !tbaa !5
  br label %if.end.38

if.else.31:                                       ; preds = %if.else.23
  %x32 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  store double -1.000000e+00, double* %x32, align 8, !tbaa !72
  %y33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  store double 0.000000e+00, double* %y33, align 8, !tbaa !73
  %39 = load double, double* %dx, align 8, !tbaa !65
  %sub34 = fsub double -0.000000e+00, %39
  %40 = load double, double* %dy, align 8, !tbaa !65
  %sub35 = fsub double -0.000000e+00, %40
  %cmp36 = fcmp oge double %sub34, %sub35
  %cond37 = select i1 %cmp36, i32 0, i32 1
  store i32 %cond37, i32* %dirn, align 4, !tbaa !5
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.31, %if.then.25
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.322, %if.end.40
  %41 = load i32, i32* %k, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %41, 4
  br i1 %cmp41, label %for.body, label %for.end.324

for.body:                                         ; preds = %for.cond
  %42 = bitcast [12 x %struct.gs_point_s]* %p to i8*
  call void @llvm.lifetime.start(i64 192, i8* %42) #1
  %43 = bitcast [4 x %struct.patch_curve_s]* %curve to i8*
  call void @llvm.lifetime.start(i64 1136, i8* %43) #1
  %y42 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %44 = load double, double* %y42, align 8, !tbaa !73
  %sub43 = fsub double -0.000000e+00, %44
  %x44 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  store double %sub43, double* %x44, align 8, !tbaa !72
  %x45 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %45 = load double, double* %x45, align 8, !tbaa !72
  %y46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  store double %45, double* %y46, align 8, !tbaa !73
  %46 = load i32, i32* %dirn, align 4, !tbaa !5
  %cmp47 = icmp eq i32 %46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.51

if.then.48:                                       ; preds = %for.body
  %arraydecay = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i32 0
  %add.ptr = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arraydecay, i64 0
  %47 = load double, double* %r0.addr, align 8, !tbaa !65
  call void @make_quadrant_arc(%struct.gs_point_s* %add.ptr, %struct.gs_point_s* %pc0, %struct.gs_point_s* %p1, %struct.gs_point_s* %p0, double %47) #6
  %arraydecay49 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i32 0
  %add.ptr50 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arraydecay49, i64 6
  %48 = load double, double* %r1.addr, align 8, !tbaa !65
  call void @make_quadrant_arc(%struct.gs_point_s* %add.ptr50, %struct.gs_point_s* %pc1, %struct.gs_point_s* %p0, %struct.gs_point_s* %p1, double %48) #6
  br label %if.end.56

if.else.51:                                       ; preds = %for.body
  %arraydecay52 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i32 0
  %add.ptr53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arraydecay52, i64 0
  %49 = load double, double* %r0.addr, align 8, !tbaa !65
  call void @make_quadrant_arc(%struct.gs_point_s* %add.ptr53, %struct.gs_point_s* %pc0, %struct.gs_point_s* %p0, %struct.gs_point_s* %p1, double %49) #6
  %arraydecay54 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i32 0
  %add.ptr55 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arraydecay54, i64 6
  %50 = load double, double* %r1.addr, align 8, !tbaa !65
  call void @make_quadrant_arc(%struct.gs_point_s* %add.ptr55, %struct.gs_point_s* %pc1, %struct.gs_point_s* %p1, %struct.gs_point_s* %p0, double %50) #6
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.51, %if.then.48
  %arrayidx = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 3
  %x57 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  %51 = load double, double* %x57, align 8, !tbaa !72
  %mul58 = fmul double %51, 2.000000e+00
  %arrayidx59 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 6
  %x60 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx59, i32 0, i32 0
  %52 = load double, double* %x60, align 8, !tbaa !72
  %add61 = fadd double %mul58, %52
  %div = fdiv double %add61, 3.000000e+00
  %arrayidx62 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 4
  %x63 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx62, i32 0, i32 0
  store double %div, double* %x63, align 8, !tbaa !72
  %arrayidx64 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 3
  %y65 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx64, i32 0, i32 1
  %53 = load double, double* %y65, align 8, !tbaa !73
  %mul66 = fmul double %53, 2.000000e+00
  %arrayidx67 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 6
  %y68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx67, i32 0, i32 1
  %54 = load double, double* %y68, align 8, !tbaa !73
  %add69 = fadd double %mul66, %54
  %div70 = fdiv double %add69, 3.000000e+00
  %arrayidx71 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 4
  %y72 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx71, i32 0, i32 1
  store double %div70, double* %y72, align 8, !tbaa !73
  %arrayidx73 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 3
  %x74 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx73, i32 0, i32 0
  %55 = load double, double* %x74, align 8, !tbaa !72
  %arrayidx75 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 6
  %x76 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx75, i32 0, i32 0
  %56 = load double, double* %x76, align 8, !tbaa !72
  %mul77 = fmul double %56, 2.000000e+00
  %add78 = fadd double %55, %mul77
  %div79 = fdiv double %add78, 3.000000e+00
  %arrayidx80 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 5
  %x81 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx80, i32 0, i32 0
  store double %div79, double* %x81, align 8, !tbaa !72
  %arrayidx82 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 3
  %y83 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx82, i32 0, i32 1
  %57 = load double, double* %y83, align 8, !tbaa !73
  %arrayidx84 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 6
  %y85 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx84, i32 0, i32 1
  %58 = load double, double* %y85, align 8, !tbaa !73
  %mul86 = fmul double %58, 2.000000e+00
  %add87 = fadd double %57, %mul86
  %div88 = fdiv double %add87, 3.000000e+00
  %arrayidx89 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 5
  %y90 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx89, i32 0, i32 1
  store double %div88, double* %y90, align 8, !tbaa !73
  %arrayidx91 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 9
  %x92 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx91, i32 0, i32 0
  %59 = load double, double* %x92, align 8, !tbaa !72
  %mul93 = fmul double %59, 2.000000e+00
  %arrayidx94 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 0
  %x95 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx94, i32 0, i32 0
  %60 = load double, double* %x95, align 8, !tbaa !72
  %add96 = fadd double %mul93, %60
  %div97 = fdiv double %add96, 3.000000e+00
  %arrayidx98 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 10
  %x99 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx98, i32 0, i32 0
  store double %div97, double* %x99, align 8, !tbaa !72
  %arrayidx100 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 9
  %y101 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx100, i32 0, i32 1
  %61 = load double, double* %y101, align 8, !tbaa !73
  %mul102 = fmul double %61, 2.000000e+00
  %arrayidx103 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 0
  %y104 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx103, i32 0, i32 1
  %62 = load double, double* %y104, align 8, !tbaa !73
  %add105 = fadd double %mul102, %62
  %div106 = fdiv double %add105, 3.000000e+00
  %arrayidx107 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 10
  %y108 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx107, i32 0, i32 1
  store double %div106, double* %y108, align 8, !tbaa !73
  %arrayidx109 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 9
  %x110 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx109, i32 0, i32 0
  %63 = load double, double* %x110, align 8, !tbaa !72
  %arrayidx111 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 0
  %x112 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx111, i32 0, i32 0
  %64 = load double, double* %x112, align 8, !tbaa !72
  %mul113 = fmul double %64, 2.000000e+00
  %add114 = fadd double %63, %mul113
  %div115 = fdiv double %add114, 3.000000e+00
  %arrayidx116 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 11
  %x117 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx116, i32 0, i32 0
  store double %div115, double* %x117, align 8, !tbaa !72
  %arrayidx118 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 9
  %y119 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx118, i32 0, i32 1
  %65 = load double, double* %y119, align 8, !tbaa !73
  %arrayidx120 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 0
  %y121 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx120, i32 0, i32 1
  %66 = load double, double* %y121, align 8, !tbaa !73
  %mul122 = fmul double %66, 2.000000e+00
  %add123 = fadd double %65, %mul122
  %div124 = fdiv double %add123, 3.000000e+00
  %arrayidx125 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 11
  %y126 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx125, i32 0, i32 1
  store double %div124, double* %y126, align 8, !tbaa !73
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc, %if.end.56
  %67 = load i32, i32* %j, align 4, !tbaa !5
  %cmp128 = icmp slt i32 %67, 4
  br i1 %cmp128, label %for.body.129, label %for.end

for.body.129:                                     ; preds = %for.cond.127
  %68 = bitcast i32* %jj to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load i32, i32* %j, align 4, !tbaa !5
  %70 = load i32, i32* %inside, align 4, !tbaa !5
  %add130 = add nsw i32 %69, %70
  %rem = srem i32 %add130, 4
  store i32 %rem, i32* %jj, align 4, !tbaa !5
  %71 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %71, i32 0, i32 1
  %72 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !85
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %72, i32 0, i32 5
  %73 = load i32, i32* %j, align 4, !tbaa !5
  %mul131 = mul nsw i32 %73, 3
  %add132 = add nsw i32 %mul131, 0
  %idxprom = sext i32 %add132 to i64
  %arrayidx133 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 %idxprom
  %x134 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx133, i32 0, i32 0
  %74 = load double, double* %x134, align 8, !tbaa !72
  %75 = load i32, i32* %j, align 4, !tbaa !5
  %mul135 = mul nsw i32 %75, 3
  %add136 = add nsw i32 %mul135, 0
  %idxprom137 = sext i32 %add136 to i64
  %arrayidx138 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 %idxprom137
  %y139 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx138, i32 0, i32 1
  %76 = load double, double* %y139, align 8, !tbaa !73
  %77 = load i32, i32* %jj, align 4, !tbaa !5
  %idxprom140 = sext i32 %77 to i64
  %arrayidx141 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 %idxprom140
  %vertex = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx141, i32 0, i32 0
  %p142 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex, i32 0, i32 0
  %call143 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %74, double %76, %struct.gs_fixed_point_s* %p142) #6
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.then.145, label %if.end.162

if.then.145:                                      ; preds = %for.body.129
  %78 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %pis146 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %78, i32 0, i32 1
  %79 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis146, align 8, !tbaa !85
  %ctm147 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %79, i32 0, i32 5
  %80 = load i32, i32* %j, align 4, !tbaa !5
  %mul148 = mul nsw i32 %80, 3
  %add149 = add nsw i32 %mul148, 0
  %idxprom150 = sext i32 %add149 to i64
  %arrayidx151 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 %idxprom150
  %x152 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx151, i32 0, i32 0
  %81 = load double, double* %x152, align 8, !tbaa !72
  %82 = load i32, i32* %j, align 4, !tbaa !5
  %mul153 = mul nsw i32 %82, 3
  %add154 = add nsw i32 %mul153, 0
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 %idxprom155
  %y157 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx156, i32 0, i32 1
  %83 = load double, double* %y157, align 8, !tbaa !73
  %84 = load i32, i32* %jj, align 4, !tbaa !5
  %idxprom158 = sext i32 %84 to i64
  %arrayidx159 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 %idxprom158
  %vertex160 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx159, i32 0, i32 0
  %p161 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex160, i32 0, i32 0
  call void @gs_point_transform2fixed_clamped(%struct.gs_matrix_fixed_s* %ctm147, double %81, double %83, %struct.gs_fixed_point_s* %p161) #6
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.145, %for.body.129
  %85 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %pis163 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %85, i32 0, i32 1
  %86 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis163, align 8, !tbaa !85
  %ctm164 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %86, i32 0, i32 5
  %87 = load i32, i32* %j, align 4, !tbaa !5
  %mul165 = mul nsw i32 %87, 3
  %add166 = add nsw i32 %mul165, 1
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 %idxprom167
  %x169 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx168, i32 0, i32 0
  %88 = load double, double* %x169, align 8, !tbaa !72
  %89 = load i32, i32* %j, align 4, !tbaa !5
  %mul170 = mul nsw i32 %89, 3
  %add171 = add nsw i32 %mul170, 1
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 %idxprom172
  %y174 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx173, i32 0, i32 1
  %90 = load double, double* %y174, align 8, !tbaa !73
  %91 = load i32, i32* %jj, align 4, !tbaa !5
  %idxprom175 = sext i32 %91 to i64
  %arrayidx176 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 %idxprom175
  %control = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx176, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %control, i32 0, i64 0
  %call178 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm164, double %88, double %90, %struct.gs_fixed_point_s* %arrayidx177) #6
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %if.then.180, label %if.end.197

if.then.180:                                      ; preds = %if.end.162
  %92 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %pis181 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %92, i32 0, i32 1
  %93 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis181, align 8, !tbaa !85
  %ctm182 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %93, i32 0, i32 5
  %94 = load i32, i32* %j, align 4, !tbaa !5
  %mul183 = mul nsw i32 %94, 3
  %add184 = add nsw i32 %mul183, 1
  %idxprom185 = sext i32 %add184 to i64
  %arrayidx186 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 %idxprom185
  %x187 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx186, i32 0, i32 0
  %95 = load double, double* %x187, align 8, !tbaa !72
  %96 = load i32, i32* %j, align 4, !tbaa !5
  %mul188 = mul nsw i32 %96, 3
  %add189 = add nsw i32 %mul188, 1
  %idxprom190 = sext i32 %add189 to i64
  %arrayidx191 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 %idxprom190
  %y192 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx191, i32 0, i32 1
  %97 = load double, double* %y192, align 8, !tbaa !73
  %98 = load i32, i32* %jj, align 4, !tbaa !5
  %idxprom193 = sext i32 %98 to i64
  %arrayidx194 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 %idxprom193
  %control195 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx194, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %control195, i32 0, i64 0
  call void @gs_point_transform2fixed_clamped(%struct.gs_matrix_fixed_s* %ctm182, double %95, double %97, %struct.gs_fixed_point_s* %arrayidx196) #6
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.180, %if.end.162
  %99 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %pis198 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %99, i32 0, i32 1
  %100 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis198, align 8, !tbaa !85
  %ctm199 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %100, i32 0, i32 5
  %101 = load i32, i32* %j, align 4, !tbaa !5
  %mul200 = mul nsw i32 %101, 3
  %add201 = add nsw i32 %mul200, 2
  %idxprom202 = sext i32 %add201 to i64
  %arrayidx203 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 %idxprom202
  %x204 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx203, i32 0, i32 0
  %102 = load double, double* %x204, align 8, !tbaa !72
  %103 = load i32, i32* %j, align 4, !tbaa !5
  %mul205 = mul nsw i32 %103, 3
  %add206 = add nsw i32 %mul205, 2
  %idxprom207 = sext i32 %add206 to i64
  %arrayidx208 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 %idxprom207
  %y209 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx208, i32 0, i32 1
  %104 = load double, double* %y209, align 8, !tbaa !73
  %105 = load i32, i32* %jj, align 4, !tbaa !5
  %idxprom210 = sext i32 %105 to i64
  %arrayidx211 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 %idxprom210
  %control212 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx211, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %control212, i32 0, i64 1
  %call214 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm199, double %102, double %104, %struct.gs_fixed_point_s* %arrayidx213) #6
  %cmp215 = icmp slt i32 %call214, 0
  br i1 %cmp215, label %if.then.216, label %if.end.233

if.then.216:                                      ; preds = %if.end.197
  %106 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %pis217 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %106, i32 0, i32 1
  %107 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis217, align 8, !tbaa !85
  %ctm218 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %107, i32 0, i32 5
  %108 = load i32, i32* %j, align 4, !tbaa !5
  %mul219 = mul nsw i32 %108, 3
  %add220 = add nsw i32 %mul219, 2
  %idxprom221 = sext i32 %add220 to i64
  %arrayidx222 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 %idxprom221
  %x223 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx222, i32 0, i32 0
  %109 = load double, double* %x223, align 8, !tbaa !72
  %110 = load i32, i32* %j, align 4, !tbaa !5
  %mul224 = mul nsw i32 %110, 3
  %add225 = add nsw i32 %mul224, 2
  %idxprom226 = sext i32 %add225 to i64
  %arrayidx227 = getelementptr inbounds [12 x %struct.gs_point_s], [12 x %struct.gs_point_s]* %p, i32 0, i64 %idxprom226
  %y228 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx227, i32 0, i32 1
  %111 = load double, double* %y228, align 8, !tbaa !73
  %112 = load i32, i32* %jj, align 4, !tbaa !5
  %idxprom229 = sext i32 %112 to i64
  %arrayidx230 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 %idxprom229
  %control231 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx230, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [2 x %struct.gs_fixed_point_s], [2 x %struct.gs_fixed_point_s]* %control231, i32 0, i64 1
  call void @gs_point_transform2fixed_clamped(%struct.gs_matrix_fixed_s* %ctm218, double %109, double %111, %struct.gs_fixed_point_s* %arrayidx232) #6
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.216, %if.end.197
  %113 = load i32, i32* %j, align 4, !tbaa !5
  %114 = load i32, i32* %inside, align 4, !tbaa !5
  %add234 = add nsw i32 %113, %114
  %and = and i32 %add234, 1
  %cmp235 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp235 to i32
  %115 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom236 = sext i32 %115 to i64
  %arrayidx237 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 %idxprom236
  %straight = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx237, i32 0, i32 2
  store i32 %conv, i32* %straight, align 4, !tbaa !84
  %116 = bitcast i32* %jj to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.233
  %117 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %117, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.127

for.end:                                          ; preds = %for.cond.127
  %118 = load double, double* %t0.addr, align 8, !tbaa !65
  %conv238 = fptrunc double %118 to float
  %119 = load i32, i32* %inside, align 4, !tbaa !5
  %add239 = add nsw i32 0, %119
  %rem240 = srem i32 %add239, 4
  %idxprom241 = sext i32 %rem240 to i64
  %arrayidx242 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 %idxprom241
  %vertex243 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx242, i32 0, i32 0
  %cc = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex243, i32 0, i32 1
  %arrayidx244 = getelementptr inbounds [64 x float], [64 x float]* %cc, i32 0, i64 0
  store float %conv238, float* %arrayidx244, align 4, !tbaa !16
  %120 = load double, double* %t0.addr, align 8, !tbaa !65
  %conv245 = fptrunc double %120 to float
  %121 = load i32, i32* %inside, align 4, !tbaa !5
  %add246 = add nsw i32 1, %121
  %rem247 = srem i32 %add246, 4
  %idxprom248 = sext i32 %rem247 to i64
  %arrayidx249 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 %idxprom248
  %vertex250 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx249, i32 0, i32 0
  %cc251 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex250, i32 0, i32 1
  %arrayidx252 = getelementptr inbounds [64 x float], [64 x float]* %cc251, i32 0, i64 0
  store float %conv245, float* %arrayidx252, align 4, !tbaa !16
  %122 = load double, double* %t1.addr, align 8, !tbaa !65
  %conv253 = fptrunc double %122 to float
  %123 = load i32, i32* %inside, align 4, !tbaa !5
  %add254 = add nsw i32 2, %123
  %rem255 = srem i32 %add254, 4
  %idxprom256 = sext i32 %rem255 to i64
  %arrayidx257 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 %idxprom256
  %vertex258 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx257, i32 0, i32 0
  %cc259 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex258, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [64 x float], [64 x float]* %cc259, i32 0, i64 0
  store float %conv253, float* %arrayidx260, align 4, !tbaa !16
  %124 = load double, double* %t1.addr, align 8, !tbaa !65
  %conv261 = fptrunc double %124 to float
  %125 = load i32, i32* %inside, align 4, !tbaa !5
  %add262 = add nsw i32 3, %125
  %rem263 = srem i32 %add262, 4
  %idxprom264 = sext i32 %rem263 to i64
  %arrayidx265 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 %idxprom264
  %vertex266 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx265, i32 0, i32 0
  %cc267 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex266, i32 0, i32 1
  %arrayidx268 = getelementptr inbounds [64 x float], [64 x float]* %cc267, i32 0, i64 0
  store float %conv261, float* %arrayidx268, align 4, !tbaa !16
  %arrayidx269 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 1
  %vertex270 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx269, i32 0, i32 0
  %cc271 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex270, i32 0, i32 1
  %arrayidx272 = getelementptr inbounds [64 x float], [64 x float]* %cc271, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx272, align 4, !tbaa !16
  %arrayidx273 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 0
  %vertex274 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx273, i32 0, i32 0
  %cc275 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex274, i32 0, i32 1
  %arrayidx276 = getelementptr inbounds [64 x float], [64 x float]* %cc275, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx276, align 4, !tbaa !16
  %arrayidx277 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 3
  %vertex278 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx277, i32 0, i32 0
  %cc279 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex278, i32 0, i32 1
  %arrayidx280 = getelementptr inbounds [64 x float], [64 x float]* %cc279, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx280, align 4, !tbaa !16
  %arrayidx281 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i64 2
  %vertex282 = getelementptr inbounds %struct.patch_curve_s, %struct.patch_curve_s* %arrayidx281, i32 0, i32 0
  %cc283 = getelementptr inbounds %struct.mesh_vertex_s, %struct.mesh_vertex_s* %vertex282, i32 0, i32 1
  %arrayidx284 = getelementptr inbounds [64 x float], [64 x float]* %cc283, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx284, align 4, !tbaa !16
  %126 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %arraydecay285 = getelementptr inbounds [4 x %struct.patch_curve_s], [4 x %struct.patch_curve_s]* %curve, i32 0, i32 0
  %call286 = call i32 @patch_fill(%struct.patch_fill_state_s* %126, %struct.patch_curve_s* %arraydecay285, %struct.gs_fixed_point_s* null, void (%struct.gs_fixed_point_s*, %struct.patch_curve_s*, %struct.gs_fixed_point_s*, double, double)* null) #6
  store i32 %call286, i32* %code, align 4, !tbaa !5
  %127 = load i32, i32* %code, align 4, !tbaa !5
  %cmp287 = icmp slt i32 %127, 0
  br i1 %cmp287, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %for.end
  %128 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %128, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.290:                                       ; preds = %for.end
  %129 = load i32, i32* %k, align 4, !tbaa !5
  %cmp291 = icmp eq i32 %129, 0
  br i1 %cmp291, label %if.then.293, label %if.else.299

if.then.293:                                      ; preds = %if.end.290
  %130 = bitcast %struct.gs_point_s* %p1 to i8*
  %131 = bitcast %struct.gs_point_s* %p0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %130, i8* %131, i64 16, i32 8, i1 false), !tbaa.struct !91
  %y294 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %132 = load double, double* %y294, align 8, !tbaa !73
  %x295 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  store double %132, double* %x295, align 8, !tbaa !72
  %x296 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %133 = load double, double* %x296, align 8, !tbaa !72
  %sub297 = fsub double -0.000000e+00, %133
  %y298 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  store double %sub297, double* %y298, align 8, !tbaa !73
  store i32 0, i32* %dirn, align 4, !tbaa !5
  br label %if.end.320

if.else.299:                                      ; preds = %if.end.290
  %134 = load i32, i32* %k, align 4, !tbaa !5
  %cmp300 = icmp eq i32 %134, 1
  br i1 %cmp300, label %if.then.302, label %if.else.309

if.then.302:                                      ; preds = %if.else.299
  %x303 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %135 = load double, double* %x303, align 8, !tbaa !72
  %sub304 = fsub double -0.000000e+00, %135
  %x305 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  store double %sub304, double* %x305, align 8, !tbaa !72
  %y306 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %136 = load double, double* %y306, align 8, !tbaa !73
  %sub307 = fsub double -0.000000e+00, %136
  %y308 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  store double %sub307, double* %y308, align 8, !tbaa !73
  store i32 1, i32* %dirn, align 4, !tbaa !5
  br label %if.end.319

if.else.309:                                      ; preds = %if.else.299
  %137 = load i32, i32* %k, align 4, !tbaa !5
  %cmp310 = icmp eq i32 %137, 2
  br i1 %cmp310, label %if.then.312, label %if.end.318

if.then.312:                                      ; preds = %if.else.309
  %138 = bitcast %struct.gs_point_s* %p1 to i8*
  %139 = bitcast %struct.gs_point_s* %p0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* %139, i64 16, i32 8, i1 false), !tbaa.struct !91
  %y313 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %140 = load double, double* %y313, align 8, !tbaa !73
  %sub314 = fsub double -0.000000e+00, %140
  %x315 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  store double %sub314, double* %x315, align 8, !tbaa !72
  %x316 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %141 = load double, double* %x316, align 8, !tbaa !72
  %y317 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  store double %141, double* %y317, align 8, !tbaa !73
  store i32 0, i32* %dirn, align 4, !tbaa !5
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.312, %if.else.309
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %if.then.302
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.then.293
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.320, %if.then.289
  %142 = bitcast [4 x %struct.patch_curve_s]* %curve to i8*
  call void @llvm.lifetime.end(i64 1136, i8* %142) #1
  %143 = bitcast [12 x %struct.gs_point_s]* %p to i8*
  call void @llvm.lifetime.end(i64 192, i8* %143) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.325 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.322

for.inc.322:                                      ; preds = %cleanup.cont
  %144 = load i32, i32* %k, align 4, !tbaa !5
  %inc323 = add nsw i32 %144, 1
  store i32 %inc323, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end.324:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.325

cleanup.325:                                      ; preds = %for.end.324, %cleanup
  %145 = bitcast i32* %inside to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %dirn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast %struct.gs_point_s* %pc1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %150) #1
  %151 = bitcast %struct.gs_point_s* %pc0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %151) #1
  %152 = bitcast %struct.gs_point_s* %p1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %152) #1
  %153 = bitcast %struct.gs_point_s* %p0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %153) #1
  %154 = bitcast double* %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast double* %dy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast double* %dx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = load i32, i32* %retval
  ret i32 %157
}

; Function Attrs: nounwind uwtable
define internal i32 @R_fill_rect_with_const_color(%struct.patch_fill_state_s* %pfs, %struct.gs_fixed_rect_s* %clip_rect, float %t) #0 {
entry:
  %retval = alloca i32, align 4
  %pfs.addr = alloca %struct.patch_fill_state_s*, align 8
  %clip_rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %t.addr = alloca float, align 4
  %p = alloca %struct.quadrangle_patch, align 8
  %pp = alloca [2 x [2 x %struct.shading_vertex_s]], align 16
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %pc = alloca %struct.patch_color_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.patch_fill_state_s* %pfs, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %clip_rect, %struct.gs_fixed_rect_s** %clip_rect.addr, align 8, !tbaa !1
  store float %t, float* %t.addr, align 4, !tbaa !16
  %0 = bitcast %struct.quadrangle_patch* %p to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %1 = bitcast [2 x [2 x %struct.shading_vertex_s]]* %pp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %2 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %direct_space = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %3, i32 0, i32 2
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %direct_space, align 8, !tbaa !94
  store %struct.gs_color_space_s* %4, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %5 = bitcast %struct.patch_color_s* %pc to i8*
  call void @llvm.lifetime.start(i64 272, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %Function = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %7, i32 0, i32 9
  %8 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !37
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %8, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %evaluate = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 0
  %9 = load i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*)** %evaluate, align 8, !tbaa !28
  %10 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %Function1 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %10, i32 0, i32 9
  %11 = load %struct.gs_function_s*, %struct.gs_function_s** %Function1, align 8, !tbaa !37
  %cc = getelementptr inbounds %struct.patch_color_s, %struct.patch_color_s* %pc, i32 0, i32 1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i32 0
  %call = call i32 %9(%struct.gs_function_s* %11, float* %t.addr, float* %arraydecay) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 0
  %15 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !95
  %restrict_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %15, i32 0, i32 6
  %16 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)** %restrict_color, align 8, !tbaa !99
  %cc2 = getelementptr inbounds %struct.patch_color_s, %struct.patch_color_s* %pc, i32 0, i32 1
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void %16(%struct.gs_client_color_s* %cc2, %struct.gs_color_space_s* %17) #6
  %18 = load float, float* %t.addr, align 4, !tbaa !16
  %t3 = getelementptr inbounds %struct.patch_color_s, %struct.patch_color_s* %pc, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %t3, i32 0, i64 1
  store float %18, float* %arrayidx, align 4, !tbaa !16
  %t4 = getelementptr inbounds %struct.patch_color_s, %struct.patch_color_s* %pc, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x float], [2 x float]* %t4, i32 0, i64 0
  store float %18, float* %arrayidx5, align 4, !tbaa !16
  %arrayidx6 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s]], [2 x [2 x %struct.shading_vertex_s]]* %pp, i32 0, i64 0
  %arrayidx7 = getelementptr inbounds [2 x %struct.shading_vertex_s], [2 x %struct.shading_vertex_s]* %arrayidx6, i32 0, i64 0
  %p8 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %arrayidx7, i32 0, i32 0
  %19 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip_rect.addr, align 8, !tbaa !1
  %p9 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %19, i32 0, i32 0
  %20 = bitcast %struct.gs_fixed_point_s* %p8 to i8*
  %21 = bitcast %struct.gs_fixed_point_s* %p9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 8, i32 4, i1 false), !tbaa.struct !101
  %22 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip_rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %22, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %23 = load i32, i32* %x, align 4, !tbaa !102
  %arrayidx10 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s]], [2 x [2 x %struct.shading_vertex_s]]* %pp, i32 0, i64 0
  %arrayidx11 = getelementptr inbounds [2 x %struct.shading_vertex_s], [2 x %struct.shading_vertex_s]* %arrayidx10, i32 0, i64 1
  %p12 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %arrayidx11, i32 0, i32 0
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p12, i32 0, i32 0
  store i32 %23, i32* %x13, align 4, !tbaa !103
  %24 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip_rect.addr, align 8, !tbaa !1
  %p14 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %24, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p14, i32 0, i32 1
  %25 = load i32, i32* %y, align 4, !tbaa !105
  %arrayidx15 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s]], [2 x [2 x %struct.shading_vertex_s]]* %pp, i32 0, i64 0
  %arrayidx16 = getelementptr inbounds [2 x %struct.shading_vertex_s], [2 x %struct.shading_vertex_s]* %arrayidx15, i32 0, i64 1
  %p17 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %arrayidx16, i32 0, i32 0
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p17, i32 0, i32 1
  store i32 %25, i32* %y18, align 4, !tbaa !106
  %26 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip_rect.addr, align 8, !tbaa !1
  %p19 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %26, i32 0, i32 0
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p19, i32 0, i32 0
  %27 = load i32, i32* %x20, align 4, !tbaa !107
  %arrayidx21 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s]], [2 x [2 x %struct.shading_vertex_s]]* %pp, i32 0, i64 1
  %arrayidx22 = getelementptr inbounds [2 x %struct.shading_vertex_s], [2 x %struct.shading_vertex_s]* %arrayidx21, i32 0, i64 0
  %p23 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %arrayidx22, i32 0, i32 0
  %x24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p23, i32 0, i32 0
  store i32 %27, i32* %x24, align 4, !tbaa !103
  %28 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip_rect.addr, align 8, !tbaa !1
  %q25 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %28, i32 0, i32 1
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q25, i32 0, i32 1
  %29 = load i32, i32* %y26, align 4, !tbaa !108
  %arrayidx27 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s]], [2 x [2 x %struct.shading_vertex_s]]* %pp, i32 0, i64 1
  %arrayidx28 = getelementptr inbounds [2 x %struct.shading_vertex_s], [2 x %struct.shading_vertex_s]* %arrayidx27, i32 0, i64 0
  %p29 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %arrayidx28, i32 0, i32 0
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p29, i32 0, i32 1
  store i32 %29, i32* %y30, align 4, !tbaa !106
  %arrayidx31 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s]], [2 x [2 x %struct.shading_vertex_s]]* %pp, i32 0, i64 1
  %arrayidx32 = getelementptr inbounds [2 x %struct.shading_vertex_s], [2 x %struct.shading_vertex_s]* %arrayidx31, i32 0, i64 1
  %p33 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %arrayidx32, i32 0, i32 0
  %30 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip_rect.addr, align 8, !tbaa !1
  %q34 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %30, i32 0, i32 1
  %31 = bitcast %struct.gs_fixed_point_s* %p33 to i8*
  %32 = bitcast %struct.gs_fixed_point_s* %q34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 8, i32 4, i1 false), !tbaa.struct !101
  %arrayidx35 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s]], [2 x [2 x %struct.shading_vertex_s]]* %pp, i32 0, i64 1
  %arrayidx36 = getelementptr inbounds [2 x %struct.shading_vertex_s], [2 x %struct.shading_vertex_s]* %arrayidx35, i32 0, i64 1
  %c = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %arrayidx36, i32 0, i32 1
  store %struct.patch_color_s* %pc, %struct.patch_color_s** %c, align 8, !tbaa !109
  %arrayidx37 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s]], [2 x [2 x %struct.shading_vertex_s]]* %pp, i32 0, i64 1
  %arrayidx38 = getelementptr inbounds [2 x %struct.shading_vertex_s], [2 x %struct.shading_vertex_s]* %arrayidx37, i32 0, i64 0
  %c39 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %arrayidx38, i32 0, i32 1
  store %struct.patch_color_s* %pc, %struct.patch_color_s** %c39, align 8, !tbaa !109
  %arrayidx40 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s]], [2 x [2 x %struct.shading_vertex_s]]* %pp, i32 0, i64 0
  %arrayidx41 = getelementptr inbounds [2 x %struct.shading_vertex_s], [2 x %struct.shading_vertex_s]* %arrayidx40, i32 0, i64 1
  %c42 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %arrayidx41, i32 0, i32 1
  store %struct.patch_color_s* %pc, %struct.patch_color_s** %c42, align 8, !tbaa !109
  %arrayidx43 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s]], [2 x [2 x %struct.shading_vertex_s]]* %pp, i32 0, i64 0
  %arrayidx44 = getelementptr inbounds [2 x %struct.shading_vertex_s], [2 x %struct.shading_vertex_s]* %arrayidx43, i32 0, i64 0
  %c45 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %arrayidx44, i32 0, i32 1
  store %struct.patch_color_s* %pc, %struct.patch_color_s** %c45, align 8, !tbaa !109
  %arrayidx46 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s]], [2 x [2 x %struct.shading_vertex_s]]* %pp, i32 0, i64 0
  %arrayidx47 = getelementptr inbounds [2 x %struct.shading_vertex_s], [2 x %struct.shading_vertex_s]* %arrayidx46, i32 0, i64 0
  %p48 = getelementptr inbounds %struct.quadrangle_patch, %struct.quadrangle_patch* %p, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s*]], [2 x [2 x %struct.shading_vertex_s*]]* %p48, i32 0, i64 0
  %arrayidx50 = getelementptr inbounds [2 x %struct.shading_vertex_s*], [2 x %struct.shading_vertex_s*]* %arrayidx49, i32 0, i64 0
  store %struct.shading_vertex_s* %arrayidx47, %struct.shading_vertex_s** %arrayidx50, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s]], [2 x [2 x %struct.shading_vertex_s]]* %pp, i32 0, i64 0
  %arrayidx52 = getelementptr inbounds [2 x %struct.shading_vertex_s], [2 x %struct.shading_vertex_s]* %arrayidx51, i32 0, i64 1
  %p53 = getelementptr inbounds %struct.quadrangle_patch, %struct.quadrangle_patch* %p, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s*]], [2 x [2 x %struct.shading_vertex_s*]]* %p53, i32 0, i64 0
  %arrayidx55 = getelementptr inbounds [2 x %struct.shading_vertex_s*], [2 x %struct.shading_vertex_s*]* %arrayidx54, i32 0, i64 1
  store %struct.shading_vertex_s* %arrayidx52, %struct.shading_vertex_s** %arrayidx55, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s]], [2 x [2 x %struct.shading_vertex_s]]* %pp, i32 0, i64 1
  %arrayidx57 = getelementptr inbounds [2 x %struct.shading_vertex_s], [2 x %struct.shading_vertex_s]* %arrayidx56, i32 0, i64 0
  %p58 = getelementptr inbounds %struct.quadrangle_patch, %struct.quadrangle_patch* %p, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s*]], [2 x [2 x %struct.shading_vertex_s*]]* %p58, i32 0, i64 1
  %arrayidx60 = getelementptr inbounds [2 x %struct.shading_vertex_s*], [2 x %struct.shading_vertex_s*]* %arrayidx59, i32 0, i64 0
  store %struct.shading_vertex_s* %arrayidx57, %struct.shading_vertex_s** %arrayidx60, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s]], [2 x [2 x %struct.shading_vertex_s]]* %pp, i32 0, i64 1
  %arrayidx62 = getelementptr inbounds [2 x %struct.shading_vertex_s], [2 x %struct.shading_vertex_s]* %arrayidx61, i32 0, i64 1
  %p63 = getelementptr inbounds %struct.quadrangle_patch, %struct.quadrangle_patch* %p, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x [2 x %struct.shading_vertex_s*]], [2 x [2 x %struct.shading_vertex_s*]]* %p63, i32 0, i64 1
  %arrayidx65 = getelementptr inbounds [2 x %struct.shading_vertex_s*], [2 x %struct.shading_vertex_s*]* %arrayidx64, i32 0, i64 1
  store %struct.shading_vertex_s* %arrayidx62, %struct.shading_vertex_s** %arrayidx65, align 8, !tbaa !1
  %33 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %call66 = call i32 @constant_color_quadrangle(%struct.patch_fill_state_s* %33, %struct.quadrangle_patch* %p, i32 0) #6
  store i32 %call66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.patch_color_s* %pc to i8*
  call void @llvm.lifetime.end(i64 272, i8* %35) #1
  %36 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast [2 x [2 x %struct.shading_vertex_s]]* %pp to i8*
  call void @llvm.lifetime.end(i64 64, i8* %37) #1
  %38 = bitcast %struct.quadrangle_patch* %p to i8*
  call void @llvm.lifetime.end(i64 64, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @shorten_radial_shading(float* %x0, float* %y0, double* %r0, float* %d0, float* %x1, float* %y1, double* %r1, float* %d1, double* %span_) #0 {
entry:
  %retval = alloca i32, align 4
  %x0.addr = alloca float*, align 8
  %y0.addr = alloca float*, align 8
  %r0.addr = alloca double*, align 8
  %d0.addr = alloca float*, align 8
  %x1.addr = alloca float*, align 8
  %y1.addr = alloca float*, align 8
  %r1.addr = alloca double*, align 8
  %d1.addr = alloca float*, align 8
  %span_.addr = alloca double*, align 8
  %s0 = alloca double, align 8
  %s1 = alloca double, align 8
  %w = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  %R0 = alloca double, align 8
  %X0 = alloca double, align 8
  %Y0 = alloca double, align 8
  %D0 = alloca double, align 8
  %R1 = alloca double, align 8
  %X1 = alloca double, align 8
  %Y1 = alloca double, align 8
  %D1 = alloca double, align 8
  store float* %x0, float** %x0.addr, align 8, !tbaa !1
  store float* %y0, float** %y0.addr, align 8, !tbaa !1
  store double* %r0, double** %r0.addr, align 8, !tbaa !1
  store float* %d0, float** %d0.addr, align 8, !tbaa !1
  store float* %x1, float** %x1.addr, align 8, !tbaa !1
  store float* %y1, float** %y1.addr, align 8, !tbaa !1
  store double* %r1, double** %r1.addr, align 8, !tbaa !1
  store float* %d1, float** %d1.addr, align 8, !tbaa !1
  store double* %span_, double** %span_.addr, align 8, !tbaa !1
  %0 = bitcast double* %s0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double*, double** %span_.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %1, i64 0
  %2 = load double, double* %arrayidx, align 8, !tbaa !65
  store double %2, double* %s0, align 8, !tbaa !65
  %3 = bitcast double* %s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load double*, double** %span_.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds double, double* %4, i64 1
  %5 = load double, double* %arrayidx1, align 8, !tbaa !65
  store double %5, double* %s1, align 8, !tbaa !65
  %6 = bitcast double* %w to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load double, double* %s0, align 8, !tbaa !65
  %cmp = fcmp olt double %7, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %s0, align 8, !tbaa !65
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load double, double* %s1, align 8, !tbaa !65
  %cmp2 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store double 0.000000e+00, double* %s1, align 8, !tbaa !65
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %9 = load double, double* %s0, align 8, !tbaa !65
  %cmp5 = fcmp ogt double %9, 1.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store double 1.000000e+00, double* %s0, align 8, !tbaa !65
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %10 = load double, double* %s1, align 8, !tbaa !65
  %cmp8 = fcmp ogt double %10, 1.000000e+00
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store double 1.000000e+00, double* %s1, align 8, !tbaa !65
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %11 = load double, double* %s1, align 8, !tbaa !65
  %12 = load double, double* %s0, align 8, !tbaa !65
  %sub = fsub double %11, %12
  store double %sub, double* %w, align 8, !tbaa !65
  %13 = load double, double* %w, align 8, !tbaa !65
  %cmp11 = fcmp oeq double %13, 0.000000e+00
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.10
  %14 = load double, double* %w, align 8, !tbaa !65
  %cmp14 = fcmp ogt double %14, 3.000000e-01
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.13
  %15 = bitcast double* %R0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load double*, double** %r0.addr, align 8, !tbaa !1
  %17 = load double, double* %16, align 8, !tbaa !65
  store double %17, double* %R0, align 8, !tbaa !65
  %18 = bitcast double* %X0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load float*, float** %x0.addr, align 8, !tbaa !1
  %20 = load float, float* %19, align 4, !tbaa !16
  %conv = fpext float %20 to double
  store double %conv, double* %X0, align 8, !tbaa !65
  %21 = bitcast double* %Y0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load float*, float** %y0.addr, align 8, !tbaa !1
  %23 = load float, float* %22, align 4, !tbaa !16
  %conv17 = fpext float %23 to double
  store double %conv17, double* %Y0, align 8, !tbaa !65
  %24 = bitcast double* %D0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load float*, float** %d0.addr, align 8, !tbaa !1
  %26 = load float, float* %25, align 4, !tbaa !16
  %conv18 = fpext float %26 to double
  store double %conv18, double* %D0, align 8, !tbaa !65
  %27 = bitcast double* %R1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load double*, double** %r1.addr, align 8, !tbaa !1
  %29 = load double, double* %28, align 8, !tbaa !65
  store double %29, double* %R1, align 8, !tbaa !65
  %30 = bitcast double* %X1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load float*, float** %x1.addr, align 8, !tbaa !1
  %32 = load float, float* %31, align 4, !tbaa !16
  %conv19 = fpext float %32 to double
  store double %conv19, double* %X1, align 8, !tbaa !65
  %33 = bitcast double* %Y1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load float*, float** %y1.addr, align 8, !tbaa !1
  %35 = load float, float* %34, align 4, !tbaa !16
  %conv20 = fpext float %35 to double
  store double %conv20, double* %Y1, align 8, !tbaa !65
  %36 = bitcast double* %D1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load float*, float** %d1.addr, align 8, !tbaa !1
  %38 = load float, float* %37, align 4, !tbaa !16
  %conv21 = fpext float %38 to double
  store double %conv21, double* %D1, align 8, !tbaa !65
  %39 = load double, double* %R0, align 8, !tbaa !65
  %40 = load double, double* %R1, align 8, !tbaa !65
  %41 = load double, double* %R0, align 8, !tbaa !65
  %sub22 = fsub double %40, %41
  %42 = load double, double* %s0, align 8, !tbaa !65
  %mul = fmul double %sub22, %42
  %add = fadd double %39, %mul
  %43 = load double*, double** %r0.addr, align 8, !tbaa !1
  store double %add, double* %43, align 8, !tbaa !65
  %44 = load double, double* %X0, align 8, !tbaa !65
  %45 = load double, double* %X1, align 8, !tbaa !65
  %46 = load double, double* %X0, align 8, !tbaa !65
  %sub23 = fsub double %45, %46
  %47 = load double, double* %s0, align 8, !tbaa !65
  %mul24 = fmul double %sub23, %47
  %add25 = fadd double %44, %mul24
  %conv26 = fptrunc double %add25 to float
  %48 = load float*, float** %x0.addr, align 8, !tbaa !1
  store float %conv26, float* %48, align 4, !tbaa !16
  %49 = load double, double* %Y0, align 8, !tbaa !65
  %50 = load double, double* %Y1, align 8, !tbaa !65
  %51 = load double, double* %Y0, align 8, !tbaa !65
  %sub27 = fsub double %50, %51
  %52 = load double, double* %s0, align 8, !tbaa !65
  %mul28 = fmul double %sub27, %52
  %add29 = fadd double %49, %mul28
  %conv30 = fptrunc double %add29 to float
  %53 = load float*, float** %y0.addr, align 8, !tbaa !1
  store float %conv30, float* %53, align 4, !tbaa !16
  %54 = load double, double* %D0, align 8, !tbaa !65
  %55 = load double, double* %D1, align 8, !tbaa !65
  %56 = load double, double* %D0, align 8, !tbaa !65
  %sub31 = fsub double %55, %56
  %57 = load double, double* %s0, align 8, !tbaa !65
  %mul32 = fmul double %sub31, %57
  %add33 = fadd double %54, %mul32
  %conv34 = fptrunc double %add33 to float
  %58 = load float*, float** %d0.addr, align 8, !tbaa !1
  store float %conv34, float* %58, align 4, !tbaa !16
  %59 = load double, double* %R0, align 8, !tbaa !65
  %60 = load double, double* %R1, align 8, !tbaa !65
  %61 = load double, double* %R0, align 8, !tbaa !65
  %sub35 = fsub double %60, %61
  %62 = load double, double* %s1, align 8, !tbaa !65
  %mul36 = fmul double %sub35, %62
  %add37 = fadd double %59, %mul36
  %63 = load double*, double** %r1.addr, align 8, !tbaa !1
  store double %add37, double* %63, align 8, !tbaa !65
  %64 = load double, double* %X0, align 8, !tbaa !65
  %65 = load double, double* %X1, align 8, !tbaa !65
  %66 = load double, double* %X0, align 8, !tbaa !65
  %sub38 = fsub double %65, %66
  %67 = load double, double* %s1, align 8, !tbaa !65
  %mul39 = fmul double %sub38, %67
  %add40 = fadd double %64, %mul39
  %conv41 = fptrunc double %add40 to float
  %68 = load float*, float** %x1.addr, align 8, !tbaa !1
  store float %conv41, float* %68, align 4, !tbaa !16
  %69 = load double, double* %Y0, align 8, !tbaa !65
  %70 = load double, double* %Y1, align 8, !tbaa !65
  %71 = load double, double* %Y0, align 8, !tbaa !65
  %sub42 = fsub double %70, %71
  %72 = load double, double* %s1, align 8, !tbaa !65
  %mul43 = fmul double %sub42, %72
  %add44 = fadd double %69, %mul43
  %conv45 = fptrunc double %add44 to float
  %73 = load float*, float** %y1.addr, align 8, !tbaa !1
  store float %conv45, float* %73, align 4, !tbaa !16
  %74 = load double, double* %D0, align 8, !tbaa !65
  %75 = load double, double* %D1, align 8, !tbaa !65
  %76 = load double, double* %D0, align 8, !tbaa !65
  %sub46 = fsub double %75, %76
  %77 = load double, double* %s1, align 8, !tbaa !65
  %mul47 = fmul double %sub46, %77
  %add48 = fadd double %74, %mul47
  %conv49 = fptrunc double %add48 to float
  %78 = load float*, float** %d1.addr, align 8, !tbaa !1
  store float %conv49, float* %78, align 4, !tbaa !16
  %79 = bitcast double* %D1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast double* %Y1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast double* %X1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast double* %R1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast double* %D0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast double* %Y0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast double* %X0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast double* %R0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15, %if.then.12
  %87 = bitcast double* %w to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast double* %s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast double* %s0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = load i32, i32* %retval
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @compute_radial_shading_span_extended(%struct.radial_shading_attrs_s* %rsa, double %r0, double %r1) #0 {
entry:
  %retval = alloca i32, align 4
  %rsa.addr = alloca %struct.radial_shading_attrs_s*, align 8
  %r0.addr = alloca double, align 8
  %r1.addr = alloca double, align 8
  %span_type0 = alloca i32, align 4
  %span_type1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.radial_shading_attrs_s* %rsa, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  store double %r0, double* %r0.addr, align 8, !tbaa !65
  store double %r1, double* %r1.addr, align 8, !tbaa !65
  %0 = bitcast i32* %span_type0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %span_type1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %3 = load double, double* %r0.addr, align 8, !tbaa !65
  %4 = load double, double* %r1.addr, align 8, !tbaa !65
  %call = call i32 @compute_radial_shading_span_extended_point(%struct.radial_shading_attrs_s* %2, double %3, double %4, i32 1) #6
  store i32 %call, i32* %span_type0, align 4, !tbaa !5
  %5 = load i32, i32* %span_type0, align 4, !tbaa !5
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %7 = load double, double* %r0.addr, align 8, !tbaa !65
  %8 = load double, double* %r1.addr, align 8, !tbaa !65
  %call1 = call i32 @compute_radial_shading_span_extended_point(%struct.radial_shading_attrs_s* %6, double %7, double %8, i32 2) #6
  store i32 %call1, i32* %span_type1, align 4, !tbaa !5
  %9 = load i32, i32* %span_type0, align 4, !tbaa !5
  %10 = load i32, i32* %span_type1, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %9, %10
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %12 = load double, double* %r0.addr, align 8, !tbaa !65
  %13 = load double, double* %r1.addr, align 8, !tbaa !65
  %call5 = call i32 @compute_radial_shading_span_extended_point(%struct.radial_shading_attrs_s* %11, double %12, double %13, i32 3) #6
  store i32 %call5, i32* %span_type1, align 4, !tbaa !5
  %14 = load i32, i32* %span_type0, align 4, !tbaa !5
  %15 = load i32, i32* %span_type1, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %14, %15
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %16 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %17 = load double, double* %r0.addr, align 8, !tbaa !65
  %18 = load double, double* %r1.addr, align 8, !tbaa !65
  %call9 = call i32 @compute_radial_shading_span_extended_point(%struct.radial_shading_attrs_s* %16, double %17, double %18, i32 4) #6
  store i32 %call9, i32* %span_type1, align 4, !tbaa !5
  %19 = load i32, i32* %span_type0, align 4, !tbaa !5
  %20 = load i32, i32* %span_type1, align 4, !tbaa !5
  %cmp10 = icmp ne i32 %19, %20
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %21 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %22 = load double, double* %r0.addr, align 8, !tbaa !65
  %23 = load double, double* %r1.addr, align 8, !tbaa !65
  call void @compute_radial_shading_span_extended_side(%struct.radial_shading_attrs_s* %21, double %22, double %23, i32 1) #6
  %24 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %25 = load double, double* %r0.addr, align 8, !tbaa !65
  %26 = load double, double* %r1.addr, align 8, !tbaa !65
  call void @compute_radial_shading_span_extended_side(%struct.radial_shading_attrs_s* %24, double %25, double %26, i32 2) #6
  %27 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %28 = load double, double* %r0.addr, align 8, !tbaa !65
  %29 = load double, double* %r1.addr, align 8, !tbaa !65
  call void @compute_radial_shading_span_extended_side(%struct.radial_shading_attrs_s* %27, double %28, double %29, i32 3) #6
  %30 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %31 = load double, double* %r0.addr, align 8, !tbaa !65
  %32 = load double, double* %r1.addr, align 8, !tbaa !65
  call void @compute_radial_shading_span_extended_side(%struct.radial_shading_attrs_s* %30, double %31, double %32, i32 4) #6
  %33 = load i32, i32* %span_type0, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.7, %if.then.3, %if.then
  %34 = bitcast i32* %span_type1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %span_type0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @compute_radial_shading_span_extended_point(%struct.radial_shading_attrs_s* %rsa, double %r0, double %r1, i32 %point_index) #0 {
entry:
  %retval = alloca i32, align 4
  %rsa.addr = alloca %struct.radial_shading_attrs_s*, align 8
  %r0.addr = alloca double, align 8
  %r1.addr = alloca double, align 8
  %point_index.addr = alloca i32, align 4
  %p1x = alloca double, align 8
  %p1y = alloca double, align 8
  %qx = alloca double, align 8
  %qy = alloca double, align 8
  %a = alloca double, align 8
  %have_root = alloca [2 x i32], align 4
  %t = alloca [2 x double], align 16
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %minushalfb = alloca double, align 8
  %c = alloca double, align 8
  %desc2 = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  %desc1 = alloca double, align 8
  store %struct.radial_shading_attrs_s* %rsa, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  store double %r0, double* %r0.addr, align 8, !tbaa !65
  store double %r1, double* %r1.addr, align 8, !tbaa !65
  store i32 %point_index, i32* %point_index.addr, align 4, !tbaa !5
  %0 = bitcast double* %p1x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %1, i32 0, i32 2
  %2 = load double, double* %x1, align 8, !tbaa !89
  %3 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %3, i32 0, i32 0
  %4 = load double, double* %x0, align 8, !tbaa !86
  %sub = fsub double %2, %4
  store double %sub, double* %p1x, align 8, !tbaa !65
  %5 = bitcast double* %p1y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %6, i32 0, i32 3
  %7 = load double, double* %y1, align 8, !tbaa !90
  %8 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %8, i32 0, i32 1
  %9 = load double, double* %y0, align 8, !tbaa !88
  %sub1 = fsub double %7, %9
  store double %sub1, double* %p1y, align 8, !tbaa !65
  %10 = bitcast double* %qx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %12, i32 0, i32 9
  %arrayidx = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  %13 = load double, double* %x, align 8, !tbaa !72
  %14 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %x02 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %14, i32 0, i32 0
  %15 = load double, double* %x02, align 8, !tbaa !86
  %sub3 = fsub double %13, %15
  store double %sub3, double* %qx, align 8, !tbaa !65
  %16 = bitcast double* %qy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %idxprom4 = sext i32 %17 to i64
  %18 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p5 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %18, i32 0, i32 9
  %arrayidx6 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p5, i32 0, i64 %idxprom4
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx6, i32 0, i32 1
  %19 = load double, double* %y, align 8, !tbaa !73
  %20 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %y07 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %20, i32 0, i32 1
  %21 = load double, double* %y07, align 8, !tbaa !88
  %sub8 = fsub double %19, %21
  store double %sub8, double* %qy, align 8, !tbaa !65
  %22 = bitcast double* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load double, double* %p1x, align 8, !tbaa !65
  %24 = load double, double* %p1x, align 8, !tbaa !65
  %mul = fmul double %23, %24
  %25 = load double, double* %p1y, align 8, !tbaa !65
  %26 = load double, double* %p1y, align 8, !tbaa !65
  %mul9 = fmul double %25, %26
  %add = fadd double %mul, %mul9
  %27 = load double, double* %r0.addr, align 8, !tbaa !65
  %28 = load double, double* %r1.addr, align 8, !tbaa !65
  %sub10 = fsub double %27, %28
  %29 = load double, double* %r0.addr, align 8, !tbaa !65
  %30 = load double, double* %r1.addr, align 8, !tbaa !65
  %sub11 = fsub double %29, %30
  %mul12 = fmul double %sub10, %sub11
  %sub13 = fsub double %add, %mul12
  store double %sub13, double* %a, align 8, !tbaa !65
  %31 = bitcast [2 x i32]* %have_root to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = bitcast [2 x i32]* %have_root to i8*
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 8, i32 4, i1 false)
  %33 = bitcast [2 x double]* %t to i8*
  call void @llvm.lifetime.start(i64 16, i8* %33) #1
  %34 = load double, double* %a, align 8, !tbaa !65
  %call = call double @fabs(double %34) #8
  %cmp = fcmp olt double %call, 1.000000e-08
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %35 = bitcast double* %cx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %x014 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %36, i32 0, i32 0
  %37 = load double, double* %x014, align 8, !tbaa !86
  %38 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %x115 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %38, i32 0, i32 2
  %39 = load double, double* %x115, align 8, !tbaa !89
  %40 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %x016 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %40, i32 0, i32 0
  %41 = load double, double* %x016, align 8, !tbaa !86
  %sub17 = fsub double %39, %41
  %42 = load double, double* %r0.addr, align 8, !tbaa !65
  %mul18 = fmul double %sub17, %42
  %43 = load double, double* %r1.addr, align 8, !tbaa !65
  %44 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub19 = fsub double %43, %44
  %div = fdiv double %mul18, %sub19
  %sub20 = fsub double %37, %div
  store double %sub20, double* %cx, align 8, !tbaa !65
  %45 = bitcast double* %cy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %y021 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %46, i32 0, i32 1
  %47 = load double, double* %y021, align 8, !tbaa !88
  %48 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %y122 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %48, i32 0, i32 3
  %49 = load double, double* %y122, align 8, !tbaa !90
  %50 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %y023 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %50, i32 0, i32 1
  %51 = load double, double* %y023, align 8, !tbaa !88
  %sub24 = fsub double %49, %51
  %52 = load double, double* %r0.addr, align 8, !tbaa !65
  %mul25 = fmul double %sub24, %52
  %53 = load double, double* %r1.addr, align 8, !tbaa !65
  %54 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub26 = fsub double %53, %54
  %div27 = fdiv double %mul25, %sub26
  %sub28 = fsub double %47, %div27
  store double %sub28, double* %cy, align 8, !tbaa !65
  %55 = load double, double* %qx, align 8, !tbaa !65
  %56 = load double, double* %qx, align 8, !tbaa !65
  %mul29 = fmul double %55, %56
  %57 = load double, double* %qy, align 8, !tbaa !65
  %58 = load double, double* %qy, align 8, !tbaa !65
  %mul30 = fmul double %57, %58
  %add31 = fadd double %mul29, %mul30
  %59 = load double, double* %cx, align 8, !tbaa !65
  %60 = load double, double* %qx, align 8, !tbaa !65
  %mul32 = fmul double %59, %60
  %61 = load double, double* %cy, align 8, !tbaa !65
  %62 = load double, double* %qy, align 8, !tbaa !65
  %mul33 = fmul double %61, %62
  %add34 = fadd double %mul32, %mul33
  %div35 = fdiv double %add31, %add34
  %div36 = fdiv double %div35, 2.000000e+00
  %arrayidx37 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i64 0
  store double %div36, double* %arrayidx37, align 8, !tbaa !65
  %arrayidx38 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root, i32 0, i64 0
  store i32 1, i32* %arrayidx38, align 4, !tbaa !5
  %63 = bitcast double* %cy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast double* %cx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  br label %if.end.77

if.else:                                          ; preds = %entry
  %65 = bitcast double* %minushalfb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %66 = load double, double* %r0.addr, align 8, !tbaa !65
  %67 = load double, double* %r1.addr, align 8, !tbaa !65
  %68 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub39 = fsub double %67, %68
  %mul40 = fmul double %66, %sub39
  %69 = load double, double* %p1x, align 8, !tbaa !65
  %70 = load double, double* %qx, align 8, !tbaa !65
  %mul41 = fmul double %69, %70
  %add42 = fadd double %mul40, %mul41
  %71 = load double, double* %p1y, align 8, !tbaa !65
  %72 = load double, double* %qy, align 8, !tbaa !65
  %mul43 = fmul double %71, %72
  %add44 = fadd double %add42, %mul43
  store double %add44, double* %minushalfb, align 8, !tbaa !65
  %73 = bitcast double* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  %74 = load double, double* %qx, align 8, !tbaa !65
  %75 = load double, double* %qx, align 8, !tbaa !65
  %mul45 = fmul double %74, %75
  %76 = load double, double* %qy, align 8, !tbaa !65
  %77 = load double, double* %qy, align 8, !tbaa !65
  %mul46 = fmul double %76, %77
  %add47 = fadd double %mul45, %mul46
  %78 = load double, double* %r0.addr, align 8, !tbaa !65
  %79 = load double, double* %r0.addr, align 8, !tbaa !65
  %mul48 = fmul double %78, %79
  %sub49 = fsub double %add47, %mul48
  store double %sub49, double* %c, align 8, !tbaa !65
  %80 = bitcast double* %desc2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  %81 = load double, double* %minushalfb, align 8, !tbaa !65
  %82 = load double, double* %minushalfb, align 8, !tbaa !65
  %mul50 = fmul double %81, %82
  %83 = load double, double* %a, align 8, !tbaa !65
  %84 = load double, double* %c, align 8, !tbaa !65
  %mul51 = fmul double %83, %84
  %sub52 = fsub double %mul50, %mul51
  store double %sub52, double* %desc2, align 8, !tbaa !65
  %85 = load double, double* %desc2, align 8, !tbaa !65
  %cmp53 = fcmp olt double %85, 0.000000e+00
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.55:                                       ; preds = %if.else
  %86 = bitcast double* %desc1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  %87 = load double, double* %desc2, align 8, !tbaa !65
  %call56 = call double @sqrt(double %87) #7
  store double %call56, double* %desc1, align 8, !tbaa !65
  %88 = load double, double* %a, align 8, !tbaa !65
  %cmp57 = fcmp ogt double %88, 0.000000e+00
  br i1 %cmp57, label %if.then.58, label %if.else.65

if.then.58:                                       ; preds = %if.else.55
  %89 = load double, double* %minushalfb, align 8, !tbaa !65
  %90 = load double, double* %desc1, align 8, !tbaa !65
  %sub59 = fsub double %89, %90
  %91 = load double, double* %a, align 8, !tbaa !65
  %div60 = fdiv double %sub59, %91
  %arrayidx61 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i64 0
  store double %div60, double* %arrayidx61, align 8, !tbaa !65
  %92 = load double, double* %minushalfb, align 8, !tbaa !65
  %93 = load double, double* %desc1, align 8, !tbaa !65
  %add62 = fadd double %92, %93
  %94 = load double, double* %a, align 8, !tbaa !65
  %div63 = fdiv double %add62, %94
  %arrayidx64 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i64 1
  store double %div63, double* %arrayidx64, align 8, !tbaa !65
  br label %if.end

if.else.65:                                       ; preds = %if.else.55
  %95 = load double, double* %minushalfb, align 8, !tbaa !65
  %96 = load double, double* %desc1, align 8, !tbaa !65
  %add66 = fadd double %95, %96
  %97 = load double, double* %a, align 8, !tbaa !65
  %div67 = fdiv double %add66, %97
  %arrayidx68 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i64 0
  store double %div67, double* %arrayidx68, align 8, !tbaa !65
  %98 = load double, double* %minushalfb, align 8, !tbaa !65
  %99 = load double, double* %desc1, align 8, !tbaa !65
  %sub69 = fsub double %98, %99
  %100 = load double, double* %a, align 8, !tbaa !65
  %div70 = fdiv double %sub69, %100
  %arrayidx71 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i64 1
  store double %div70, double* %arrayidx71, align 8, !tbaa !65
  br label %if.end

if.end:                                           ; preds = %if.else.65, %if.then.58
  %arrayidx72 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root, i32 0, i64 1
  store i32 1, i32* %arrayidx72, align 4, !tbaa !5
  %arrayidx73 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root, i32 0, i64 0
  store i32 1, i32* %arrayidx73, align 4, !tbaa !5
  %101 = bitcast double* %desc1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  br label %if.end.74

if.end.74:                                        ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.74, %if.then.54
  %102 = bitcast double* %desc2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast double* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast double* %minushalfb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.92 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.77

if.end.77:                                        ; preds = %cleanup.cont, %if.then
  %105 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %have_root, i32 0, i32 0
  %arraydecay78 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i32 0
  %106 = load double, double* %r0.addr, align 8, !tbaa !65
  %107 = load double, double* %r1.addr, align 8, !tbaa !65
  %108 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  call void @store_roots(%struct.radial_shading_attrs_s* %105, i32* %arraydecay, double* %arraydecay78, double %106, double %107, i32 %108, i32 1) #6
  %arrayidx79 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root, i32 0, i64 0
  %109 = load i32, i32* %arrayidx79, align 4, !tbaa !5
  %tobool = icmp ne i32 %109, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.83

land.lhs.true:                                    ; preds = %if.end.77
  %arrayidx80 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root, i32 0, i64 1
  %110 = load i32, i32* %arrayidx80, align 4, !tbaa !5
  %tobool81 = icmp ne i32 %110, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %land.lhs.true
  store i32 15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.83:                                        ; preds = %land.lhs.true, %if.end.77
  %arrayidx84 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root, i32 0, i64 0
  %111 = load i32, i32* %arrayidx84, align 4, !tbaa !5
  %tobool85 = icmp ne i32 %111, 0
  br i1 %tobool85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.83
  store i32 11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.87:                                        ; preds = %if.end.83
  %arrayidx88 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root, i32 0, i64 1
  %112 = load i32, i32* %arrayidx88, align 4, !tbaa !5
  %tobool89 = icmp ne i32 %112, 0
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.87
  store i32 13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.91:                                        ; preds = %if.end.87
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

cleanup.92:                                       ; preds = %if.end.91, %if.then.90, %if.then.86, %if.then.82, %cleanup
  %113 = bitcast [2 x double]* %t to i8*
  call void @llvm.lifetime.end(i64 16, i8* %113) #1
  %114 = bitcast [2 x i32]* %have_root to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast double* %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast double* %qy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast double* %qx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast double* %p1y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast double* %p1x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = load i32, i32* %retval
  ret i32 %120
}

; Function Attrs: nounwind uwtable
define internal void @compute_radial_shading_span_extended_side(%struct.radial_shading_attrs_s* %rsa, double %r0, double %r1, i32 %point_index) #0 {
entry:
  %rsa.addr = alloca %struct.radial_shading_attrs_s*, align 8
  %r0.addr = alloca double, align 8
  %r1.addr = alloca double, align 8
  %point_index.addr = alloca i32, align 4
  %cc = alloca double, align 8
  %c = alloca double, align 8
  %have_root = alloca [2 x i32], align 4
  %t = alloca [2 x double], align 16
  %by_x = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca double, align 8
  %d0 = alloca double, align 8
  %d1 = alloca double, align 8
  store %struct.radial_shading_attrs_s* %rsa, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  store double %r0, double* %r0.addr, align 8, !tbaa !65
  store double %r1, double* %r1.addr, align 8, !tbaa !65
  store i32 %point_index, i32* %point_index.addr, align 4, !tbaa !5
  %0 = bitcast double* %cc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [2 x i32]* %have_root to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast [2 x i32]* %have_root to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 8, i32 4, i1 false)
  %4 = bitcast [2 x double]* %t to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast i32* %by_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %7, i32 0, i32 9
  %arrayidx = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  %8 = load double, double* %x, align 8, !tbaa !72
  %9 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %add = add nsw i32 %9, 1
  %idxprom1 = sext i32 %add to i64
  %10 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %10, i32 0, i32 9
  %arrayidx3 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p2, i32 0, i64 %idxprom1
  %x4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx3, i32 0, i32 0
  %11 = load double, double* %x4, align 8, !tbaa !72
  %cmp = fcmp une double %8, %11
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %by_x, align 4, !tbaa !5
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %by_x, align 4, !tbaa !5
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %idxprom5 = sext i32 %14 to i64
  %15 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p6 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %15, i32 0, i32 9
  %arrayidx7 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p6, i32 0, i64 %idxprom5
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx7, i32 0, i32 0
  %16 = load double, double* %x8, align 8, !tbaa !72
  %17 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %17, i32 0, i32 0
  %18 = load double, double* %x0, align 8, !tbaa !86
  %sub = fsub double %16, %18
  store double %sub, double* %c, align 8, !tbaa !65
  %19 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %19, i32 0, i32 2
  %20 = load double, double* %x1, align 8, !tbaa !89
  %21 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %x09 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %21, i32 0, i32 0
  %22 = load double, double* %x09, align 8, !tbaa !86
  %sub10 = fsub double %20, %22
  store double %sub10, double* %cc, align 8, !tbaa !65
  br label %if.end

if.else:                                          ; preds = %entry
  %23 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %idxprom11 = sext i32 %23 to i64
  %24 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p12 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %24, i32 0, i32 9
  %arrayidx13 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p12, i32 0, i64 %idxprom11
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx13, i32 0, i32 1
  %25 = load double, double* %y, align 8, !tbaa !73
  %26 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %26, i32 0, i32 1
  %27 = load double, double* %y0, align 8, !tbaa !88
  %sub14 = fsub double %25, %27
  store double %sub14, double* %c, align 8, !tbaa !65
  %28 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %28, i32 0, i32 3
  %29 = load double, double* %y1, align 8, !tbaa !90
  %30 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %y015 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %30, i32 0, i32 1
  %31 = load double, double* %y015, align 8, !tbaa !88
  %sub16 = fsub double %29, %31
  store double %sub16, double* %cc, align 8, !tbaa !65
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %32 = load double, double* %c, align 8, !tbaa !65
  %33 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub17 = fsub double %32, %33
  %34 = load double, double* %cc, align 8, !tbaa !65
  %35 = load double, double* %r1.addr, align 8, !tbaa !65
  %add18 = fadd double %34, %35
  %36 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub19 = fsub double %add18, %36
  %div = fdiv double %sub17, %sub19
  %arrayidx20 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i64 0
  store double %div, double* %arrayidx20, align 8, !tbaa !65
  %37 = load double, double* %c, align 8, !tbaa !65
  %38 = load double, double* %r0.addr, align 8, !tbaa !65
  %add21 = fadd double %37, %38
  %39 = load double, double* %cc, align 8, !tbaa !65
  %40 = load double, double* %r1.addr, align 8, !tbaa !65
  %sub22 = fsub double %39, %40
  %41 = load double, double* %r0.addr, align 8, !tbaa !65
  %add23 = fadd double %sub22, %41
  %div24 = fdiv double %add21, %add23
  %arrayidx25 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i64 1
  store double %div24, double* %arrayidx25, align 8, !tbaa !65
  %arrayidx26 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i64 0
  %42 = load double, double* %arrayidx26, align 8, !tbaa !65
  %arrayidx27 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i64 1
  %43 = load double, double* %arrayidx27, align 8, !tbaa !65
  %cmp28 = fcmp ogt double %42, %43
  br i1 %cmp28, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.end
  %arrayidx31 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i64 0
  %44 = load double, double* %arrayidx31, align 8, !tbaa !65
  store double %44, double* %c, align 8, !tbaa !65
  %arrayidx32 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i64 1
  %45 = load double, double* %arrayidx32, align 8, !tbaa !65
  %arrayidx33 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i64 0
  store double %45, double* %arrayidx33, align 8, !tbaa !65
  %46 = load double, double* %c, align 8, !tbaa !65
  %arrayidx34 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i64 1
  store double %46, double* %arrayidx34, align 8, !tbaa !65
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.35
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %47, 2
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = bitcast double* %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = bitcast double* %d0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  %50 = bitcast double* %d1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = load i32, i32* %by_x, align 4, !tbaa !5
  %tobool38 = icmp ne i32 %51, 0
  br i1 %tobool38, label %if.then.39, label %if.else.57

if.then.39:                                       ; preds = %for.body
  %52 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %y140 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %52, i32 0, i32 3
  %53 = load double, double* %y140, align 8, !tbaa !90
  %54 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %y041 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %54, i32 0, i32 1
  %55 = load double, double* %y041, align 8, !tbaa !88
  %sub42 = fsub double %53, %55
  %56 = load double, double* %r0.addr, align 8, !tbaa !65
  %add43 = fadd double %sub42, %56
  %57 = load double, double* %r1.addr, align 8, !tbaa !65
  %58 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub44 = fsub double %57, %58
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %59 to i64
  %arrayidx46 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i64 %idxprom45
  %60 = load double, double* %arrayidx46, align 8, !tbaa !65
  %mul = fmul double %sub44, %60
  %add47 = fadd double %add43, %mul
  store double %add47, double* %d, align 8, !tbaa !65
  %61 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %idxprom48 = sext i32 %61 to i64
  %62 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p49 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %62, i32 0, i32 9
  %arrayidx50 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p49, i32 0, i64 %idxprom48
  %y51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx50, i32 0, i32 1
  %63 = load double, double* %y51, align 8, !tbaa !73
  store double %63, double* %d0, align 8, !tbaa !65
  %64 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %add52 = add nsw i32 %64, 1
  %idxprom53 = sext i32 %add52 to i64
  %65 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p54 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %65, i32 0, i32 9
  %arrayidx55 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p54, i32 0, i64 %idxprom53
  %y56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx55, i32 0, i32 1
  %66 = load double, double* %y56, align 8, !tbaa !73
  store double %66, double* %d1, align 8, !tbaa !65
  br label %if.end.76

if.else.57:                                       ; preds = %for.body
  %67 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %x158 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %67, i32 0, i32 2
  %68 = load double, double* %x158, align 8, !tbaa !89
  %69 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %x059 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %69, i32 0, i32 0
  %70 = load double, double* %x059, align 8, !tbaa !86
  %sub60 = fsub double %68, %70
  %71 = load double, double* %r0.addr, align 8, !tbaa !65
  %add61 = fadd double %sub60, %71
  %72 = load double, double* %r1.addr, align 8, !tbaa !65
  %73 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub62 = fsub double %72, %73
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %74 to i64
  %arrayidx64 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i64 %idxprom63
  %75 = load double, double* %arrayidx64, align 8, !tbaa !65
  %mul65 = fmul double %sub62, %75
  %add66 = fadd double %add61, %mul65
  store double %add66, double* %d, align 8, !tbaa !65
  %76 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %idxprom67 = sext i32 %76 to i64
  %77 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p68 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %77, i32 0, i32 9
  %arrayidx69 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p68, i32 0, i64 %idxprom67
  %x70 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx69, i32 0, i32 0
  %78 = load double, double* %x70, align 8, !tbaa !72
  store double %78, double* %d0, align 8, !tbaa !65
  %79 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %add71 = add nsw i32 %79, 1
  %idxprom72 = sext i32 %add71 to i64
  %80 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p73 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %80, i32 0, i32 9
  %arrayidx74 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p73, i32 0, i64 %idxprom72
  %x75 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx74, i32 0, i32 0
  %81 = load double, double* %x75, align 8, !tbaa !72
  store double %81, double* %d1, align 8, !tbaa !65
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.57, %if.then.39
  %82 = load double, double* %d1, align 8, !tbaa !65
  %83 = load double, double* %d0, align 8, !tbaa !65
  %cmp77 = fcmp ogt double %82, %83
  br i1 %cmp77, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.76
  %84 = load double, double* %d0, align 8, !tbaa !65
  %85 = load double, double* %d, align 8, !tbaa !65
  %cmp79 = fcmp ole double %84, %85
  br i1 %cmp79, label %land.lhs.true, label %if.end.91

land.lhs.true:                                    ; preds = %cond.true
  %86 = load double, double* %d, align 8, !tbaa !65
  %87 = load double, double* %d1, align 8, !tbaa !65
  %cmp81 = fcmp ole double %86, %87
  br i1 %cmp81, label %if.then.88, label %if.end.91

cond.false:                                       ; preds = %if.end.76
  %88 = load double, double* %d1, align 8, !tbaa !65
  %89 = load double, double* %d, align 8, !tbaa !65
  %cmp83 = fcmp ole double %88, %89
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.91

land.lhs.true.85:                                 ; preds = %cond.false
  %90 = load double, double* %d, align 8, !tbaa !65
  %91 = load double, double* %d0, align 8, !tbaa !65
  %cmp86 = fcmp ole double %90, %91
  br i1 %cmp86, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %land.lhs.true.85, %land.lhs.true
  %92 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom89 = sext i32 %92 to i64
  %arrayidx90 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root, i32 0, i64 %idxprom89
  store i32 1, i32* %arrayidx90, align 4, !tbaa !5
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %land.lhs.true.85, %cond.false, %land.lhs.true, %cond.true
  %93 = bitcast double* %d1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast double* %d0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast double* %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.91
  %96 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %96, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %97 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %have_root, i32 0, i32 0
  %arraydecay92 = getelementptr inbounds [2 x double], [2 x double]* %t, i32 0, i32 0
  %98 = load double, double* %r0.addr, align 8, !tbaa !65
  %99 = load double, double* %r1.addr, align 8, !tbaa !65
  %100 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  call void @store_roots(%struct.radial_shading_attrs_s* %97, i32* %arraydecay, double* %arraydecay92, double %98, double %99, i32 %100, i32 0) #6
  %101 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %by_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast [2 x double]* %t to i8*
  call void @llvm.lifetime.end(i64 16, i8* %103) #1
  %104 = bitcast [2 x i32]* %have_root to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast double* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast double* %cc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind uwtable
define internal void @store_roots(%struct.radial_shading_attrs_s* %rsa, i32* %have_root, double* %t, double %r0, double %r1, i32 %point_index, i32 %at_corner) #0 {
entry:
  %rsa.addr = alloca %struct.radial_shading_attrs_s*, align 8
  %have_root.addr = alloca i32*, align 8
  %t.addr = alloca double*, align 8
  %r0.addr = alloca double, align 8
  %r1.addr = alloca double, align 8
  %point_index.addr = alloca i32, align 4
  %at_corner.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %good_root = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.radial_shading_attrs_s* %rsa, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  store i32* %have_root, i32** %have_root.addr, align 8, !tbaa !1
  store double* %t, double** %t.addr, align 8, !tbaa !1
  store double %r0, double* %r0.addr, align 8, !tbaa !65
  store double %r1, double* %r1.addr, align 8, !tbaa !65
  store i32 %point_index, i32* %point_index.addr, align 4, !tbaa !5
  store i32 %at_corner, i32* %at_corner.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast i32* %good_root to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %have_root.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %6 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %have_apex = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %6, i32 0, i32 6
  %7 = load i32, i32* %have_apex, align 4, !tbaa !92
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end
  %8 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %apex = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %8, i32 0, i32 5
  %9 = load double, double* %apex, align 8, !tbaa !93
  %cmp2 = fcmp ole double %9, 0.000000e+00
  br i1 %cmp2, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.rhs
  %10 = load double, double* %r0.addr, align 8, !tbaa !65
  %cmp3 = fcmp oeq double %10, 0.000000e+00
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %lor.rhs
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %11 to i64
  %12 = load double*, double** %t.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds double, double* %12, i64 %idxprom4
  %13 = load double, double* %arrayidx5, align 8, !tbaa !65
  %14 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %apex6 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %14, i32 0, i32 5
  %15 = load double, double* %apex6, align 8, !tbaa !93
  %cmp7 = fcmp oge double %13, %15
  %conv = zext i1 %cmp7 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %16 to i64
  %17 = load double*, double** %t.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds double, double* %17, i64 %idxprom8
  %18 = load double, double* %arrayidx9, align 8, !tbaa !65
  %19 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %apex10 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %19, i32 0, i32 5
  %20 = load double, double* %apex10, align 8, !tbaa !93
  %cmp11 = fcmp ole double %18, %20
  %conv12 = zext i1 %cmp11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv12, %cond.false ]
  %tobool13 = icmp ne i32 %cond, 0
  br label %lor.end

lor.end:                                          ; preds = %cond.end, %if.end
  %21 = phi i1 [ true, %if.end ], [ %tobool13, %cond.end ]
  %lor.ext = zext i1 %21 to i32
  store i32 %lor.ext, i32* %good_root, align 4, !tbaa !5
  %22 = load i32, i32* %good_root, align 4, !tbaa !5
  %tobool14 = icmp ne i32 %22, 0
  br i1 %tobool14, label %if.then.15, label %if.end.68

if.then.15:                                       ; preds = %lor.end
  %23 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %24 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %25 to i64
  %26 = load double*, double** %t.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds double, double* %26, i64 %idxprom16
  %27 = load double, double* %arrayidx17, align 8, !tbaa !65
  %28 = load double, double* %r0.addr, align 8, !tbaa !65
  %29 = load double, double* %r1.addr, align 8, !tbaa !65
  %30 = load i32, i32* %at_corner.addr, align 4, !tbaa !5
  %31 = load i32, i32* %i, align 4, !tbaa !5
  call void @radial_shading_external_contact(%struct.radial_shading_attrs_s* %23, i32 %24, double %27, double %28, double %29, i32 %30, i32 %31) #6
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %32 to i64
  %33 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %have_root19 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %33, i32 0, i32 7
  %arrayidx20 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root19, i32 0, i64 %idxprom18
  %34 = load i32, i32* %arrayidx20, align 4, !tbaa !5
  %tobool21 = icmp ne i32 %34, 0
  br i1 %tobool21, label %if.else, label %if.then.22

if.then.22:                                       ; preds = %if.then.15
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %35 to i64
  %36 = load double*, double** %t.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds double, double* %36, i64 %idxprom23
  %37 = load double, double* %arrayidx24, align 8, !tbaa !65
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %38 to i64
  %39 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %39, i32 0, i32 4
  %arrayidx26 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span, i32 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx26, i32 0, i64 1
  store double %37, double* %arrayidx27, align 8, !tbaa !65
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %40 to i64
  %41 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span29 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %41, i32 0, i32 4
  %arrayidx30 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span29, i32 0, i64 %idxprom28
  %arrayidx31 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx30, i32 0, i64 0
  store double %37, double* %arrayidx31, align 8, !tbaa !65
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %42 to i64
  %43 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %have_root33 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %43, i32 0, i32 7
  %arrayidx34 = getelementptr inbounds [2 x i32], [2 x i32]* %have_root33, i32 0, i64 %idxprom32
  store i32 1, i32* %arrayidx34, align 4, !tbaa !5
  br label %if.end.67

if.else:                                          ; preds = %if.then.15
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %44 to i64
  %45 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span36 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %45, i32 0, i32 4
  %arrayidx37 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span36, i32 0, i64 %idxprom35
  %arrayidx38 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx37, i32 0, i64 0
  %46 = load double, double* %arrayidx38, align 8, !tbaa !65
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %47 to i64
  %48 = load double*, double** %t.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds double, double* %48, i64 %idxprom39
  %49 = load double, double* %arrayidx40, align 8, !tbaa !65
  %cmp41 = fcmp ogt double %46, %49
  br i1 %cmp41, label %if.then.43, label %if.end.50

if.then.43:                                       ; preds = %if.else
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %50 to i64
  %51 = load double*, double** %t.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds double, double* %51, i64 %idxprom44
  %52 = load double, double* %arrayidx45, align 8, !tbaa !65
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom46 = sext i32 %53 to i64
  %54 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span47 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %54, i32 0, i32 4
  %arrayidx48 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span47, i32 0, i64 %idxprom46
  %arrayidx49 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx48, i32 0, i64 0
  store double %52, double* %arrayidx49, align 8, !tbaa !65
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.43, %if.else
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %55 to i64
  %56 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span52 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %56, i32 0, i32 4
  %arrayidx53 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span52, i32 0, i64 %idxprom51
  %arrayidx54 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx53, i32 0, i64 1
  %57 = load double, double* %arrayidx54, align 8, !tbaa !65
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom55 = sext i32 %58 to i64
  %59 = load double*, double** %t.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds double, double* %59, i64 %idxprom55
  %60 = load double, double* %arrayidx56, align 8, !tbaa !65
  %cmp57 = fcmp olt double %57, %60
  br i1 %cmp57, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %if.end.50
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom60 = sext i32 %61 to i64
  %62 = load double*, double** %t.addr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds double, double* %62, i64 %idxprom60
  %63 = load double, double* %arrayidx61, align 8, !tbaa !65
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %64 to i64
  %65 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %span63 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %65, i32 0, i32 4
  %arrayidx64 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %span63, i32 0, i64 %idxprom62
  %arrayidx65 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx64, i32 0, i64 1
  store double %63, double* %arrayidx65, align 8, !tbaa !65
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.59, %if.end.50
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.22
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %lor.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.68, %if.then
  %66 = bitcast i32* %good_root to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @radial_shading_external_contact(%struct.radial_shading_attrs_s* %rsa, i32 %point_index, double %t, double %r0, double %r1, i32 %at_corner, i32 %root_index) #0 {
entry:
  %rsa.addr = alloca %struct.radial_shading_attrs_s*, align 8
  %point_index.addr = alloca i32, align 4
  %t.addr = alloca double, align 8
  %r0.addr = alloca double, align 8
  %r1.addr = alloca double, align 8
  %at_corner.addr = alloca i32, align 4
  %root_index.addr = alloca i32, align 4
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %rx = alloca double, align 8
  %ry = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %Dx = alloca double, align 8
  %Dy = alloca double, align 8
  %b1 = alloca i32, align 4
  %b2 = alloca i32, align 4
  store %struct.radial_shading_attrs_s* %rsa, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  store i32 %point_index, i32* %point_index.addr, align 4, !tbaa !5
  store double %t, double* %t.addr, align 8, !tbaa !65
  store double %r0, double* %r0.addr, align 8, !tbaa !65
  store double %r1, double* %r1.addr, align 8, !tbaa !65
  store i32 %at_corner, i32* %at_corner.addr, align 4, !tbaa !5
  store i32 %root_index, i32* %root_index.addr, align 4, !tbaa !5
  %0 = bitcast double* %cx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %1, i32 0, i32 0
  %2 = load double, double* %x0, align 8, !tbaa !86
  %3 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %3, i32 0, i32 2
  %4 = load double, double* %x1, align 8, !tbaa !89
  %5 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %x01 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %5, i32 0, i32 0
  %6 = load double, double* %x01, align 8, !tbaa !86
  %sub = fsub double %4, %6
  %7 = load double, double* %t.addr, align 8, !tbaa !65
  %mul = fmul double %sub, %7
  %add = fadd double %2, %mul
  store double %add, double* %cx, align 8, !tbaa !65
  %8 = bitcast double* %cy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %9, i32 0, i32 1
  %10 = load double, double* %y0, align 8, !tbaa !88
  %11 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %11, i32 0, i32 3
  %12 = load double, double* %y1, align 8, !tbaa !90
  %13 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %y02 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %13, i32 0, i32 1
  %14 = load double, double* %y02, align 8, !tbaa !88
  %sub3 = fsub double %12, %14
  %15 = load double, double* %t.addr, align 8, !tbaa !65
  %mul4 = fmul double %sub3, %15
  %add5 = fadd double %10, %mul4
  store double %add5, double* %cy, align 8, !tbaa !65
  %16 = bitcast double* %rx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %18, i32 0, i32 9
  %arrayidx = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx, i32 0, i32 0
  %19 = load double, double* %x, align 8, !tbaa !72
  %20 = load double, double* %cx, align 8, !tbaa !65
  %sub6 = fsub double %19, %20
  store double %sub6, double* %rx, align 8, !tbaa !65
  %21 = bitcast double* %ry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %idxprom7 = sext i32 %22 to i64
  %23 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p8 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %23, i32 0, i32 9
  %arrayidx9 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p8, i32 0, i64 %idxprom7
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx9, i32 0, i32 1
  %24 = load double, double* %y, align 8, !tbaa !73
  %25 = load double, double* %cy, align 8, !tbaa !65
  %sub10 = fsub double %24, %25
  store double %sub10, double* %ry, align 8, !tbaa !65
  %26 = bitcast double* %dx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %sub11 = sub nsw i32 %27, 1
  %idxprom12 = sext i32 %sub11 to i64
  %28 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p13 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %28, i32 0, i32 9
  %arrayidx14 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p13, i32 0, i64 %idxprom12
  %x15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx14, i32 0, i32 0
  %29 = load double, double* %x15, align 8, !tbaa !72
  %30 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %idxprom16 = sext i32 %30 to i64
  %31 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p17 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %31, i32 0, i32 9
  %arrayidx18 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p17, i32 0, i64 %idxprom16
  %x19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx18, i32 0, i32 0
  %32 = load double, double* %x19, align 8, !tbaa !72
  %sub20 = fsub double %29, %32
  store double %sub20, double* %dx, align 8, !tbaa !65
  %33 = bitcast double* %dy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %sub21 = sub nsw i32 %34, 1
  %idxprom22 = sext i32 %sub21 to i64
  %35 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p23 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %35, i32 0, i32 9
  %arrayidx24 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p23, i32 0, i64 %idxprom22
  %y25 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx24, i32 0, i32 1
  %36 = load double, double* %y25, align 8, !tbaa !73
  %37 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %idxprom26 = sext i32 %37 to i64
  %38 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p27 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %38, i32 0, i32 9
  %arrayidx28 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p27, i32 0, i64 %idxprom26
  %y29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx28, i32 0, i32 1
  %39 = load double, double* %y29, align 8, !tbaa !73
  %sub30 = fsub double %36, %39
  store double %sub30, double* %dy, align 8, !tbaa !65
  %40 = load i32, i32* %at_corner.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %41 = bitcast double* %Dx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %add31 = add nsw i32 %42, 1
  %idxprom32 = sext i32 %add31 to i64
  %43 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p33 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %43, i32 0, i32 9
  %arrayidx34 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p33, i32 0, i64 %idxprom32
  %x35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx34, i32 0, i32 0
  %44 = load double, double* %x35, align 8, !tbaa !72
  %45 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %idxprom36 = sext i32 %45 to i64
  %46 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p37 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %46, i32 0, i32 9
  %arrayidx38 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p37, i32 0, i64 %idxprom36
  %x39 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx38, i32 0, i32 0
  %47 = load double, double* %x39, align 8, !tbaa !72
  %sub40 = fsub double %44, %47
  store double %sub40, double* %Dx, align 8, !tbaa !65
  %48 = bitcast double* %Dy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %add41 = add nsw i32 %49, 1
  %idxprom42 = sext i32 %add41 to i64
  %50 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p43 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %50, i32 0, i32 9
  %arrayidx44 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p43, i32 0, i64 %idxprom42
  %y45 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx44, i32 0, i32 1
  %51 = load double, double* %y45, align 8, !tbaa !73
  %52 = load i32, i32* %point_index.addr, align 4, !tbaa !5
  %idxprom46 = sext i32 %52 to i64
  %53 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %p47 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %53, i32 0, i32 9
  %arrayidx48 = getelementptr inbounds [6 x %struct.gs_point_s], [6 x %struct.gs_point_s]* %p47, i32 0, i64 %idxprom46
  %y49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %arrayidx48, i32 0, i32 1
  %54 = load double, double* %y49, align 8, !tbaa !73
  %sub50 = fsub double %51, %54
  store double %sub50, double* %Dy, align 8, !tbaa !65
  %55 = bitcast i32* %b1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = load double, double* %dx, align 8, !tbaa !65
  %57 = load double, double* %rx, align 8, !tbaa !65
  %mul51 = fmul double %56, %57
  %58 = load double, double* %dy, align 8, !tbaa !65
  %59 = load double, double* %ry, align 8, !tbaa !65
  %mul52 = fmul double %58, %59
  %add53 = fadd double %mul51, %mul52
  %cmp = fcmp oge double %add53, 0.000000e+00
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %b1, align 4, !tbaa !5
  %60 = bitcast i32* %b2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load double, double* %Dx, align 8, !tbaa !65
  %62 = load double, double* %rx, align 8, !tbaa !65
  %mul54 = fmul double %61, %62
  %63 = load double, double* %Dy, align 8, !tbaa !65
  %64 = load double, double* %ry, align 8, !tbaa !65
  %mul55 = fmul double %63, %64
  %add56 = fadd double %mul54, %mul55
  %cmp57 = fcmp oge double %add56, 0.000000e+00
  %conv58 = zext i1 %cmp57 to i32
  store i32 %conv58, i32* %b2, align 4, !tbaa !5
  %65 = load i32, i32* %b1, align 4, !tbaa !5
  %66 = load i32, i32* %b2, align 4, !tbaa !5
  %and = and i32 %65, %66
  %tobool59 = icmp ne i32 %and, 0
  br i1 %tobool59, label %if.then.60, label %if.end

if.then.60:                                       ; preds = %if.then
  %67 = load i32, i32* %root_index.addr, align 4, !tbaa !5
  %idxprom61 = sext i32 %67 to i64
  %68 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %outer_contact = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %68, i32 0, i32 8
  %arrayidx62 = getelementptr inbounds [2 x i32], [2 x i32]* %outer_contact, i32 0, i64 %idxprom61
  store i32 1, i32* %arrayidx62, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.60, %if.then
  %69 = bitcast i32* %b2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %b1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast double* %Dy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast double* %Dx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  br label %if.end.73

if.else:                                          ; preds = %entry
  %73 = load double, double* %rx, align 8, !tbaa !65
  %74 = load double, double* %dy, align 8, !tbaa !65
  %mul63 = fmul double %73, %74
  %75 = load double, double* %ry, align 8, !tbaa !65
  %76 = load double, double* %dx, align 8, !tbaa !65
  %mul64 = fmul double %75, %76
  %sub65 = fsub double %mul63, %mul64
  %cmp66 = fcmp olt double %sub65, 0.000000e+00
  br i1 %cmp66, label %if.then.68, label %if.end.72

if.then.68:                                       ; preds = %if.else
  %77 = load i32, i32* %root_index.addr, align 4, !tbaa !5
  %idxprom69 = sext i32 %77 to i64
  %78 = load %struct.radial_shading_attrs_s*, %struct.radial_shading_attrs_s** %rsa.addr, align 8, !tbaa !1
  %outer_contact70 = getelementptr inbounds %struct.radial_shading_attrs_s, %struct.radial_shading_attrs_s* %78, i32 0, i32 8
  %arrayidx71 = getelementptr inbounds [2 x i32], [2 x i32]* %outer_contact70, i32 0, i64 %idxprom69
  store i32 1, i32* %arrayidx71, align 4, !tbaa !5
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.68, %if.else
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end
  %79 = bitcast double* %dy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast double* %dx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast double* %ry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast double* %rx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast double* %cy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast double* %cx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @R_rect_radius(%struct.gs_rect_s* %rect, double %x0, double %y0) #0 {
entry:
  %rect.addr = alloca %struct.gs_rect_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %d = alloca double, align 8
  %dd = alloca double, align 8
  store %struct.gs_rect_s* %rect, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !65
  store double %y0, double* %y0.addr, align 8, !tbaa !65
  %0 = bitcast double* %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %dd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %2, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %3 = load double, double* %x, align 8, !tbaa !17
  %4 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub = fsub double %3, %4
  %5 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %5, i32 0, i32 0
  %x2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %6 = load double, double* %x2, align 8, !tbaa !17
  %7 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub3 = fsub double %6, %7
  %mul = fmul double %sub, %sub3
  %8 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p4 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %8, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p4, i32 0, i32 1
  %9 = load double, double* %y, align 8, !tbaa !19
  %10 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub5 = fsub double %9, %10
  %11 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p6 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %11, i32 0, i32 0
  %y7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p6, i32 0, i32 1
  %12 = load double, double* %y7, align 8, !tbaa !19
  %13 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub8 = fsub double %12, %13
  %mul9 = fmul double %sub5, %sub8
  %add = fadd double %mul, %mul9
  %call = call double @sqrt(double %add) #7
  store double %call, double* %dd, align 8, !tbaa !65
  %14 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p10 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %14, i32 0, i32 0
  %x11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p10, i32 0, i32 0
  %15 = load double, double* %x11, align 8, !tbaa !17
  %16 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub12 = fsub double %15, %16
  %17 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p13 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %17, i32 0, i32 0
  %x14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p13, i32 0, i32 0
  %18 = load double, double* %x14, align 8, !tbaa !17
  %19 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub15 = fsub double %18, %19
  %mul16 = fmul double %sub12, %sub15
  %20 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %20, i32 0, i32 1
  %y17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 1
  %21 = load double, double* %y17, align 8, !tbaa !20
  %22 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub18 = fsub double %21, %22
  %23 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q19 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %23, i32 0, i32 1
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q19, i32 0, i32 1
  %24 = load double, double* %y20, align 8, !tbaa !20
  %25 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub21 = fsub double %24, %25
  %mul22 = fmul double %sub18, %sub21
  %add23 = fadd double %mul16, %mul22
  %call24 = call double @sqrt(double %add23) #7
  store double %call24, double* %d, align 8, !tbaa !65
  %26 = load double, double* %dd, align 8, !tbaa !65
  %27 = load double, double* %d, align 8, !tbaa !65
  %cmp = fcmp ogt double %26, %27
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %28 = load double, double* %dd, align 8, !tbaa !65
  br label %cond.end

cond.false:                                       ; preds = %entry
  %29 = load double, double* %d, align 8, !tbaa !65
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %28, %cond.true ], [ %29, %cond.false ]
  store double %cond, double* %dd, align 8, !tbaa !65
  %30 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q25 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %30, i32 0, i32 1
  %x26 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q25, i32 0, i32 0
  %31 = load double, double* %x26, align 8, !tbaa !18
  %32 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub27 = fsub double %31, %32
  %33 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q28 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %33, i32 0, i32 1
  %x29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q28, i32 0, i32 0
  %34 = load double, double* %x29, align 8, !tbaa !18
  %35 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub30 = fsub double %34, %35
  %mul31 = fmul double %sub27, %sub30
  %36 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q32 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %36, i32 0, i32 1
  %y33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q32, i32 0, i32 1
  %37 = load double, double* %y33, align 8, !tbaa !20
  %38 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub34 = fsub double %37, %38
  %39 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q35 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %39, i32 0, i32 1
  %y36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q35, i32 0, i32 1
  %40 = load double, double* %y36, align 8, !tbaa !20
  %41 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub37 = fsub double %40, %41
  %mul38 = fmul double %sub34, %sub37
  %add39 = fadd double %mul31, %mul38
  %call40 = call double @sqrt(double %add39) #7
  store double %call40, double* %d, align 8, !tbaa !65
  %42 = load double, double* %dd, align 8, !tbaa !65
  %43 = load double, double* %d, align 8, !tbaa !65
  %cmp41 = fcmp ogt double %42, %43
  br i1 %cmp41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.end
  %44 = load double, double* %dd, align 8, !tbaa !65
  br label %cond.end.44

cond.false.43:                                    ; preds = %cond.end
  %45 = load double, double* %d, align 8, !tbaa !65
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.42
  %cond45 = phi double [ %44, %cond.true.42 ], [ %45, %cond.false.43 ]
  store double %cond45, double* %dd, align 8, !tbaa !65
  %46 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q46 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %46, i32 0, i32 1
  %x47 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q46, i32 0, i32 0
  %47 = load double, double* %x47, align 8, !tbaa !18
  %48 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub48 = fsub double %47, %48
  %49 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q49 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %49, i32 0, i32 1
  %x50 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q49, i32 0, i32 0
  %50 = load double, double* %x50, align 8, !tbaa !18
  %51 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub51 = fsub double %50, %51
  %mul52 = fmul double %sub48, %sub51
  %52 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p53 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %52, i32 0, i32 0
  %y54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p53, i32 0, i32 1
  %53 = load double, double* %y54, align 8, !tbaa !19
  %54 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub55 = fsub double %53, %54
  %55 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p56 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %55, i32 0, i32 0
  %y57 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p56, i32 0, i32 1
  %56 = load double, double* %y57, align 8, !tbaa !19
  %57 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub58 = fsub double %56, %57
  %mul59 = fmul double %sub55, %sub58
  %add60 = fadd double %mul52, %mul59
  %call61 = call double @sqrt(double %add60) #7
  store double %call61, double* %d, align 8, !tbaa !65
  %58 = load double, double* %dd, align 8, !tbaa !65
  %59 = load double, double* %d, align 8, !tbaa !65
  %cmp62 = fcmp ogt double %58, %59
  br i1 %cmp62, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.end.44
  %60 = load double, double* %dd, align 8, !tbaa !65
  br label %cond.end.65

cond.false.64:                                    ; preds = %cond.end.44
  %61 = load double, double* %d, align 8, !tbaa !65
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.63
  %cond66 = phi double [ %60, %cond.true.63 ], [ %61, %cond.false.64 ]
  store double %cond66, double* %dd, align 8, !tbaa !65
  %62 = load double, double* %dd, align 8, !tbaa !65
  %63 = bitcast double* %dd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast double* %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  ret double %62
}

; Function Attrs: nounwind uwtable
define internal i32 @R_obtuse_cone(%struct.patch_fill_state_s* %pfs, %struct.gs_rect_s* %rect, double %x0, double %y0, double %r0, double %x1, double %y1, double %r1, double %t0, double %r_rect, i32 %inwards) #0 {
entry:
  %retval = alloca i32, align 4
  %pfs.addr = alloca %struct.patch_fill_state_s*, align 8
  %rect.addr = alloca %struct.gs_rect_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %r0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %r1.addr = alloca double, align 8
  %t0.addr = alloca double, align 8
  %r_rect.addr = alloca double, align 8
  %inwards.addr = alloca i32, align 4
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %dr = alloca double, align 8
  %d = alloca double, align 8
  %r = alloca double, align 8
  %ax = alloca double, align 8
  %ay = alloca double, align 8
  %as = alloca double, align 8
  %g0 = alloca double, align 8
  %code = alloca i32, align 4
  %p0 = alloca %struct.gs_point_s, align 8
  %p1 = alloca %struct.gs_point_s, align 8
  %p2 = alloca %struct.gs_point_s, align 8
  %cleanup.dest.slot = alloca i32
  %es = alloca double, align 8
  %er = alloca double, align 8
  %ex = alloca double, align 8
  %ey = alloca double, align 8
  store %struct.patch_fill_state_s* %pfs, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %rect, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !65
  store double %y0, double* %y0.addr, align 8, !tbaa !65
  store double %r0, double* %r0.addr, align 8, !tbaa !65
  store double %x1, double* %x1.addr, align 8, !tbaa !65
  store double %y1, double* %y1.addr, align 8, !tbaa !65
  store double %r1, double* %r1.addr, align 8, !tbaa !65
  store double %t0, double* %t0.addr, align 8, !tbaa !65
  store double %r_rect, double* %r_rect.addr, align 8, !tbaa !65
  store i32 %inwards, i32* %inwards.addr, align 4, !tbaa !5
  %0 = bitcast double* %dx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double, double* %x1.addr, align 8, !tbaa !65
  %2 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub = fsub double %1, %2
  store double %sub, double* %dx, align 8, !tbaa !65
  %3 = bitcast double* %dy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load double, double* %y1.addr, align 8, !tbaa !65
  %5 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub1 = fsub double %4, %5
  store double %sub1, double* %dy, align 8, !tbaa !65
  %6 = bitcast double* %dr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load double, double* %r1.addr, align 8, !tbaa !65
  %8 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub2 = fsub double %7, %8
  %cmp = fcmp olt double %sub2, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load double, double* %r1.addr, align 8, !tbaa !65
  %10 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub3 = fsub double %9, %10
  %sub4 = fsub double -0.000000e+00, %sub3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load double, double* %r1.addr, align 8, !tbaa !65
  %12 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub5 = fsub double %11, %12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub4, %cond.true ], [ %sub5, %cond.false ]
  store double %cond, double* %dr, align 8, !tbaa !65
  %13 = bitcast double* %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load double, double* %dx, align 8, !tbaa !65
  %15 = load double, double* %dx, align 8, !tbaa !65
  %mul = fmul double %14, %15
  %16 = load double, double* %dy, align 8, !tbaa !65
  %17 = load double, double* %dy, align 8, !tbaa !65
  %mul6 = fmul double %16, %17
  %add = fadd double %mul, %mul6
  %call = call double @sqrt(double %add) #7
  store double %call, double* %d, align 8, !tbaa !65
  %18 = bitcast double* %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load double, double* %r_rect.addr, align 8, !tbaa !65
  %mul7 = fmul double %19, 1.414300e+00
  store double %mul7, double* %r, align 8, !tbaa !65
  %20 = bitcast double* %ax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast double* %ay to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast double* %as to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast double* %g0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load double, double* %r0.addr, align 8, !tbaa !65
  %26 = load double, double* %r0.addr, align 8, !tbaa !65
  %27 = load double, double* %r1.addr, align 8, !tbaa !65
  %sub8 = fsub double %26, %27
  %div = fdiv double %25, %sub8
  store double %div, double* %as, align 8, !tbaa !65
  %28 = load double, double* %x0.addr, align 8, !tbaa !65
  %29 = load double, double* %x1.addr, align 8, !tbaa !65
  %30 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub9 = fsub double %29, %30
  %31 = load double, double* %as, align 8, !tbaa !65
  %mul10 = fmul double %sub9, %31
  %add11 = fadd double %28, %mul10
  store double %add11, double* %ax, align 8, !tbaa !65
  %32 = load double, double* %y0.addr, align 8, !tbaa !65
  %33 = load double, double* %y1.addr, align 8, !tbaa !65
  %34 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub12 = fsub double %33, %34
  %35 = load double, double* %as, align 8, !tbaa !65
  %mul13 = fmul double %sub12, %35
  %add14 = fadd double %32, %mul13
  store double %add14, double* %ay, align 8, !tbaa !65
  %36 = load double, double* %dx, align 8, !tbaa !65
  %37 = load double, double* %dx, align 8, !tbaa !65
  %mul15 = fmul double %36, %37
  %38 = load double, double* %dy, align 8, !tbaa !65
  %39 = load double, double* %dy, align 8, !tbaa !65
  %mul16 = fmul double %38, %39
  %add17 = fadd double %mul15, %mul16
  %40 = load double, double* %dr, align 8, !tbaa !65
  %41 = load double, double* %dr, align 8, !tbaa !65
  %mul18 = fmul double %40, %41
  %sub19 = fsub double %add17, %mul18
  %call20 = call double @sqrt(double %sub19) #7
  %42 = load double, double* %as, align 8, !tbaa !65
  %mul21 = fmul double %call20, %42
  store double %mul21, double* %g0, align 8, !tbaa !65
  %43 = load double, double* %g0, align 8, !tbaa !65
  %44 = load double, double* %r0.addr, align 8, !tbaa !65
  %mul22 = fmul double 1.000000e-07, %44
  %cmp23 = fcmp olt double %43, %mul22
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %45 = bitcast %struct.gs_point_s* %p0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %45) #1
  %46 = bitcast %struct.gs_point_s* %p1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %46) #1
  %47 = bitcast %struct.gs_point_s* %p2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %47) #1
  %48 = load double, double* %ax, align 8, !tbaa !65
  %49 = load double, double* %dy, align 8, !tbaa !65
  %50 = load double, double* %r, align 8, !tbaa !65
  %mul24 = fmul double %49, %50
  %51 = load double, double* %d, align 8, !tbaa !65
  %div25 = fdiv double %mul24, %51
  %sub26 = fsub double %48, %div25
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  store double %sub26, double* %x, align 8, !tbaa !72
  %52 = load double, double* %ay, align 8, !tbaa !65
  %53 = load double, double* %dx, align 8, !tbaa !65
  %54 = load double, double* %r, align 8, !tbaa !65
  %mul27 = fmul double %53, %54
  %55 = load double, double* %d, align 8, !tbaa !65
  %div28 = fdiv double %mul27, %55
  %add29 = fadd double %52, %div28
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  store double %add29, double* %y, align 8, !tbaa !73
  %56 = load double, double* %ax, align 8, !tbaa !65
  %57 = load double, double* %dx, align 8, !tbaa !65
  %58 = load double, double* %r, align 8, !tbaa !65
  %mul30 = fmul double %57, %58
  %59 = load double, double* %d, align 8, !tbaa !65
  %div31 = fdiv double %mul30, %59
  %sub32 = fsub double %56, %div31
  %x33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  store double %sub32, double* %x33, align 8, !tbaa !72
  %60 = load double, double* %ay, align 8, !tbaa !65
  %61 = load double, double* %dy, align 8, !tbaa !65
  %62 = load double, double* %r, align 8, !tbaa !65
  %mul34 = fmul double %61, %62
  %63 = load double, double* %d, align 8, !tbaa !65
  %div35 = fdiv double %mul34, %63
  %sub36 = fsub double %60, %div35
  %y37 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  store double %sub36, double* %y37, align 8, !tbaa !73
  %64 = load double, double* %ax, align 8, !tbaa !65
  %65 = load double, double* %dy, align 8, !tbaa !65
  %66 = load double, double* %r, align 8, !tbaa !65
  %mul38 = fmul double %65, %66
  %67 = load double, double* %d, align 8, !tbaa !65
  %div39 = fdiv double %mul38, %67
  %add40 = fadd double %64, %div39
  %x41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  store double %add40, double* %x41, align 8, !tbaa !72
  %68 = load double, double* %ay, align 8, !tbaa !65
  %69 = load double, double* %dx, align 8, !tbaa !65
  %70 = load double, double* %r, align 8, !tbaa !65
  %mul42 = fmul double %69, %70
  %71 = load double, double* %d, align 8, !tbaa !65
  %div43 = fdiv double %mul42, %71
  %sub44 = fsub double %68, %div43
  %y45 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  store double %sub44, double* %y45, align 8, !tbaa !73
  %72 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %73 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %74 = load double, double* %ax, align 8, !tbaa !65
  %75 = load double, double* %ay, align 8, !tbaa !65
  %x46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 0
  %76 = load double, double* %x46, align 8, !tbaa !72
  %y47 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p0, i32 0, i32 1
  %77 = load double, double* %y47, align 8, !tbaa !73
  %x48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %78 = load double, double* %x48, align 8, !tbaa !72
  %y49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %79 = load double, double* %y49, align 8, !tbaa !73
  %80 = load double, double* %t0.addr, align 8, !tbaa !65
  %call50 = call i32 @R_fill_triangle_new(%struct.patch_fill_state_s* %72, %struct.gs_rect_s* %73, double %74, double %75, double %76, double %77, double %78, double %79, double %80) #6
  store i32 %call50, i32* %code, align 4, !tbaa !5
  %81 = load i32, i32* %code, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %81, 0
  br i1 %cmp51, label %if.then.52, label %if.end

if.then.52:                                       ; preds = %if.then
  %82 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %83 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %84 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %85 = load double, double* %ax, align 8, !tbaa !65
  %86 = load double, double* %ay, align 8, !tbaa !65
  %x53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 0
  %87 = load double, double* %x53, align 8, !tbaa !72
  %y54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p1, i32 0, i32 1
  %88 = load double, double* %y54, align 8, !tbaa !73
  %x55 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 0
  %89 = load double, double* %x55, align 8, !tbaa !72
  %y56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %90 = load double, double* %y56, align 8, !tbaa !73
  %91 = load double, double* %t0.addr, align 8, !tbaa !65
  %call57 = call i32 @R_fill_triangle_new(%struct.patch_fill_state_s* %83, %struct.gs_rect_s* %84, double %85, double %86, double %87, double %88, double %89, double %90, double %91) #6
  store i32 %call57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.52
  %92 = bitcast %struct.gs_point_s* %p2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %92) #1
  %93 = bitcast %struct.gs_point_s* %p1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %93) #1
  %94 = bitcast %struct.gs_point_s* %p0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %94) #1
  br label %cleanup.80

if.else:                                          ; preds = %cond.end
  %95 = bitcast double* %es to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  %96 = bitcast double* %er to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  %97 = bitcast double* %ex to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #1
  %98 = bitcast double* %ey to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  %99 = load double, double* %as, align 8, !tbaa !65
  %100 = load double, double* %as, align 8, !tbaa !65
  %101 = load double, double* %r, align 8, !tbaa !65
  %mul60 = fmul double %100, %101
  %102 = load double, double* %g0, align 8, !tbaa !65
  %div61 = fdiv double %mul60, %102
  %sub62 = fsub double %99, %div61
  store double %sub62, double* %es, align 8, !tbaa !65
  %103 = load double, double* %r, align 8, !tbaa !65
  %104 = load double, double* %r0.addr, align 8, !tbaa !65
  %mul63 = fmul double %103, %104
  %105 = load double, double* %g0, align 8, !tbaa !65
  %div64 = fdiv double %mul63, %105
  store double %div64, double* %er, align 8, !tbaa !65
  %106 = load double, double* %x0.addr, align 8, !tbaa !65
  %107 = load double, double* %dx, align 8, !tbaa !65
  %108 = load double, double* %es, align 8, !tbaa !65
  %mul65 = fmul double %107, %108
  %add66 = fadd double %106, %mul65
  store double %add66, double* %ex, align 8, !tbaa !65
  %109 = load double, double* %y0.addr, align 8, !tbaa !65
  %110 = load double, double* %dy, align 8, !tbaa !65
  %111 = load double, double* %es, align 8, !tbaa !65
  %mul67 = fmul double %110, %111
  %add68 = fadd double %109, %mul67
  store double %add68, double* %ey, align 8, !tbaa !65
  %112 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %113 = load double, double* %x0.addr, align 8, !tbaa !65
  %114 = load double, double* %y0.addr, align 8, !tbaa !65
  %115 = load double, double* %r0.addr, align 8, !tbaa !65
  %116 = load double, double* %t0.addr, align 8, !tbaa !65
  %117 = load double, double* %ex, align 8, !tbaa !65
  %118 = load double, double* %ey, align 8, !tbaa !65
  %119 = load double, double* %er, align 8, !tbaa !65
  %120 = load double, double* %t0.addr, align 8, !tbaa !65
  %call69 = call i32 @R_tensor_annulus(%struct.patch_fill_state_s* %112, double %113, double %114, double %115, double %116, double %117, double %118, double %119, double %120) #6
  store i32 %call69, i32* %code, align 4, !tbaa !5
  %121 = load i32, i32* %code, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %121, 0
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.else
  %122 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %122, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end.72:                                        ; preds = %if.else
  %123 = load i32, i32* %inwards.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %123, 0
  br i1 %tobool, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.end.72
  %124 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %125 = load double, double* %ex, align 8, !tbaa !65
  %126 = load double, double* %ey, align 8, !tbaa !65
  %127 = load double, double* %er, align 8, !tbaa !65
  %128 = load double, double* %t0.addr, align 8, !tbaa !65
  %129 = load double, double* %ex, align 8, !tbaa !65
  %130 = load double, double* %ey, align 8, !tbaa !65
  %131 = load double, double* %t0.addr, align 8, !tbaa !65
  %call74 = call i32 @R_tensor_annulus(%struct.patch_fill_state_s* %124, double %125, double %126, double %127, double %128, double %129, double %130, double 0.000000e+00, double %131) #6
  store i32 %call74, i32* %code, align 4, !tbaa !5
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.end.72
  %132 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %132, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

cleanup.76:                                       ; preds = %if.end.75, %if.then.71
  %133 = bitcast double* %ey to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast double* %ex to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast double* %er to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast double* %es to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  br label %cleanup.80

cleanup.80:                                       ; preds = %cleanup.76, %cleanup
  %137 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast double* %g0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast double* %as to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast double* %ay to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast double* %ax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast double* %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast double* %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast double* %dr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast double* %dy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast double* %dx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = load i32, i32* %retval
  ret i32 %147
}

; Function Attrs: nounwind uwtable
define internal i32 @R_tensor_cone_apex(%struct.patch_fill_state_s* %pfs, %struct.gs_rect_s* %rect, double %x0, double %y0, double %r0, double %x1, double %y1, double %r1, double %t) #0 {
entry:
  %pfs.addr = alloca %struct.patch_fill_state_s*, align 8
  %rect.addr = alloca %struct.gs_rect_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %r0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %r1.addr = alloca double, align 8
  %t.addr = alloca double, align 8
  %as = alloca double, align 8
  %ax = alloca double, align 8
  %ay = alloca double, align 8
  store %struct.patch_fill_state_s* %pfs, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %rect, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !65
  store double %y0, double* %y0.addr, align 8, !tbaa !65
  store double %r0, double* %r0.addr, align 8, !tbaa !65
  store double %x1, double* %x1.addr, align 8, !tbaa !65
  store double %y1, double* %y1.addr, align 8, !tbaa !65
  store double %r1, double* %r1.addr, align 8, !tbaa !65
  store double %t, double* %t.addr, align 8, !tbaa !65
  %0 = bitcast double* %as to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double, double* %r0.addr, align 8, !tbaa !65
  %2 = load double, double* %r0.addr, align 8, !tbaa !65
  %3 = load double, double* %r1.addr, align 8, !tbaa !65
  %sub = fsub double %2, %3
  %div = fdiv double %1, %sub
  store double %div, double* %as, align 8, !tbaa !65
  %4 = bitcast double* %ax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load double, double* %x0.addr, align 8, !tbaa !65
  %6 = load double, double* %x1.addr, align 8, !tbaa !65
  %7 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub1 = fsub double %6, %7
  %8 = load double, double* %as, align 8, !tbaa !65
  %mul = fmul double %sub1, %8
  %add = fadd double %5, %mul
  store double %add, double* %ax, align 8, !tbaa !65
  %9 = bitcast double* %ay to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load double, double* %y0.addr, align 8, !tbaa !65
  %11 = load double, double* %y1.addr, align 8, !tbaa !65
  %12 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub2 = fsub double %11, %12
  %13 = load double, double* %as, align 8, !tbaa !65
  %mul3 = fmul double %sub2, %13
  %add4 = fadd double %10, %mul3
  store double %add4, double* %ay, align 8, !tbaa !65
  %14 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %15 = load double, double* %x1.addr, align 8, !tbaa !65
  %16 = load double, double* %y1.addr, align 8, !tbaa !65
  %17 = load double, double* %r1.addr, align 8, !tbaa !65
  %18 = load double, double* %t.addr, align 8, !tbaa !65
  %19 = load double, double* %ax, align 8, !tbaa !65
  %20 = load double, double* %ay, align 8, !tbaa !65
  %21 = load double, double* %t.addr, align 8, !tbaa !65
  %call = call i32 @R_tensor_annulus(%struct.patch_fill_state_s* %14, double %15, double %16, double %17, double %18, double %19, double %20, double 0.000000e+00, double %21) #6
  %22 = bitcast double* %ay to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast double* %ax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast double* %as to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @R_outer_circle(%struct.patch_fill_state_s* %pfs, %struct.gs_rect_s* %rect, double %x0, double %y0, double %r0, double %x1, double %y1, double %r1, double* %x2, double* %y2, double* %r2) #0 {
entry:
  %retval = alloca i32, align 4
  %pfs.addr = alloca %struct.patch_fill_state_s*, align 8
  %rect.addr = alloca %struct.gs_rect_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %r0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %r1.addr = alloca double, align 8
  %x2.addr = alloca double*, align 8
  %y2.addr = alloca double*, align 8
  %r2.addr = alloca double*, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %sp = alloca double, align 8
  %sq = alloca double, align 8
  %s = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.patch_fill_state_s* %pfs, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %rect, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !65
  store double %y0, double* %y0.addr, align 8, !tbaa !65
  store double %r0, double* %r0.addr, align 8, !tbaa !65
  store double %x1, double* %x1.addr, align 8, !tbaa !65
  store double %y1, double* %y1.addr, align 8, !tbaa !65
  store double %r1, double* %r1.addr, align 8, !tbaa !65
  store double* %x2, double** %x2.addr, align 8, !tbaa !1
  store double* %y2, double** %y2.addr, align 8, !tbaa !1
  store double* %r2, double** %r2.addr, align 8, !tbaa !1
  %0 = bitcast double* %dx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double, double* %x1.addr, align 8, !tbaa !65
  %2 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub = fsub double %1, %2
  store double %sub, double* %dx, align 8, !tbaa !65
  %3 = bitcast double* %dy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load double, double* %y1.addr, align 8, !tbaa !65
  %5 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub1 = fsub double %4, %5
  store double %sub1, double* %dy, align 8, !tbaa !65
  %6 = bitcast double* %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast double* %sq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast double* %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load double, double* %dx, align 8, !tbaa !65
  %cmp = fcmp olt double %9, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load double, double* %dx, align 8, !tbaa !65
  %sub2 = fsub double -0.000000e+00, %10
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load double, double* %dx, align 8, !tbaa !65
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub2, %cond.true ], [ %11, %cond.false ]
  %12 = load double, double* %dy, align 8, !tbaa !65
  %cmp3 = fcmp olt double %12, 0.000000e+00
  br i1 %cmp3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.end
  %13 = load double, double* %dy, align 8, !tbaa !65
  %sub5 = fsub double -0.000000e+00, %13
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  %14 = load double, double* %dy, align 8, !tbaa !65
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.4
  %cond8 = phi double [ %sub5, %cond.true.4 ], [ %14, %cond.false.6 ]
  %cmp9 = fcmp ogt double %cond, %cond8
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.7
  %15 = load double, double* %x1.addr, align 8, !tbaa !65
  %16 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub10 = fsub double %15, %16
  %17 = load double, double* %r1.addr, align 8, !tbaa !65
  %add = fadd double %sub10, %17
  %18 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub11 = fsub double %add, %18
  %cmp12 = fcmp oeq double %sub11, 0.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %19 = load double, double* %x1.addr, align 8, !tbaa !65
  %20 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub14 = fsub double %19, %20
  %21 = load double, double* %r1.addr, align 8, !tbaa !65
  %sub15 = fsub double %sub14, %21
  %22 = load double, double* %r0.addr, align 8, !tbaa !65
  %add16 = fadd double %sub15, %22
  %cmp17 = fcmp oeq double %add16, 0.000000e+00
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end
  %23 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %23, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %24 = load double, double* %x, align 8, !tbaa !17
  %25 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub20 = fsub double %24, %25
  %26 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub21 = fsub double %sub20, %26
  %27 = load double, double* %x1.addr, align 8, !tbaa !65
  %28 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub22 = fsub double %27, %28
  %29 = load double, double* %r1.addr, align 8, !tbaa !65
  %add23 = fadd double %sub22, %29
  %30 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub24 = fsub double %add23, %30
  %div = fdiv double %sub21, %sub24
  store double %div, double* %sp, align 8, !tbaa !65
  %31 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %31, i32 0, i32 1
  %x25 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %32 = load double, double* %x25, align 8, !tbaa !18
  %33 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub26 = fsub double %32, %33
  %34 = load double, double* %r0.addr, align 8, !tbaa !65
  %add27 = fadd double %sub26, %34
  %35 = load double, double* %x1.addr, align 8, !tbaa !65
  %36 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub28 = fsub double %35, %36
  %37 = load double, double* %r1.addr, align 8, !tbaa !65
  %sub29 = fsub double %sub28, %37
  %38 = load double, double* %r0.addr, align 8, !tbaa !65
  %add30 = fadd double %sub29, %38
  %div31 = fdiv double %add27, %add30
  store double %div31, double* %sq, align 8, !tbaa !65
  br label %if.end.59

if.else:                                          ; preds = %cond.end.7
  %39 = load double, double* %y1.addr, align 8, !tbaa !65
  %40 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub32 = fsub double %39, %40
  %41 = load double, double* %r1.addr, align 8, !tbaa !65
  %add33 = fadd double %sub32, %41
  %42 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub34 = fsub double %add33, %42
  %cmp35 = fcmp oeq double %sub34, 0.000000e+00
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.else
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.else
  %43 = load double, double* %y1.addr, align 8, !tbaa !65
  %44 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub38 = fsub double %43, %44
  %45 = load double, double* %r1.addr, align 8, !tbaa !65
  %sub39 = fsub double %sub38, %45
  %46 = load double, double* %r0.addr, align 8, !tbaa !65
  %add40 = fadd double %sub39, %46
  %cmp41 = fcmp oeq double %add40, 0.000000e+00
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.37
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end.37
  %47 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %p44 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %47, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p44, i32 0, i32 1
  %48 = load double, double* %y, align 8, !tbaa !19
  %49 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub45 = fsub double %48, %49
  %50 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub46 = fsub double %sub45, %50
  %51 = load double, double* %y1.addr, align 8, !tbaa !65
  %52 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub47 = fsub double %51, %52
  %53 = load double, double* %r1.addr, align 8, !tbaa !65
  %add48 = fadd double %sub47, %53
  %54 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub49 = fsub double %add48, %54
  %div50 = fdiv double %sub46, %sub49
  store double %div50, double* %sp, align 8, !tbaa !65
  %55 = load %struct.gs_rect_s*, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  %q51 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %55, i32 0, i32 1
  %y52 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q51, i32 0, i32 1
  %56 = load double, double* %y52, align 8, !tbaa !20
  %57 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub53 = fsub double %56, %57
  %58 = load double, double* %r0.addr, align 8, !tbaa !65
  %add54 = fadd double %sub53, %58
  %59 = load double, double* %y1.addr, align 8, !tbaa !65
  %60 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub55 = fsub double %59, %60
  %61 = load double, double* %r1.addr, align 8, !tbaa !65
  %sub56 = fsub double %sub55, %61
  %62 = load double, double* %r0.addr, align 8, !tbaa !65
  %add57 = fadd double %sub56, %62
  %div58 = fdiv double %add54, %add57
  store double %div58, double* %sq, align 8, !tbaa !65
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.43, %if.end.19
  %63 = load double, double* %sp, align 8, !tbaa !65
  %cmp60 = fcmp oge double %63, 1.000000e+00
  br i1 %cmp60, label %land.lhs.true, label %if.else.68

land.lhs.true:                                    ; preds = %if.end.59
  %64 = load double, double* %sq, align 8, !tbaa !65
  %cmp61 = fcmp oge double %64, 1.000000e+00
  br i1 %cmp61, label %if.then.62, label %if.else.68

if.then.62:                                       ; preds = %land.lhs.true
  %65 = load double, double* %sp, align 8, !tbaa !65
  %66 = load double, double* %sq, align 8, !tbaa !65
  %cmp63 = fcmp ogt double %65, %66
  br i1 %cmp63, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %if.then.62
  %67 = load double, double* %sp, align 8, !tbaa !65
  br label %cond.end.66

cond.false.65:                                    ; preds = %if.then.62
  %68 = load double, double* %sq, align 8, !tbaa !65
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.65, %cond.true.64
  %cond67 = phi double [ %67, %cond.true.64 ], [ %68, %cond.false.65 ]
  store double %cond67, double* %s, align 8, !tbaa !65
  br label %if.end.77

if.else.68:                                       ; preds = %land.lhs.true, %if.end.59
  %69 = load double, double* %sp, align 8, !tbaa !65
  %cmp69 = fcmp oge double %69, 1.000000e+00
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.else.68
  %70 = load double, double* %sp, align 8, !tbaa !65
  store double %70, double* %s, align 8, !tbaa !65
  br label %if.end.76

if.else.71:                                       ; preds = %if.else.68
  %71 = load double, double* %sq, align 8, !tbaa !65
  %cmp72 = fcmp oge double %71, 1.000000e+00
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.else.71
  %72 = load double, double* %sq, align 8, !tbaa !65
  store double %72, double* %s, align 8, !tbaa !65
  br label %if.end.75

if.else.74:                                       ; preds = %if.else.71
  store double 1.000000e+00, double* %s, align 8, !tbaa !65
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.74, %if.then.73
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.70
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %cond.end.66
  %73 = load double, double* %r0.addr, align 8, !tbaa !65
  %74 = load double, double* %r1.addr, align 8, !tbaa !65
  %75 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub78 = fsub double %74, %75
  %76 = load double, double* %s, align 8, !tbaa !65
  %mul = fmul double %sub78, %76
  %add79 = fadd double %73, %mul
  %cmp80 = fcmp olt double %add79, 0.000000e+00
  br i1 %cmp80, label %if.then.81, label %if.else.84

if.then.81:                                       ; preds = %if.end.77
  %77 = load double, double* %r0.addr, align 8, !tbaa !65
  %78 = load double, double* %r0.addr, align 8, !tbaa !65
  %79 = load double, double* %r1.addr, align 8, !tbaa !65
  %sub82 = fsub double %78, %79
  %div83 = fdiv double %77, %sub82
  store double %div83, double* %s, align 8, !tbaa !65
  %80 = load double*, double** %r2.addr, align 8, !tbaa !1
  store double 0.000000e+00, double* %80, align 8, !tbaa !65
  br label %if.end.88

if.else.84:                                       ; preds = %if.end.77
  %81 = load double, double* %r0.addr, align 8, !tbaa !65
  %82 = load double, double* %r1.addr, align 8, !tbaa !65
  %83 = load double, double* %r0.addr, align 8, !tbaa !65
  %sub85 = fsub double %82, %83
  %84 = load double, double* %s, align 8, !tbaa !65
  %mul86 = fmul double %sub85, %84
  %add87 = fadd double %81, %mul86
  %85 = load double*, double** %r2.addr, align 8, !tbaa !1
  store double %add87, double* %85, align 8, !tbaa !65
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.84, %if.then.81
  %86 = load double, double* %x0.addr, align 8, !tbaa !65
  %87 = load double, double* %x1.addr, align 8, !tbaa !65
  %88 = load double, double* %x0.addr, align 8, !tbaa !65
  %sub89 = fsub double %87, %88
  %89 = load double, double* %s, align 8, !tbaa !65
  %mul90 = fmul double %sub89, %89
  %add91 = fadd double %86, %mul90
  %90 = load double*, double** %x2.addr, align 8, !tbaa !1
  store double %add91, double* %90, align 8, !tbaa !65
  %91 = load double, double* %y0.addr, align 8, !tbaa !65
  %92 = load double, double* %y1.addr, align 8, !tbaa !65
  %93 = load double, double* %y0.addr, align 8, !tbaa !65
  %sub92 = fsub double %92, %93
  %94 = load double, double* %s, align 8, !tbaa !65
  %mul93 = fmul double %sub92, %94
  %add94 = fadd double %91, %mul93
  %95 = load double*, double** %y2.addr, align 8, !tbaa !1
  store double %add94, double* %95, align 8, !tbaa !65
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.88, %if.then.42, %if.then.36, %if.then.18, %if.then.13
  %96 = bitcast double* %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast double* %sq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast double* %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast double* %dy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast double* %dx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = load i32, i32* %retval
  ret i32 %101
}

; Function Attrs: nounwind uwtable
define internal i32 @R_fill_triangle_new(%struct.patch_fill_state_s* %pfs, %struct.gs_rect_s* %rect, double %x0, double %y0, double %x1, double %y1, double %x2, double %y2, double %t) #0 {
entry:
  %pfs.addr = alloca %struct.patch_fill_state_s*, align 8
  %rect.addr = alloca %struct.gs_rect_s*, align 8
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %t.addr = alloca double, align 8
  %p0 = alloca %struct.shading_vertex_s, align 8
  %p1 = alloca %struct.shading_vertex_s, align 8
  %p2 = alloca %struct.shading_vertex_s, align 8
  %c = alloca %struct.patch_color_s*, align 8
  %code = alloca i32, align 4
  store %struct.patch_fill_state_s* %pfs, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %rect, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  store double %x0, double* %x0.addr, align 8, !tbaa !65
  store double %y0, double* %y0.addr, align 8, !tbaa !65
  store double %x1, double* %x1.addr, align 8, !tbaa !65
  store double %y1, double* %y1.addr, align 8, !tbaa !65
  store double %x2, double* %x2.addr, align 8, !tbaa !65
  store double %y2, double* %y2.addr, align 8, !tbaa !65
  store double %t, double* %t.addr, align 8, !tbaa !65
  %0 = bitcast %struct.shading_vertex_s* %p0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.shading_vertex_s* %p1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.shading_vertex_s* %p2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast %struct.patch_color_s** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %call = call i8* @reserve_colors(%struct.patch_fill_state_s* %5, %struct.patch_color_s** %c, i32 1) #6
  %6 = load %struct.patch_color_s*, %struct.patch_color_s** %c, align 8, !tbaa !1
  %c1 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %p0, i32 0, i32 1
  store %struct.patch_color_s* %6, %struct.patch_color_s** %c1, align 8, !tbaa !109
  %7 = load %struct.patch_color_s*, %struct.patch_color_s** %c, align 8, !tbaa !1
  %c2 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %p1, i32 0, i32 1
  store %struct.patch_color_s* %7, %struct.patch_color_s** %c2, align 8, !tbaa !109
  %8 = load %struct.patch_color_s*, %struct.patch_color_s** %c, align 8, !tbaa !1
  %c3 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %p2, i32 0, i32 1
  store %struct.patch_color_s* %8, %struct.patch_color_s** %c3, align 8, !tbaa !109
  %9 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %9, i32 0, i32 1
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !85
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %10, i32 0, i32 5
  %11 = load double, double* %x0.addr, align 8, !tbaa !65
  %12 = load double, double* %y0.addr, align 8, !tbaa !65
  %p = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %p0, i32 0, i32 0
  %call4 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %11, double %12, %struct.gs_fixed_point_s* %p) #6
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %pis5 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %14, i32 0, i32 1
  %15 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis5, align 8, !tbaa !85
  %ctm6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %15, i32 0, i32 5
  %16 = load double, double* %x1.addr, align 8, !tbaa !65
  %17 = load double, double* %y1.addr, align 8, !tbaa !65
  %p7 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %p1, i32 0, i32 0
  %call8 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm6, double %16, double %17, %struct.gs_fixed_point_s* %p7) #6
  store i32 %call8, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp sge i32 %18, 0
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end
  %19 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %pis11 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %19, i32 0, i32 1
  %20 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis11, align 8, !tbaa !85
  %ctm12 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %20, i32 0, i32 5
  %21 = load double, double* %x2.addr, align 8, !tbaa !65
  %22 = load double, double* %y2.addr, align 8, !tbaa !65
  %p13 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %p2, i32 0, i32 0
  %call14 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* %ctm12, double %21, double %22, %struct.gs_fixed_point_s* %p13) #6
  store i32 %call14, i32* %code, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %if.end
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp sge i32 %23, 0
  br i1 %cmp16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.15
  %24 = load double, double* %t.addr, align 8, !tbaa !65
  %conv = fptrunc double %24 to float
  %25 = load %struct.patch_color_s*, %struct.patch_color_s** %c, align 8, !tbaa !1
  %t18 = getelementptr inbounds %struct.patch_color_s, %struct.patch_color_s* %25, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %t18, i32 0, i64 1
  store float %conv, float* %arrayidx, align 4, !tbaa !16
  %26 = load %struct.patch_color_s*, %struct.patch_color_s** %c, align 8, !tbaa !1
  %t19 = getelementptr inbounds %struct.patch_color_s, %struct.patch_color_s* %26, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x float], [2 x float]* %t19, i32 0, i64 0
  store float %conv, float* %arrayidx20, align 4, !tbaa !16
  %27 = load %struct.patch_color_s*, %struct.patch_color_s** %c, align 8, !tbaa !1
  %28 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  call void @patch_resolve_color(%struct.patch_color_s* %27, %struct.patch_fill_state_s* %28) #6
  %29 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %call21 = call i32 @mesh_triangle(%struct.patch_fill_state_s* %29, %struct.shading_vertex_s* %p0, %struct.shading_vertex_s* %p1, %struct.shading_vertex_s* %p2) #6
  store i32 %call21, i32* %code, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %if.end.15
  %30 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %31 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %color_stack = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %31, i32 0, i32 30
  %32 = load i8*, i8** %color_stack, align 8, !tbaa !110
  call void @release_colors(%struct.patch_fill_state_s* %30, i8* %32, i32 1) #6
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.patch_color_s** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct.shading_vertex_s* %p2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %36) #1
  %37 = bitcast %struct.shading_vertex_s* %p1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %37) #1
  %38 = bitcast %struct.shading_vertex_s* %p0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %38) #1
  ret i32 %33
}

declare i8* @reserve_colors(%struct.patch_fill_state_s*, %struct.patch_color_s**, i32) #2

declare void @patch_resolve_color(%struct.patch_color_s*, %struct.patch_fill_state_s*) #2

declare i32 @mesh_triangle(%struct.patch_fill_state_s*, %struct.shading_vertex_s*, %struct.shading_vertex_s*, %struct.shading_vertex_s*) #2

declare void @release_colors(%struct.patch_fill_state_s*, i8*, i32) #2

declare void @make_quadrant_arc(%struct.gs_point_s*, %struct.gs_point_s*, %struct.gs_point_s*, %struct.gs_point_s*, double) #2

; Function Attrs: nounwind uwtable
define internal void @gs_point_transform2fixed_clamped(%struct.gs_matrix_fixed_s* %pmat, double %x, double %y, %struct.gs_fixed_point_s* %ppt) #0 {
entry:
  %pmat.addr = alloca %struct.gs_matrix_fixed_s*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %ppt.addr = alloca %struct.gs_fixed_point_s*, align 8
  %fpt = alloca %struct.gs_point_s, align 8
  store %struct.gs_matrix_fixed_s* %pmat, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !65
  store double %y, double* %y.addr, align 8, !tbaa !65
  store %struct.gs_fixed_point_s* %ppt, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_point_s* %fpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load double, double* %x.addr, align 8, !tbaa !65
  %2 = load double, double* %y.addr, align 8, !tbaa !65
  %3 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %pmat.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_matrix_fixed_s* %3 to %struct.gs_matrix_s*
  %call = call i32 @gs_point_transform(double %1, double %2, %struct.gs_matrix_s* %4, %struct.gs_point_s* %fpt) #6
  %x1 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 0
  %5 = load double, double* %x1, align 8, !tbaa !72
  %cmp = fcmp ogt double %5, 0x415FFF05FFC00000
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.7

cond.false:                                       ; preds = %entry
  %x2 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 0
  %6 = load double, double* %x2, align 8, !tbaa !72
  %cmp3 = fcmp olt double %6, 0xC15FFF05FFC00000
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %x6 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 0
  %7 = load double, double* %x6, align 8, !tbaa !72
  %mul = fmul double %7, 2.560000e+02
  %conv = fptosi double %mul to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond = phi i32 [ -2147227647, %cond.true.4 ], [ %conv, %cond.false.5 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi i32 [ 2147227647, %cond.true ], [ %cond, %cond.end ]
  %8 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i32 0, i32 0
  store i32 %cond8, i32* %x9, align 4, !tbaa !81
  %y10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 1
  %9 = load double, double* %y10, align 8, !tbaa !73
  %cmp11 = fcmp ogt double %9, 0x415FFF05FFC00000
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end.7
  br label %cond.end.25

cond.false.14:                                    ; preds = %cond.end.7
  %y15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 1
  %10 = load double, double* %y15, align 8, !tbaa !73
  %cmp16 = fcmp olt double %10, 0xC15FFF05FFC00000
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.false.14
  br label %cond.end.23

cond.false.19:                                    ; preds = %cond.false.14
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %fpt, i32 0, i32 1
  %11 = load double, double* %y20, align 8, !tbaa !73
  %mul21 = fmul double %11, 2.560000e+02
  %conv22 = fptosi double %mul21 to i32
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.19, %cond.true.18
  %cond24 = phi i32 [ -2147227647, %cond.true.18 ], [ %conv22, %cond.false.19 ]
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end.23, %cond.true.13
  %cond26 = phi i32 [ 2147227647, %cond.true.13 ], [ %cond24, %cond.end.23 ]
  %12 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %y27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %12, i32 0, i32 1
  store i32 %cond26, i32* %y27, align 4, !tbaa !83
  %13 = bitcast %struct.gs_point_s* %fpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %13) #1
  ret void
}

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #2

declare i32 @constant_color_quadrangle(%struct.patch_fill_state_s*, %struct.quadrangle_patch*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 304}
!8 = !{!"Fb_fill_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !2, i64 288, !2, i64 296, !2, i64 304, !9, i64 312, !11, i64 352}
!9 = !{!"gs_matrix_fixed_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!10 = !{!"float", !3, i64 0}
!11 = !{!"Fb_frame_s", !12, i64 0, !3, i64 32, !6, i64 1088}
!12 = !{!"gs_rect_s", !13, i64 0, !13, i64 16}
!13 = !{!"gs_point_s", !14, i64 0, !14, i64 8}
!14 = !{!"double", !3, i64 0}
!15 = !{i64 0, i64 4, !16, i64 4, i64 4, !16, i64 8, i64 4, !16, i64 12, i64 4, !16, i64 16, i64 4, !16, i64 20, i64 4, !16, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5}
!16 = !{!10, !10, i64 0}
!17 = !{!12, !14, i64 0}
!18 = !{!12, !14, i64 16}
!19 = !{!12, !14, i64 8}
!20 = !{!12, !14, i64 24}
!21 = !{!8, !2, i64 296}
!22 = !{!23, !2, i64 128}
!23 = !{!"gs_shading_Fb_s", !24, i64 0, !26, i64 16}
!24 = !{!"gs_shading_head_s", !3, i64 0, !25, i64 8}
!25 = !{!"gs_shading_procs_s", !2, i64 0}
!26 = !{!"gs_shading_Fb_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !12, i64 32, !6, i64 64, !3, i64 68, !27, i64 84, !2, i64 112}
!27 = !{!"gs_matrix_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!28 = !{!29, !2, i64 8}
!29 = !{!"gs_function_s", !30, i64 0, !32, i64 72}
!30 = !{!"gs_function_head_s", !6, i64 0, !31, i64 8}
!31 = !{!"gs_function_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!32 = !{!"gs_function_params_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24}
!33 = !{!8, !14, i64 352}
!34 = !{!8, !14, i64 360}
!35 = !{!8, !14, i64 368}
!36 = !{!8, !14, i64 376}
!37 = !{!38, !2, i64 328}
!38 = !{!"patch_fill_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !2, i64 288, !2, i64 296, !2, i64 304, !39, i64 312, !2, i64 328, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !2, i64 352, !2, i64 360, !6, i64 368, !6, i64 372, !41, i64 376, !6, i64 640, !6, i64 644, !14, i64 648, !6, i64 656, !6, i64 660, !6, i64 664, !6, i64 668, !6, i64 672, !6, i64 676, !6, i64 680, !2, i64 688, !2, i64 696, !2, i64 704, !2, i64 712, !2, i64 720}
!39 = !{!"gs_fixed_rect_s", !40, i64 0, !40, i64 8}
!40 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!41 = !{!"gs_client_color_s", !2, i64 0, !42, i64 8}
!42 = !{!"gs_paint_color_s", !3, i64 0}
!43 = !{!38, !6, i64 656}
!44 = !{!38, !6, i64 344}
!45 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5}
!46 = !{!11, !14, i64 0}
!47 = !{!11, !14, i64 8}
!48 = !{!11, !14, i64 16}
!49 = !{!11, !14, i64 24}
!50 = !{!51, !2, i64 112}
!51 = !{!"gs_shading_A_s", !24, i64 0, !52, i64 16}
!52 = !{!"gs_shading_A_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !12, i64 32, !6, i64 64, !3, i64 68, !3, i64 84, !2, i64 96, !3, i64 104}
!53 = !{!54, !2, i64 0}
!54 = !{!"A_fill_state_s", !2, i64 0, !13, i64 8, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72}
!55 = !{!38, !2, i64 296}
!56 = !{!38, !6, i64 336}
!57 = !{!27, !10, i64 16}
!58 = !{!27, !10, i64 20}
!59 = !{!54, !14, i64 8}
!60 = !{!54, !14, i64 16}
!61 = !{!27, !10, i64 8}
!62 = !{!27, !10, i64 12}
!63 = !{!27, !10, i64 0}
!64 = !{!27, !10, i64 4}
!65 = !{!14, !14, i64 0}
!66 = !{!54, !14, i64 48}
!67 = !{!54, !14, i64 56}
!68 = !{!54, !14, i64 64}
!69 = !{!54, !14, i64 72}
!70 = !{!54, !14, i64 32}
!71 = !{!54, !14, i64 40}
!72 = !{!13, !14, i64 0}
!73 = !{!13, !14, i64 8}
!74 = !{!54, !14, i64 24}
!75 = !{!76, !2, i64 120}
!76 = !{!"gs_shading_R_s", !24, i64 0, !77, i64 16}
!77 = !{!"gs_shading_R_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !12, i64 32, !6, i64 64, !3, i64 68, !3, i64 92, !2, i64 104, !3, i64 112}
!78 = !{!79, !6, i64 0}
!79 = !{!"patch_curve_s", !80, i64 0, !3, i64 264, !6, i64 280}
!80 = !{!"mesh_vertex_s", !40, i64 0, !3, i64 8}
!81 = !{!40, !6, i64 0}
!82 = !{!79, !6, i64 4}
!83 = !{!40, !6, i64 4}
!84 = !{!79, !6, i64 280}
!85 = !{!38, !2, i64 8}
!86 = !{!87, !14, i64 0}
!87 = !{!"radial_shading_attrs_s", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !3, i64 32, !14, i64 64, !6, i64 72, !3, i64 76, !3, i64 84, !3, i64 96}
!88 = !{!87, !14, i64 8}
!89 = !{!87, !14, i64 16}
!90 = !{!87, !14, i64 24}
!91 = !{i64 0, i64 8, !65, i64 8, i64 8, !65}
!92 = !{!87, !6, i64 72}
!93 = !{!87, !14, i64 64}
!94 = !{!38, !2, i64 16}
!95 = !{!96, !2, i64 0}
!96 = !{!"gs_color_space_s", !2, i64 0, !97, i64 8, !98, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!97 = !{!"rc_header_s", !98, i64 0, !2, i64 8, !2, i64 16}
!98 = !{!"long", !3, i64 0}
!99 = !{!100, !2, i64 40}
!100 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!101 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!102 = !{!39, !6, i64 8}
!103 = !{!104, !6, i64 0}
!104 = !{!"shading_vertex_s", !40, i64 0, !2, i64 8}
!105 = !{!39, !6, i64 4}
!106 = !{!104, !6, i64 4}
!107 = !{!39, !6, i64 0}
!108 = !{!39, !6, i64 12}
!109 = !{!104, !2, i64 8}
!110 = !{!38, !2, i64 696}
