; ModuleID = './zimage3.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_file_path_s = type opaque
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
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.gs_image3_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, %struct.gs_data_image_s }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
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
%struct.gs_devicen_color_map_s = type opaque
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type opaque
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
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.gx_device_halftone_s = type opaque
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_imager_state_s = type opaque
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon.0 }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon.0 = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gs_data_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32 }
%struct.image_params_s = type { i32, [65 x %struct.ref_s], float* }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }
%struct.gs_image4_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, [130 x i32], i32 }

@.str = private unnamed_addr constant [8 x i8] c"ll3dict\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"1.image3\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"1.image4\00", align 1
@zimage3_op_defs = constant [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zimage3 }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zimage4 }, %struct.op_def zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [15 x i8] c"InterleaveType\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"DataDict\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"MaskDict\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ImageType\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"MaskColor\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zimage3(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %image = alloca %struct.gs_image3_s, align 8
  %interleave_type = alloca i32, align 4
  %pDataDict = alloca %struct.ref_s*, align 8
  %pMaskDict = alloca %struct.ref_s*, align 8
  %ip_data = alloca %struct.image_params_s, align 8
  %ip_mask = alloca %struct.image_params_s, align 8
  %ignored = alloca i32, align 4
  %code = alloca i32, align 4
  %mcode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_image3_s* %image to i8*
  call void @llvm.lifetime.start(i64 1160, i8* %3) #1
  %4 = bitcast i32* %interleave_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.ref_s** %pDataDict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.ref_s** %pMaskDict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.image_params_s* %ip_data to i8*
  call void @llvm.lifetime.start(i64 1056, i8* %7) #1
  %8 = bitcast %struct.image_params_s* %ip_mask to i8*
  call void @llvm.lifetime.start(i64 1056, i8* %8) #1
  %9 = bitcast i32* %ignored to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %mcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %13 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %14 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %15) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %17 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %17, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %18 = load i16, i16* %type_attrs3, align 2, !tbaa !20
  %conv4 = zext i16 %18 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call7 = call i32 @dict_int_param(%struct.ref_s* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 1, i32 3, i32 -1, i32* %interleave_type) #4
  store i32 %call7, i32* %code, align 4, !tbaa !21
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  %20 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %do.end
  %21 = load i32, i32* %interleave_type, align 4, !tbaa !21
  call void @gs_image3_t_init(%struct.gs_image3_s* %image, %struct.gs_color_space_s* null, i32 %21) #4
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call12 = call i32 @dict_find_string(%struct.ref_s* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s** %pDataDict) #4
  %cmp13 = icmp sle i32 %call12, 0
  br i1 %cmp13, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call15 = call i32 @dict_find_string(%struct.ref_s* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), %struct.ref_s** %pMaskDict) #4
  %cmp16 = icmp sle i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.11
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %lor.lhs.false
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %25 = load %struct.ref_s*, %struct.ref_s** %pDataDict, align 8, !tbaa !1
  %26 = bitcast %struct.gs_image3_s* %image to %struct.gs_pixel_image_s*
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 0
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call20 = call %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s* %28) #4
  %call21 = call i32 @pixel_image_params(%struct.gs_context_state_s* %24, %struct.ref_s* %25, %struct.gs_pixel_image_s* %26, %struct.image_params_s* %ip_data, i32 12, i32 0, %struct.gs_color_space_s* %call20) #4
  store i32 %call21, i32* %code, align 4, !tbaa !21
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.36, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.end.19
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !23
  %31 = bitcast %struct.gs_ref_memory_s* %30 to %struct.gs_memory_s*
  %32 = load %struct.ref_s*, %struct.ref_s** %pMaskDict, align 8, !tbaa !1
  %MaskDict = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %image, i32 0, i32 11
  %call25 = call i32 @data_image_params(%struct.gs_memory_s* %31, %struct.ref_s* %32, %struct.gs_data_image_s* %MaskDict, %struct.image_params_s* %ip_mask, i32 0, i32 1, i32 12, i32 0, i32 0) #4
  store i32 %call25, i32* %code, align 4, !tbaa !21
  store i32 %call25, i32* %mcode, align 4, !tbaa !21
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.36, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.24
  %33 = load %struct.ref_s*, %struct.ref_s** %pDataDict, align 8, !tbaa !1
  %call29 = call i32 @dict_int_param(%struct.ref_s* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 1, i32 1, i32 0, i32* %ignored) #4
  store i32 %call29, i32* %code, align 4, !tbaa !21
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.36, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.28
  %34 = load %struct.ref_s*, %struct.ref_s** %pMaskDict, align 8, !tbaa !1
  %call33 = call i32 @dict_int_param(%struct.ref_s* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 1, i32 1, i32 0, i32* %ignored) #4
  store i32 %call33, i32* %code, align 4, !tbaa !21
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.32, %lor.lhs.false.28, %lor.lhs.false.24, %if.end.19
  %35 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %lor.lhs.false.32
  %MultipleDataSources = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %ip_data, i32 0, i32 0
  %36 = load i32, i32* %MultipleDataSources, align 4, !tbaa !24
  %tobool38 = icmp ne i32 %36, 0
  br i1 %tobool38, label %land.lhs.true, label %lor.lhs.false.41

