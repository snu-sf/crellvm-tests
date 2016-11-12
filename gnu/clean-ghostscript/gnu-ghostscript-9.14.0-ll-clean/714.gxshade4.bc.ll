; ModuleID = './gxshade4.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_fill_state_s = type { %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i32, [64 x float], %struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gs_shading_mesh_s*, %struct.gs_fixed_rect_s }
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
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_state_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
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
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gs_shading_mesh_s = type { %struct.gs_shading_head_s, %struct.gs_shading_mesh_params_s }
%struct.gs_shading_head_s = type { i32, %struct.gs_shading_procs_s }
%struct.gs_shading_procs_s = type { i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)* }
%struct.gs_shading_s = type { %struct.gs_shading_head_s, %struct.gs_shading_params_s }
%struct.gs_shading_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32 }
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_shading_mesh_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s* }
%struct.gs_data_source_s = type { i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32, %union.d_ }
%union.d_ = type { %struct.gs_const_string_s }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_function_params_s = type { i32, float*, i32, float* }
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
%struct.shading_fill_state_s = type { %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i32, [64 x float], %struct.gx_device_s*, %struct.gsicc_link_s* }
%struct.gs_shading_FfGt_s = type { %struct.gs_shading_head_s, %struct.gs_shading_FfGt_params_s }
%struct.gs_shading_FfGt_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s*, i32 }
%struct.shade_coord_stream_s = type { %struct.stream_s, %struct.stream_s*, i32, i32, i32, %struct.gs_shading_mesh_params_s*, %struct.gs_matrix_fixed_s*, i32 (%struct.shade_coord_stream_s*, i32, i32*)*, i32 (%struct.shade_coord_stream_s*, i32, float*, float*)*, void (%struct.shade_coord_stream_s*, i32)*, i32 (%struct.shade_coord_stream_s*)* }
%struct.shading_vertex_s = type { %struct.gs_fixed_point_s, %struct.patch_color_s* }
%struct.patch_color_s = type { [2 x float], %struct.gs_client_color_s }
%struct.gs_shading_LfGt_s = type { %struct.gs_shading_head_s, %struct.gs_shading_LfGt_params_s }
%struct.gs_shading_LfGt_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"gs_shading_LfGt_render\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"gs_shading_LfGt_fill_rectangle\00", align 1

; Function Attrs: nounwind uwtable
define i32 @mesh_init_fill_state(%struct.mesh_fill_state_s* %pfs, %struct.gs_shading_mesh_s* %psh, %struct.gs_fixed_rect_s* %rect_clip, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %pfs.addr = alloca %struct.mesh_fill_state_s*, align 8
  %psh.addr = alloca %struct.gs_shading_mesh_s*, align 8
  %rect_clip.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.mesh_fill_state_s* %pfs, %struct.mesh_fill_state_s** %pfs.addr, align 8, !tbaa !1
  store %struct.gs_shading_mesh_s* %psh, %struct.gs_shading_mesh_s** %psh.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect_clip, %struct.gs_fixed_rect_s** %rect_clip.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.mesh_fill_state_s*, %struct.mesh_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %2 = bitcast %struct.mesh_fill_state_s* %1 to %struct.shading_fill_state_s*
  %3 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %psh.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_shading_mesh_s* %3 to %struct.gs_shading_s*
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @shade_init_fill_state(%struct.shading_fill_state_s* %2, %struct.gs_shading_s* %4, %struct.gx_device_s* %5, %struct.gs_imager_state_s* %6) #4
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
  %9 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %psh.addr, align 8, !tbaa !1
  %10 = load %struct.mesh_fill_state_s*, %struct.mesh_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %pshm = getelementptr inbounds %struct.mesh_fill_state_s, %struct.mesh_fill_state_s* %10, i32 0, i32 7
  store %struct.gs_shading_mesh_s* %9, %struct.gs_shading_mesh_s** %pshm, align 8, !tbaa !7
  %11 = load %struct.mesh_fill_state_s*, %struct.mesh_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.mesh_fill_state_s, %struct.mesh_fill_state_s* %11, i32 0, i32 8
  %12 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect_clip.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gs_fixed_rect_s* %rect to i8*
  %14 = bitcast %struct.gs_fixed_rect_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 4, i1 false), !tbaa.struct !11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @shade_init_fill_state(%struct.shading_fill_state_s*, %struct.gs_shading_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_shading_FfGt_fill_rectangle(%struct.gs_shading_s* %psh0, %struct.gs_rect_s* %rect, %struct.gs_fixed_rect_s* %rect_clip, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %psh0.addr = alloca %struct.gs_shading_s*, align 8
  %rect.addr = alloca %struct.gs_rect_s*, align 8
  %rect_clip.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %psh = alloca %struct.gs_shading_FfGt_s*, align 8
  %pfs = alloca %struct.patch_fill_state_s, align 8
  %pshm = alloca %struct.gs_shading_mesh_s*, align 8
  %cs = alloca %struct.shade_coord_stream_s, align 8
  %num_bits = alloca i32, align 4
  %flag = alloca i32, align 4
  %va = alloca %struct.shading_vertex_s, align 8
  %vb = alloca %struct.shading_vertex_s, align 8
  %vc = alloca %struct.shading_vertex_s, align 8
  %c = alloca %struct.patch_color_s*, align 8
  %C = alloca [3 x %struct.patch_color_s*], align 16
  %ca = alloca %struct.patch_color_s*, align 8
  %cb = alloca %struct.patch_color_s*, align 8
  %cc = alloca %struct.patch_color_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_shading_s* %psh0, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %rect, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect_clip, %struct.gs_fixed_rect_s** %rect_clip.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_FfGt_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_shading_s* %1 to %struct.gs_shading_FfGt_s*
  store %struct.gs_shading_FfGt_s* %2, %struct.gs_shading_FfGt_s** %psh, align 8, !tbaa !1
  %3 = bitcast %struct.patch_fill_state_s* %pfs to i8*
  call void @llvm.lifetime.start(i64 728, i8* %3) #1
  %4 = bitcast %struct.gs_shading_mesh_s** %pshm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_shading_FfGt_s*, %struct.gs_shading_FfGt_s** %psh, align 8, !tbaa !1
  %6 = bitcast %struct.gs_shading_FfGt_s* %5 to %struct.gs_shading_mesh_s*
  store %struct.gs_shading_mesh_s* %6, %struct.gs_shading_mesh_s** %pshm, align 8, !tbaa !1
  %7 = bitcast %struct.shade_coord_stream_s* %cs to i8*
  call void @llvm.lifetime.start(i64 424, i8* %7) #1
  %8 = bitcast i32* %num_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_shading_FfGt_s*, %struct.gs_shading_FfGt_s** %psh, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_FfGt_s, %struct.gs_shading_FfGt_s* %9, i32 0, i32 1
  %BitsPerFlag = getelementptr inbounds %struct.gs_shading_FfGt_params_s, %struct.gs_shading_FfGt_params_s* %params, i32 0, i32 11
  %10 = load i32, i32* %BitsPerFlag, align 4, !tbaa !12
  store i32 %10, i32* %num_bits, align 4, !tbaa !5
  %11 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast %struct.shading_vertex_s* %va to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = bitcast %struct.shading_vertex_s* %vb to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #1
  %14 = bitcast %struct.shading_vertex_s* %vc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #1
  %15 = bitcast %struct.patch_color_s** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast [3 x %struct.patch_color_s*]* %C to i8*
  call void @llvm.lifetime.start(i64 24, i8* %16) #1
  %17 = bitcast %struct.patch_color_s** %ca to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast %struct.patch_color_s** %cb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast %struct.patch_color_s** %cc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast %struct.patch_fill_state_s* %pfs to %struct.shading_fill_state_s*
  %22 = load %struct.gs_shading_FfGt_s*, %struct.gs_shading_FfGt_s** %psh, align 8, !tbaa !1
  %23 = bitcast %struct.gs_shading_FfGt_s* %22 to %struct.gs_shading_s*
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %25 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @shade_init_fill_state(%struct.shading_fill_state_s* %21, %struct.gs_shading_s* %23, %struct.gx_device_s* %24, %struct.gs_imager_state_s* %25) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %26, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %28 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %pshm, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_shading_mesh_s, %struct.gs_shading_mesh_s* %28, i32 0, i32 1
  %Function = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %params1, i32 0, i32 10
  %29 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !21
  %Function2 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 9
  store %struct.gs_function_s* %29, %struct.gs_function_s** %Function2, align 8, !tbaa !24
  %rect3 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 8
  %30 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect_clip.addr, align 8, !tbaa !1
  %31 = bitcast %struct.gs_fixed_rect_s* %rect3 to i8*
  %32 = bitcast %struct.gs_fixed_rect_s* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 4, i1 false), !tbaa.struct !11
  %call4 = call i32 @init_patch_fill_state(%struct.patch_fill_state_s* %pfs) #4
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %33, 0
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end
  %icclink = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 6
  %34 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink, align 8, !tbaa !28
  %cmp7 = icmp ne %struct.gsicc_link_s* %34, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.then.6
  %icclink9 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 6
  %35 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink9, align 8, !tbaa !28
  call void @gsicc_release_link(%struct.gsicc_link_s* %35) #4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.then.6
  %36 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [3 x %struct.patch_color_s*], [3 x %struct.patch_color_s*]* %C, i32 0, i32 0
  %call12 = call i8* @reserve_colors(%struct.patch_fill_state_s* %pfs, %struct.patch_color_s** %arraydecay, i32 3) #4
  %arrayidx = getelementptr inbounds [3 x %struct.patch_color_s*], [3 x %struct.patch_color_s*]* %C, i32 0, i64 0
  %37 = load %struct.patch_color_s*, %struct.patch_color_s** %arrayidx, align 8, !tbaa !1
  store %struct.patch_color_s* %37, %struct.patch_color_s** %ca, align 8, !tbaa !1
  %c13 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %va, i32 0, i32 1
  store %struct.patch_color_s* %37, %struct.patch_color_s** %c13, align 8, !tbaa !29
  %arrayidx14 = getelementptr inbounds [3 x %struct.patch_color_s*], [3 x %struct.patch_color_s*]* %C, i32 0, i64 1
  %38 = load %struct.patch_color_s*, %struct.patch_color_s** %arrayidx14, align 8, !tbaa !1
  store %struct.patch_color_s* %38, %struct.patch_color_s** %cb, align 8, !tbaa !1
  %c15 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %vb, i32 0, i32 1
  store %struct.patch_color_s* %38, %struct.patch_color_s** %c15, align 8, !tbaa !29
  %arrayidx16 = getelementptr inbounds [3 x %struct.patch_color_s*], [3 x %struct.patch_color_s*]* %C, i32 0, i64 2
  %39 = load %struct.patch_color_s*, %struct.patch_color_s** %arrayidx16, align 8, !tbaa !1
  store %struct.patch_color_s* %39, %struct.patch_color_s** %cc, align 8, !tbaa !1
  %c17 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %vc, i32 0, i32 1
  store %struct.patch_color_s* %39, %struct.patch_color_s** %c17, align 8, !tbaa !29
  %40 = load %struct.gs_shading_FfGt_s*, %struct.gs_shading_FfGt_s** %psh, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gs_shading_FfGt_s, %struct.gs_shading_FfGt_s* %40, i32 0, i32 1
  %41 = bitcast %struct.gs_shading_FfGt_params_s* %params18 to %struct.gs_shading_mesh_params_s*
  %42 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  call void @shade_next_init(%struct.shade_coord_stream_s* %cs, %struct.gs_shading_mesh_params_s* %41, %struct.gs_imager_state_s* %42) #4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.11
  %43 = load i32, i32* %num_bits, align 4, !tbaa !5
  %call19 = call i32 @shade_next_flag(%struct.shade_coord_stream_s* %cs, i32 %43) #4
  store i32 %call19, i32* %flag, align 4, !tbaa !5
  %cmp20 = icmp sge i32 %call19, 0
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load i32, i32* %flag, align 4, !tbaa !5
  switch i32 %44, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.33
    i32 2, label %sw.bb.35
  ]

