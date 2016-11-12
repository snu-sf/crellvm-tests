; ModuleID = './zdevice2.bc'
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
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
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
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type opaque
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
%struct.gx_image_type_s = type opaque
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
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
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
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.int_gstate_s = type { %struct.ref_s, %struct.anon, %struct.anon, %struct.ref_s, %struct.ref_s, [2 x %struct.ref_colorspace_s], [2 x %struct.ref_s], %struct.anon.5, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.anon = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.4 }
%struct.ref_cie_procs_s = type { %union.anon.2, %union.anon.3, %struct.ref_s }
%union.anon.2 = type { %struct.ref_s }
%union.anon.3 = type { %struct.ref_s }
%union.anon.4 = type { %struct.ref_device_n_params_s }
%struct.ref_device_n_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.anon.5 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.obj_header_s = type opaque
%struct.igstate_obj_s = type { %struct.ref_s }

@.str = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"0.currentshowpagecount\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"0.currentpagedevice\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"1.setpagedevice\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"1copy\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"0gsave\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"0save\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"0gstate\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"1currentgstate\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"0grestore\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"0grestoreall\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"1restore\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"1setgstate\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"0.callinstall\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"1.callbeginpage\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"2.callendpage\00", align 1
@zdevice2_l2_op_defs = constant [17 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentshowpagecount }, %struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentpagedevice }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetpagedevice }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @z2copy }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @z2gsave }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @z2save }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @z2gstate }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @z2currentgstate }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @z2grestore }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @z2grestoreall }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @z2restore }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @z2setgstate }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcallinstall }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcallbeginpage }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcallendpage }, %struct.op_def zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [22 x i8] c"%copygstatepagedevice\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"%gsavepagedevice\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"%savepagedevice\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"%gstatepagedevice\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"%currentgstatepagedevice\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"%grestorepagedevice\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"%grestoreallpagedevice\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"%restore1pagedevice\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"%restorepagedevice\00", align 1
@st_igstate_obj = external constant %struct.gs_memory_struct_type_s, align 8
@.str.25 = private unnamed_addr constant [21 x i8] c"%setgstatepagedevice\00", align 1