land.lhs.true:                                    ; preds = %if.end.37
  %37 = load i32, i32* %interleave_type, align 4, !tbaa !21
  %cmp39 = icmp ne i32 %37, 3
  br i1 %cmp39, label %if.then.49, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %land.lhs.true, %if.end.37
  %MultipleDataSources42 = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %ip_mask, i32 0, i32 0
  %38 = load i32, i32* %MultipleDataSources42, align 4, !tbaa !24
  %tobool43 = icmp ne i32 %38, 0
  br i1 %tobool43, label %if.then.49, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.41
  %39 = load i32, i32* %mcode, align 4, !tbaa !21
  %InterleaveType = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %image, i32 0, i32 10
  %40 = load i32, i32* %InterleaveType, align 4, !tbaa !26
  %cmp45 = icmp ne i32 %40, 3
  %conv46 = zext i1 %cmp45 to i32
  %cmp47 = icmp ne i32 %39, %conv46
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %lor.lhs.false.44, %lor.lhs.false.41, %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %lor.lhs.false.44
  %InterleaveType51 = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %image, i32 0, i32 10
  %41 = load i32, i32* %InterleaveType51, align 4, !tbaa !26
  %cmp52 = icmp eq i32 %41, 3
  br i1 %cmp52, label %if.then.54, label %if.end.63