sw.default:                                       ; preds = %while.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %while.body
  %45 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %pshm, align 8, !tbaa !1
  %46 = load %struct.patch_color_s*, %struct.patch_color_s** %ca, align 8, !tbaa !1
  %call21 = call i32 @Gt_next_vertex(%struct.gs_shading_mesh_s* %45, %struct.shade_coord_stream_s* %cs, %struct.shading_vertex_s* %va, %struct.patch_color_s* %46) #4
  store i32 %call21, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %47 = load i32, i32* %num_bits, align 4, !tbaa !5
  %call23 = call i32 @shade_next_flag(%struct.shade_coord_stream_s* %cs, i32 %47) #4
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.31, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false
  %48 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %pshm, align 8, !tbaa !1
  %49 = load %struct.patch_color_s*, %struct.patch_color_s** %cb, align 8, !tbaa !1
  %call26 = call i32 @Gt_next_vertex(%struct.gs_shading_mesh_s* %48, %struct.shade_coord_stream_s* %cs, %struct.shading_vertex_s* %vb, %struct.patch_color_s* %49) #4
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.31, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.25
  %50 = load i32, i32* %num_bits, align 4, !tbaa !5
  %call29 = call i32 @shade_next_flag(%struct.shade_coord_stream_s* %cs, i32 %50) #4
  store i32 %call29, i32* %code, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false.25, %lor.lhs.false, %sw.bb
  br label %sw.epilog

if.end.32:                                        ; preds = %lor.lhs.false.28
  br label %v2

sw.bb.33:                                         ; preds = %while.body
  %51 = load %struct.patch_color_s*, %struct.patch_color_s** %ca, align 8, !tbaa !1
  store %struct.patch_color_s* %51, %struct.patch_color_s** %c, align 8, !tbaa !1
  %52 = bitcast %struct.shading_vertex_s* %va to i8*
  %53 = bitcast %struct.shading_vertex_s* %vb to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 16, i32 8, i1 false), !tbaa.struct !31
  %54 = load %struct.patch_color_s*, %struct.patch_color_s** %cb, align 8, !tbaa !1
  store %struct.patch_color_s* %54, %struct.patch_color_s** %ca, align 8, !tbaa !1
  %55 = load %struct.patch_color_s*, %struct.patch_color_s** %c, align 8, !tbaa !1
  store %struct.patch_color_s* %55, %struct.patch_color_s** %cb, align 8, !tbaa !1
  %c34 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %vb, i32 0, i32 1
  store %struct.patch_color_s* %55, %struct.patch_color_s** %c34, align 8, !tbaa !29
  br label %sw.bb.35