; Function Attrs: nounwind uwtable
define i32 @z2copy(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
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
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zcopy(%struct.gs_context_state_s* %4) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %5 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %9 to i32
  %cmp1 = icmp eq i32 %conv, 9
  br i1 %cmp1, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call5 = call i32 @z2copy_gstate(%struct.gs_context_state_s* %11) #3
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @zcopy(%struct.gs_context_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @z2copy_gstate(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call i32 @save_page_device(%struct.gs_state_s* %1) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call1 = call i32 @zcopy_gstate(%struct.gs_context_state_s* %2) #3
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call2 = call i32 @push_callout(%struct.gs_context_state_s* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0)) #3
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentshowpagecount(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
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
  %3 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %5) #3
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 19
  %7 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !22
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call1 = call %struct.gx_device_s* %7(%struct.gx_device_s* %8) #3
  %cmp = icmp eq %struct.gx_device_s* %call1, null
  br i1 %cmp, label %if.then, label %if.else.11

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 2
  %11 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !33
  %cmp4 = icmp ugt %struct.ref_s* %add.ptr, %11
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack9 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack8, i32 0, i32 0
  %p10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  store %struct.ref_s* %13, %struct.ref_s** %p10, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 0, i16* %boolval, align 2, !tbaa !35
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !36
  br label %if.end.38

if.else.11:                                       ; preds = %entry
  br label %do.body.12

do.body.12:                                       ; preds = %if.else.11
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 2
  store %struct.ref_s* %add.ptr13, %struct.ref_s** %op, align 8, !tbaa !1
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack15 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack14, i32 0, i32 0
  %top16 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 2
  %19 = load %struct.ref_s*, %struct.ref_s** %top16, align 8, !tbaa !33
  %cmp17 = icmp ugt %struct.ref_s* %add.ptr13, %19
  br i1 %cmp17, label %if.then.18, label %if.else.22

if.then.18:                                       ; preds = %do.body.12
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 26
  %stack20 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack19, i32 0, i32 0
  %requested21 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 7
  store i32 2, i32* %requested21, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.22:                                       ; preds = %do.body.12
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack24 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack23, i32 0, i32 0
  %p25 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 0
  store %struct.ref_s* %21, %struct.ref_s** %p25, align 8, !tbaa !5
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.22
  br label %do.cond.27

do.cond.27:                                       ; preds = %if.end.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %ShowpageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 27
  %24 = load i64, i64* %ShowpageCount, align 8, !tbaa !37
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr29, i32 0, i32 1
  %intval = bitcast %union.v* %value30 to i64*
  store i64 %24, i64* %intval, align 8, !tbaa !38
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr31, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  store i16 2816, i16* %type_attrs33, align 2, !tbaa !36
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  %boolval35 = bitcast %union.v* %value34 to i16*
  store i16 1, i16* %boolval35, align 2, !tbaa !35
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %type_attrs37 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas36, i32 0, i32 0
  store i16 256, i16* %type_attrs37, align 2, !tbaa !36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.28, %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.18, %if.then.5
  %29 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentpagedevice(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
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
  %3 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %5) #3
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %8 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !33
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %10, %struct.ref_s** %p7, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 19
  %13 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !22
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call8 = call %struct.gx_device_s* %13(%struct.gx_device_s* %14) #3
  %cmp9 = icmp ne %struct.gx_device_s* %call8, null
  br i1 %cmp9, label %if.then.10, label %if.else.13

if.then.10:                                       ; preds = %do.end
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 0
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs11, align 8, !tbaa !21
  %call12 = call i8* @gs_state_client_data(%struct.gs_state_s* %17) #3
  %18 = bitcast i8* %call12 to %struct.int_gstate_s*
  %pagedevice = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %18, i32 0, i32 10
  %19 = bitcast %struct.ref_s* %arrayidx to i8*
  %20 = bitcast %struct.ref_s* %pagedevice to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false), !tbaa.struct !39
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 1, i16* %boolval, align 2, !tbaa !35
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !36
  br label %if.end.21

if.else.13:                                       ; preds = %do.end
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr14, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  store i16 3584, i16* %type_attrs16, align 2, !tbaa !36
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %boolval18 = bitcast %union.v* %value17 to i16*
  store i16 0, i16* %boolval18, align 2, !tbaa !35
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  store i16 256, i16* %type_attrs20, align 2, !tbaa !36
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.13, %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then
  %26 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetpagedevice(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
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
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %8 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %8, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %9 = load i16, i16* %type_attrs3, align 2, !tbaa !36
  %conv4 = zext i16 %9 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zreadonly(%struct.gs_context_state_s* %10) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %11 = load i32, i32* %code, align 4, !tbaa !19
  %cmp6 = icmp slt i32 %11, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.end
  %12 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %do.end
  br label %if.end.19

if.else:                                          ; preds = %entry
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  %14 = bitcast i16* %type_attrs11 to i8*
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx12, align 1, !tbaa !20
  %conv13 = zext i8 %15 to i32
  %cmp14 = icmp eq i32 %conv13, 14
  br i1 %cmp14, label %if.end.18, label %if.then.16

if.then.16:                                       ; preds = %if.else
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call17 = call i32 @check_type_failed(%struct.ref_s* %16) #3
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.9
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 0
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call20 = call i8* @gs_state_client_data(%struct.gs_state_s* %18) #3
  %19 = bitcast i8* %call20 to %struct.int_gstate_s*
  %pagedevice = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %19, i32 0, i32 10
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %21 = bitcast %struct.ref_s* %pagedevice to i8*
  %22 = bitcast %struct.ref_s* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false), !tbaa.struct !39
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack22 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack21, i32 0, i32 0
  %p23 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack22, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p23, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p23, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.16, %if.then.8, %if.then.5
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @z2gsave(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call i32 @save_page_device(%struct.gs_state_s* %1) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 0
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !21
  %call2 = call i32 @gs_gsave(%struct.gs_state_s* %3) #3
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call3 = call i32 @push_callout(%struct.gs_context_state_s* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0)) #3
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @z2save(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call i32 @save_page_device(%struct.gs_state_s* %1) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call1 = call i32 @zsave(%struct.gs_context_state_s* %2) #3
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call2 = call i32 @push_callout(%struct.gs_context_state_s* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0)) #3
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @z2gstate(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call i32 @save_page_device(%struct.gs_state_s* %1) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call1 = call i32 @zgstate(%struct.gs_context_state_s* %2) #3
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call2 = call i32 @push_callout(%struct.gs_context_state_s* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0)) #3
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @z2currentgstate(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call i32 @save_page_device(%struct.gs_state_s* %1) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call1 = call i32 @zcurrentgstate(%struct.gs_context_state_s* %2) #3
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call2 = call i32 @push_callout(%struct.gs_context_state_s* %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0)) #3
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @z2grestore(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 0
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !21
  %call = call %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s* %3) #3
  %call2 = call i32 @restore_page_device(%struct.gs_state_s* %1, %struct.gs_state_s* %call) #3
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs3, align 8, !tbaa !21
  %call4 = call i32 @gs_grestore(%struct.gs_state_s* %5) #3
  store i32 %call4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call5 = call i32 @push_callout(%struct.gs_context_state_s* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0)) #3
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @z2grestoreall(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %done = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end.12, %entry
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 0
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !21
  %call = call %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s* %3) #3
  %call2 = call i32 @restore_page_device(%struct.gs_state_s* %1, %struct.gs_state_s* %call) #3
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.cond
  %4 = bitcast i32* %done to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 0
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs3, align 8, !tbaa !21
  %call4 = call %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s* %6) #3
  %call5 = call %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s* %call4) #3
  %tobool6 = icmp ne %struct.gs_state_s* %call5, null
  %lnot = xor i1 %tobool6, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %done, align 4, !tbaa !19
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs7, align 8, !tbaa !21
  %call8 = call i32 @gs_grestore(%struct.gs_state_s* %8) #3
  %9 = load i32, i32* %done, align 4, !tbaa !19
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.10
  %10 = bitcast i32* %done to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.12

