; ModuleID = './zimage.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon.1 }
%union.anon.1 = type { [4 x %struct.gs_ref_memory_s*] }
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
%struct.gs_data_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32 }
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
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
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
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.image_params_s = type { i32, [65 x %struct.ref_s], float* }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_pixel_image_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s* }
%struct.gs_image_enum_s = type opaque
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }
%struct.obj_header_s = type opaque

@.str = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ImageMatrix\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"MultipleDataSources\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"BitsPerComponent\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Interpolate\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Decode\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"DataSource\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"CombineWithColor\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"1.image1\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"1.imagemask1\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"1%image_proc_continue\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"0%image_file_continue\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"0%image_string_continue\00", align 1
@zimage_op_defs = constant [6 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zimage1 }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zimagemask1 }, %struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @image_proc_continue }, %struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @image_file_continue }, %struct.op_def { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @image_string_continue }, %struct.op_def zeroinitializer], align 16
@zimage_data_setup.ds = internal constant [11 x i8] c"DataSource\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"image_setup\00", align 1

; Function Attrs: nounwind uwtable
define i32 @data_image_params(%struct.gs_memory_s* %mem, %struct.ref_s* %op, %struct.gs_data_image_s* %pim, %struct.image_params_s* %pip, i32 %require_DataSource, i32 %num_components, i32 %max_bits_per_component, i32 %has_alpha, i32 %islab) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pim.addr = alloca %struct.gs_data_image_s*, align 8
  %pip.addr = alloca %struct.image_params_s*, align 8
  %require_DataSource.addr = alloca i32, align 4
  %num_components.addr = alloca i32, align 4
  %max_bits_per_component.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %islab.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %pds = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %ds = alloca %struct.ref_s*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_data_image_s* %pim, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.image_params_s* %pip, %struct.image_params_s** %pip.addr, align 8, !tbaa !1
  store i32 %require_DataSource, i32* %require_DataSource.addr, align 4, !tbaa !5
  store i32 %num_components, i32* %num_components.addr, align 4, !tbaa !5
  store i32 %max_bits_per_component, i32* %max_bits_per_component.addr, align 4, !tbaa !5
  store i32 %has_alpha, i32* %has_alpha.addr, align 4, !tbaa !5
  store i32 %islab, i32* %islab.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.ref_s** %pds to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %3 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %5) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %7 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %7, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %8 = load i16, i16* %type_attrs3, align 2, !tbaa !8
  %conv4 = zext i16 %8 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

if.end.6:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %10 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %10, i32 0, i32 2
  %call7 = call i32 @dict_int_param(%struct.ref_s* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 0, i32 4194303, i32 -1, i32* %Width) #4
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %11, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

if.end.11:                                        ; preds = %do.end
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %14 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %14, i32 0, i32 3
  %call12 = call i32 @dict_int_param(%struct.ref_s* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 4194303, i32 -1, i32* %Height) #4
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %15, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

if.end.16:                                        ; preds = %if.end.11
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %19 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %ImageMatrix = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %19, i32 0, i32 1
  %call17 = call i32 @dict_matrix_param(%struct.gs_memory_s* %17, %struct.ref_s* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), %struct.gs_matrix_s* %ImageMatrix) #4
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %20, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

if.end.21:                                        ; preds = %if.end.16
  %22 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %23 = load %struct.image_params_s*, %struct.image_params_s** %pip.addr, align 8, !tbaa !1
  %MultipleDataSources = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %23, i32 0, i32 0
  %call22 = call i32 @dict_bool_param(%struct.ref_s* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 0, i32* %MultipleDataSources) #4
  store i32 %call22, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %24, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

if.end.26:                                        ; preds = %if.end.21
  %26 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %27 = load i32, i32* %max_bits_per_component.addr, align 4, !tbaa !5
  %28 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %28, i32 0, i32 4
  %call27 = call i32 @dict_int_param(%struct.ref_s* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, i32 %27, i32 -1, i32* %BitsPerComponent) #4
  store i32 %call27, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %29, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.26
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

if.end.31:                                        ; preds = %if.end.26
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %32 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Interpolate = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %32, i32 0, i32 6
  %call32 = call i32 @dict_bool_param(%struct.ref_s* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 0, i32* %Interpolate) #4
  store i32 %call32, i32* %code, align 4, !tbaa !5
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %33, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

if.end.36:                                        ; preds = %if.end.31
  %35 = load i32, i32* %islab.addr, align 4, !tbaa !5
  %tobool37 = icmp ne i32 %35, 0
  br i1 %tobool37, label %if.then.38, label %if.else.56

if.then.38:                                       ; preds = %if.end.36
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %37 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %38 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %38, i32 0, i32 5
  %arrayidx39 = getelementptr inbounds [130 x float], [130 x float]* %Decode, i32 0, i64 2
  %call40 = call i32 @dict_floats_param(%struct.gs_memory_s* %36, %struct.ref_s* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 4, float* %arrayidx39, float* null) #4
  store i32 %call40, i32* %code, align 4, !tbaa !5
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %39, 0
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %if.then.38
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %41 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %42 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Decode44 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %42, i32 0, i32 5
  %arrayidx45 = getelementptr inbounds [130 x float], [130 x float]* %Decode44, i32 0, i64 0
  %call46 = call i32 @dict_float_array_check_param(%struct.gs_memory_s* %40, %struct.ref_s* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 6, float* %arrayidx45, float* null, i32 -15, i32 0) #4
  store i32 %call46, i32* %code, align 4, !tbaa !5
  br label %if.end.51

if.else:                                          ; preds = %if.then.38
  %43 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Decode47 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %43, i32 0, i32 5
  %arrayidx48 = getelementptr inbounds [130 x float], [130 x float]* %Decode47, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx48, align 4, !tbaa !12
  %44 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Decode49 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %44, i32 0, i32 5
  %arrayidx50 = getelementptr inbounds [130 x float], [130 x float]* %Decode49, i32 0, i64 1
  store float 1.000000e+02, float* %arrayidx50, align 4, !tbaa !12
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.43
  %45 = load i32, i32* %code, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %45, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  %46 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

if.end.55:                                        ; preds = %if.end.51
  br label %if.end.64

if.else.56:                                       ; preds = %if.end.36
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %48 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %49 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %mul = mul nsw i32 2, %49
  %50 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Decode57 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %50, i32 0, i32 5
  %arrayidx58 = getelementptr inbounds [130 x float], [130 x float]* %Decode57, i32 0, i64 0
  %call59 = call i32 @dict_float_array_check_param(%struct.gs_memory_s* %47, %struct.ref_s* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %mul, float* %arrayidx58, float* null, i32 -15, i32 0) #4
  store i32 %call59, i32* %code, align 4, !tbaa !5
  %51 = load i32, i32* %code, align 4, !tbaa !5
  %cmp60 = icmp slt i32 %51, 0
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.else.56
  %52 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

if.end.63:                                        ; preds = %if.else.56
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.55
  %53 = load %struct.gs_data_image_s*, %struct.gs_data_image_s** %pim.addr, align 8, !tbaa !1
  %Decode65 = getelementptr inbounds %struct.gs_data_image_s, %struct.gs_data_image_s* %53, i32 0, i32 5
  %arrayidx66 = getelementptr inbounds [130 x float], [130 x float]* %Decode65, i32 0, i64 0
  %54 = load %struct.image_params_s*, %struct.image_params_s** %pip.addr, align 8, !tbaa !1
  %pDecode = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %54, i32 0, i32 2
  store float* %arrayidx66, float** %pDecode, align 8, !tbaa !14
  %55 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call67 = call i32 @dict_find_string(%struct.ref_s* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %struct.ref_s** %pds) #4
  store i32 %call67, i32* %code, align 4, !tbaa !5
  %cmp68 = icmp sle i32 %call67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.76

if.then.70:                                       ; preds = %if.end.64
  %56 = load i32, i32* %require_DataSource.addr, align 4, !tbaa !5
  %tobool71 = icmp ne i32 %56, 0
  br i1 %tobool71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %if.then.70
  %57 = load i32, i32* %code, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %57, 0
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.72
  %58 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.72
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %58, %cond.true ], [ -15, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

if.end.75:                                        ; preds = %if.then.70
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

if.end.76:                                        ; preds = %if.end.64
  %59 = load %struct.image_params_s*, %struct.image_params_s** %pip.addr, align 8, !tbaa !1
  %MultipleDataSources77 = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %59, i32 0, i32 0
  %60 = load i32, i32* %MultipleDataSources77, align 4, !tbaa !16
  %tobool78 = icmp ne i32 %60, 0
  br i1 %tobool78, label %if.then.79, label %if.else.139

if.then.79:                                       ; preds = %if.end.76
  %61 = bitcast %struct.ref_s** %ds to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  %62 = load %struct.image_params_s*, %struct.image_params_s** %pip.addr, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %62, i32 0, i32 1
  %arraydecay = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %DataSource, i32 0, i32 0
  store %struct.ref_s* %arraydecay, %struct.ref_s** %ds, align 8, !tbaa !1
  %63 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %64 = bitcast i64* %n to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %66 = load i32, i32* %has_alpha.addr, align 4, !tbaa !5
  %tobool80 = icmp ne i32 %66, 0
  %cond81 = select i1 %tobool80, i32 1, i32 0
  %add = add nsw i32 %65, %cond81
  %conv82 = sext i32 %add to i64
  store i64 %conv82, i64* %n, align 8, !tbaa !17
  %67 = load %struct.ref_s*, %struct.ref_s** %pds, align 8, !tbaa !1
  %tas83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 0
  %type_attrs84 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas83, i32 0, i32 0
  %68 = load i16, i16* %type_attrs84, align 2, !tbaa !8
  %conv85 = zext i16 %68 to i32
  %and86 = and i32 %conv85, 15360
  %cmp87 = icmp eq i32 %and86, 1024
  br i1 %cmp87, label %if.end.90, label %if.then.89

if.then.89:                                       ; preds = %if.then.79
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %if.then.79
  %69 = load %struct.ref_s*, %struct.ref_s** %pds, align 8, !tbaa !1
  %tas91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas91, i32 0, i32 2
  %70 = load i32, i32* %rsize, align 4, !tbaa !19
  %conv92 = zext i32 %70 to i64
  %71 = load i64, i64* %n, align 8, !tbaa !17
  %cmp93 = icmp ne i64 %conv92, %71
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.90
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.96:                                        ; preds = %if.end.90
  store i64 0, i64* %i, align 8, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.96
  %72 = load i64, i64* %i, align 8, !tbaa !17
  %73 = load i64, i64* %n, align 8, !tbaa !17
  %cmp97 = icmp slt i64 %72, %73
  br i1 %cmp97, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %75 = load %struct.ref_s*, %struct.ref_s** %pds, align 8, !tbaa !1
  %76 = load i64, i64* %i, align 8, !tbaa !17
  %77 = load i64, i64* %i, align 8, !tbaa !17
  %78 = load %struct.ref_s*, %struct.ref_s** %ds, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i64 %77
  %call100 = call i32 @array_get(%struct.gs_memory_s* %74, %struct.ref_s* %75, i64 %76, %struct.ref_s* %arrayidx99) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %79 = load i64, i64* %i, align 8, !tbaa !17
  %inc = add nsw i64 %79, 1
  store i64 %inc, i64* %i, align 8, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = load %struct.ref_s*, %struct.ref_s** %ds, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i64 0
  %tas102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx101, i32 0, i32 0
  %type_attrs103 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas102, i32 0, i32 0
  %81 = bitcast i16* %type_attrs103 to i8*
  %arrayidx104 = getelementptr inbounds i8, i8* %81, i64 1
  %82 = load i8, i8* %arrayidx104, align 1, !tbaa !7
  %conv105 = zext i8 %82 to i32
  %cmp106 = icmp eq i32 %conv105, 18
  br i1 %cmp106, label %if.then.108, label %if.end.136

if.then.108:                                      ; preds = %for.end
  %83 = load i32, i32* %has_alpha.addr, align 4, !tbaa !5
  %tobool109 = icmp ne i32 %83, 0
  br i1 %tobool109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.then.108
  %84 = load i64, i64* %n, align 8, !tbaa !17
  %dec = add nsw i64 %84, -1
  store i64 %dec, i64* %n, align 8, !tbaa !17
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %if.then.108
  store i64 1, i64* %i, align 8, !tbaa !17
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.133, %if.end.111
  %85 = load i64, i64* %i, align 8, !tbaa !17
  %86 = load i64, i64* %n, align 8, !tbaa !17
  %cmp113 = icmp slt i64 %85, %86
  br i1 %cmp113, label %for.body.115, label %for.end.135

for.body.115:                                     ; preds = %for.cond.112
  %87 = load i64, i64* %i, align 8, !tbaa !17
  %88 = load %struct.ref_s*, %struct.ref_s** %ds, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i64 %87
  %tas117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx116, i32 0, i32 0
  %type_attrs118 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas117, i32 0, i32 0
  %89 = bitcast i16* %type_attrs118 to i8*
  %arrayidx119 = getelementptr inbounds i8, i8* %89, i64 1
  %90 = load i8, i8* %arrayidx119, align 1, !tbaa !7
  %conv120 = zext i8 %90 to i32
  %cmp121 = icmp eq i32 %conv120, 18
  br i1 %cmp121, label %land.lhs.true, label %if.end.132

land.lhs.true:                                    ; preds = %for.body.115
  %91 = load i64, i64* %i, align 8, !tbaa !17
  %92 = load %struct.ref_s*, %struct.ref_s** %ds, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i64 %91
  %tas124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx123, i32 0, i32 0
  %rsize125 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas124, i32 0, i32 2
  %93 = load i32, i32* %rsize125, align 4, !tbaa !19
  %94 = load %struct.ref_s*, %struct.ref_s** %ds, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i64 0
  %tas127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx126, i32 0, i32 0
  %rsize128 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas127, i32 0, i32 2
  %95 = load i32, i32* %rsize128, align 4, !tbaa !19
  %cmp129 = icmp ne i32 %93, %95
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.132:                                       ; preds = %land.lhs.true, %for.body.115
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.132
  %96 = load i64, i64* %i, align 8, !tbaa !17
  %inc134 = add nsw i64 %96, 1
  store i64 %inc134, i64* %i, align 8, !tbaa !17
  br label %for.cond.112

for.end.135:                                      ; preds = %for.cond.112
  br label %if.end.136

if.end.136:                                       ; preds = %for.end.135, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.136, %if.then.131, %if.then.95, %if.then.89
  %97 = bitcast i64* %n to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast %struct.ref_s** %ds to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.143 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.142

if.else.139:                                      ; preds = %if.end.76
  %100 = load %struct.image_params_s*, %struct.image_params_s** %pip.addr, align 8, !tbaa !1
  %DataSource140 = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %100, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %DataSource140, i32 0, i64 0
  %101 = load %struct.ref_s*, %struct.ref_s** %pds, align 8, !tbaa !1
  %102 = bitcast %struct.ref_s* %arrayidx141 to i8*
  %103 = bitcast %struct.ref_s* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 16, i32 8, i1 false), !tbaa.struct !20
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.139, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143