if.then.54:                                       ; preds = %if.end.50
  %DataSource = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %ip_data, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %DataSource, i32 0, i64 1
  %42 = bitcast %struct.ref_s* %arrayidx55 to i8*
  %DataSource56 = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %ip_data, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %DataSource56, i32 0, i64 0
  %43 = bitcast %struct.ref_s* %arrayidx57 to i8*
  %call58 = call i8* @memmove(i8* %42, i8* %43, i64 1024) #5
  %DataSource59 = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %ip_data, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %DataSource59, i32 0, i64 0
  %DataSource61 = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %ip_mask, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %DataSource61, i32 0, i64 0
  %44 = bitcast %struct.ref_s* %arrayidx60 to i8*
  %45 = bitcast %struct.ref_s* %arrayidx62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 16, i32 8, i1 false), !tbaa.struct !31
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.54, %if.end.50
  %Interpolate = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %image, i32 0, i32 6
  store i32 0, i32* %Interpolate, align 4, !tbaa !35
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %47 = bitcast %struct.gs_image3_s* %image to %struct.gs_pixel_image_s*
  %DataSource64 = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %ip_data, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %DataSource64, i32 0, i64 0
  %CombineWithColor = getelementptr inbounds %struct.gs_image3_s, %struct.gs_image3_s* %image, i32 0, i32 8
  %48 = load i32, i32* %CombineWithColor, align 4, !tbaa !36
  %call66 = call i32 @zimage_setup(%struct.gs_context_state_s* %46, %struct.gs_pixel_image_s* %47, %struct.ref_s* %arrayidx65, i32 %48, i32 1) #4
  store i32 %call66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.63, %if.then.49, %if.then.36, %if.then.18, %if.then.10, %if.then.5, %if.then
  %49 = bitcast i32* %mcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %ignored to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast %struct.image_params_s* %ip_mask to i8*
  call void @llvm.lifetime.end(i64 1056, i8* %52) #1
  %53 = bitcast %struct.image_params_s* %ip_data to i8*
  call void @llvm.lifetime.end(i64 1056, i8* %53) #1
  %54 = bitcast %struct.ref_s** %pMaskDict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast %struct.ref_s** %pDataDict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %interleave_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast %struct.gs_image3_s* %image to i8*
  call void @llvm.lifetime.end(i64 1160, i8* %57) #1
  %58 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal i32 @zimage4(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %image = alloca %struct.gs_image4_s, align 8
  %ip = alloca %struct.image_params_s, align 8
  %num_components = alloca i32, align 4
  %colors = alloca [130 x i32], align 16
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_image4_s* %image to i8*
  call void @llvm.lifetime.start(i64 1112, i8* %3) #1
  %4 = bitcast %struct.image_params_s* %ip to i8*
  call void @llvm.lifetime.start(i64 1056, i8* %4) #1
  %5 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call = call %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s* %7) #4
  %call1 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %call) #4
  store i32 %call1, i32* %num_components, align 4, !tbaa !21
  %8 = bitcast [130 x i32]* %colors to i8*
  call void @llvm.lifetime.start(i64 520, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  call void @gs_image4_t_init(%struct.gs_image4_s* %image, %struct.gs_color_space_s* null) #4
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %13 = bitcast %struct.gs_image4_s* %image to %struct.gs_pixel_image_s*
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 0
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs2, align 8, !tbaa !22
  %call3 = call %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s* %15) #4
  %call4 = call i32 @pixel_image_params(%struct.gs_context_state_s* %11, %struct.ref_s* %12, %struct.gs_pixel_image_s* %13, %struct.image_params_s* %ip, i32 12, i32 0, %struct.gs_color_space_s* %call3) #4
  store i32 %call4, i32* %code, align 4, !tbaa !21
  %16 = load i32, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !23
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %22 = load i32, i32* %num_components, align 4, !tbaa !21
  %mul = mul nsw i32 %22, 2
  %arraydecay = getelementptr inbounds [130 x i32], [130 x i32]* %colors, i32 0, i32 0
  %call5 = call i32 @dict_int_array_check_param(%struct.gs_memory_s* %20, %struct.ref_s* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 %mul, i32* %arraydecay, i32 0, i32 -15) #4
  store i32 %call5, i32* %code, align 4, !tbaa !21
  %23 = load i32, i32* %code, align 4, !tbaa !21
  %24 = load i32, i32* %num_components, align 4, !tbaa !21
  %cmp6 = icmp eq i32 %23, %24
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %MaskColor_is_range = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %image, i32 0, i32 10
  store i32 0, i32* %MaskColor_is_range, align 4, !tbaa !37
  store i32 0, i32* %i, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %25 = load i32, i32* %i, align 4, !tbaa !21
  %26 = load i32, i32* %code, align 4, !tbaa !21
  %cmp8 = icmp slt i32 %25, %26
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds [130 x i32], [130 x i32]* %colors, i32 0, i64 %idxprom
  %28 = load i32, i32* %arrayidx, align 4, !tbaa !21
  %cmp9 = icmp slt i32 %28, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom10 = sext i32 %29 to i64
  %arrayidx11 = getelementptr inbounds [130 x i32], [130 x i32]* %colors, i32 0, i64 %idxprom10
  %30 = load i32, i32* %arrayidx11, align 4, !tbaa !21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %30, %cond.false ]
  %31 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom12 = sext i32 %31 to i64
  %MaskColor = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %image, i32 0, i32 11
  %arrayidx13 = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor, i32 0, i64 %idxprom12
  store i32 %cond, i32* %arrayidx13, align 4, !tbaa !21
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %32 = load i32, i32* %i, align 4, !tbaa !21
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.63

if.else:                                          ; preds = %if.end
  %33 = load i32, i32* %code, align 4, !tbaa !21
  %34 = load i32, i32* %num_components, align 4, !tbaa !21
  %mul14 = mul nsw i32 %34, 2
  %cmp15 = icmp eq i32 %33, %mul14
  br i1 %cmp15, label %if.then.16, label %if.else.56

if.then.16:                                       ; preds = %if.else
  %MaskColor_is_range17 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %image, i32 0, i32 10
  store i32 1, i32* %MaskColor_is_range17, align 4, !tbaa !37
  store i32 0, i32* %i, align 4, !tbaa !21
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.53, %if.then.16
  %35 = load i32, i32* %i, align 4, !tbaa !21
  %36 = load i32, i32* %code, align 4, !tbaa !21
  %cmp19 = icmp slt i32 %35, %36
  br i1 %cmp19, label %for.body.20, label %for.end.55

for.body.20:                                      ; preds = %for.cond.18
  %37 = load i32, i32* %i, align 4, !tbaa !21
  %add = add nsw i32 %37, 1
  %idxprom21 = sext i32 %add to i64
  %arrayidx22 = getelementptr inbounds [130 x i32], [130 x i32]* %colors, i32 0, i64 %idxprom21
  %38 = load i32, i32* %arrayidx22, align 4, !tbaa !21
  %cmp23 = icmp slt i32 %38, 0
  br i1 %cmp23, label %if.then.24, label %if.else.32