if.else:                                          ; preds = %for.cond
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call11 = call i32 @push_callout(%struct.gs_context_state_s* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0)) #3
  store i32 %call11, i32* %retval
  br label %return

if.end.12:                                        ; preds = %cleanup.cont
  br label %for.cond

for.end:                                          ; preds = %cleanup
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %12 = load i32, i32* %retval
  ret i32 %12

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @z2restore(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s* %1) #3
  %call1 = call %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s* %call) #3
  %tobool = icmp ne %struct.gs_state_s* %call1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 0
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs2, align 8, !tbaa !21
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs3, align 8, !tbaa !21
  %call4 = call %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s* %5) #3
  %call5 = call i32 @restore_page_device(%struct.gs_state_s* %3, %struct.gs_state_s* %call4) #3
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call7 = call i32 @push_callout(%struct.gs_context_state_s* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0)) #3
  store i32 %call7, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs8, align 8, !tbaa !21
  %call9 = call i32 @gs_grestore(%struct.gs_state_s* %8) #3
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs10, align 8, !tbaa !21
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 0
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs11, align 8, !tbaa !21
  %call12 = call %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s* %12) #3
  %call13 = call i32 @restore_page_device(%struct.gs_state_s* %10, %struct.gs_state_s* %call12) #3
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %while.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call16 = call i32 @push_callout(%struct.gs_context_state_s* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0)) #3
  store i32 %call16, i32* %retval
  br label %return