cleanup.143:                                      ; preds = %if.end.142, %cleanup, %if.end.75, %cond.end, %if.then.62, %if.then.54, %if.then.35, %if.then.30, %if.then.25, %if.then.20, %if.then.15, %if.then.10, %if.then.5, %if.then
  %104 = bitcast %struct.ref_s** %pds to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = load i32, i32* %retval
  ret i32 %106
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare i32 @dict_matrix_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, %struct.gs_matrix_s*) #2

declare i32 @dict_bool_param(%struct.ref_s*, i8*, i32, i32*) #2

declare i32 @dict_floats_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, i32, float*, float*) #2

declare i32 @dict_float_array_check_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, i32, float*, float*, i32, i32) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @pixel_image_params(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_pixel_image_s* %pim, %struct.image_params_s* %pip, i32 %max_bits_per_component, i32 %has_alpha, %struct.gs_color_space_s* %csp) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %pip.addr = alloca %struct.image_params_s*, align 8
  %max_bits_per_component.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %csp.addr = alloca %struct.gs_color_space_s*, align 8
  %islab = alloca i32, align 4
  %num_components = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.image_params_s* %pip, %struct.image_params_s** %pip.addr, align 8, !tbaa !1
  store i32 %max_bits_per_component, i32* %max_bits_per_component.addr, align 4, !tbaa !5
  store i32 %has_alpha, i32* %has_alpha.addr, align 4, !tbaa !5
  store %struct.gs_color_space_s* %csp, %struct.gs_color_space_s** %csp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %islab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %islab, align 4, !tbaa !5
  %1 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %csp.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %2) #4
  store i32 %call, i32* %num_components, align 4, !tbaa !5
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %csp.addr, align 8, !tbaa !1
  %6 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %6, i32 0, i32 9
  store %struct.gs_color_space_s* %5, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !22
  %7 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace1 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %7, i32 0, i32 9
  %8 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace1, align 8, !tbaa !22
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %8, i32 0, i32 6
  %9 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !25
  %cmp2 = icmp ne %struct.cmm_profile_s* %9, null
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %10 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %ColorSpace4 = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %10, i32 0, i32 9
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace4, align 8, !tbaa !22
  %cmm_icc_profile_data5 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %11, i32 0, i32 6
  %12 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data5, align 8, !tbaa !25
  %islab6 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %12, i32 0, i32 2
  %13 = load i32, i32* %islab6, align 4, !tbaa !28
  store i32 %13, i32* %islab, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !32
  %16 = bitcast %struct.gs_ref_memory_s* %15 to %struct.gs_memory_s*
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %18 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gs_pixel_image_s* %18 to %struct.gs_data_image_s*
  %20 = load %struct.image_params_s*, %struct.image_params_s** %pip.addr, align 8, !tbaa !1
  %21 = load i32, i32* %num_components, align 4, !tbaa !5
  %22 = load i32, i32* %max_bits_per_component.addr, align 4, !tbaa !5
  %23 = load i32, i32* %has_alpha.addr, align 4, !tbaa !5
  %24 = load i32, i32* %islab, align 4, !tbaa !5
  %call8 = call i32 @data_image_params(%struct.gs_memory_s* %16, %struct.ref_s* %17, %struct.gs_data_image_s* %19, %struct.image_params_s* %20, i32 1, i32 %21, i32 %22, i32 %23, i32 %24) #4
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %25, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %26 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.7
  %27 = load %struct.image_params_s*, %struct.image_params_s** %pip.addr, align 8, !tbaa !1
  %MultipleDataSources = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %27, i32 0, i32 0
  %28 = load i32, i32* %MultipleDataSources, align 4, !tbaa !16
  %tobool = icmp ne i32 %28, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %29 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %format = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %29, i32 0, i32 7
  store i32 %cond, i32* %format, align 4, !tbaa !41
  %30 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %31 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %CombineWithColor = getelementptr inbounds %struct.gs_pixel_image_s, %struct.gs_pixel_image_s* %31, i32 0, i32 8
  %call12 = call i32 @dict_bool_param(%struct.ref_s* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 0, i32* %CombineWithColor) #4
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %islab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #2

; Function Attrs: nounwind uwtable
define i32 @zimage_setup(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_pixel_image_s* %pim, %struct.ref_s* %sources, i32 %uses_color, i32 %npop) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %sources.addr = alloca %struct.ref_s*, align 8
  %uses_color.addr = alloca i32, align 4
  %npop.addr = alloca i32, align 4
  %pie = alloca %struct.gx_image_enum_common_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.ref_s* %sources, %struct.ref_s** %sources.addr, align 8, !tbaa !1
  store i32 %uses_color, i32* %uses_color.addr, align 4, !tbaa !5
  store i32 %npop, i32* %npop.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_image_enum_common_s** %pie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_pixel_image_s* %2 to %struct.gs_image_common_s*
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !42
  %6 = load i32, i32* %uses_color.addr, align 4, !tbaa !5
  %call = call i32 @gs_image_begin_typed(%struct.gs_image_common_s* %3, %struct.gs_state_s* %5, i32 %6, %struct.gx_image_enum_common_s** %pie) #4
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
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %10 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %11 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %sources.addr, align 8, !tbaa !1
  %13 = load i32, i32* %npop.addr, align 4, !tbaa !5
  %call1 = call i32 @zimage_data_setup(%struct.gs_context_state_s* %9, %struct.gs_pixel_image_s* %10, %struct.gx_image_enum_common_s* %11, %struct.ref_s* %12, i32 %13) #4
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast %struct.gx_image_enum_common_s** %pie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @gs_image_begin_typed(%struct.gs_image_common_s*, %struct.gs_state_s*, i32, %struct.gx_image_enum_common_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @zimage_data_setup(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_pixel_image_s* %pim, %struct.gx_image_enum_common_s* %pie, %struct.ref_s* %sources, i32 %npop) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pim.addr = alloca %struct.gs_pixel_image_s*, align 8
  %pie.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %sources.addr = alloca %struct.ref_s*, align 8
  %npop.addr = alloca i32, align 4
  %num_sources = alloca i32, align 4
  %inumpush = alloca i32, align 4
  %code = alloca i32, align 4
  %penum = alloca %struct.gs_image_enum_s*, align 8
  %px = alloca i32, align 4
  %pp = alloca %struct.ref_s*, align 8
  %string_sources = alloca i32, align 4
  %es_code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ep = alloca %struct.ref_s*, align 8
  %pi = alloca i32, align 4
  %code1 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_pixel_image_s* %pim, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %pie, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  store %struct.ref_s* %sources, %struct.ref_s** %sources.addr, align 8, !tbaa !1
  store i32 %npop, i32* %npop.addr, align 4, !tbaa !5
  %0 = bitcast i32* %num_sources to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %1, i32 0, i32 6
  %2 = load i32, i32* %num_planes, align 4, !tbaa !43
  store i32 %2, i32* %num_sources, align 4, !tbaa !5
  %3 = bitcast i32* %inumpush to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %num_sources, align 4, !tbaa !5
  %mul = mul nsw i32 %4, 2
  %add = add nsw i32 %mul, 5
  store i32 %add, i32* %inumpush, align 4, !tbaa !5
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.gs_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.ref_s** %pp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %string_sources to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 1, i32* %string_sources, align 4, !tbaa !5
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %11 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !45
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %13 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !46
  %14 = load i32, i32* %inumpush, align 4, !tbaa !5
  %add3 = add nsw i32 %14, 2
  %idx.ext = sext i32 %add3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 %idx.neg
  %cmp = icmp ugt %struct.ref_s* %11, %add.ptr
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %15 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 25
  %stack5 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack4, i32 0, i32 0
  %17 = load i32, i32* %inumpush, align 4, !tbaa !5
  %add6 = add nsw i32 %17, 2
  %call = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack5, i32 %add6) #4
  store i32 %call, i32* %es_code_, align 4, !tbaa !5
  %18 = load i32, i32* %es_code_, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %18, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %19 = load i32, i32* %es_code_, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.8
  %20 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.292 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.9

if.end.9:                                         ; preds = %cleanup.cont, %entry
  %21 = load i32, i32* %num_sources, align 4, !tbaa !5
  %conv = sext i32 %21 to i64
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 25
  %stack11 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack10, i32 0, i32 0
  %p12 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %p12, align 8, !tbaa !45
  %add.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr13, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !17
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 25
  %stack15 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack14, i32 0, i32 0
  %p16 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 0
  %25 = load %struct.ref_s*, %struct.ref_s** %p16, align 8, !tbaa !45
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr17, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !8
  store i32 0, i32* %px, align 4, !tbaa !5
  %26 = load %struct.ref_s*, %struct.ref_s** %sources.addr, align 8, !tbaa !1
  store %struct.ref_s* %26, %struct.ref_s** %pp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.130, %if.end.9
  %27 = load i32, i32* %px, align 4, !tbaa !5
  %28 = load i32, i32* %num_sources, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %27, %28
  br i1 %cmp18, label %for.body, label %for.end.132

for.body:                                         ; preds = %for.cond
  %29 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 25
  %stack21 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack20, i32 0, i32 0
  %p22 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack21, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p22, align 8, !tbaa !45
  %add.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 3
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 25
  %stack25 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack24, i32 0, i32 0
  %p26 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack25, i32 0, i32 0
  %33 = load %struct.ref_s*, %struct.ref_s** %p26, align 8, !tbaa !45
  %add.ptr27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 2
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr27, i32 0, i32 1
  %intval29 = bitcast %union.v* %value28 to i64*
  %34 = load i64, i64* %intval29, align 8, !tbaa !17
  %sub = sub nsw i64 %34, 1
  %35 = load i32, i32* %px, align 4, !tbaa !5
  %conv30 = sext i32 %35 to i64
  %sub31 = sub nsw i64 %sub, %conv30
  %mul32 = mul nsw i64 %sub31, 2
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr23, i64 %mul32
  store %struct.ref_s* %add.ptr33, %struct.ref_s** %ep, align 8, !tbaa !1
  %36 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 1
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr34, i32 0, i32 1
  %intval36 = bitcast %union.v* %value35 to i64*
  store i64 1, i64* %intval36, align 8, !tbaa !17
  %37 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 1
  %tas38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr37, i32 0, i32 0
  %type_attrs39 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas38, i32 0, i32 0
  store i16 2816, i16* %type_attrs39, align 2, !tbaa !8
  %38 = load %struct.ref_s*, %struct.ref_s** %pp, align 8, !tbaa !1
  %tas40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %type_attrs41 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas40, i32 0, i32 0
  %39 = bitcast i16* %type_attrs41 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv42 = zext i8 %40 to i32
  switch i32 %conv42, label %sw.default [
    i32 3, label %sw.bb
    i32 18, label %sw.bb.86
  ]

sw.bb:                                            ; preds = %for.body
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 2
  %42 = load i32, i32* %language_level, align 4, !tbaa !47
  %cmp43 = icmp sge i32 %42, 2
  br i1 %cmp43, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %sw.bb
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.127

if.end.46:                                        ; preds = %sw.bb
  %43 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 0, i32* %pi, align 4, !tbaa !5
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc, %if.end.46
  %44 = load i32, i32* %pi, align 4, !tbaa !5
  %45 = load i32, i32* %px, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %44, %45
  br i1 %cmp48, label %for.body.50, label %for.end