sw.bb.35:                                         ; preds = %while.body, %sw.bb.33
  %56 = load %struct.patch_color_s*, %struct.patch_color_s** %cb, align 8, !tbaa !1
  store %struct.patch_color_s* %56, %struct.patch_color_s** %c, align 8, !tbaa !1
  %57 = bitcast %struct.shading_vertex_s* %vb to i8*
  %58 = bitcast %struct.shading_vertex_s* %vc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 16, i32 8, i1 false), !tbaa.struct !31
  %59 = load %struct.patch_color_s*, %struct.patch_color_s** %cc, align 8, !tbaa !1
  store %struct.patch_color_s* %59, %struct.patch_color_s** %cb, align 8, !tbaa !1
  %60 = load %struct.patch_color_s*, %struct.patch_color_s** %c, align 8, !tbaa !1
  store %struct.patch_color_s* %60, %struct.patch_color_s** %cc, align 8, !tbaa !1
  %c36 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %vc, i32 0, i32 1
  store %struct.patch_color_s* %60, %struct.patch_color_s** %c36, align 8, !tbaa !29
  br label %v2

v2:                                               ; preds = %sw.bb.35, %if.end.32
  %61 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %pshm, align 8, !tbaa !1
  %62 = load %struct.patch_color_s*, %struct.patch_color_s** %cc, align 8, !tbaa !1
  %call37 = call i32 @Gt_next_vertex(%struct.gs_shading_mesh_s* %61, %struct.shade_coord_stream_s* %cs, %struct.shading_vertex_s* %vc, %struct.patch_color_s* %62) #4
  store i32 %call37, i32* %code, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %v2
  br label %sw.epilog

if.end.40:                                        ; preds = %v2
  %call41 = call i32 @Gt_fill_triangle(%struct.patch_fill_state_s* %pfs, %struct.shading_vertex_s* %va, %struct.shading_vertex_s* %vb, %struct.shading_vertex_s* %vc) #4
  store i32 %call41, i32* %code, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  br label %sw.epilog

if.end.44:                                        ; preds = %if.end.40
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.44, %if.then.43, %if.then.39, %if.then.31
  %align = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 9
  %63 = load void (%struct.shade_coord_stream_s*, i32)*, void (%struct.shade_coord_stream_s*, i32)** %align, align 8, !tbaa !32
  call void %63(%struct.shade_coord_stream_s* %cs, i32 8) #4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %color_stack = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 30
  %64 = load i8*, i8** %color_stack, align 8, !tbaa !40
  call void @release_colors(%struct.patch_fill_state_s* %pfs, i8* %64, i32 3) #4
  %icclink45 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 6
  %65 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink45, align 8, !tbaa !28
  %cmp46 = icmp ne %struct.gsicc_link_s* %65, null
  br i1 %cmp46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %while.end
  %icclink48 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 6
  %66 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink48, align 8, !tbaa !28
  call void @gsicc_release_link(%struct.gsicc_link_s* %66) #4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %while.end
  %call50 = call i32 @term_patch_fill_state(%struct.patch_fill_state_s* %pfs) #4
  %tobool = icmp ne i32 %call50, 0
  br i1 %tobool, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.49
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %if.end.49
  %is_eod = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 10
  %67 = load i32 (%struct.shade_coord_stream_s*)*, i32 (%struct.shade_coord_stream_s*)** %is_eod, align 8, !tbaa !41
  %call53 = call i32 %67(%struct.shade_coord_stream_s* %cs) #4
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %if.end.52
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.end.52
  %68 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.55, %if.then.51, %sw.default, %if.end.10, %if.then
  %69 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast %struct.patch_color_s** %cc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.patch_color_s** %cb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct.patch_color_s** %ca to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast [3 x %struct.patch_color_s*]* %C to i8*
  call void @llvm.lifetime.end(i64 24, i8* %73) #1
  %74 = bitcast %struct.patch_color_s** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast %struct.shading_vertex_s* %vc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %75) #1
  %76 = bitcast %struct.shading_vertex_s* %vb to i8*
  call void @llvm.lifetime.end(i64 16, i8* %76) #1
  %77 = bitcast %struct.shading_vertex_s* %va to i8*
  call void @llvm.lifetime.end(i64 16, i8* %77) #1
  %78 = bitcast i32* %flag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %num_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast %struct.shade_coord_stream_s* %cs to i8*
  call void @llvm.lifetime.end(i64 424, i8* %80) #1
  %81 = bitcast %struct.gs_shading_mesh_s** %pshm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast %struct.patch_fill_state_s* %pfs to i8*
  call void @llvm.lifetime.end(i64 728, i8* %82) #1
  %83 = bitcast %struct.gs_shading_FfGt_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = load i32, i32* %retval
  ret i32 %84
}

declare i32 @init_patch_fill_state(%struct.patch_fill_state_s*) #2

declare void @gsicc_release_link(%struct.gsicc_link_s*) #2

declare i8* @reserve_colors(%struct.patch_fill_state_s*, %struct.patch_color_s**, i32) #2

declare void @shade_next_init(%struct.shade_coord_stream_s*, %struct.gs_shading_mesh_params_s*, %struct.gs_imager_state_s*) #2