if.end.17:                                        ; preds = %while.end
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call18 = call i32 @zrestore(%struct.gs_context_state_s* %14) #3
  store i32 %call18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.15, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @z2setgstate(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
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
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !36
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 15872
  %cmp = icmp eq i32 %and, 2048
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !42
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %8 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !43
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 1
  %current3 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current3, align 8, !tbaa !42
  %11 = bitcast %struct.gs_ref_memory_s* %10 to %struct.gs_memory_s*
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %13 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %14 = bitcast %struct.obj_header_s* %13 to i8*
  %call = call %struct.gs_memory_struct_type_s* %8(%struct.gs_memory_s* %11, i8* %14) #3
  %cmp4 = icmp eq %struct.gs_memory_struct_type_s* %call, @st_igstate_obj
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call6 = call i32 @check_type_failed(%struct.ref_s* %15) #3
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 0
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %pstruct8 = bitcast %union.v* %value7 to %struct.obj_header_s**
  %19 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct8, align 8, !tbaa !1
  %20 = bitcast %struct.obj_header_s* %19 to %struct.igstate_obj_s*
  %gstate = getelementptr inbounds %struct.igstate_obj_s, %struct.igstate_obj_s* %20, i32 0, i32 0
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gstate, i32 0, i32 1
  %pstruct10 = bitcast %union.v* %value9 to %struct.obj_header_s**
  %21 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct10, align 8, !tbaa !1
  %22 = bitcast %struct.obj_header_s* %21 to %struct.gs_state_s*
  %call11 = call i32 @restore_page_device(%struct.gs_state_s* %17, %struct.gs_state_s* %22) #3
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call13 = call i32 @zsetgstate(%struct.gs_context_state_s* %23) #3
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call15 = call i32 @push_callout(%struct.gs_context_state_s* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0)) #3
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.12, %if.then
  %25 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @zcallinstall(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %2) #3
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 19
  %4 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !22
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call1 = call %struct.gx_device_s* %4(%struct.gx_device_s* %5) #3
  store %struct.gx_device_s* %call1, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_s* %call1, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %page_procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 41
  %install = getelementptr inbounds %struct.gx_page_device_procs_s, %struct.gx_page_device_procs_s* %page_procs, i32 0, i32 0
  %8 = load i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)** %install, align 8, !tbaa !46
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs2, align 8, !tbaa !21
  %call3 = call i32 %8(%struct.gx_device_s* %9, %struct.gs_state_s* %11) #3
  store i32 %call3, i32* %code, align 4, !tbaa !19
  %12 = load i32, i32* %code, align 4, !tbaa !19
  %cmp4 = icmp slt i32 %12, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %13 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.5
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.7 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.6

if.end.6:                                         ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.7

cleanup.7:                                        ; preds = %if.end.6, %cleanup
  %15 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zcallbeginpage(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %5) #3
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call2 = call i32 @check_type_failed(%struct.ref_s* %9) #3
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17

if.end:                                           ; preds = %entry
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 19
  %11 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !22
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call3 = call %struct.gx_device_s* %11(%struct.gx_device_s* %12) #3
  store %struct.gx_device_s* %call3, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.gx_device_s* %call3, null
  br i1 %cmp4, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.end
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %page_procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 41
  %begin_page = getelementptr inbounds %struct.gx_page_device_procs_s, %struct.gx_page_device_procs_s* %page_procs, i32 0, i32 1
  %15 = load i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)** %begin_page, align 8, !tbaa !47
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 0
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs7, align 8, !tbaa !21
  %call8 = call i32 %15(%struct.gx_device_s* %16, %struct.gs_state_s* %18) #3
  store i32 %call8, i32* %code, align 4, !tbaa !19
  %19 = load i32, i32* %code, align 4, !tbaa !19
  %cmp9 = icmp slt i32 %19, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.6
  %20 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.then.6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.13

if.end.13:                                        ; preds = %cleanup.cont, %if.end
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 26
  %stack15 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack14, i32 0, i32 0
  %p16 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %p16, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p16, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17