if.then.24:                                       ; preds = %for.body.20
  %39 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom25 = sext i32 %39 to i64
  %MaskColor26 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %image, i32 0, i32 11
  %arrayidx27 = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor26, i32 0, i64 %idxprom25
  store i32 1, i32* %arrayidx27, align 4, !tbaa !21
  %40 = load i32, i32* %i, align 4, !tbaa !21
  %add28 = add nsw i32 %40, 1
  %idxprom29 = sext i32 %add28 to i64
  %MaskColor30 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %image, i32 0, i32 11
  %arrayidx31 = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor30, i32 0, i64 %idxprom29
  store i32 0, i32* %arrayidx31, align 4, !tbaa !21
  br label %if.end.52

if.else.32:                                       ; preds = %for.body.20
  %41 = load i32, i32* %i, align 4, !tbaa !21
  %add33 = add nsw i32 %41, 1
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds [130 x i32], [130 x i32]* %colors, i32 0, i64 %idxprom34
  %42 = load i32, i32* %arrayidx35, align 4, !tbaa !21
  %43 = load i32, i32* %i, align 4, !tbaa !21
  %add36 = add nsw i32 %43, 1
  %idxprom37 = sext i32 %add36 to i64
  %MaskColor38 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %image, i32 0, i32 11
  %arrayidx39 = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor38, i32 0, i64 %idxprom37
  store i32 %42, i32* %arrayidx39, align 4, !tbaa !21
  %44 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom40 = sext i32 %44 to i64
  %arrayidx41 = getelementptr inbounds [130 x i32], [130 x i32]* %colors, i32 0, i64 %idxprom40
  %45 = load i32, i32* %arrayidx41, align 4, !tbaa !21
  %cmp42 = icmp sgt i32 %45, 0
  br i1 %cmp42, label %cond.true.43, label %cond.false.46

cond.true.43:                                     ; preds = %if.else.32
  %46 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom44 = sext i32 %46 to i64
  %arrayidx45 = getelementptr inbounds [130 x i32], [130 x i32]* %colors, i32 0, i64 %idxprom44
  %47 = load i32, i32* %arrayidx45, align 4, !tbaa !21
  br label %cond.end.47

cond.false.46:                                    ; preds = %if.else.32
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.43
  %cond48 = phi i32 [ %47, %cond.true.43 ], [ 0, %cond.false.46 ]
  %48 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom49 = sext i32 %48 to i64
  %MaskColor50 = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %image, i32 0, i32 11
  %arrayidx51 = getelementptr inbounds [130 x i32], [130 x i32]* %MaskColor50, i32 0, i64 %idxprom49
  store i32 %cond48, i32* %arrayidx51, align 4, !tbaa !21
  br label %if.end.52

if.end.52:                                        ; preds = %cond.end.47, %if.then.24
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %49 = load i32, i32* %i, align 4, !tbaa !21
  %add54 = add nsw i32 %49, 2
  store i32 %add54, i32* %i, align 4, !tbaa !21
  br label %for.cond.18

for.end.55:                                       ; preds = %for.cond.18
  br label %if.end.62

if.else.56:                                       ; preds = %if.else
  %50 = load i32, i32* %code, align 4, !tbaa !21
  %cmp57 = icmp slt i32 %50, 0
  br i1 %cmp57, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %if.else.56
  %51 = load i32, i32* %code, align 4, !tbaa !21
  br label %cond.end.60

cond.false.59:                                    ; preds = %if.else.56
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.58
  %cond61 = phi i32 [ %51, %cond.true.58 ], [ -15, %cond.false.59 ]
  store i32 %cond61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %for.end.55
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %for.end
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %53 = bitcast %struct.gs_image4_s* %image to %struct.gs_pixel_image_s*
  %DataSource = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %ip, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %DataSource, i32 0, i64 0
  %CombineWithColor = getelementptr inbounds %struct.gs_image4_s, %struct.gs_image4_s* %image, i32 0, i32 8
  %54 = load i32, i32* %CombineWithColor, align 4, !tbaa !39
  %call65 = call i32 @zimage_setup(%struct.gs_context_state_s* %52, %struct.gs_pixel_image_s* %53, %struct.ref_s* %arrayidx64, i32 %54, i32 1) #4
  store i32 %call65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.63, %cond.end.60, %if.then
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast [130 x i32]* %colors to i8*
  call void @llvm.lifetime.end(i64 520, i8* %57) #1
  %58 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast %struct.image_params_s* %ip to i8*
  call void @llvm.lifetime.end(i64 1056, i8* %59) #1
  %60 = bitcast %struct.gs_image4_s* %image to i8*
  call void @llvm.lifetime.end(i64 1112, i8* %60) #1
  %61 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare void @gs_image3_t_init(%struct.gs_image3_s*, %struct.gs_color_space_s*, i32) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @pixel_image_params(%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_pixel_image_s*, %struct.image_params_s*, i32, i32, %struct.gs_color_space_s*) #2