declare i32 @shade_next_flag(%struct.shade_coord_stream_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @Gt_next_vertex(%struct.gs_shading_mesh_s* %psh, %struct.shade_coord_stream_s* %cs, %struct.shading_vertex_s* %vertex, %struct.patch_color_s* %c) #0 {
entry:
  %psh.addr = alloca %struct.gs_shading_mesh_s*, align 8
  %cs.addr = alloca %struct.shade_coord_stream_s*, align 8
  %vertex.addr = alloca %struct.shading_vertex_s*, align 8
  %c.addr = alloca %struct.patch_color_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_shading_mesh_s* %psh, %struct.gs_shading_mesh_s** %psh.addr, align 8, !tbaa !1
  store %struct.shade_coord_stream_s* %cs, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  store %struct.shading_vertex_s* %vertex, %struct.shading_vertex_s** %vertex.addr, align 8, !tbaa !1
  store %struct.patch_color_s* %c, %struct.patch_color_s** %c.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.shade_coord_stream_s*, %struct.shade_coord_stream_s** %cs.addr, align 8, !tbaa !1
  %2 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vertex.addr, align 8, !tbaa !1
  %3 = load %struct.patch_color_s*, %struct.patch_color_s** %c.addr, align 8, !tbaa !1
  %call = call i32 @shade_next_vertex(%struct.shade_coord_stream_s* %1, %struct.shading_vertex_s* %2, %struct.patch_color_s* %3) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %psh.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_mesh_s, %struct.gs_shading_mesh_s* %5, i32 0, i32 1
  %Function = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %params, i32 0, i32 10
  %6 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !21
  %tobool = icmp ne %struct.gs_function_s* %6, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.patch_color_s*, %struct.patch_color_s** %c.addr, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.patch_color_s, %struct.patch_color_s* %7, i32 0, i32 1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  %8 = load float, float* %arrayidx, align 4, !tbaa !42
  %9 = load %struct.patch_color_s*, %struct.patch_color_s** %c.addr, align 8, !tbaa !1
  %t = getelementptr inbounds %struct.patch_color_s, %struct.patch_color_s* %9, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [2 x float], [2 x float]* %t, i32 0, i64 0
  store float %8, float* %arrayidx1, align 4, !tbaa !42
  %10 = load %struct.patch_color_s*, %struct.patch_color_s** %c.addr, align 8, !tbaa !1
  %t2 = getelementptr inbounds %struct.patch_color_s, %struct.patch_color_s* %10, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %t2, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx3, align 4, !tbaa !42
  %11 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %psh.addr, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gs_shading_mesh_s, %struct.gs_shading_mesh_s* %11, i32 0, i32 1
  %Function5 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %params4, i32 0, i32 10
  %12 = load %struct.gs_function_s*, %struct.gs_function_s** %Function5, align 8, !tbaa !21
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %12, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %evaluate = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 0
  %13 = load i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*)** %evaluate, align 8, !tbaa !44
  %14 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %psh.addr, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.gs_shading_mesh_s, %struct.gs_shading_mesh_s* %14, i32 0, i32 1
  %Function7 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %params6, i32 0, i32 10
  %15 = load %struct.gs_function_s*, %struct.gs_function_s** %Function7, align 8, !tbaa !21
  %16 = load %struct.patch_color_s*, %struct.patch_color_s** %c.addr, align 8, !tbaa !1
  %t8 = getelementptr inbounds %struct.patch_color_s, %struct.patch_color_s* %16, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %t8, i32 0, i32 0
  %17 = load %struct.patch_color_s*, %struct.patch_color_s** %c.addr, align 8, !tbaa !1
  %cc9 = getelementptr inbounds %struct.patch_color_s, %struct.patch_color_s* %17, i32 0, i32 1
  %paint10 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc9, i32 0, i32 1
  %values11 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint10, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [64 x float], [64 x float]* %values11, i32 0, i32 0
  %call13 = call i32 %13(%struct.gs_function_s* %15, float* %arraydecay, float* %arraydecay12) #4
  store i32 %call13, i32* %code, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %18 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %psh.addr, align 8, !tbaa !1
  %params14 = getelementptr inbounds %struct.gs_shading_mesh_s, %struct.gs_shading_mesh_s* %18, i32 0, i32 1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %params14, i32 0, i32 0
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !49
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 0
  %20 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !50
  %restrict_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %20, i32 0, i32 6
  %21 = load void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)** %restrict_color, align 8, !tbaa !53
  %22 = load %struct.patch_color_s*, %struct.patch_color_s** %c.addr, align 8, !tbaa !1
  %cc15 = getelementptr inbounds %struct.patch_color_s, %struct.patch_color_s* %22, i32 0, i32 1
  %23 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %psh.addr, align 8, !tbaa !1
  %params16 = getelementptr inbounds %struct.gs_shading_mesh_s, %struct.gs_shading_mesh_s* %23, i32 0, i32 1
  %ColorSpace17 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %params16, i32 0, i32 0
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace17, align 8, !tbaa !49
  call void %21(%struct.gs_client_color_s* %cc15, %struct.gs_color_space_s* %24) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  ret i32 %25
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Gt_fill_triangle(%struct.patch_fill_state_s* %pfs, %struct.shading_vertex_s* %va, %struct.shading_vertex_s* %vb, %struct.shading_vertex_s* %vc) #3 {
entry:
  %pfs.addr = alloca %struct.patch_fill_state_s*, align 8
  %va.addr = alloca %struct.shading_vertex_s*, align 8
  %vb.addr = alloca %struct.shading_vertex_s*, align 8
  %vc.addr = alloca %struct.shading_vertex_s*, align 8
  %code = alloca i32, align 4
  store %struct.patch_fill_state_s* %pfs, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  store %struct.shading_vertex_s* %va, %struct.shading_vertex_s** %va.addr, align 8, !tbaa !1
  store %struct.shading_vertex_s* %vb, %struct.shading_vertex_s** %vb.addr, align 8, !tbaa !1
  store %struct.shading_vertex_s* %vc, %struct.shading_vertex_s** %vc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %2 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %va.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %2, i32 0, i32 0
  %3 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vb.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %3, i32 0, i32 0
  %4 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %va.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %4, i32 0, i32 1
  %5 = load %struct.patch_color_s*, %struct.patch_color_s** %c, align 8, !tbaa !29
  %6 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vb.addr, align 8, !tbaa !1
  %c2 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %6, i32 0, i32 1
  %7 = load %struct.patch_color_s*, %struct.patch_color_s** %c2, align 8, !tbaa !29
  %call = call i32 @mesh_padding(%struct.patch_fill_state_s* %1, %struct.gs_fixed_point_s* %p, %struct.gs_fixed_point_s* %p1, %struct.patch_color_s* %5, %struct.patch_color_s* %7) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %10 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vb.addr, align 8, !tbaa !1
  %p3 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %10, i32 0, i32 0
  %11 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vc.addr, align 8, !tbaa !1
  %p4 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %11, i32 0, i32 0
  %12 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vb.addr, align 8, !tbaa !1
  %c5 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %12, i32 0, i32 1
  %13 = load %struct.patch_color_s*, %struct.patch_color_s** %c5, align 8, !tbaa !29
  %14 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vc.addr, align 8, !tbaa !1
  %c6 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %14, i32 0, i32 1
  %15 = load %struct.patch_color_s*, %struct.patch_color_s** %c6, align 8, !tbaa !29
  %call7 = call i32 @mesh_padding(%struct.patch_fill_state_s* %9, %struct.gs_fixed_point_s* %p3, %struct.gs_fixed_point_s* %p4, %struct.patch_color_s* %13, %struct.patch_color_s* %15) #4
  store i32 %call7, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp sge i32 %16, 0
  br i1 %cmp8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.end
  %17 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %18 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vc.addr, align 8, !tbaa !1
  %p10 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %18, i32 0, i32 0
  %19 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %va.addr, align 8, !tbaa !1
  %p11 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %19, i32 0, i32 0
  %20 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vc.addr, align 8, !tbaa !1
  %c12 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %20, i32 0, i32 1
  %21 = load %struct.patch_color_s*, %struct.patch_color_s** %c12, align 8, !tbaa !29
  %22 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %va.addr, align 8, !tbaa !1
  %c13 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %22, i32 0, i32 1
  %23 = load %struct.patch_color_s*, %struct.patch_color_s** %c13, align 8, !tbaa !29
  %call14 = call i32 @mesh_padding(%struct.patch_fill_state_s* %17, %struct.gs_fixed_point_s* %p10, %struct.gs_fixed_point_s* %p11, %struct.patch_color_s* %21, %struct.patch_color_s* %23) #4
  store i32 %call14, i32* %code, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.9, %if.end
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp sge i32 %24, 0
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %25 = load %struct.patch_fill_state_s*, %struct.patch_fill_state_s** %pfs.addr, align 8, !tbaa !1
  %26 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %va.addr, align 8, !tbaa !1
  %27 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vb.addr, align 8, !tbaa !1
  %28 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vc.addr, align 8, !tbaa !1
  %call18 = call i32 @mesh_triangle(%struct.patch_fill_state_s* %25, %struct.shading_vertex_s* %26, %struct.shading_vertex_s* %27, %struct.shading_vertex_s* %28) #4
  store i32 %call18, i32* %code, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.15
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  ret i32 %29
}