for.body.50:                                      ; preds = %for.cond.47
  %46 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom = sext i32 %46 to i64
  %47 = load %struct.ref_s*, %struct.ref_s** %sources.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 %idxprom
  %value52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx51, i32 0, i32 1
  %pfile = bitcast %union.v* %value52 to %struct.stream_s**
  %48 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  %49 = load %struct.ref_s*, %struct.ref_s** %pp, align 8, !tbaa !1
  %value53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 1
  %pfile54 = bitcast %union.v* %value53 to %struct.stream_s**
  %50 = load %struct.stream_s*, %struct.stream_s** %pfile54, align 8, !tbaa !1
  %cmp55 = icmp eq %struct.stream_s* %48, %50
  br i1 %cmp55, label %if.then.57, label %if.end.84

if.then.57:                                       ; preds = %for.body.50
  %51 = load i32, i32* %pi, align 4, !tbaa !5
  %sub58 = sub nsw i32 0, %51
  %conv59 = sext i32 %sub58 to i64
  %52 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 1
  %value61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr60, i32 0, i32 1
  %intval62 = bitcast %union.v* %value61 to i64*
  store i64 %conv59, i64* %intval62, align 8, !tbaa !17
  %53 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %add.ptr63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 1
  %tas64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr63, i32 0, i32 0
  %type_attrs65 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas64, i32 0, i32 0
  store i16 2816, i16* %type_attrs65, align 2, !tbaa !8
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack66 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 25
  %stack67 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack66, i32 0, i32 0
  %p68 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack67, i32 0, i32 0
  %55 = load %struct.ref_s*, %struct.ref_s** %p68, align 8, !tbaa !45
  %add.ptr69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 3
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack70 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 25
  %stack71 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack70, i32 0, i32 0
  %p72 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack71, i32 0, i32 0
  %57 = load %struct.ref_s*, %struct.ref_s** %p72, align 8, !tbaa !45
  %add.ptr73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 2
  %value74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr73, i32 0, i32 1
  %intval75 = bitcast %union.v* %value74 to i64*
  %58 = load i64, i64* %intval75, align 8, !tbaa !17
  %sub76 = sub nsw i64 %58, 1
  %59 = load i32, i32* %pi, align 4, !tbaa !5
  %conv77 = sext i32 %59 to i64
  %sub78 = sub nsw i64 %sub76, %conv77
  %mul79 = mul nsw i64 %sub78, 2
  %add.ptr80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr69, i64 %mul79
  %arrayidx81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr80, i64 1
  %value82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx81, i32 0, i32 1
  %intval83 = bitcast %union.v* %value82 to i64*
  %60 = load i64, i64* %intval83, align 8, !tbaa !17
  %inc = add nsw i64 %60, 1
  store i64 %inc, i64* %intval83, align 8, !tbaa !17
  br label %for.end

if.end.84:                                        ; preds = %for.body.50
  br label %for.inc

for.inc:                                          ; preds = %if.end.84
  %61 = load i32, i32* %pi, align 4, !tbaa !5
  %inc85 = add nsw i32 %61, 1
  store i32 %inc85, i32* %pi, align 4, !tbaa !5
  br label %for.cond.47

for.end:                                          ; preds = %if.then.57, %for.cond.47
  %62 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  store i32 0, i32* %string_sources, align 4, !tbaa !5
  br label %sw.bb.86

sw.bb.86:                                         ; preds = %for.body, %for.end
  %63 = load %struct.ref_s*, %struct.ref_s** %pp, align 8, !tbaa !1
  %tas87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 0
  %type_attrs88 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas87, i32 0, i32 0
  %64 = bitcast i16* %type_attrs88 to i8*
  %arrayidx89 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i8, i8* %arrayidx89, align 1, !tbaa !7
  %conv90 = zext i8 %65 to i32
  %66 = load %struct.ref_s*, %struct.ref_s** %sources.addr, align 8, !tbaa !1
  %tas91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 0
  %type_attrs92 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas91, i32 0, i32 0
  %67 = bitcast i16* %type_attrs92 to i8*
  %arrayidx93 = getelementptr inbounds i8, i8* %67, i64 1
  %68 = load i8, i8* %arrayidx93, align 1, !tbaa !7
  %conv94 = zext i8 %68 to i32
  %cmp95 = icmp ne i32 %conv90, %conv94
  br i1 %cmp95, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %sw.bb.86
  %69 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %call98 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %69, i32 0) #4
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.127

if.end.99:                                        ; preds = %sw.bb.86
  br label %do.body

do.body:                                          ; preds = %if.end.99
  %70 = load %struct.ref_s*, %struct.ref_s** %pp, align 8, !tbaa !1
  %tas100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 0
  %type_attrs101 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas100, i32 0, i32 0
  %71 = load i16, i16* %type_attrs101, align 2, !tbaa !8
  %conv102 = zext i16 %71 to i32
  %and = and i32 %conv102, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.104, label %if.then.103

if.then.103:                                      ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.127

if.end.104:                                       ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.104
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %72 = load %struct.ref_s*, %struct.ref_s** %sources.addr, align 8, !tbaa !1
  %tas105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 0
  %type_attrs106 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas105, i32 0, i32 0
  %73 = load i16, i16* %type_attrs106, align 2, !tbaa !8
  %conv107 = zext i16 %73 to i32
  %and108 = and i32 %conv107, 15552
  %cmp109 = icmp eq i32 %and108, 1216
  br i1 %cmp109, label %if.end.114, label %if.then.111

if.then.111:                                      ; preds = %sw.default
  %74 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %call112 = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %74, i32 0) #4
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %76 = load %struct.ref_s*, %struct.ref_s** %pp, align 8, !tbaa !1
  %call113 = call i32 @gs_errorinfo_put_pair(%struct.gs_context_state_s* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @zimage_data_setup.ds, i32 0, i32 0), i32 10, %struct.ref_s* %76) #4
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.127

if.end.114:                                       ; preds = %sw.default
  br label %do.body.115

do.body.115:                                      ; preds = %if.end.114
  %77 = load %struct.ref_s*, %struct.ref_s** %pp, align 8, !tbaa !1
  %tas116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 0, i32 0
  %type_attrs117 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas116, i32 0, i32 0
  %78 = load i16, i16* %type_attrs117, align 2, !tbaa !8
  %conv118 = zext i16 %78 to i32
  %and119 = and i32 %conv118, 15552
  %cmp120 = icmp eq i32 %and119, 1216
  br i1 %cmp120, label %if.end.124, label %if.then.122

if.then.122:                                      ; preds = %do.body.115
  %79 = load %struct.ref_s*, %struct.ref_s** %pp, align 8, !tbaa !1
  %call123 = call i32 @check_proc_failed(%struct.ref_s* %79) #4
  store i32 %call123, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.127

if.end.124:                                       ; preds = %do.body.115
  br label %do.cond.125

do.cond.125:                                      ; preds = %if.end.124
  br label %do.end.126

do.end.126:                                       ; preds = %do.cond.125
  store i32 0, i32* %string_sources, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.126, %do.end
  %80 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %81 = load %struct.ref_s*, %struct.ref_s** %pp, align 8, !tbaa !1
  %82 = bitcast %struct.ref_s* %80 to i8*
  %83 = bitcast %struct.ref_s* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 16, i32 8, i1 false), !tbaa.struct !20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.127

cleanup.127:                                      ; preds = %sw.epilog, %if.then.122, %if.then.111, %if.then.103, %if.then.97, %if.then.45
  %84 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %cleanup.dest.128 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.128, label %cleanup.292 [
    i32 0, label %cleanup.cont.129
  ]

cleanup.cont.129:                                 ; preds = %cleanup.127
  br label %for.inc.130

for.inc.130:                                      ; preds = %cleanup.cont.129
  %85 = load i32, i32* %px, align 4, !tbaa !5
  %inc131 = add nsw i32 %85, 1
  store i32 %inc131, i32* %px, align 4, !tbaa !5
  %86 = load %struct.ref_s*, %struct.ref_s** %pp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %pp, align 8, !tbaa !1
  br label %for.cond