cleanup.17:                                       ; preds = %if.end.13, %cleanup, %if.then
  %24 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @zcallendpage(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
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
  %3 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %5) #3
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx1, align 1, !tbaa !20
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %call4 = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #3
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %12 = bitcast i16* %type_attrs6 to i8*
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx7, align 1, !tbaa !20
  %conv8 = zext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 11
  br i1 %cmp9, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call12 = call i32 @check_type_failed(%struct.ref_s* %14) #3
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 19
  %16 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !22
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call14 = call %struct.gx_device_s* %16(%struct.gx_device_s* %17) #3
  store %struct.gx_device_s* %call14, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %cmp15 = icmp ne %struct.gx_device_s* %call14, null
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.13
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %page_procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 41
  %end_page = getelementptr inbounds %struct.gx_page_device_procs_s, %struct.gx_page_device_procs_s* %page_procs, i32 0, i32 2
  %19 = load i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)** %end_page, align 8, !tbaa !48
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %22 = load i64, i64* %intval, align 8, !tbaa !38
  %conv18 = trunc i64 %22 to i32
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 0
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs19, align 8, !tbaa !21
  %call20 = call i32 %19(%struct.gx_device_s* %20, i32 %conv18, %struct.gs_state_s* %24) #3
  store i32 %call20, i32* %code, align 4, !tbaa !19
  %25 = load i32, i32* %code, align 4, !tbaa !19
  %cmp21 = icmp slt i32 %25, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.17
  %26 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.then.17
  %27 = load i32, i32* %code, align 4, !tbaa !19
  %cmp25 = icmp sgt i32 %27, 1
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.24
  br label %if.end.33

if.else:                                          ; preds = %if.end.13
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %intval30 = bitcast %union.v* %value29 to i64*
  %29 = load i64, i64* %intval30, align 8, !tbaa !38
  %cmp31 = icmp eq i64 %29, 2
  %cond = select i1 %cmp31, i32 0, i32 1
  store i32 %cond, i32* %code, align 4, !tbaa !19
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.end.28
  %30 = load i32, i32* %code, align 4, !tbaa !19
  %conv34 = trunc i32 %30 to i16
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %boolval = bitcast %union.v* %value35 to i16*
  store i16 %conv34, i16* %boolval, align 2, !tbaa !35
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  %tas37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr36, i32 0, i32 0
  %type_attrs38 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas37, i32 0, i32 0
  store i16 256, i16* %type_attrs38, align 2, !tbaa !36
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 26
  %stack40 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack39, i32 0, i32 0
  %p41 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack40, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %p41, align 8, !tbaa !5
  %add.ptr42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -1
  store %struct.ref_s* %add.ptr42, %struct.ref_s** %p41, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.27, %if.then.23, %if.then.11, %if.then
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @save_page_device(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i8* @gs_state_client_data(%struct.gs_state_s* %0) #3
  %1 = bitcast i8* %call to %struct.int_gstate_s*
  %pagedevice = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %1, i32 0, i32 10
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pagedevice, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %2 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 14
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call2 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %4) #3
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %call2, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 19
  %5 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !22
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call3 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %6) #3
  %call4 = call %struct.gx_device_s* %5(%struct.gx_device_s* %call3) #3
  %cmp5 = icmp ne %struct.gx_device_s* %call4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  ret i32 %land.ext
}

declare i32 @zcopy_gstate(%struct.gs_context_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @push_callout(%struct.gs_context_state_s* %i_ctx_p, i8* %callout_name) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %callout_name.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %es_code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8* %callout_name, i8** %callout_name.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !49
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 25
  %stack2 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %4 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !50
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %cmp = icmp ugt %struct.ref_s* %2, %add.ptr
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %5 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %call = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack4, i32 1) #3
  store i32 %call, i32* %es_code_, align 4, !tbaa !19
  %7 = load i32, i32* %es_code_, align 4, !tbaa !19
  %cmp5 = icmp slt i32 %7, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %8 = load i32, i32* %es_code_, align 4, !tbaa !19
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.6
  %9 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7

if.end.7:                                         ; preds = %cleanup.cont, %entry
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !42
  %12 = bitcast %struct.gs_ref_memory_s* %11 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 2
  %13 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !51
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %13, i32 0, i32 16
  %14 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !52
  %15 = load i8*, i8** %callout_name.addr, align 8, !tbaa !1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 25
  %stack9 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack8, i32 0, i32 0
  %p10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %p10, align 8, !tbaa !49
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 1
  %call12 = call i32 @names_enter_string(%struct.name_table_s* %14, i8* %15, %struct.ref_s* %add.ptr11) #3
  store i32 %call12, i32* %code, align 4, !tbaa !19
  %18 = load i32, i32* %code, align 4, !tbaa !19
  %cmp13 = icmp slt i32 %18, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.7
  %19 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