declare void @release_colors(%struct.patch_fill_state_s*, i8*, i32) #2

declare i32 @term_patch_fill_state(%struct.patch_fill_state_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_shading_LfGt_fill_rectangle(%struct.gs_shading_s* %psh0, %struct.gs_rect_s* %rect, %struct.gs_fixed_rect_s* %rect_clip, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %retval = alloca i32, align 4
  %psh0.addr = alloca %struct.gs_shading_s*, align 8
  %rect.addr = alloca %struct.gs_rect_s*, align 8
  %rect_clip.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %psh = alloca %struct.gs_shading_LfGt_s*, align 8
  %pfs = alloca %struct.patch_fill_state_s, align 8
  %pshm = alloca %struct.gs_shading_mesh_s*, align 8
  %cs = alloca %struct.shade_coord_stream_s, align 8
  %vertex = alloca %struct.shading_vertex_s*, align 8
  %color_buffer = alloca i8*, align 8
  %color_buffer_ptrs = alloca %struct.patch_color_s**, align 8
  %next = alloca %struct.shading_vertex_s, align 8
  %per_row = alloca i32, align 4
  %c = alloca %struct.patch_color_s*, align 8
  %cn = alloca %struct.patch_color_s*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_shading_s* %psh0, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %rect, %struct.gs_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect_clip, %struct.gs_fixed_rect_s** %rect_clip.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_LfGt_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh0.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_shading_s* %1 to %struct.gs_shading_LfGt_s*
  store %struct.gs_shading_LfGt_s* %2, %struct.gs_shading_LfGt_s** %psh, align 8, !tbaa !1
  %3 = bitcast %struct.patch_fill_state_s* %pfs to i8*
  call void @llvm.lifetime.start(i64 728, i8* %3) #1
  %4 = bitcast %struct.gs_shading_mesh_s** %pshm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_shading_LfGt_s*, %struct.gs_shading_LfGt_s** %psh, align 8, !tbaa !1
  %6 = bitcast %struct.gs_shading_LfGt_s* %5 to %struct.gs_shading_mesh_s*
  store %struct.gs_shading_mesh_s* %6, %struct.gs_shading_mesh_s** %pshm, align 8, !tbaa !1
  %7 = bitcast %struct.shade_coord_stream_s* %cs to i8*
  call void @llvm.lifetime.start(i64 424, i8* %7) #1
  %8 = bitcast %struct.shading_vertex_s** %vertex to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.shading_vertex_s* null, %struct.shading_vertex_s** %vertex, align 8, !tbaa !1
  %9 = bitcast i8** %color_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i8* null, i8** %color_buffer, align 8, !tbaa !1
  %10 = bitcast %struct.patch_color_s*** %color_buffer_ptrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct.patch_color_s** null, %struct.patch_color_s*** %color_buffer_ptrs, align 8, !tbaa !1
  %11 = bitcast %struct.shading_vertex_s* %next to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast i32* %per_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_shading_LfGt_s*, %struct.gs_shading_LfGt_s** %psh, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_shading_LfGt_s, %struct.gs_shading_LfGt_s* %13, i32 0, i32 1
  %VerticesPerRow = getelementptr inbounds %struct.gs_shading_LfGt_params_s, %struct.gs_shading_LfGt_params_s* %params, i32 0, i32 11
  %14 = load i32, i32* %VerticesPerRow, align 4, !tbaa !55
  store i32 %14, i32* %per_row, align 4, !tbaa !5
  %15 = bitcast %struct.patch_color_s** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast %struct.patch_color_s** %cn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast %struct.patch_fill_state_s* %pfs to %struct.shading_fill_state_s*
  %20 = load %struct.gs_shading_LfGt_s*, %struct.gs_shading_LfGt_s** %psh, align 8, !tbaa !1
  %21 = bitcast %struct.gs_shading_LfGt_s* %20 to %struct.gs_shading_s*
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call i32 @shade_init_fill_state(%struct.shading_fill_state_s* %19, %struct.gs_shading_s* %21, %struct.gx_device_s* %22, %struct.gs_imager_state_s* %23) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %24, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %26 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %pshm, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_shading_mesh_s, %struct.gs_shading_mesh_s* %26, i32 0, i32 1
  %Function = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %params1, i32 0, i32 10
  %27 = load %struct.gs_function_s*, %struct.gs_function_s** %Function, align 8, !tbaa !21
  %Function2 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 9
  store %struct.gs_function_s* %27, %struct.gs_function_s** %Function2, align 8, !tbaa !24
  %rect3 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 8
  %28 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect_clip.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gs_fixed_rect_s* %rect3 to i8*
  %30 = bitcast %struct.gs_fixed_rect_s* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 4, i1 false), !tbaa.struct !11
  %call4 = call i32 @init_patch_fill_state(%struct.patch_fill_state_s* %pfs) #4
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %31, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %out

if.end.7:                                         ; preds = %if.end
  %call8 = call i8* @reserve_colors(%struct.patch_fill_state_s* %pfs, %struct.patch_color_s** %cn, i32 1) #4
  %32 = load %struct.patch_color_s*, %struct.patch_color_s** %cn, align 8, !tbaa !1
  %c9 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %next, i32 0, i32 1
  store %struct.patch_color_s* %32, %struct.patch_color_s** %c9, align 8, !tbaa !29
  %33 = load %struct.gs_shading_LfGt_s*, %struct.gs_shading_LfGt_s** %psh, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_shading_LfGt_s, %struct.gs_shading_LfGt_s* %33, i32 0, i32 1
  %34 = bitcast %struct.gs_shading_LfGt_params_s* %params10 to %struct.gs_shading_mesh_params_s*
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  call void @shade_next_init(%struct.shade_coord_stream_s* %cs, %struct.gs_shading_mesh_params_s* %34, %struct.gs_imager_state_s* %35) #4
  %36 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %36, i32 0, i32 1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !58
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %38 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !68
  %39 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %39, i32 0, i32 1
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !58
  %41 = load i32, i32* %per_row, align 4, !tbaa !5
  %call12 = call i8* %38(%struct.gs_memory_s* %40, i32 %41, i32 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #4
  %42 = bitcast i8* %call12 to %struct.shading_vertex_s*
  store %struct.shading_vertex_s* %42, %struct.shading_vertex_s** %vertex, align 8, !tbaa !1
  %43 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vertex, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.shading_vertex_s* %43, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.7
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %out

if.end.15:                                        ; preds = %if.end.7
  %44 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %44, i32 0, i32 1
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !58
  %procs17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs17, i32 0, i32 7
  %46 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !71
  %47 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %47, i32 0, i32 1
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !58
  %color_stack_step = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 28
  %49 = load i32, i32* %color_stack_step, align 4, !tbaa !72
  %50 = load i32, i32* %per_row, align 4, !tbaa !5
  %mul = mul nsw i32 %49, %50
  %call19 = call i8* %46(%struct.gs_memory_s* %48, i32 %mul, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #4
  store i8* %call19, i8** %color_buffer, align 8, !tbaa !1
  %51 = load i8*, i8** %color_buffer, align 8, !tbaa !1
  %cmp20 = icmp eq i8* %51, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %out

if.end.22:                                        ; preds = %if.end.15
  %52 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %52, i32 0, i32 1
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory23, align 8, !tbaa !58
  %procs24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 1
  %alloc_bytes25 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs24, i32 0, i32 7
  %54 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes25, align 8, !tbaa !71
  %55 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %55, i32 0, i32 1
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory26, align 8, !tbaa !58
  %57 = load i32, i32* %per_row, align 4, !tbaa !5
  %conv = sext i32 %57 to i64
  %mul27 = mul i64 8, %conv
  %conv28 = trunc i64 %mul27 to i32
  %call29 = call i8* %54(%struct.gs_memory_s* %56, i32 %conv28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #4
  %58 = bitcast i8* %call29 to %struct.patch_color_s**
  store %struct.patch_color_s** %58, %struct.patch_color_s*** %color_buffer_ptrs, align 8, !tbaa !1
  %59 = load %struct.patch_color_s**, %struct.patch_color_s*** %color_buffer_ptrs, align 8, !tbaa !1
  %cmp30 = icmp eq %struct.patch_color_s** %59, null
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.22
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %out

if.end.33:                                        ; preds = %if.end.22
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.33
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %61 = load i32, i32* %per_row, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %60, %61
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = load i8*, i8** %color_buffer, align 8, !tbaa !1
  %color_stack_step36 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 28
  %63 = load i32, i32* %color_stack_step36, align 4, !tbaa !72
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %mul37 = mul nsw i32 %63, %64
  %idx.ext = sext i32 %mul37 to i64
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 %idx.ext
  %65 = bitcast i8* %add.ptr to %struct.patch_color_s*
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %66 to i64
  %67 = load %struct.patch_color_s**, %struct.patch_color_s*** %color_buffer_ptrs, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.patch_color_s*, %struct.patch_color_s** %67, i64 %idxprom
  store %struct.patch_color_s* %65, %struct.patch_color_s** %arrayidx, align 8, !tbaa !1
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %68 to i64
  %69 = load %struct.patch_color_s**, %struct.patch_color_s*** %color_buffer_ptrs, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds %struct.patch_color_s*, %struct.patch_color_s** %69, i64 %idxprom38
  %70 = load %struct.patch_color_s*, %struct.patch_color_s** %arrayidx39, align 8, !tbaa !1
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %71 to i64
  %72 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vertex, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %72, i64 %idxprom40
  %c42 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %arrayidx41, i32 0, i32 1
  store %struct.patch_color_s* %70, %struct.patch_color_s** %c42, align 8, !tbaa !29
  %73 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %pshm, align 8, !tbaa !1
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %74 to i64
  %75 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vertex, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %75, i64 %idxprom43
  %76 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %76 to i64
  %77 = load %struct.patch_color_s**, %struct.patch_color_s*** %color_buffer_ptrs, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds %struct.patch_color_s*, %struct.patch_color_s** %77, i64 %idxprom45
  %78 = load %struct.patch_color_s*, %struct.patch_color_s** %arrayidx46, align 8, !tbaa !1
  %call47 = call i32 @Gt_next_vertex(%struct.gs_shading_mesh_s* %73, %struct.shade_coord_stream_s* %cs, %struct.shading_vertex_s* %arrayidx44, %struct.patch_color_s* %78) #4
  store i32 %call47, i32* %code, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %for.body
  br label %out

if.end.51:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end.106, %for.end
  %s = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 1
  %80 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !73
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %80, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %81 = load i8*, i8** %ptr, align 8, !tbaa !74
  %s52 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 1
  %82 = load %struct.stream_s*, %struct.stream_s** %s52, align 8, !tbaa !73
  %cursor53 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %82, i32 0, i32 5
  %r54 = bitcast %union.stream_cursor_s* %cursor53 to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r54, i32 0, i32 1
  %83 = load i8*, i8** %limit, align 8, !tbaa !76
  %cmp55 = icmp uge i8* %81, %83
  br i1 %cmp55, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %s57 = getelementptr inbounds %struct.shade_coord_stream_s, %struct.shade_coord_stream_s* %cs, i32 0, i32 1
  %84 = load %struct.stream_s*, %struct.stream_s** %s57, align 8, !tbaa !73
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %84, i32 0, i32 9
  %85 = load i16, i16* %end_status, align 2, !tbaa !77
  %conv58 = sext i16 %85 to i32
  %cmp59 = icmp eq i32 %conv58, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %86 = phi i1 [ false, %while.cond ], [ %cmp59, %land.rhs ]
  %lnot = xor i1 %86, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %87 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %pshm, align 8, !tbaa !1
  %88 = load %struct.patch_color_s*, %struct.patch_color_s** %cn, align 8, !tbaa !1
  %call61 = call i32 @Gt_next_vertex(%struct.gs_shading_mesh_s* %87, %struct.shade_coord_stream_s* %cs, %struct.shading_vertex_s* %next, %struct.patch_color_s* %88) #4
  store i32 %call61, i32* %code, align 4, !tbaa !5
  %89 = load i32, i32* %code, align 4, !tbaa !5
  %cmp62 = icmp slt i32 %89, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %while.body
  br label %out

if.end.65:                                        ; preds = %while.body
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.104, %if.end.65
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %91 = load i32, i32* %per_row, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %90, %91
  br i1 %cmp67, label %for.body.69, label %for.end.106

for.body.69:                                      ; preds = %for.cond.66
  %92 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 %92, 1
  %idxprom70 = sext i32 %sub to i64
  %93 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vertex, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %93, i64 %idxprom70
  %94 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %94 to i64
  %95 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vertex, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %95, i64 %idxprom72
  %call74 = call i32 @Gt_fill_triangle(%struct.patch_fill_state_s* %pfs, %struct.shading_vertex_s* %arrayidx71, %struct.shading_vertex_s* %arrayidx73, %struct.shading_vertex_s* %next) #4
  store i32 %call74, i32* %code, align 4, !tbaa !5
  %96 = load i32, i32* %code, align 4, !tbaa !5
  %cmp75 = icmp slt i32 %96, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %for.body.69
  br label %out

if.end.78:                                        ; preds = %for.body.69
  %97 = load i32, i32* %i, align 4, !tbaa !5
  %sub79 = sub nsw i32 %97, 1
  %idxprom80 = sext i32 %sub79 to i64
  %98 = load %struct.patch_color_s**, %struct.patch_color_s*** %color_buffer_ptrs, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds %struct.patch_color_s*, %struct.patch_color_s** %98, i64 %idxprom80
  %99 = load %struct.patch_color_s*, %struct.patch_color_s** %arrayidx81, align 8, !tbaa !1
  store %struct.patch_color_s* %99, %struct.patch_color_s** %c, align 8, !tbaa !1
  %100 = load i32, i32* %i, align 4, !tbaa !5
  %sub82 = sub nsw i32 %100, 1
  %idxprom83 = sext i32 %sub82 to i64
  %101 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vertex, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %101, i64 %idxprom83
  %102 = bitcast %struct.shading_vertex_s* %arrayidx84 to i8*
  %103 = bitcast %struct.shading_vertex_s* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 16, i32 8, i1 false), !tbaa.struct !31
  %104 = load %struct.patch_color_s*, %struct.patch_color_s** %cn, align 8, !tbaa !1
  %105 = load i32, i32* %i, align 4, !tbaa !5
  %sub85 = sub nsw i32 %105, 1
  %idxprom86 = sext i32 %sub85 to i64
  %106 = load %struct.patch_color_s**, %struct.patch_color_s*** %color_buffer_ptrs, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds %struct.patch_color_s*, %struct.patch_color_s** %106, i64 %idxprom86
  store %struct.patch_color_s* %104, %struct.patch_color_s** %arrayidx87, align 8, !tbaa !1
  %107 = load %struct.patch_color_s*, %struct.patch_color_s** %c, align 8, !tbaa !1
  store %struct.patch_color_s* %107, %struct.patch_color_s** %cn, align 8, !tbaa !1
  %c88 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %next, i32 0, i32 1
  store %struct.patch_color_s* %107, %struct.patch_color_s** %c88, align 8, !tbaa !29
  %108 = load %struct.gs_shading_mesh_s*, %struct.gs_shading_mesh_s** %pshm, align 8, !tbaa !1
  %109 = load %struct.patch_color_s*, %struct.patch_color_s** %cn, align 8, !tbaa !1
  %call89 = call i32 @Gt_next_vertex(%struct.gs_shading_mesh_s* %108, %struct.shade_coord_stream_s* %cs, %struct.shading_vertex_s* %next, %struct.patch_color_s* %109) #4
  store i32 %call89, i32* %code, align 4, !tbaa !5
  %110 = load i32, i32* %code, align 4, !tbaa !5
  %cmp90 = icmp slt i32 %110, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.78
  br label %out

if.end.93:                                        ; preds = %if.end.78
  %111 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom94 = sext i32 %111 to i64
  %112 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vertex, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %112, i64 %idxprom94
  %113 = load i32, i32* %i, align 4, !tbaa !5
  %sub96 = sub nsw i32 %113, 1
  %idxprom97 = sext i32 %sub96 to i64
  %114 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vertex, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %114, i64 %idxprom97
  %call99 = call i32 @Gt_fill_triangle(%struct.patch_fill_state_s* %pfs, %struct.shading_vertex_s* %arrayidx95, %struct.shading_vertex_s* %arrayidx98, %struct.shading_vertex_s* %next) #4
  store i32 %call99, i32* %code, align 4, !tbaa !5
  %115 = load i32, i32* %code, align 4, !tbaa !5
  %cmp100 = icmp slt i32 %115, 0
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.93
  br label %out

if.end.103:                                       ; preds = %if.end.93
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %116 = load i32, i32* %i, align 4, !tbaa !5
  %inc105 = add nsw i32 %116, 1
  store i32 %inc105, i32* %i, align 4, !tbaa !5
  br label %for.cond.66

for.end.106:                                      ; preds = %for.cond.66
  %117 = load i32, i32* %per_row, align 4, !tbaa !5
  %sub107 = sub nsw i32 %117, 1
  %idxprom108 = sext i32 %sub107 to i64
  %118 = load %struct.patch_color_s**, %struct.patch_color_s*** %color_buffer_ptrs, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds %struct.patch_color_s*, %struct.patch_color_s** %118, i64 %idxprom108
  %119 = load %struct.patch_color_s*, %struct.patch_color_s** %arrayidx109, align 8, !tbaa !1
  store %struct.patch_color_s* %119, %struct.patch_color_s** %c, align 8, !tbaa !1
  %120 = load i32, i32* %per_row, align 4, !tbaa !5
  %sub110 = sub nsw i32 %120, 1
  %idxprom111 = sext i32 %sub110 to i64
  %121 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vertex, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %121, i64 %idxprom111
  %122 = bitcast %struct.shading_vertex_s* %arrayidx112 to i8*
  %123 = bitcast %struct.shading_vertex_s* %next to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 16, i32 8, i1 false), !tbaa.struct !31
  %124 = load %struct.patch_color_s*, %struct.patch_color_s** %cn, align 8, !tbaa !1
  %125 = load i32, i32* %per_row, align 4, !tbaa !5
  %sub113 = sub nsw i32 %125, 1
  %idxprom114 = sext i32 %sub113 to i64
  %126 = load %struct.patch_color_s**, %struct.patch_color_s*** %color_buffer_ptrs, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds %struct.patch_color_s*, %struct.patch_color_s** %126, i64 %idxprom114
  store %struct.patch_color_s* %124, %struct.patch_color_s** %arrayidx115, align 8, !tbaa !1
  %127 = load %struct.patch_color_s*, %struct.patch_color_s** %c, align 8, !tbaa !1
  store %struct.patch_color_s* %127, %struct.patch_color_s** %cn, align 8, !tbaa !1
  %c116 = getelementptr inbounds %struct.shading_vertex_s, %struct.shading_vertex_s* %next, i32 0, i32 1
  store %struct.patch_color_s* %127, %struct.patch_color_s** %c116, align 8, !tbaa !29
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %out

out:                                              ; preds = %while.end, %if.then.102, %if.then.92, %if.then.77, %if.then.64, %if.then.50, %if.then.32, %if.then.21, %if.then.14, %if.then.6
  %128 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory117 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %128, i32 0, i32 1
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory117, align 8, !tbaa !58
  %procs118 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %129, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs118, i32 0, i32 2
  %130 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !78
  %131 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory119 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %131, i32 0, i32 1
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory119, align 8, !tbaa !58
  %133 = load %struct.shading_vertex_s*, %struct.shading_vertex_s** %vertex, align 8, !tbaa !1
  %134 = bitcast %struct.shading_vertex_s* %133 to i8*
  call void %130(%struct.gs_memory_s* %132, i8* %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #4
  %135 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory120 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %135, i32 0, i32 1
  %136 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory120, align 8, !tbaa !58
  %procs121 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %136, i32 0, i32 1
  %free_object122 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs121, i32 0, i32 2
  %137 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object122, align 8, !tbaa !78
  %138 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory123 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %138, i32 0, i32 1
  %139 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory123, align 8, !tbaa !58
  %140 = load i8*, i8** %color_buffer, align 8, !tbaa !1
  call void %137(%struct.gs_memory_s* %139, i8* %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #4
  %141 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory124 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %141, i32 0, i32 1
  %142 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory124, align 8, !tbaa !58
  %procs125 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %142, i32 0, i32 1
  %free_object126 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs125, i32 0, i32 2
  %143 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object126, align 8, !tbaa !78
  %144 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %memory127 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %144, i32 0, i32 1
  %145 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory127, align 8, !tbaa !58
  %146 = load %struct.patch_color_s**, %struct.patch_color_s*** %color_buffer_ptrs, align 8, !tbaa !1
  %147 = bitcast %struct.patch_color_s** %146 to i8*
  call void %143(%struct.gs_memory_s* %145, i8* %147, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #4
  %color_stack = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 30
  %148 = load i8*, i8** %color_stack, align 8, !tbaa !40
  call void @release_colors(%struct.patch_fill_state_s* %pfs, i8* %148, i32 1) #4
  %icclink = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 6
  %149 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink, align 8, !tbaa !28
  %cmp128 = icmp ne %struct.gsicc_link_s* %149, null
  br i1 %cmp128, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %out
  %icclink131 = getelementptr inbounds %struct.patch_fill_state_s, %struct.patch_fill_state_s* %pfs, i32 0, i32 6
  %150 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink131, align 8, !tbaa !28
  call void @gsicc_release_link(%struct.gsicc_link_s* %150) #4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %out
  %call133 = call i32 @term_patch_fill_state(%struct.patch_fill_state_s* %pfs) #4
  %tobool = icmp ne i32 %call133, 0
  br i1 %tobool, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.end.132
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.135:                                       ; preds = %if.end.132
  %151 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %151, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.135, %if.then.134, %if.then
  %152 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast %struct.patch_color_s** %cn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast %struct.patch_color_s** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i32* %per_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast %struct.shading_vertex_s* %next to i8*
  call void @llvm.lifetime.end(i64 16, i8* %157) #1
  %158 = bitcast %struct.patch_color_s*** %color_buffer_ptrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast i8** %color_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast %struct.shading_vertex_s** %vertex to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast %struct.shade_coord_stream_s* %cs to i8*
  call void @llvm.lifetime.end(i64 424, i8* %161) #1
  %162 = bitcast %struct.gs_shading_mesh_s** %pshm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast %struct.patch_fill_state_s* %pfs to i8*
  call void @llvm.lifetime.end(i64 728, i8* %163) #1
  %164 = bitcast %struct.gs_shading_LfGt_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = load i32, i32* %retval
  ret i32 %165
}

declare i32 @shade_next_vertex(%struct.shade_coord_stream_s*, %struct.shading_vertex_s*, %struct.patch_color_s*) #2

declare i32 @mesh_padding(%struct.patch_fill_state_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.patch_color_s*, %struct.patch_color_s*) #2

declare i32 @mesh_triangle(%struct.patch_fill_state_s*, %struct.shading_vertex_s*, %struct.shading_vertex_s*, %struct.shading_vertex_s*) #2

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
!7 = !{!8, !2, i64 304}
!8 = !{!"mesh_fill_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !2, i64 288, !2, i64 296, !2, i64 304, !9, i64 312}
!9 = !{!"gs_fixed_rect_s", !10, i64 0, !10, i64 8}
!10 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!11 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5}
!12 = !{!13, !6, i64 144}
!13 = !{!"gs_shading_FfGt_s", !14, i64 0, !16, i64 16}
!14 = !{!"gs_shading_head_s", !3, i64 0, !15, i64 8}
!15 = !{!"gs_shading_procs_s", !2, i64 0}
!16 = !{!"gs_shading_FfGt_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !17, i64 32, !6, i64 64, !20, i64 72, !6, i64 104, !6, i64 108, !2, i64 112, !2, i64 120, !6, i64 128}
!17 = !{!"gs_rect_s", !18, i64 0, !18, i64 16}
!18 = !{!"gs_point_s", !19, i64 0, !19, i64 8}
!19 = !{!"double", !3, i64 0}
!20 = !{!"gs_data_source_s", !2, i64 0, !3, i64 8, !3, i64 16}
!21 = !{!22, !2, i64 136}
!22 = !{!"gs_shading_mesh_s", !14, i64 0, !23, i64 16}
!23 = !{!"gs_shading_mesh_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !17, i64 32, !6, i64 64, !20, i64 72, !6, i64 104, !6, i64 108, !2, i64 112, !2, i64 120}
!24 = !{!25, !2, i64 328}
!25 = !{!"patch_fill_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !2, i64 288, !2, i64 296, !2, i64 304, !9, i64 312, !2, i64 328, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !2, i64 352, !2, i64 360, !6, i64 368, !6, i64 372, !26, i64 376, !6, i64 640, !6, i64 644, !19, i64 648, !6, i64 656, !6, i64 660, !6, i64 664, !6, i64 668, !6, i64 672, !6, i64 676, !6, i64 680, !2, i64 688, !2, i64 696, !2, i64 704, !2, i64 712, !2, i64 720}
!26 = !{!"gs_client_color_s", !2, i64 0, !27, i64 8}
!27 = !{!"gs_paint_color_s", !3, i64 0}
!28 = !{!25, !2, i64 296}
!29 = !{!30, !2, i64 8}
!30 = !{!"shading_vertex_s", !10, i64 0, !2, i64 8}
!31 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 8, !1}
!32 = !{!33, !2, i64 408}
!33 = !{!"shade_coord_stream_s", !34, i64 0, !2, i64 352, !6, i64 360, !6, i64 364, !6, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416}
!34 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !35, i64 152, !3, i64 154, !3, i64 155, !36, i64 160, !37, i64 176, !38, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !35, i64 264, !35, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !39, i64 312, !6, i64 328, !37, i64 336, !37, i64 344}
!35 = !{!"short", !3, i64 0}
!36 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!37 = !{!"long", !3, i64 0}
!38 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!39 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!40 = !{!25, !2, i64 696}
!41 = !{!33, !2, i64 416}
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !3, i64 0}
!44 = !{!45, !2, i64 8}
!45 = !{!"gs_function_s", !46, i64 0, !48, i64 72}
!46 = !{!"gs_function_head_s", !6, i64 0, !47, i64 8}
!47 = !{!"gs_function_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!48 = !{!"gs_function_params_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24}
!49 = !{!22, !2, i64 16}
!50 = !{!51, !2, i64 0}
!51 = !{!"gs_color_space_s", !2, i64 0, !52, i64 8, !37, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!52 = !{!"rc_header_s", !37, i64 0, !2, i64 8, !2, i64 16}
!53 = !{!54, !2, i64 40}
!54 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!55 = !{!56, !6, i64 144}
!56 = !{!"gs_shading_LfGt_s", !14, i64 0, !57, i64 16}
!57 = !{!"gs_shading_LfGt_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !17, i64 32, !6, i64 64, !20, i64 72, !6, i64 104, !6, i64 108, !2, i64 112, !2, i64 120, !6, i64 128}
!58 = !{!59, !2, i64 8}
!59 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !60, i64 24, !6, i64 128, !63, i64 132, !6, i64 168, !18, i64 176, !18, i64 192, !6, i64 208, !6, i64 212, !35, i64 216, !3, i64 220, !64, i64 224, !64, i64 228, !65, i64 232, !37, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !43, i64 296, !10, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !43, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !66, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !67, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !67, i64 1336}
!60 = !{!"gx_line_params_s", !43, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !6, i64 36, !61, i64 40, !62, i64 64}
!61 = !{!"gs_matrix_s", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20}
!62 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !43, i64 12, !6, i64 16, !43, i64 20, !6, i64 24, !6, i64 28, !43, i64 32}
!63 = !{!"gs_matrix_fixed_s", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!64 = !{!"gs_transparency_source_s", !43, i64 0}
!65 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!66 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!67 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !37, i64 16, !3, i64 24}
!68 = !{!69, !2, i64 88}
!69 = !{!"gs_memory_s", !2, i64 0, !70, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!70 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!71 = !{!69, !2, i64 64}
!72 = !{!25, !6, i64 680}
!73 = !{!33, !2, i64 352}
!74 = !{!75, !2, i64 0}
!75 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!76 = !{!75, !2, i64 8}
!77 = !{!34, !35, i64 152}
!78 = !{!69, !2, i64 24}