for.end.132:                                      ; preds = %for.cond
  %87 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %87, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon.1* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %88 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !48
  %89 = bitcast %struct.gs_ref_memory_s* %88 to %struct.gs_memory_s*
  %call133 = call %struct.gs_image_enum_s* @gs_image_enum_alloc(%struct.gs_memory_s* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #4
  store %struct.gs_image_enum_s* %call133, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %cmp134 = icmp eq %struct.gs_image_enum_s* %call133, null
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %for.end.132
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.292

if.end.137:                                       ; preds = %for.end.132
  %90 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %91 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %92 = load %struct.gs_pixel_image_s*, %struct.gs_pixel_image_s** %pim.addr, align 8, !tbaa !1
  %93 = bitcast %struct.gs_pixel_image_s* %92 to %struct.gs_data_image_s*
  %94 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %94, i32 0, i32 0
  %95 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !42
  %call138 = call i32 @gs_image_enum_init(%struct.gs_image_enum_s* %90, %struct.gx_image_enum_common_s* %91, %struct.gs_data_image_s* %93, %struct.gs_state_s* %95) #4
  store i32 %call138, i32* %code, align 4, !tbaa !5
  %96 = load i32, i32* %code, align 4, !tbaa !5
  %cmp139 = icmp ne i32 %96, 0
  br i1 %cmp139, label %if.then.143, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.137
  %97 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %pie.addr, align 8, !tbaa !1
  %skipping = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %97, i32 0, i32 5
  %98 = load i32, i32* %skipping, align 4, !tbaa !50
  %tobool141 = icmp ne i32 %98, 0
  br i1 %tobool141, label %land.lhs.true, label %if.end.163

land.lhs.true:                                    ; preds = %lor.lhs.false
  %99 = load i32, i32* %string_sources, align 4, !tbaa !5
  %tobool142 = icmp ne i32 %99, 0
  br i1 %tobool142, label %if.then.143, label %if.end.163

if.then.143:                                      ; preds = %land.lhs.true, %if.end.137
  %100 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  %101 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %102 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs144 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %102, i32 0, i32 0
  %103 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs144, align 8, !tbaa !42
  %call145 = call i32 @gs_image_cleanup_and_free_enum(%struct.gs_image_enum_s* %101, %struct.gs_state_s* %103) #4
  store i32 %call145, i32* %code1, align 4, !tbaa !5
  %104 = load i32, i32* %code, align 4, !tbaa !5
  %cmp146 = icmp sge i32 %104, 0
  br i1 %cmp146, label %if.then.148, label %if.end.154

if.then.148:                                      ; preds = %if.then.143
  %105 = load i32, i32* %npop.addr, align 4, !tbaa !5
  %106 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %106, i32 0, i32 26
  %stack149 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p150 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack149, i32 0, i32 0
  %107 = load %struct.ref_s*, %struct.ref_s** %p150, align 8, !tbaa !51
  %idx.ext151 = sext i32 %105 to i64
  %idx.neg152 = sub i64 0, %idx.ext151
  %add.ptr153 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %107, i64 %idx.neg152
  store %struct.ref_s* %add.ptr153, %struct.ref_s** %p150, align 8, !tbaa !51
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.148, %if.then.143
  %108 = load i32, i32* %code, align 4, !tbaa !5
  %cmp155 = icmp sge i32 %108, 0
  br i1 %cmp155, label %land.lhs.true.157, label %if.end.161

land.lhs.true.157:                                ; preds = %if.end.154
  %109 = load i32, i32* %code1, align 4, !tbaa !5
  %cmp158 = icmp slt i32 %109, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %land.lhs.true.157
  %110 = load i32, i32* %code1, align 4, !tbaa !5
  store i32 %110, i32* %code, align 4, !tbaa !5
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %land.lhs.true.157, %if.end.154
  %111 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %111, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %112 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  br label %cleanup.292

if.end.163:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %113 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack164 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %113, i32 0, i32 25
  %stack165 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack164, i32 0, i32 0
  %p166 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack165, i32 0, i32 0
  %114 = load %struct.ref_s*, %struct.ref_s** %p166, align 8, !tbaa !45
  %incdec.ptr167 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %114, i32 1
  store %struct.ref_s* %incdec.ptr167, %struct.ref_s** %p166, align 8, !tbaa !45
  %115 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack168 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %115, i32 0, i32 25
  %stack169 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack168, i32 0, i32 0
  %p170 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack169, i32 0, i32 0
  %116 = load %struct.ref_s*, %struct.ref_s** %p170, align 8, !tbaa !45
  %value171 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %116, i32 0, i32 1
  %opproc = bitcast %union.v* %value171 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @image_cleanup, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %117 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack172 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %117, i32 0, i32 25
  %stack173 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack172, i32 0, i32 0
  %p174 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack173, i32 0, i32 0
  %118 = load %struct.ref_s*, %struct.ref_s** %p174, align 8, !tbaa !45
  %tas175 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %118, i32 0, i32 0
  %type_attrs176 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas175, i32 0, i32 0
  store i16 3712, i16* %type_attrs176, align 2, !tbaa !8
  %119 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack177 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %119, i32 0, i32 25
  %stack178 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack177, i32 0, i32 0
  %p179 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack178, i32 0, i32 0
  %120 = load %struct.ref_s*, %struct.ref_s** %p179, align 8, !tbaa !45
  %tas180 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %120, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas180, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !19
  %121 = load i32, i32* %inumpush, align 4, !tbaa !5
  %sub181 = sub nsw i32 %121, 1
  %122 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack182 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %122, i32 0, i32 25
  %stack183 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack182, i32 0, i32 0
  %p184 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack183, i32 0, i32 0
  %123 = load %struct.ref_s*, %struct.ref_s** %p184, align 8, !tbaa !45
  %idx.ext185 = sext i32 %sub181 to i64
  %add.ptr186 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %123, i64 %idx.ext185
  store %struct.ref_s* %add.ptr186, %struct.ref_s** %p184, align 8, !tbaa !45
  %124 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack187 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %124, i32 0, i32 25
  %stack188 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack187, i32 0, i32 0
  %p189 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack188, i32 0, i32 0
  %125 = load %struct.ref_s*, %struct.ref_s** %p189, align 8, !tbaa !45
  %add.ptr190 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %125, i64 -2
  %value191 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr190, i32 0, i32 1
  %intval192 = bitcast %union.v* %value191 to i64*
  store i64 0, i64* %intval192, align 8, !tbaa !17
  %126 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack193 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %126, i32 0, i32 25
  %stack194 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack193, i32 0, i32 0
  %p195 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack194, i32 0, i32 0
  %127 = load %struct.ref_s*, %struct.ref_s** %p195, align 8, !tbaa !45
  %add.ptr196 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %127, i64 -2
  %tas197 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr196, i32 0, i32 0
  %type_attrs198 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas197, i32 0, i32 0
  store i16 2816, i16* %type_attrs198, align 2, !tbaa !8
  %128 = load i32, i32* %num_sources, align 4, !tbaa !5
  %conv199 = sext i32 %128 to i64
  %129 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack200 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %129, i32 0, i32 25
  %stack201 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack200, i32 0, i32 0
  %p202 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack201, i32 0, i32 0
  %130 = load %struct.ref_s*, %struct.ref_s** %p202, align 8, !tbaa !45
  %add.ptr203 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %130, i64 -1
  %value204 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr203, i32 0, i32 1
  %intval205 = bitcast %union.v* %value204 to i64*
  store i64 %conv199, i64* %intval205, align 8, !tbaa !17
  %131 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack206 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %131, i32 0, i32 25
  %stack207 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack206, i32 0, i32 0
  %p208 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack207, i32 0, i32 0
  %132 = load %struct.ref_s*, %struct.ref_s** %p208, align 8, !tbaa !45
  %add.ptr209 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %132, i64 -1
  %tas210 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr209, i32 0, i32 0
  %type_attrs211 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas210, i32 0, i32 0
  store i16 2816, i16* %type_attrs211, align 2, !tbaa !8
  %133 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %134 = bitcast %struct.gs_image_enum_s* %133 to %struct.obj_header_s*
  %135 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack212 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %135, i32 0, i32 25
  %stack213 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack212, i32 0, i32 0
  %p214 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack213, i32 0, i32 0
  %136 = load %struct.ref_s*, %struct.ref_s** %p214, align 8, !tbaa !45
  %value215 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %136, i32 0, i32 1
  %pstruct = bitcast %union.v* %value215 to %struct.obj_header_s**
  store %struct.obj_header_s* %134, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %137 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack216 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %137, i32 0, i32 25
  %stack217 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack216, i32 0, i32 0
  %p218 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack217, i32 0, i32 0
  %138 = load %struct.ref_s*, %struct.ref_s** %p218, align 8, !tbaa !45
  %tas219 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %138, i32 0, i32 0
  %type_attrs220 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas219, i32 0, i32 0
  store i16 2060, i16* %type_attrs220, align 2, !tbaa !8
  %139 = load %struct.ref_s*, %struct.ref_s** %sources.addr, align 8, !tbaa !1
  %tas221 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %139, i32 0, i32 0
  %type_attrs222 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas221, i32 0, i32 0
  %140 = bitcast i16* %type_attrs222 to i8*
  %arrayidx223 = getelementptr inbounds i8, i8* %140, i64 1
  %141 = load i8, i8* %arrayidx223, align 1, !tbaa !7
  %conv224 = zext i8 %141 to i32
  switch i32 %conv224, label %sw.default.265 [
    i32 3, label %sw.bb.225
    i32 18, label %sw.bb.245
  ]

sw.bb.225:                                        ; preds = %if.end.163
  %142 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack226 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %142, i32 0, i32 25
  %stack227 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack226, i32 0, i32 0
  %p228 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack227, i32 0, i32 0
  %143 = load %struct.ref_s*, %struct.ref_s** %p228, align 8, !tbaa !45
  %incdec.ptr229 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %143, i32 1
  store %struct.ref_s* %incdec.ptr229, %struct.ref_s** %p228, align 8, !tbaa !45
  %144 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack230 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %144, i32 0, i32 25
  %stack231 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack230, i32 0, i32 0
  %p232 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack231, i32 0, i32 0
  %145 = load %struct.ref_s*, %struct.ref_s** %p232, align 8, !tbaa !45
  %value233 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %145, i32 0, i32 1
  %opproc234 = bitcast %union.v* %value233 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @image_file_continue, i32 (%struct.gs_context_state_s*)** %opproc234, align 8, !tbaa !1
  %146 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack235 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %146, i32 0, i32 25
  %stack236 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack235, i32 0, i32 0
  %p237 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack236, i32 0, i32 0
  %147 = load %struct.ref_s*, %struct.ref_s** %p237, align 8, !tbaa !45
  %tas238 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %147, i32 0, i32 0
  %type_attrs239 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas238, i32 0, i32 0
  store i16 3968, i16* %type_attrs239, align 2, !tbaa !8
  %148 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack240 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %148, i32 0, i32 25
  %stack241 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack240, i32 0, i32 0
  %p242 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack241, i32 0, i32 0
  %149 = load %struct.ref_s*, %struct.ref_s** %p242, align 8, !tbaa !45
  %tas243 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %149, i32 0, i32 0
  %rsize244 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas243, i32 0, i32 2
  store i32 0, i32* %rsize244, align 4, !tbaa !19
  br label %sw.epilog.285

sw.bb.245:                                        ; preds = %if.end.163
  %150 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack246 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %150, i32 0, i32 25
  %stack247 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack246, i32 0, i32 0
  %p248 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack247, i32 0, i32 0
  %151 = load %struct.ref_s*, %struct.ref_s** %p248, align 8, !tbaa !45
  %incdec.ptr249 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %151, i32 1
  store %struct.ref_s* %incdec.ptr249, %struct.ref_s** %p248, align 8, !tbaa !45
  %152 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack250 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %152, i32 0, i32 25
  %stack251 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack250, i32 0, i32 0
  %p252 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack251, i32 0, i32 0
  %153 = load %struct.ref_s*, %struct.ref_s** %p252, align 8, !tbaa !45
  %value253 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %153, i32 0, i32 1
  %opproc254 = bitcast %union.v* %value253 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @image_string_continue, i32 (%struct.gs_context_state_s*)** %opproc254, align 8, !tbaa !1
  %154 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack255 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %154, i32 0, i32 25
  %stack256 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack255, i32 0, i32 0
  %p257 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack256, i32 0, i32 0
  %155 = load %struct.ref_s*, %struct.ref_s** %p257, align 8, !tbaa !45
  %tas258 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %155, i32 0, i32 0
  %type_attrs259 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas258, i32 0, i32 0
  store i16 3968, i16* %type_attrs259, align 2, !tbaa !8
  %156 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack260 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %156, i32 0, i32 25
  %stack261 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack260, i32 0, i32 0
  %p262 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack261, i32 0, i32 0
  %157 = load %struct.ref_s*, %struct.ref_s** %p262, align 8, !tbaa !45
  %tas263 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %157, i32 0, i32 0
  %rsize264 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas263, i32 0, i32 2
  store i32 0, i32* %rsize264, align 4, !tbaa !19
  br label %sw.epilog.285

sw.default.265:                                   ; preds = %if.end.163
  %158 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack266 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %158, i32 0, i32 25
  %stack267 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack266, i32 0, i32 0
  %p268 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack267, i32 0, i32 0
  %159 = load %struct.ref_s*, %struct.ref_s** %p268, align 8, !tbaa !45
  %incdec.ptr269 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %159, i32 1
  store %struct.ref_s* %incdec.ptr269, %struct.ref_s** %p268, align 8, !tbaa !45
  %160 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack270 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %160, i32 0, i32 25
  %stack271 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack270, i32 0, i32 0
  %p272 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack271, i32 0, i32 0
  %161 = load %struct.ref_s*, %struct.ref_s** %p272, align 8, !tbaa !45
  %value273 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %161, i32 0, i32 1
  %opproc274 = bitcast %union.v* %value273 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @image_proc_process, i32 (%struct.gs_context_state_s*)** %opproc274, align 8, !tbaa !1
  %162 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack275 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %162, i32 0, i32 25
  %stack276 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack275, i32 0, i32 0
  %p277 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack276, i32 0, i32 0
  %163 = load %struct.ref_s*, %struct.ref_s** %p277, align 8, !tbaa !45
  %tas278 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %163, i32 0, i32 0
  %type_attrs279 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas278, i32 0, i32 0
  store i16 3968, i16* %type_attrs279, align 2, !tbaa !8
  %164 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack280 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %164, i32 0, i32 25
  %stack281 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack280, i32 0, i32 0
  %p282 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack281, i32 0, i32 0
  %165 = load %struct.ref_s*, %struct.ref_s** %p282, align 8, !tbaa !45
  %tas283 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %165, i32 0, i32 0
  %rsize284 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas283, i32 0, i32 2
  store i32 0, i32* %rsize284, align 4, !tbaa !19
  br label %sw.epilog.285

sw.epilog.285:                                    ; preds = %sw.default.265, %sw.bb.245, %sw.bb.225
  %166 = load i32, i32* %npop.addr, align 4, !tbaa !5
  %167 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack286 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %167, i32 0, i32 26
  %stack287 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack286, i32 0, i32 0
  %p288 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack287, i32 0, i32 0
  %168 = load %struct.ref_s*, %struct.ref_s** %p288, align 8, !tbaa !51
  %idx.ext289 = sext i32 %166 to i64
  %idx.neg290 = sub i64 0, %idx.ext289
  %add.ptr291 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %168, i64 %idx.neg290
  store %struct.ref_s* %add.ptr291, %struct.ref_s** %p288, align 8, !tbaa !51
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.292

cleanup.292:                                      ; preds = %sw.epilog.285, %if.end.161, %if.then.136, %cleanup.127, %cleanup
  %169 = bitcast i32* %string_sources to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast %struct.ref_s** %pp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast %struct.gs_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %inumpush to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %num_sources to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = load i32, i32* %retval
  ret i32 %176
}

; Function Attrs: nounwind uwtable
define i32 @image1_setup(%struct.gs_context_state_s* %i_ctx_p, i32 %has_alpha) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %has_alpha.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %image = alloca %struct.gs_image1_s, align 8
  %ip = alloca %struct.image_params_s, align 8
  %code = alloca i32, align 4
  %csp = alloca %struct.gs_color_space_s*, align 8
  %bsp = alloca %struct.gs_color_space_s*, align 8
  %cleanup.dest.slot = alloca i32
  %ftmp = alloca float, align 4
  %itemp = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %has_alpha, i32* %has_alpha.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.start(i64 600, i8* %3) #1
  %4 = bitcast %struct.image_params_s* %ip to i8*
  call void @llvm.lifetime.start(i64 1056, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.gs_color_space_s** %csp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !42
  %call = call %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s* %8) #4
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %csp, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !32
  %11 = bitcast %struct.gs_ref_memory_s* %10 to %struct.gs_memory_s*
  %call1 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %11) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %csp, align 8, !tbaa !1
  %call2 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %12) #4
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %13 = bitcast %struct.gs_color_space_s** %bsp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %csp, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %14, i32 0, i32 3
  %15 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %base_space, align 8, !tbaa !52
  store %struct.gs_color_space_s* %15, %struct.gs_color_space_s** %bsp, align 8, !tbaa !1
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %bsp, align 8, !tbaa !1
  %tobool3 = icmp ne %struct.gs_color_space_s* %16, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %17 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %bsp, align 8, !tbaa !1
  store %struct.gs_color_space_s* %17, %struct.gs_color_space_s** %csp, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %18 = bitcast %struct.gs_color_space_s** %bsp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %land.lhs.true, %entry
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %csp, align 8, !tbaa !1
  call void @gs_image_t_init_adjust(%struct.gs_image1_s* %image, %struct.gs_color_space_s* %19, i32 1) #4
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %22 = bitcast %struct.gs_image1_s* %image to %struct.gs_pixel_image_s*
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 2
  %24 = load i32, i32* %language_level, align 4, !tbaa !47
  %cmp6 = icmp sge i32 %24, 2
  %cond = select i1 %cmp6, i32 16, i32 8
  %25 = load i32, i32* %has_alpha.addr, align 4, !tbaa !5
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %csp, align 8, !tbaa !1
  %call7 = call i32 @pixel_image_params(%struct.gs_context_state_s* %20, %struct.ref_s* %21, %struct.gs_pixel_image_s* %22, %struct.image_params_s* %ip, i32 %cond, i32 %25, %struct.gs_color_space_s* %26) #4
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %27, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.5
  %29 = load i32, i32* %has_alpha.addr, align 4, !tbaa !5
  %tobool11 = icmp ne i32 %29, 0
  %cond12 = select i1 %tobool11, i32 2, i32 0
  %Alpha = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 12
  store i32 %cond12, i32* %Alpha, align 4, !tbaa !53
  %Width = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 2
  %30 = load i32, i32* %Width, align 4, !tbaa !55
  %cmp13 = icmp eq i32 %30, 1
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.53