if.end.15:                                        ; preds = %if.end.7
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack17 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack16, i32 0, i32 0
  %p18 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %p18, align 8, !tbaa !49
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p18, align 8, !tbaa !49
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 25
  %stack20 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack19, i32 0, i32 0
  %p21 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %p21, align 8, !tbaa !49
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %24 = load i16, i16* %type_attrs, align 2, !tbaa !36
  %conv = zext i16 %24 to i32
  %or = or i32 %conv, 128
  %conv22 = trunc i32 %or to i16
  store i16 %conv22, i16* %type_attrs, align 2, !tbaa !36
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

cleanup.23:                                       ; preds = %if.end.15, %if.then.14, %cleanup
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i8* @gs_state_client_data(%struct.gs_state_s*) #2

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #2

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

declare i32 @names_enter_string(%struct.name_table_s*, i8*, %struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @zreadonly(%struct.gs_context_state_s*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @gs_gsave(%struct.gs_state_s*) #2

declare i32 @zsave(%struct.gs_context_state_s*) #2

declare i32 @zgstate(%struct.gs_context_state_s*) #2

declare i32 @zcurrentgstate(%struct.gs_context_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @restore_page_device(%struct.gs_state_s* %pgs_old, %struct.gs_state_s* %pgs_new) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs_old.addr = alloca %struct.gs_state_s*, align 8
  %pgs_new.addr = alloca %struct.gs_state_s*, align 8
  %dev_old = alloca %struct.gx_device_s*, align 8
  %dev_new = alloca %struct.gx_device_s*, align 8
  %dev_t1 = alloca %struct.gx_device_s*, align 8
  %dev_t2 = alloca %struct.gx_device_s*, align 8
  %samepagedevice = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs_old, %struct.gs_state_s** %pgs_old.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs_new, %struct.gs_state_s** %pgs_new.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev_old to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs_old.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %1) #3
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev_old, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s** %dev_new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gx_device_s** %dev_t1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gx_device_s** %dev_t2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %samepagedevice to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev_old, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !54
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs_old.addr, align 8, !tbaa !1
  %call1 = call i8* @gs_state_client_data(%struct.gs_state_s* %8) #3
  %9 = bitcast i8* %call1 to %struct.int_gstate_s*
  %pagedevice = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %9, i32 0, i32 10
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs_new.addr, align 8, !tbaa !1
  %call2 = call i8* @gs_state_client_data(%struct.gs_state_s* %10) #3
  %11 = bitcast i8* %call2 to %struct.int_gstate_s*
  %pagedevice3 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %11, i32 0, i32 10
  %call4 = call i32 @obj_eq(%struct.gs_memory_s* %7, %struct.ref_s* %pagedevice, %struct.ref_s* %pagedevice3) #3
  store i32 %call4, i32* %samepagedevice, align 4, !tbaa !19
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev_old, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 19
  %13 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !22
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev_old, align 8, !tbaa !1
  %call5 = call %struct.gx_device_s* %13(%struct.gx_device_s* %14) #3
  store %struct.gx_device_s* %call5, %struct.gx_device_s** %dev_t1, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %call5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load i32, i32* %samepagedevice, align 4, !tbaa !19
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev_old, align 8, !tbaa !1
  %LockSafetyParams = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 32
  store i32 0, i32* %LockSafetyParams, align 4, !tbaa !55
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs_new.addr, align 8, !tbaa !1
  %call8 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %17) #3
  store %struct.gx_device_s* %call8, %struct.gx_device_s** %dev_new, align 8, !tbaa !1
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev_old, align 8, !tbaa !1
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev_new, align 8, !tbaa !1
  %cmp9 = icmp ne %struct.gx_device_s* %18, %19
  br i1 %cmp9, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %if.end.7
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev_new, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 42
  %get_page_device12 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs11, i32 0, i32 19
  %21 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device12, align 8, !tbaa !22
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev_new, align 8, !tbaa !1
  %call13 = call %struct.gx_device_s* %21(%struct.gx_device_s* %22) #3
  store %struct.gx_device_s* %call13, %struct.gx_device_s** %dev_t2, align 8, !tbaa !1
  %cmp14 = icmp eq %struct.gx_device_s* %call13, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.then.10
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev_t1, align 8, !tbaa !1
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev_t2, align 8, !tbaa !1
  %cmp17 = icmp ne %struct.gx_device_s* %23, %24
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.16
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.7
  %25 = load i32, i32* %samepagedevice, align 4, !tbaa !19
  %tobool21 = icmp ne i32 %25, 0
  %lnot = xor i1 %tobool21, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.18, %if.then.15, %if.then
  %26 = bitcast i32* %samepagedevice to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.gx_device_s** %dev_t2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.gx_device_s** %dev_t1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast %struct.gx_device_s** %dev_new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.gx_device_s** %dev_old to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare %struct.gs_state_s* @gs_state_saved(%struct.gs_state_s*) #2

declare i32 @gs_grestore(%struct.gs_state_s*) #2

declare i32 @obj_eq(%struct.gs_memory_s*, %struct.ref_s*, %struct.ref_s*) #2

declare i32 @zrestore(%struct.gs_context_state_s*) #2

declare i32 @zsetgstate(%struct.gs_context_state_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

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
!19 = !{!9, !9, i64 0}
!20 = !{!3, !3, i64 0}
!21 = !{!6, !2, i64 0}
!22 = !{!23, !2, i64 1296}
!23 = !{!"gx_device_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !24, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !25, i64 96, !27, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !13, i64 968, !13, i64 976, !28, i64 984, !9, i64 1052, !9, i64 1056, !29, i64 1064, !2, i64 1104, !3, i64 1112, !31, i64 1120, !32, i64 1144}
!24 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!25 = !{!"gx_device_color_info_s", !9, i64 0, !9, i64 4, !3, i64 8, !12, i64 12, !3, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !26, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !13, i64 704, !9, i64 712}
!26 = !{!"gx_device_anti_alias_info_s", !9, i64 0, !9, i64 4}
!27 = !{!"gx_device_cached_colors_s", !13, i64 0, !13, i64 8}
!28 = !{!"gx_stroked_gradient_recognizer_s", !9, i64 0, !3, i64 4, !3, i64 36}
!29 = !{!"gdev_space_params_s", !13, i64 0, !13, i64 8, !30, i64 16, !9, i64 32, !3, i64 36}
!30 = !{!"gx_band_params_s", !9, i64 0, !9, i64 4, !13, i64 8}
!31 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!32 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!33 = !{!6, !2, i64 640}
!34 = !{!6, !9, i64 688}
!35 = !{!12, !12, i64 0}
!36 = !{!10, !12, i64 0}
!37 = !{!23, !13, i64 936}
!38 = !{!13, !13, i64 0}
!39 = !{i64 0, i64 2, !35, i64 2, i64 2, !35, i64 4, i64 4, !19, i64 8, i64 8, !38, i64 8, i64 2, !35, i64 8, i64 4, !40, i64 8, i64 8, !38, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !38}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !3, i64 0}
!42 = !{!6, !2, i64 8}
!43 = !{!44, !2, i64 128}
!44 = !{!"gs_memory_s", !2, i64 0, !45, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!45 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!46 = !{!23, !2, i64 1120}
!47 = !{!23, !2, i64 1128}
!48 = !{!23, !2, i64 1136}
!49 = !{!6, !2, i64 520}
!50 = !{!6, !2, i64 536}
!51 = !{!44, !2, i64 192}
!52 = !{!53, !2, i64 120}
!53 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!54 = !{!23, !2, i64 24}
!55 = !{!23, !9, i64 960}