declare %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s*) #2

declare i32 @data_image_params(%struct.gs_memory_s*, %struct.ref_s*, %struct.gs_data_image_s*, %struct.image_params_s*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @zimage_setup(%struct.gs_context_state_s*, %struct.gs_pixel_image_s*, %struct.ref_s*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #2

declare void @gs_image4_t_init(%struct.gs_image4_s*, %struct.gs_color_space_s*) #2

declare i32 @dict_int_array_check_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, i32, i32*, i32, i32) #2

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
!5 = !{!6, !2, i64 624}
!6 = !{!"gs_context_state_s", !2, i64 0, !7, i64 8, !9, i64 80, !10, i64 88, !10, i64 104, !13, i64 120, !13, i64 128, !13, i64 136, !9, i64 144, !9, i64 148, !10, i64 152, !10, i64 168, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !14, i64 264, !14, i64 304, !2, i64 344, !9, i64 352, !2, i64 360, !15, i64 368, !17, i64 520, !18, i64 624, !2, i64 720}
!7 = !{!"gs_dual_memory_s", !2, i64 0, !8, i64 8, !9, i64 48, !2, i64 56, !9, i64 64, !9, i64 68}
!8 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!9 = !{!"int", !3, i64 0}
!10 = !{!"ref_s", !11, i64 0, !3, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2, !9, i64 4}
!12 = !{!"short", !3, i64 0}
!13 = !{!"long", !3, i64 0}
!14 = !{!"op_array_table_s", !10, i64 0, !2, i64 16, !9, i64 24, !9, i64 28, !9, i64 32}
!15 = !{!"dict_stack_s", !16, i64 0, !9, i64 96, !9, i64 100, !9, i64 104, !2, i64 112, !9, i64 120, !2, i64 128, !10, i64 136}
!16 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !9, i64 40, !9, i64 44, !10, i64 48, !9, i64 64, !9, i64 68, !9, i64 72, !2, i64 80, !2, i64 88}
!17 = !{!"exec_stack_s", !16, i64 0, !2, i64 96}
!18 = !{!"op_stack_s", !16, i64 0}
!19 = !{!3, !3, i64 0}
!20 = !{!10, !12, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!6, !2, i64 0}
!23 = !{!6, !2, i64 8}
!24 = !{!25, !9, i64 0}
!25 = !{!"image_params_s", !9, i64 0, !3, i64 8, !2, i64 1048}
!26 = !{!27, !9, i64 584}
!27 = !{!"gs_image3_s", !2, i64 0, !28, i64 8, !9, i64 32, !9, i64 36, !9, i64 40, !3, i64 44, !9, i64 564, !3, i64 568, !9, i64 572, !2, i64 576, !9, i64 584, !30, i64 592}
!28 = !{!"gs_matrix_s", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20}
!29 = !{!"float", !3, i64 0}
!30 = !{!"gs_data_image_s", !2, i64 0, !28, i64 8, !9, i64 32, !9, i64 36, !9, i64 40, !3, i64 44, !9, i64 564}
!31 = !{i64 0, i64 2, !32, i64 2, i64 2, !32, i64 4, i64 4, !21, i64 8, i64 8, !33, i64 8, i64 2, !32, i64 8, i64 4, !34, i64 8, i64 8, !33, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !33}
!32 = !{!12, !12, i64 0}
!33 = !{!13, !13, i64 0}
!34 = !{!29, !29, i64 0}
!35 = !{!27, !9, i64 564}
!36 = !{!27, !9, i64 572}
!37 = !{!38, !9, i64 584}
!38 = !{!"gs_image4_s", !2, i64 0, !28, i64 8, !9, i64 32, !9, i64 36, !9, i64 40, !3, i64 44, !9, i64 564, !3, i64 568, !9, i64 572, !2, i64 576, !9, i64 584, !3, i64 588, !3, i64 1108}
!39 = !{!38, !9, i64 572}