land.lhs.true.14:                                 ; preds = %if.end.10
  %Height = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 3
  %31 = load i32, i32* %Height, align 4, !tbaa !56
  %cmp15 = icmp sgt i32 %31, 1
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.53

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %BitsPerComponent = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 4
  %32 = load i32, i32* %BitsPerComponent, align 4, !tbaa !57
  %cmp17 = icmp eq i32 %32, 8
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.53

land.lhs.true.18:                                 ; preds = %land.lhs.true.16
  %ImageMatrix = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix, i32 0, i32 1
  %33 = load float, float* %xy, align 4, !tbaa !58
  %conv = fpext float %33 to double
  %cmp19 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.53

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %ImageMatrix22 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix22, i32 0, i32 2
  %34 = load float, float* %yx, align 4, !tbaa !59
  %conv23 = fpext float %34 to double
  %cmp24 = fcmp oeq double %conv23, 0.000000e+00
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.53

land.lhs.true.26:                                 ; preds = %land.lhs.true.21
  %ImageMatrix27 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix27, i32 0, i32 4
  %35 = load float, float* %tx, align 4, !tbaa !60
  %conv28 = fpext float %35 to double
  %cmp29 = fcmp oeq double %conv28, 0.000000e+00
  br i1 %cmp29, label %if.then.31, label %if.end.53

if.then.31:                                       ; preds = %land.lhs.true.26
  %36 = bitcast float* %ftmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast i32* %itemp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %Width32 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 2
  %38 = load i32, i32* %Width32, align 4, !tbaa !55
  store i32 %38, i32* %itemp, align 4, !tbaa !5
  %Height33 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 3
  %39 = load i32, i32* %Height33, align 4, !tbaa !56
  %Width34 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 2
  store i32 %39, i32* %Width34, align 4, !tbaa !55
  %40 = load i32, i32* %itemp, align 4, !tbaa !5
  %Height35 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 3
  store i32 %40, i32* %Height35, align 4, !tbaa !56
  %ImageMatrix36 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix36, i32 0, i32 0
  %41 = load float, float* %xx, align 4, !tbaa !61
  %ImageMatrix37 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %xy38 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix37, i32 0, i32 1
  store float %41, float* %xy38, align 4, !tbaa !58
  %ImageMatrix39 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix39, i32 0, i32 3
  %42 = load float, float* %yy, align 4, !tbaa !62
  %ImageMatrix40 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %yx41 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix40, i32 0, i32 2
  store float %42, float* %yx41, align 4, !tbaa !59
  %ImageMatrix42 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %xx43 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix42, i32 0, i32 0
  store float 0.000000e+00, float* %xx43, align 4, !tbaa !61
  %ImageMatrix44 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %yy45 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix44, i32 0, i32 3
  store float 0.000000e+00, float* %yy45, align 4, !tbaa !62
  %ImageMatrix46 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %tx47 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix46, i32 0, i32 4
  %43 = load float, float* %tx47, align 4, !tbaa !60
  store float %43, float* %ftmp, align 4, !tbaa !12
  %ImageMatrix48 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix48, i32 0, i32 5
  %44 = load float, float* %ty, align 4, !tbaa !63
  %ImageMatrix49 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %tx50 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix49, i32 0, i32 4
  store float %44, float* %tx50, align 4, !tbaa !60
  %45 = load float, float* %ftmp, align 4, !tbaa !12
  %ImageMatrix51 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 1
  %ty52 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %ImageMatrix51, i32 0, i32 5
  store float %45, float* %ty52, align 4, !tbaa !63
  %46 = bitcast i32* %itemp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast float* %ftmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.31, %land.lhs.true.26, %land.lhs.true.21, %land.lhs.true.18, %land.lhs.true.16, %land.lhs.true.14, %if.end.10
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %49 = bitcast %struct.gs_image1_s* %image to %struct.gs_pixel_image_s*
  %DataSource = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %ip, i32 0, i32 1
  %arrayidx = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %DataSource, i32 0, i64 0
  %CombineWithColor = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 8
  %50 = load i32, i32* %CombineWithColor, align 4, !tbaa !64
  %call54 = call i32 @zimage_setup(%struct.gs_context_state_s* %48, %struct.gs_pixel_image_s* %49, %struct.ref_s* %arrayidx, i32 %50, i32 1) #4
  store i32 %call54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.9
  %51 = bitcast %struct.gs_color_space_s** %csp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.image_params_s* %ip to i8*
  call void @llvm.lifetime.end(i64 1056, i8* %53) #1
  %54 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.end(i64 600, i8* %54) #1
  %55 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s*) #2

declare i32 @gs_currentcpsimode(%struct.gs_memory_s*) #2

declare void @gs_image_t_init_adjust(%struct.gs_image1_s*, %struct.gs_color_space_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @zimage1(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @image1_setup(%struct.gs_context_state_s* %0, i32 0) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zimagemask1(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %image = alloca %struct.gs_image1_s, align 8
  %ip = alloca %struct.image_params_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.start(i64 600, i8* %3) #1
  %4 = bitcast %struct.image_params_s* %ip to i8*
  call void @llvm.lifetime.start(i64 1056, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !42
  %call = call i32 @gs_incachedevice(%struct.gs_state_s* %7) #4
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  call void @gs_image_t_init_mask_adjust(%struct.gs_image1_s* %image, i32 0, i32 %conv) #4
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !32
  %10 = bitcast %struct.gs_ref_memory_s* %9 to %struct.gs_memory_s*
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %12 = bitcast %struct.gs_image1_s* %image to %struct.gs_data_image_s*
  %call1 = call i32 @data_image_params(%struct.gs_memory_s* %10, %struct.ref_s* %11, %struct.gs_data_image_s* %12, %struct.image_params_s* %ip, i32 1, i32 1, i32 1, i32 0, i32 0) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %13, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gs_image1_s* %image to %struct.gs_pixel_image_s*
  %DataSource = getelementptr inbounds %struct.image_params_s, %struct.image_params_s* %ip, i32 0, i32 1
  %arrayidx = getelementptr inbounds [65 x %struct.ref_s], [65 x %struct.ref_s]* %DataSource, i32 0, i64 0
  %call4 = call i32 @zimage_setup(%struct.gs_context_state_s* %15, %struct.gs_pixel_image_s* %16, %struct.ref_s* %arrayidx, i32 1, i32 1) #4
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast %struct.image_params_s* %ip to i8*
  call void @llvm.lifetime.end(i64 1056, i8* %18) #1
  %19 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.end(i64 600, i8* %19) #1
  %20 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @image_proc_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_image_enum_s*, align 8
  %px = alloca i32, align 4
  %num_sources = alloca i32, align 4
  %size = alloca i32, align 4
  %used = alloca [65 x i32], align 16
  %plane_data = alloca [65 x %struct.gs_const_string_s], align 16
  %wanted = alloca i8*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !51
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !45
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %6 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %7 = bitcast %struct.obj_header_s* %6 to %struct.gs_image_enum_s*
  store %struct.gs_image_enum_s* %7, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %8 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !45
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -2
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %intval = bitcast %union.v* %value6 to i64*
  %11 = load i64, i64* %intval, align 8, !tbaa !17
  %conv = trunc i64 %11 to i32
  store i32 %conv, i32* %px, align 4, !tbaa !5
  %12 = bitcast i32* %num_sources to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 25
  %stack8 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %14 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !45
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 1
  %intval12 = bitcast %union.v* %value11 to i64*
  %15 = load i64, i64* %intval12, align 8, !tbaa !17
  %conv13 = trunc i64 %15 to i32
  store i32 %conv13, i32* %num_sources, align 4, !tbaa !5
  %16 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast [65 x i32]* %used to i8*
  call void @llvm.lifetime.start(i64 260, i8* %17) #1
  %18 = bitcast [65 x %struct.gs_const_string_s]* %plane_data to i8*
  call void @llvm.lifetime.start(i64 1040, i8* %18) #1
  %19 = bitcast i8** %wanted to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %23 = load i16, i16* %type_attrs, align 2, !tbaa !8
  %conv14 = zext i16 %23 to i32
  %and = and i32 %conv14, 16160
  %cmp = icmp eq i32 %and, 4640
  br i1 %cmp, label %if.end.34, label %if.then

if.then:                                          ; preds = %entry
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 26
  %stack17 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack16, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 1
  %26 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !65
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 0
  %cmp19 = icmp ult %struct.ref_s* %24, %add.ptr18
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 25
  %stack23 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack22, i32 0, i32 0
  %p24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 0
  %28 = load %struct.ref_s*, %struct.ref_s** %p24, align 8, !tbaa !45
  %call = call %struct.ref_s* @zimage_pop_estack(%struct.ref_s* %28) #4
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 25
  %stack26 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  store %struct.ref_s* %call, %struct.ref_s** %p27, align 8, !tbaa !45
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call28 = call i32 @image_cleanup(%struct.gs_context_state_s* %30) #4
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %type_attrs30 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 0
  %32 = bitcast i16* %type_attrs30 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv31 = zext i8 %33 to i32
  %cmp32 = icmp eq i32 %conv31, 18
  %lnot = xor i1 %cmp32, true
  %cond = select i1 %lnot, i32 -20, i32 -7
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %entry
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 2
  %35 = load i32, i32* %rsize, align 4, !tbaa !19
  store i32 %35, i32* %size, align 4, !tbaa !5
  %36 = load i32, i32* %size, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %36, 0
  br i1 %cmp36, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.34
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 25
  %stack39 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack38, i32 0, i32 0
  %p40 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack39, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %p40, align 8, !tbaa !45
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -4
  %add.ptr42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr41, i64 0
  %arrayidx43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr42, i64 1
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx43, i32 0, i32 1
  %intval45 = bitcast %union.v* %value44 to i64*
  %39 = load i64, i64* %intval45, align 8, !tbaa !17
  %cmp46 = icmp eq i64 %39, 0
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %land.lhs.true
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %if.end.82

if.else:                                          ; preds = %land.lhs.true, %if.end.34
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %41 = load i32, i32* %num_sources, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %40, %41
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %42 to i64
  %arrayidx51 = getelementptr inbounds [65 x %struct.gs_const_string_s], [65 x %struct.gs_const_string_s]* %plane_data, i32 0, i64 %idxprom
  %size52 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx51, i32 0, i32 1
  store i32 0, i32* %size52, align 4, !tbaa !66
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 1
  %bytes = bitcast %union.v* %value53 to i8**
  %45 = load i8*, i8** %bytes, align 8, !tbaa !1
  %46 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom54 = sext i32 %46 to i64
  %arrayidx55 = getelementptr inbounds [65 x %struct.gs_const_string_s], [65 x %struct.gs_const_string_s]* %plane_data, i32 0, i64 %idxprom54
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx55, i32 0, i32 0
  store i8* %45, i8** %data, align 8, !tbaa !68
  %47 = load i32, i32* %size, align 4, !tbaa !5
  %48 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom56 = sext i32 %48 to i64
  %arrayidx57 = getelementptr inbounds [65 x %struct.gs_const_string_s], [65 x %struct.gs_const_string_s]* %plane_data, i32 0, i64 %idxprom56
  %size58 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx57, i32 0, i32 1
  store i32 %47, i32* %size58, align 4, !tbaa !66
  %49 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [65 x %struct.gs_const_string_s], [65 x %struct.gs_const_string_s]* %plane_data, i32 0, i32 0
  %arraydecay59 = getelementptr inbounds [65 x i32], [65 x i32]* %used, i32 0, i32 0
  %call60 = call i32 @gs_image_next_planes(%struct.gs_image_enum_s* %49, %struct.gs_const_string_s* %arraydecay, i32* %arraydecay59) #4
  store i32 %call60, i32* %code, align 4, !tbaa !5
  %50 = load i32, i32* %code, align 4, !tbaa !5
  %cmp61 = icmp eq i32 %50, -103
  br i1 %cmp61, label %if.then.63, label %if.end.81

if.then.63:                                       ; preds = %for.end
  %51 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom64 = sext i32 %51 to i64
  %arrayidx65 = getelementptr inbounds [65 x i32], [65 x i32]* %used, i32 0, i64 %idxprom64
  %52 = load i32, i32* %arrayidx65, align 4, !tbaa !5
  %53 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 1
  %bytes67 = bitcast %union.v* %value66 to i8**
  %54 = load i8*, i8** %bytes67, align 8, !tbaa !1
  %idx.ext = zext i32 %52 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  store i8* %add.ptr68, i8** %bytes67, align 8, !tbaa !1
  %55 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom69 = sext i32 %55 to i64
  %arrayidx70 = getelementptr inbounds [65 x i32], [65 x i32]* %used, i32 0, i64 %idxprom69
  %56 = load i32, i32* %arrayidx70, align 4, !tbaa !5
  %57 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 0
  %rsize72 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas71, i32 0, i32 2
  %58 = load i32, i32* %rsize72, align 4, !tbaa !19
  %sub = sub i32 %58, %56
  store i32 %sub, i32* %rsize72, align 4, !tbaa !19
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack73 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 25
  %stack74 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack73, i32 0, i32 0
  %p75 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack74, i32 0, i32 0
  %60 = load %struct.ref_s*, %struct.ref_s** %p75, align 8, !tbaa !45
  %add.ptr76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 -4
  %add.ptr77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr76, i64 0
  %arrayidx78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr77, i64 1
  %value79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx78, i32 0, i32 1
  %intval80 = bitcast %union.v* %value79 to i64*
  store i64 0, i64* %intval80, align 8, !tbaa !17
  %61 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.81:                                        ; preds = %for.end
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.48
  %62 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %62, 0
  br i1 %tobool, label %if.then.83, label %if.end.99

if.then.83:                                       ; preds = %if.end.82
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack84 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 25
  %stack85 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack84, i32 0, i32 0
  %p86 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack85, i32 0, i32 0
  %64 = load %struct.ref_s*, %struct.ref_s** %p86, align 8, !tbaa !45
  %call87 = call %struct.ref_s* @zimage_pop_estack(%struct.ref_s* %64) #4
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack88 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 25
  %stack89 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack88, i32 0, i32 0
  %p90 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack89, i32 0, i32 0
  store %struct.ref_s* %call87, %struct.ref_s** %p90, align 8, !tbaa !45
  %66 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack91 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %66, i32 0, i32 26
  %stack92 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack91, i32 0, i32 0
  %p93 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack92, i32 0, i32 0
  %67 = load %struct.ref_s*, %struct.ref_s** %p93, align 8, !tbaa !51
  %add.ptr94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 -1
  store %struct.ref_s* %add.ptr94, %struct.ref_s** %p93, align 8, !tbaa !51
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call95 = call i32 @image_cleanup(%struct.gs_context_state_s* %68) #4
  %69 = load i32, i32* %code, align 4, !tbaa !5
  %cmp96 = icmp slt i32 %69, 0
  br i1 %cmp96, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.83
  %70 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.83
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond98 = phi i32 [ %70, %cond.true ], [ 14, %cond.false ]
  store i32 %cond98, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.99:                                        ; preds = %if.end.82
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack100 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 26
  %stack101 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack100, i32 0, i32 0
  %p102 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack101, i32 0, i32 0
  %72 = load %struct.ref_s*, %struct.ref_s** %p102, align 8, !tbaa !51
  %add.ptr103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 -1
  store %struct.ref_s* %add.ptr103, %struct.ref_s** %p102, align 8, !tbaa !51
  %73 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %call104 = call i8* @gs_image_planes_wanted(%struct.gs_image_enum_s* %73) #4
  store i8* %call104, i8** %wanted, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.99
  %74 = load i32, i32* %px, align 4, !tbaa !5
  %inc105 = add nsw i32 %74, 1
  store i32 %inc105, i32* %px, align 4, !tbaa !5
  %75 = load i32, i32* %num_sources, align 4, !tbaa !5
  %cmp106 = icmp eq i32 %inc105, %75
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %do.body
  store i32 0, i32* %px, align 4, !tbaa !5
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.109
  %76 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom110 = sext i32 %76 to i64
  %77 = load i8*, i8** %wanted, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i8, i8* %77, i64 %idxprom110
  %78 = load i8, i8* %arrayidx111, align 1, !tbaa !7
  %tobool112 = icmp ne i8 %78, 0
  %lnot113 = xor i1 %tobool112, true
  br i1 %lnot113, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %79 = load i32, i32* %px, align 4, !tbaa !5
  %conv114 = sext i32 %79 to i64
  %80 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack115 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %80, i32 0, i32 25
  %stack116 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack115, i32 0, i32 0
  %p117 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack116, i32 0, i32 0
  %81 = load %struct.ref_s*, %struct.ref_s** %p117, align 8, !tbaa !45
  %add.ptr118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i64 -2
  %value119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr118, i32 0, i32 1
  %intval120 = bitcast %union.v* %value119 to i64*
  store i64 %conv114, i64* %intval120, align 8, !tbaa !17
  %82 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call121 = call i32 @image_proc_process(%struct.gs_context_state_s* %82) #4
  store i32 %call121, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cond.end, %if.then.63, %if.end, %if.then.21
  %83 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i8** %wanted to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast [65 x %struct.gs_const_string_s]* %plane_data to i8*
  call void @llvm.lifetime.end(i64 1040, i8* %86) #1
  %87 = bitcast [65 x i32]* %used to i8*
  call void @llvm.lifetime.end(i64 260, i8* %87) #1
  %88 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %num_sources to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast %struct.gs_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal i32 @image_file_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %penum = alloca %struct.gs_image_enum_s*, align 8
  %num_sources = alloca i32, align 4
  %min_avail = alloca i32, align 4
  %plane_data = alloca [65 x %struct.gs_const_string_s], align 16
  %code = alloca i32, align 4
  %px = alloca i32, align 4
  %pp = alloca %struct.ref_s*, align 8
  %at_eof_count = alloca i32, align 4
  %total_used = alloca i32, align 4
  %num_aliases = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %min_left = alloca i32, align 4
  %avail = alloca i32, align 4
  %next = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pi = alloca i32, align 4
  %used = alloca [65 x i32], align 16
  %code1 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !45
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %3 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %4 = bitcast %struct.obj_header_s* %3 to %struct.gs_image_enum_s*
  store %struct.gs_image_enum_s* %4, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %5 = bitcast i32* %num_sources to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %7 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !45
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %intval = bitcast %union.v* %value4 to i64*
  %8 = load i64, i64* %intval, align 8, !tbaa !17
  %conv = trunc i64 %8 to i32
  store i32 %conv, i32* %num_sources, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.143, %entry
  %9 = bitcast i32* %min_avail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 2147483647, i32* %min_avail, align 4, !tbaa !5
  %10 = bitcast [65 x %struct.gs_const_string_s]* %plane_data to i8*
  call void @llvm.lifetime.start(i64 1040, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast %struct.ref_s** %pp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %at_eof_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %at_eof_count, align 4, !tbaa !5
  %15 = bitcast i32* %total_used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %px, align 4, !tbaa !5
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 25
  %stack6 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %p7, align 8, !tbaa !45
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -4
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr8, i64 0
  store %struct.ref_s* %add.ptr9, %struct.ref_s** %pp, align 8, !tbaa !1
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.cond
  %18 = load i32, i32* %px, align 4, !tbaa !5
  %19 = load i32, i32* %num_sources, align 4, !tbaa !5
  %cmp = icmp slt i32 %18, %19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.10
  %20 = bitcast i32* %num_aliases to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.ref_s*, %struct.ref_s** %pp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %intval13 = bitcast %union.v* %value12 to i64*
  %22 = load i64, i64* %intval13, align 8, !tbaa !17
  %conv14 = trunc i64 %22 to i32
  store i32 %conv14, i32* %num_aliases, align 4, !tbaa !5
  %23 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load %struct.ref_s*, %struct.ref_s** %pp, align 8, !tbaa !1
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %pfile = bitcast %union.v* %value15 to %struct.stream_s**
  %25 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %25, %struct.stream_s** %s, align 8, !tbaa !1
  %26 = bitcast i32* %min_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %avail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %num_aliases, align 4, !tbaa !5
  %cmp16 = icmp sle i32 %28, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 25
  %stack19 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack18, i32 0, i32 0
  %p20 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %p20, align 8, !tbaa !45
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -4
  %31 = load i32, i32* %num_aliases, align 4, !tbaa !5
  %sub = sub nsw i32 0, %31
  %mul = mul nsw i32 %sub, 2
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr21, i64 %idx.neg
  %arrayidx23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr22, i64 1
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx23, i32 0, i32 1
  %intval25 = bitcast %union.v* %value24 to i64*
  %32 = load i64, i64* %intval25, align 8, !tbaa !17
  %conv26 = trunc i64 %32 to i32
  store i32 %conv26, i32* %num_aliases, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %if.end
  %33 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %34 = load i8*, i8** %limit, align 8, !tbaa !69
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor27 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 5
  %r28 = bitcast %union.stream_cursor_s* %cursor27 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r28, i32 0, i32 0
  %36 = load i8*, i8** %ptr, align 8, !tbaa !71
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv29 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv29, i32* %avail, align 4, !tbaa !5
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 9
  %38 = load i16, i16* %end_status, align 2, !tbaa !72
  %conv30 = sext i16 %38 to i32
  %cmp31 = icmp eq i32 %conv30, -1
  br i1 %cmp31, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %39 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status33 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 9
  %40 = load i16, i16* %end_status33, align 2, !tbaa !72
  %conv34 = sext i16 %40 to i32
  %cmp35 = icmp eq i32 %conv34, -2
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %while.cond
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %41 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %41, i32 0, i32 18
  %42 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !76
  %min_left37 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %42, i32 0, i32 3
  %43 = load i32, i32* %min_left37, align 4, !tbaa !77
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %43, %cond.false ]
  store i32 %cond, i32* %min_left, align 4, !tbaa !5
  %44 = load i32, i32* %num_aliases, align 4, !tbaa !5
  %add = add nsw i32 %cond, %44
  %sub38 = sub nsw i32 %add, 1
  %cmp39 = icmp ule i32 %conv29, %sub38
  br i1 %cmp39, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end
  %45 = bitcast i32* %next to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %end_status41 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %46, i32 0, i32 9
  %47 = load i16, i16* %end_status41, align 2, !tbaa !72
  %conv42 = sext i16 %47 to i32
  store i32 %conv42, i32* %next, align 4, !tbaa !5
  %48 = load i32, i32* %next, align 4, !tbaa !5
  switch i32 %48, label %sw.default [
    i32 0, label %sw.bb
    i32 -1, label %sw.bb.43
    i32 -3, label %sw.bb.44
    i32 -4, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %while.body
  %49 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call = call i32 @s_process_read_buf(%struct.stream_s* %49) #4
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.43:                                         ; preds = %while.body
  %50 = load i32, i32* %at_eof_count, align 4, !tbaa !5
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %at_eof_count, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.44:                                         ; preds = %while.body, %while.body
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %52 = load i32, i32* %next, align 4, !tbaa !5
  %53 = load %struct.ref_s*, %struct.ref_s** %pp, align 8, !tbaa !1
  %call45 = call i32 @s_handle_read_exception(%struct.gs_context_state_s* %51, i32 %52, %struct.ref_s* %53, %struct.ref_s* null, i32 0, i32 (%struct.gs_context_state_s*)* @image_file_continue) #4
  store i32 %call45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %while.body
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.43
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %sw.bb.44, %sw.bb
  %54 = bitcast i32* %next to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.62 [
    i32 7, label %while.cond
    i32 8, label %while.end
  ]

while.end:                                        ; preds = %cleanup, %cond.end
  %55 = load i32, i32* %avail, align 4, !tbaa !5
  %56 = load i32, i32* %min_left, align 4, !tbaa !5
  %cmp46 = icmp uge i32 %55, %56
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %while.end
  %57 = load i32, i32* %avail, align 4, !tbaa !5
  %58 = load i32, i32* %min_left, align 4, !tbaa !5
  %sub49 = sub i32 %57, %58
  %59 = load i32, i32* %num_aliases, align 4, !tbaa !5
  %div = udiv i32 %sub49, %59
  store i32 %div, i32* %avail, align 4, !tbaa !5
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %while.end
  %60 = load i32, i32* %avail, align 4, !tbaa !5
  %61 = load i32, i32* %min_avail, align 4, !tbaa !5
  %cmp51 = icmp ult i32 %60, %61
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.50
  %62 = load i32, i32* %avail, align 4, !tbaa !5
  store i32 %62, i32* %min_avail, align 4, !tbaa !5
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.50
  %63 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor55 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %63, i32 0, i32 5
  %r56 = bitcast %union.stream_cursor_s* %cursor55 to %struct.stream_cursor_read_s*
  %ptr57 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r56, i32 0, i32 0
  %64 = load i8*, i8** %ptr57, align 8, !tbaa !71
  %add.ptr58 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom = sext i32 %65 to i64
  %arrayidx59 = getelementptr inbounds [65 x %struct.gs_const_string_s], [65 x %struct.gs_const_string_s]* %plane_data, i32 0, i64 %idxprom
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx59, i32 0, i32 0
  store i8* %add.ptr58, i8** %data, align 8, !tbaa !68
  %66 = load i32, i32* %avail, align 4, !tbaa !5
  %67 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom60 = sext i32 %67 to i64
  %arrayidx61 = getelementptr inbounds [65 x %struct.gs_const_string_s], [65 x %struct.gs_const_string_s]* %plane_data, i32 0, i64 %idxprom60
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx61, i32 0, i32 1
  store i32 %66, i32* %size, align 4, !tbaa !66
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %if.end.54, %cleanup
  %68 = bitcast i32* %avail to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %min_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i32* %num_aliases to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %cleanup.dest.66 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.66, label %cleanup.135 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.62
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %72 = load i32, i32* %px, align 4, !tbaa !5
  %inc67 = add nsw i32 %72, 1
  store i32 %inc67, i32* %px, align 4, !tbaa !5
  %73 = load %struct.ref_s*, %struct.ref_s** %pp, align 8, !tbaa !1
  %add.ptr68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i64 -2
  store %struct.ref_s* %add.ptr68, %struct.ref_s** %pp, align 8, !tbaa !1
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %74 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = bitcast [65 x i32]* %used to i8*
  call void @llvm.lifetime.start(i64 260, i8* %75) #1
  %76 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [65 x %struct.gs_const_string_s], [65 x %struct.gs_const_string_s]* %plane_data, i32 0, i32 0
  %arraydecay69 = getelementptr inbounds [65 x i32], [65 x i32]* %used, i32 0, i32 0
  %call70 = call i32 @gs_image_next_planes(%struct.gs_image_enum_s* %76, %struct.gs_const_string_s* %arraydecay, i32* %arraydecay69) #4
  store i32 %call70, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %total_used, align 4, !tbaa !5
  store i32 0, i32* %pi, align 4, !tbaa !5
  %77 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack71 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %77, i32 0, i32 25
  %stack72 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack71, i32 0, i32 0
  %p73 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack72, i32 0, i32 0
  %78 = load %struct.ref_s*, %struct.ref_s** %p73, align 8, !tbaa !45
  %add.ptr74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i64 -4
  %add.ptr75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr74, i64 0
  store %struct.ref_s* %add.ptr75, %struct.ref_s** %pp, align 8, !tbaa !1
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.92, %for.end
  %79 = load i32, i32* %pi, align 4, !tbaa !5
  %80 = load i32, i32* %num_sources, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %79, %80
  br i1 %cmp77, label %for.body.79, label %for.end.95

for.body.79:                                      ; preds = %for.cond.76
  %81 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom80 = sext i32 %81 to i64
  %arrayidx81 = getelementptr inbounds [65 x i32], [65 x i32]* %used, i32 0, i64 %idxprom80
  %82 = load i32, i32* %arrayidx81, align 4, !tbaa !5
  %83 = load %struct.ref_s*, %struct.ref_s** %pp, align 8, !tbaa !1
  %value82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i32 0, i32 1
  %pfile83 = bitcast %union.v* %value82 to %struct.stream_s**
  %84 = load %struct.stream_s*, %struct.stream_s** %pfile83, align 8, !tbaa !1
  %cursor84 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %84, i32 0, i32 5
  %r85 = bitcast %union.stream_cursor_s* %cursor84 to %struct.stream_cursor_read_s*
  %ptr86 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r85, i32 0, i32 0
  %85 = load i8*, i8** %ptr86, align 8, !tbaa !71
  %idx.ext87 = zext i32 %82 to i64
  %add.ptr88 = getelementptr inbounds i8, i8* %85, i64 %idx.ext87
  store i8* %add.ptr88, i8** %ptr86, align 8, !tbaa !71
  %86 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom89 = sext i32 %86 to i64
  %arrayidx90 = getelementptr inbounds [65 x i32], [65 x i32]* %used, i32 0, i64 %idxprom89
  %87 = load i32, i32* %arrayidx90, align 4, !tbaa !5
  %88 = load i32, i32* %total_used, align 4, !tbaa !5
  %add91 = add i32 %88, %87
  store i32 %add91, i32* %total_used, align 4, !tbaa !5
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.body.79
  %89 = load i32, i32* %pi, align 4, !tbaa !5
  %inc93 = add nsw i32 %89, 1
  store i32 %inc93, i32* %pi, align 4, !tbaa !5
  %90 = load %struct.ref_s*, %struct.ref_s** %pp, align 8, !tbaa !1
  %add.ptr94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %90, i64 -2
  store %struct.ref_s* %add.ptr94, %struct.ref_s** %pp, align 8, !tbaa !1
  br label %for.cond.76

for.end.95:                                       ; preds = %for.cond.76
  %91 = load i32, i32* %code, align 4, !tbaa !5
  %cmp96 = icmp eq i32 %91, -103
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %for.end.95
  %92 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %92, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end.99:                                        ; preds = %for.end.95
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.100

cleanup.100:                                      ; preds = %if.end.99, %if.then.98
  %93 = bitcast [65 x i32]* %used to i8*
  call void @llvm.lifetime.end(i64 260, i8* %93) #1
  %94 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %cleanup.dest.102 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.102, label %cleanup.135 [
    i32 0, label %cleanup.cont.103
  ]

cleanup.cont.103:                                 ; preds = %cleanup.100
  %95 = load i32, i32* %at_eof_count, align 4, !tbaa !5
  %96 = load i32, i32* %num_sources, align 4, !tbaa !5
  %cmp104 = icmp sge i32 %95, %96
  br i1 %cmp104, label %if.then.109, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %cleanup.cont.103
  %97 = load i32, i32* %at_eof_count, align 4, !tbaa !5
  %tobool = icmp ne i32 %97, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.110

land.lhs.true:                                    ; preds = %lor.lhs.false.106
  %98 = load i32, i32* %total_used, align 4, !tbaa !5
  %cmp107 = icmp eq i32 %98, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %land.lhs.true, %cleanup.cont.103
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %land.lhs.true, %lor.lhs.false.106
  %99 = load i32, i32* %code, align 4, !tbaa !5
  %tobool111 = icmp ne i32 %99, 0
  br i1 %tobool111, label %if.then.112, label %if.end.134

if.then.112:                                      ; preds = %if.end.110
  %100 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  %101 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack113 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %101, i32 0, i32 25
  %stack114 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack113, i32 0, i32 0
  %p115 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack114, i32 0, i32 0
  %102 = load %struct.ref_s*, %struct.ref_s** %p115, align 8, !tbaa !45
  %call116 = call %struct.ref_s* @zimage_pop_estack(%struct.ref_s* %102) #4
  %103 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack117 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %103, i32 0, i32 25
  %stack118 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack117, i32 0, i32 0
  %p119 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack118, i32 0, i32 0
  store %struct.ref_s* %call116, %struct.ref_s** %p119, align 8, !tbaa !45
  %104 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call120 = call i32 @image_cleanup(%struct.gs_context_state_s* %104) #4
  store i32 %call120, i32* %code1, align 4, !tbaa !5
  %105 = load i32, i32* %code, align 4, !tbaa !5
  %cmp121 = icmp slt i32 %105, 0
  br i1 %cmp121, label %cond.true.123, label %cond.false.124

cond.true.123:                                    ; preds = %if.then.112
  %106 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.131

cond.false.124:                                   ; preds = %if.then.112
  %107 = load i32, i32* %code1, align 4, !tbaa !5
  %cmp125 = icmp slt i32 %107, 0
  br i1 %cmp125, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %cond.false.124
  %108 = load i32, i32* %code1, align 4, !tbaa !5
  br label %cond.end.129

cond.false.128:                                   ; preds = %cond.false.124
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.128, %cond.true.127
  %cond130 = phi i32 [ %108, %cond.true.127 ], [ 14, %cond.false.128 ]
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.end.129, %cond.true.123
  %cond132 = phi i32 [ %106, %cond.true.123 ], [ %cond130, %cond.end.129 ]
  store i32 %cond132, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %109 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  br label %cleanup.135

if.end.134:                                       ; preds = %if.end.110
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.135

cleanup.135:                                      ; preds = %if.end.134, %cond.end.131, %cleanup.100, %cleanup.62
  %110 = bitcast i32* %total_used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %at_eof_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast %struct.ref_s** %pp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast [65 x %struct.gs_const_string_s]* %plane_data to i8*
  call void @llvm.lifetime.end(i64 1040, i8* %115) #1
  %116 = bitcast i32* %min_avail to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %cleanup.dest.142 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.142, label %cleanup.144 [
    i32 0, label %cleanup.cont.143
  ]

cleanup.cont.143:                                 ; preds = %cleanup.135
  br label %for.cond

cleanup.144:                                      ; preds = %cleanup.135
  %117 = bitcast i32* %num_sources to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast %struct.gs_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = load i32, i32* %retval
  ret i32 %119
}

; Function Attrs: nounwind uwtable
define internal i32 @image_string_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %penum = alloca %struct.gs_image_enum_s*, align 8
  %num_sources = alloca i32, align 4
  %sources = alloca [65 x %struct.gs_const_string_s], align 16
  %used = alloca [65 x i32], align 16
  %px = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %psrc = alloca %struct.ref_s*, align 8
  %size34 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !45
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %3 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %4 = bitcast %struct.obj_header_s* %3 to %struct.gs_image_enum_s*
  store %struct.gs_image_enum_s* %4, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %5 = bitcast i32* %num_sources to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %7 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !45
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %intval = bitcast %union.v* %value4 to i64*
  %8 = load i64, i64* %intval, align 8, !tbaa !17
  %conv = trunc i64 %8 to i32
  store i32 %conv, i32* %num_sources, align 4, !tbaa !5
  %9 = bitcast [65 x %struct.gs_const_string_s]* %sources to i8*
  call void @llvm.lifetime.start(i64 1040, i8* %9) #1
  %10 = bitcast [65 x i32]* %used to i8*
  call void @llvm.lifetime.start(i64 260, i8* %10) #1
  %arraydecay = getelementptr inbounds [65 x %struct.gs_const_string_s], [65 x %struct.gs_const_string_s]* %sources, i32 0, i32 0
  %11 = bitcast %struct.gs_const_string_s* %arraydecay to i8*
  %12 = load i32, i32* %num_sources, align 4, !tbaa !5
  %conv5 = sext i32 %12 to i64
  %mul = mul i64 16, %conv5
  %call = call i8* @memset(i8* %11, i32 0, i64 %mul) #5
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.50, %entry
  %13 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %arraydecay6 = getelementptr inbounds [65 x %struct.gs_const_string_s], [65 x %struct.gs_const_string_s]* %sources, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [65 x i32], [65 x i32]* %used, i32 0, i32 0
  %call8 = call i32 @gs_image_next_planes(%struct.gs_image_enum_s* %15, %struct.gs_const_string_s* %arraydecay6, i32* %arraydecay7) #4
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %16, -103
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

if.end:                                           ; preds = %for.cond
  br label %stop_now

stop_now:                                         ; preds = %cleanup, %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.10, label %if.end.19

if.then.10:                                       ; preds = %stop_now
  %19 = load i32, i32* %num_sources, align 4, !tbaa !5
  %mul11 = mul nsw i32 %19, 2
  %add = add nsw i32 %mul11, 5
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack13 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack12, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %p14, align 8, !tbaa !45
  %idx.ext = sext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 %idx.neg
  store %struct.ref_s* %add.ptr15, %struct.ref_s** %p14, align 8, !tbaa !45
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call16 = call i32 @image_cleanup(%struct.gs_context_state_s* %22) #4
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %23, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %24 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ 14, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

if.end.19:                                        ; preds = %stop_now
  store i32 0, i32* %px, align 4, !tbaa !5
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %if.end.19
  %25 = load i32, i32* %px, align 4, !tbaa !5
  %26 = load i32, i32* %num_sources, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %25, %26
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.20
  %27 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds [65 x %struct.gs_const_string_s], [65 x %struct.gs_const_string_s]* %sources, i32 0, i64 %idxprom
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx, i32 0, i32 1
  %28 = load i32, i32* %size, align 4, !tbaa !66
  %cmp23 = icmp eq i32 %28, 0
  br i1 %cmp23, label %if.then.25, label %if.end.46

if.then.25:                                       ; preds = %for.body
  %29 = bitcast %struct.ref_s** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 25
  %stack27 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack26, i32 0, i32 0
  %p28 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack27, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p28, align 8, !tbaa !45
  %add.ptr29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -4
  %32 = load i32, i32* %px, align 4, !tbaa !5
  %mul30 = mul nsw i32 %32, 2
  %idx.ext31 = sext i32 %mul30 to i64
  %idx.neg32 = sub i64 0, %idx.ext31
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr29, i64 %idx.neg32
  store %struct.ref_s* %add.ptr33, %struct.ref_s** %psrc, align 8, !tbaa !1
  %33 = bitcast i32* %size34 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load %struct.ref_s*, %struct.ref_s** %psrc, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %35 = load i32, i32* %rsize, align 4, !tbaa !19
  store i32 %35, i32* %size34, align 4, !tbaa !5
  %36 = load i32, i32* %size34, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %36, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.25
  store i32 1, i32* %code, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.then.25
  %37 = load %struct.ref_s*, %struct.ref_s** %psrc, align 8, !tbaa !1
  %value39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  %bytes = bitcast %union.v* %value39 to i8**
  %38 = load i8*, i8** %bytes, align 8, !tbaa !1
  %39 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom40 = sext i32 %39 to i64
  %arrayidx41 = getelementptr inbounds [65 x %struct.gs_const_string_s], [65 x %struct.gs_const_string_s]* %sources, i32 0, i64 %idxprom40
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx41, i32 0, i32 0
  store i8* %38, i8** %data, align 8, !tbaa !68
  %40 = load i32, i32* %size34, align 4, !tbaa !5
  %41 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom42 = sext i32 %41 to i64
  %arrayidx43 = getelementptr inbounds [65 x %struct.gs_const_string_s], [65 x %struct.gs_const_string_s]* %sources, i32 0, i64 %idxprom42
  %size44 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx43, i32 0, i32 1
  store i32 %40, i32* %size44, align 4, !tbaa !66
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.37
  %42 = bitcast i32* %size34 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast %struct.ref_s** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %stop_now
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.46

if.end.46:                                        ; preds = %cleanup.cont, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %44 = load i32, i32* %px, align 4, !tbaa !5
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %px, align 4, !tbaa !5
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.47

cleanup.47:                                       ; preds = %for.end, %cond.end, %if.then
  %45 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %cleanup.dest.49 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.49, label %cleanup.51 [
    i32 0, label %cleanup.cont.50
  ]

cleanup.cont.50:                                  ; preds = %cleanup.47
  br label %for.cond

cleanup.51:                                       ; preds = %cleanup.47
  %47 = bitcast [65 x i32]* %used to i8*
  call void @llvm.lifetime.end(i64 260, i8* %47) #1
  %48 = bitcast [65 x %struct.gs_const_string_s]* %sources to i8*
  call void @llvm.lifetime.end(i64 1040, i8* %48) #1
  %49 = bitcast i32* %num_sources to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.gs_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

declare i32 @gx_image_end(%struct.gx_image_enum_common_s*, i32) #2

declare i32 @gs_errorinfo_put_pair(%struct.gs_context_state_s*, i8*, i32, %struct.ref_s*) #2

declare i32 @check_proc_failed(%struct.ref_s*) #2

declare %struct.gs_image_enum_s* @gs_image_enum_alloc(%struct.gs_memory_s*, i8*) #2

declare i32 @gs_image_enum_init(%struct.gs_image_enum_s*, %struct.gx_image_enum_common_s*, %struct.gs_data_image_s*, %struct.gs_state_s*) #2

declare i32 @gs_image_cleanup_and_free_enum(%struct.gs_image_enum_s*, %struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @image_cleanup(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %ep_top = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_image_enum_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %ep_top to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !45
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %4 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !45
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %5 = load i64, i64* %intval, align 8, !tbaa !17
  %mul = mul nsw i64 %5, 2
  %add = add nsw i64 %mul, 5
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 %add
  store %struct.ref_s* %add.ptr4, %struct.ref_s** %ep_top, align 8, !tbaa !1
  %6 = bitcast %struct.gs_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %ep_top, align 8, !tbaa !1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %pstruct = bitcast %union.v* %value5 to %struct.obj_header_s**
  %8 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %9 = bitcast %struct.obj_header_s* %8 to %struct.gs_image_enum_s*
  store %struct.gs_image_enum_s* %9, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %10 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 0
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !42
  %call = call i32 @gs_image_cleanup_and_free_enum(%struct.gs_image_enum_s* %10, %struct.gs_state_s* %12) #4
  %13 = bitcast %struct.gs_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast %struct.ref_s** %ep_top to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @image_proc_process(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %px = alloca i32, align 4
  %penum = alloca %struct.gs_image_enum_s*, align 8
  %wanted = alloca i8*, align 8
  %num_sources = alloca i32, align 4
  %pp = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !45
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %3 = load i64, i64* %intval, align 8, !tbaa !17
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %px, align 4, !tbaa !5
  %4 = bitcast %struct.gs_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %6 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !45
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %pstruct = bitcast %union.v* %value4 to %struct.obj_header_s**
  %7 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %8 = bitcast %struct.obj_header_s* %7 to %struct.gs_image_enum_s*
  store %struct.gs_image_enum_s* %8, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %9 = bitcast i8** %wanted to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8, !tbaa !1
  %call = call i8* @gs_image_planes_wanted(%struct.gs_image_enum_s* %10) #4
  store i8* %call, i8** %wanted, align 8, !tbaa !1
  %11 = bitcast i32* %num_sources to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 25
  %stack6 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p7, align 8, !tbaa !45
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr8, i32 0, i32 1
  %intval10 = bitcast %union.v* %value9 to i64*
  %14 = load i64, i64* %intval10, align 8, !tbaa !17
  %conv11 = trunc i64 %14 to i32
  store i32 %conv11, i32* %num_sources, align 4, !tbaa !5
  %15 = bitcast %struct.ref_s** %pp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 25
  %stack13 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack12, i32 0, i32 0
  %p14 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack13, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %p14, align 8, !tbaa !45
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -4
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr15, i64 0
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr16, i64 1
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %intval18 = bitcast %union.v* %value17 to i64*
  store i64 0, i64* %intval18, align 8, !tbaa !17
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %18 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom = sext i32 %18 to i64
  %19 = load i8*, i8** %wanted, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 %idxprom
  %20 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %tobool = icmp ne i8 %20, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %px, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %px, align 4, !tbaa !5
  %22 = load i32, i32* %num_sources, align 4, !tbaa !5
  %cmp = icmp eq i32 %inc, %22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %px, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %23 = load i32, i32* %px, align 4, !tbaa !5
  %conv21 = sext i32 %23 to i64
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 25
  %stack23 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack22, i32 0, i32 0
  %p24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 0
  %25 = load %struct.ref_s*, %struct.ref_s** %p24, align 8, !tbaa !45
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -2
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr25, i32 0, i32 1
  %intval27 = bitcast %union.v* %value26 to i64*
  store i64 %conv21, i64* %intval27, align 8, !tbaa !17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 25
  %stack29 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack28, i32 0, i32 0
  %p30 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack29, i32 0, i32 0
  %27 = load %struct.ref_s*, %struct.ref_s** %p30, align 8, !tbaa !45
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -4
  %28 = load i32, i32* %px, align 4, !tbaa !5
  %mul = mul nsw i32 %28, 2
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr31, i64 %idx.neg
  store %struct.ref_s* %add.ptr32, %struct.ref_s** %pp, align 8, !tbaa !1
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 25
  %stack34 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack33, i32 0, i32 0
  %p35 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %p35, align 8, !tbaa !45
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p35, align 8, !tbaa !45
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 25
  %stack37 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack36, i32 0, i32 0
  %p38 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack37, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %p38, align 8, !tbaa !45
  %value39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %opproc = bitcast %union.v* %value39 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @image_proc_continue, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 25
  %stack41 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack40, i32 0, i32 0
  %p42 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack41, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p42, align 8, !tbaa !45
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !8
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack43 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 25
  %stack44 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack43, i32 0, i32 0
  %p45 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack44, i32 0, i32 0
  %36 = load %struct.ref_s*, %struct.ref_s** %p45, align 8, !tbaa !45
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !19
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack47 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 25
  %stack48 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack47, i32 0, i32 0
  %p49 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack48, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %p49, align 8, !tbaa !45
  %incdec.ptr50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 1
  store %struct.ref_s* %incdec.ptr50, %struct.ref_s** %p49, align 8, !tbaa !45
  %39 = load %struct.ref_s*, %struct.ref_s** %pp, align 8, !tbaa !1
  %40 = bitcast %struct.ref_s* %incdec.ptr50 to i8*
  %41 = bitcast %struct.ref_s* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false), !tbaa.struct !20
  %42 = bitcast %struct.ref_s** %pp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32* %num_sources to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i8** %wanted to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast %struct.gs_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  ret i32 5
}

declare i8* @gs_image_planes_wanted(%struct.gs_image_enum_s*) #2

declare void @gs_image_t_init_mask_adjust(%struct.gs_image1_s*, i32, i32) #2

declare i32 @gs_incachedevice(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.ref_s* @zimage_pop_estack(%struct.ref_s* %tep) #0 {
entry:
  %tep.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %tep, %struct.ref_s** %tep.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %tep.addr, align 8, !tbaa !1
  %1 = load %struct.ref_s*, %struct.ref_s** %tep.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %2 = load i64, i64* %intval, align 8, !tbaa !17
  %mul = mul nsw i64 %2, 2
  %add = add nsw i64 %mul, 5
  %idx.neg = sub i64 0, %add
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 %idx.neg
  ret %struct.ref_s* %add.ptr1
}

declare i32 @gs_image_next_planes(%struct.gs_image_enum_s*, %struct.gs_const_string_s*, i32*) #2

declare i32 @s_process_read_buf(%struct.stream_s*) #2

declare i32 @s_handle_read_exception(%struct.gs_context_state_s*, i32, %struct.ref_s*, %struct.ref_s*, i32, i32 (%struct.gs_context_state_s*)*) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

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
!7 = !{!3, !3, i64 0}
!8 = !{!9, !11, i64 0}
!9 = !{!"ref_s", !10, i64 0, !3, i64 8}
!10 = !{!"tas_s", !11, i64 0, !11, i64 2, !6, i64 4}
!11 = !{!"short", !3, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !3, i64 0}
!14 = !{!15, !2, i64 1048}
!15 = !{!"image_params_s", !6, i64 0, !3, i64 8, !2, i64 1048}
!16 = !{!15, !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !3, i64 0}
!19 = !{!9, !6, i64 4}
!20 = !{i64 0, i64 2, !21, i64 2, i64 2, !21, i64 4, i64 4, !5, i64 8, i64 8, !17, i64 8, i64 2, !21, i64 8, i64 4, !12, i64 8, i64 8, !17, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !17}
!21 = !{!11, !11, i64 0}
!22 = !{!23, !2, i64 576}
!23 = !{!"gs_pixel_image_s", !2, i64 0, !24, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576}
!24 = !{!"gs_matrix_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!25 = !{!26, !2, i64 64}
!26 = !{!"gs_color_space_s", !2, i64 0, !27, i64 8, !18, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!27 = !{!"rc_header_s", !18, i64 0, !2, i64 8, !2, i64 16}
!28 = !{!29, !6, i64 4}
!29 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 16, !30, i64 20, !18, i64 144, !6, i64 152, !3, i64 156, !6, i64 216, !6, i64 220, !6, i64 224, !31, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !27, i64 288, !6, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!30 = !{!"gs_range_icc_s", !3, i64 0}
!31 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20}
!32 = !{!33, !2, i64 8}
!33 = !{!"gs_context_state_s", !2, i64 0, !34, i64 8, !6, i64 80, !9, i64 88, !9, i64 104, !18, i64 120, !18, i64 128, !18, i64 136, !6, i64 144, !6, i64 148, !9, i64 152, !9, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !36, i64 264, !36, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !37, i64 368, !39, i64 520, !40, i64 624, !2, i64 720}
!34 = !{!"gs_dual_memory_s", !2, i64 0, !35, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!35 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!36 = !{!"op_array_table_s", !9, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!37 = !{!"dict_stack_s", !38, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !9, i64 136}
!38 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !6, i64 40, !6, i64 44, !9, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!39 = !{!"exec_stack_s", !38, i64 0, !2, i64 96}
!40 = !{!"op_stack_s", !38, i64 0}
!41 = !{!23, !3, i64 568}
!42 = !{!33, !2, i64 0}
!43 = !{!44, !6, i64 44}
!44 = !{!"gx_image_enum_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !18, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308}
!45 = !{!33, !2, i64 520}
!46 = !{!33, !2, i64 536}
!47 = !{!33, !6, i64 80}
!48 = !{!49, !2, i64 24}
!49 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!50 = !{!44, !6, i64 40}
!51 = !{!33, !2, i64 624}
!52 = !{!26, !2, i64 40}
!53 = !{!54, !3, i64 592}
!54 = !{!"gs_image1_s", !2, i64 0, !24, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576, !6, i64 584, !6, i64 588, !3, i64 592, !3, i64 596}
!55 = !{!54, !6, i64 32}
!56 = !{!54, !6, i64 36}
!57 = !{!54, !6, i64 40}
!58 = !{!54, !13, i64 12}
!59 = !{!54, !13, i64 16}
!60 = !{!54, !13, i64 24}
!61 = !{!54, !13, i64 8}
!62 = !{!54, !13, i64 20}
!63 = !{!54, !13, i64 28}
!64 = !{!54, !6, i64 572}
!65 = !{!33, !2, i64 632}
!66 = !{!67, !6, i64 8}
!67 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!68 = !{!67, !2, i64 0}
!69 = !{!70, !2, i64 8}
!70 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!71 = !{!70, !2, i64 0}
!72 = !{!73, !11, i64 152}
!73 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !11, i64 152, !3, i64 154, !3, i64 155, !74, i64 160, !18, i64 176, !75, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !11, i64 264, !11, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !67, i64 312, !6, i64 328, !18, i64 336, !18, i64 344}
!74 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!75 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!76 = !{!73, !2, i64 256}
!77 = !{!78, !6, i64 24}
!78 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28}
